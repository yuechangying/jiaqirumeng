<?php
//decode by 折翼天使资源社区 www.zheyitianshi.com
global $_W, $_GPC;

$weid = $_W['uniacid'];
checklogin ();
function ihttp_response_parse2($data, $chunked = false) {

    $rlt = array();

    $headermeta = explode('HTTP/', $data);

    if (count($headermeta) > 2) {

        $data = 'HTTP/' . array_pop($headermeta);

    }

    $pos = strpos($data, "\r\n\r\n");

    $split1[0] = substr($data, 0, $pos);

    $split1[1] = substr($data, $pos + 4, strlen($data));



    $split2 = explode("\r\n", $split1[0], 2);

    preg_match('/^(\S+) (\S+) (\S+)$/', $split2[0], $matches);

    $rlt['code'] = $matches[2];

    $rlt['status'] = $matches[3];

    $rlt['responseline'] = $split2[0];

    $header = explode("\r\n", $split2[1]);

    $isgzip = false;

    $ischunk = false;

    foreach ($header as $v) {

        $pos = strpos($v, ':');

        $key = substr($v, 0, $pos);

        $value = trim(substr($v, $pos + 1));

        if (is_array($rlt['headers'][$key])) {

            $rlt['headers'][$key][] = $value;

        } elseif (!empty($rlt['headers'][$key])) {

            $temp = $rlt['headers'][$key];

            unset($rlt['headers'][$key]);

            $rlt['headers'][$key][] = $temp;

            $rlt['headers'][$key][] = $value;

        } else {

            $rlt['headers'][$key] = $value;

        }

        if(!$isgzip && strtolower($key) == 'content-encoding' && strtolower($value) == 'gzip') {

            $isgzip = true;

        }

        if(!$ischunk && strtolower($key) == 'transfer-encoding' && strtolower($value) == 'chunked') {

            $ischunk = true;

        }

    }

    if($chunked && $ischunk) {
        $rlt['content'] = ihttp_response_parse_unchunk($split1[1]);

    } else {

        $rlt['content'] = $split1[1];

    }

    if($isgzip && function_exists('gzdecode')) {

        $rlt['content'] = gzdecode($rlt['content']);

    }



    $rlt['meta'] = $data;

    if($rlt['code'] == '100') {

        return ihttp_response_parse2($rlt['content']);

    }

    return $rlt;

}

function ihttp_request_diy($url, $post = '', $extra = array(), $timeout = 60) {

    $urlset = parse_url($url);

    if (empty($urlset['path'])) {

        $urlset['path'] = '/';

    }

    if (!empty($urlset['query'])) {

        $urlset['query'] = "?{$urlset['query']}";

    }

    if (empty($urlset['port'])) {

        $urlset['port'] = $urlset['scheme'] == 'https' ? '443' : '80';

    }

    if (strexists($url, 'https://') && !extension_loaded('openssl')) {

        if (!extension_loaded("openssl")) {

            message('请开启您PHP环境的openssl');

        }

    }


    if (function_exists('curl_init') && function_exists('curl_exec')) {

        $ch = curl_init();

        if (ver_compare(phpversion(), '5.6') >= 0) {

            curl_setopt($ch, CURLOPT_SAFE_UPLOAD, false);

        }

        if (!empty($extra['ip'])) {

            $extra['Host'] = $urlset['host'];

            $urlset['host'] = $extra['ip'];

            unset($extra['ip']);

        }

        curl_setopt($ch, CURLOPT_URL, $urlset['scheme'] . '://' . $urlset['host'] . ($urlset['port'] == '80' ? '' : ':' . $urlset['port']) . $urlset['path'] . $urlset['query']);

        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

        @curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);

        curl_setopt($ch, CURLOPT_HEADER, 1);

        @curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_0);

        if ($post) {

            if (is_array($post)) {

                $filepost = false;

                foreach ($post as $name => $value) {

                    if ((is_string($value) && substr($value, 0, 1) == '@') || (class_exists('CURLFile') && $value instanceof CURLFile)) {

                        $filepost = true;

                        break;

                    }

                }

                if (!$filepost) {

                    $post = http_build_query($post);

                }

            }

            curl_setopt($ch, CURLOPT_POST, 1);

            curl_setopt($ch, CURLOPT_POSTFIELDS, $post);

        }

        if (!empty($GLOBALS['_W']['config']['setting']['proxy'])) {

            $urls = parse_url($GLOBALS['_W']['config']['setting']['proxy']['host']);

            if (!empty($urls['host'])) {

                curl_setopt($ch, CURLOPT_PROXY, "{$urls['host']}:{$urls['port']}");

                $proxytype = 'CURLPROXY_' . strtoupper($urls['scheme']);

                if (!empty($urls['scheme']) && defined($proxytype)) {

                    curl_setopt($ch, CURLOPT_PROXYTYPE, constant($proxytype));

                } else {

                    curl_setopt($ch, CURLOPT_PROXYTYPE, CURLPROXY_HTTP);

                    curl_setopt($ch, CURLOPT_HTTPPROXYTUNNEL, 1);

                }

                if (!empty($GLOBALS['_W']['config']['setting']['proxy']['auth'])) {

                    curl_setopt($ch, CURLOPT_PROXYUSERPWD, $GLOBALS['_W']['config']['setting']['proxy']['auth']);

                }

            }

        }

        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);

        curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);

        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);

        curl_setopt($ch, CURLOPT_SSLVERSION, 1);

        if (defined('CURL_SSLVERSION_TLSv1')) {

            curl_setopt($ch, CURLOPT_SSLVERSION, CURL_SSLVERSION_TLSv1);

        }

        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:9.0.1) Gecko/20100101 Firefox/9.0.1');

        if (!empty($extra) && is_array($extra)) {

            $headers = array();

            foreach ($extra as $opt => $value) {

                if (strexists($opt, 'CURLOPT_')) {

                    curl_setopt($ch, constant($opt), $value);

                } elseif (is_numeric($opt)) {

                    curl_setopt($ch, $opt, $value);

                } else {

                    $headers[] = "{$opt}: {$value}";

                }

            }

            if (!empty($headers)) {

                curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

            }

        }

        $data = curl_exec($ch);

        $status = curl_getinfo($ch);

        $errno = curl_errno($ch);

        $error = curl_error($ch);

        curl_close($ch);

        if ($errno || empty($data)) {

            return error(1, $error);

        } else {

            return ihttp_response_parse2($data);

        }

    }

    $method = empty($post) ? 'GET' : 'POST';

    $fdata = "{$method} {$urlset['path']}{$urlset['query']} HTTP/1.1\r\n";

    $fdata .= "Host: {$urlset['host']}\r\n";

    if (function_exists('gzdecode')) {

        $fdata .= "Accept-Encoding: gzip, deflate\r\n";

    }

    $fdata .= "Connection: close\r\n";

    if (!empty($extra) && is_array($extra)) {

        foreach ($extra as $opt => $value) {

            if (!strexists($opt, 'CURLOPT_')) {

                $fdata .= "{$opt}: {$value}\r\n";

            }

        }

    }

    $body = '';

    if ($post) {

        if (is_array($post)) {

            $body = http_build_query($post);

        } else {

            $body = urlencode($post);

        }

        $fdata .= 'Content-Length: ' . strlen($body) . "\r\n\r\n{$body}";

    } else {

        $fdata .= "\r\n";

    }

    if ($urlset['scheme'] == 'https') {

        $fp = fsockopen('ssl://' . $urlset['host'], $urlset['port'], $errno, $error);

    } else {

        $fp = fsockopen($urlset['host'], $urlset['port'], $errno, $error);

    }

    stream_set_blocking($fp, true);

    stream_set_timeout($fp, $timeout);

    if (!$fp) {

        return error(1, $error);

    } else {

        fwrite($fp, $fdata);

        $content = '';

        while (!feof($fp))

            $content .= fgets($fp, 512);

        fclose($fp);

        return ihttp_response_parse2($content, true);

    }

}

//获取列表数据
function list_html($content,$site){
    $list_s = '<ul id="vuser-asthumblist"';//开始标签
    $list_e = '<a id="vuser-asthumbnext"';//结束标签

    $l_s = '<li class="item">';//单条记录开始
    $l_e = '<\/li>';//单条记录结束

    $int = preg_match("/{$list_s}(.*?){$list_e}/ius",$content,$h1);
    if(!$int){
        return false;
    }
    $h1 = $h1[1];

    $int = preg_match_all("/{$l_s}(.*?){$l_e}/ius",$h1,$h2);
    if(!$int){
        return false;
    }
    $h2 = $h2[1];
    $data = array();
    $o_s ='<div class="portrait portrait-195">';
    $o_e = '<\/div>';
    $f = preg_match("/{$o_s}(.*?){$o_e}/ius",$content,$fo);
    if($f){
        $i = preg_img_src($fo[1]);
        $data[] = array(
            'img' => build_url(substr($i,0,strlen($i)-6),$site),
        );
    }
    foreach($h2 as $value){
        $data[] = array(
            'img' => build_url(preg_img_src($value),$site)
        );
    }
    return $data;

    //return $content;
}
//

function build_url($url,$site){
    if(false !== strpos($url,'http')){
        return $url;
    }
    return $site.$url;
}

function preg_img_src($img){
    preg_match('/<img.*?src="(.*?)".*?>/ius',$img,$array);
    return $array[1];
}

function mkdirs($path) {
    if (!is_dir($path)) {
        mkdirs(dirname($path));
        mkdir($path);
    }
    return is_dir($path);
}
function file_random_name($dir, $ext){
    do {
        $filename = random(30) . '.' . $ext;
    } while (file_exists($dir . $filename));

    return $filename;
}

function turnimg($f='',$new_dir='',$h=20){
    $arr = getimagesize($f);
    if(empty($arr)){
        return false;
    }
    $_w = $arr[0];
    $_y = $arr[1];
    //创建源图的实例
    $src = imagecreatefromstring(file_get_contents($f));
    //裁剪开区域左上角的点的坐标
    $x = 0;
    $y = 0;
    //裁剪区域的宽和高
    $width = $_w;
    $height = $_y-$h;
    //最终保存成图片的宽和高，和源要等比例，否则会变形
    $final_width = $_w;
    $final_height = round($final_width * $height / $width);
    //将裁剪区域复制到新图片上，并根据源和目标的宽高进行缩放或者拉升
    $new_image = imagecreatetruecolor($final_width, $final_height);
    imagecopyresampled($new_image, $src, 0, 0, $x, $y, $final_width, $final_height, $width, $height);
    //输出图片
    imagedestroy($src);
    imagejpeg($new_image,$new_dir);
    imagedestroy($new_image);
    return true;
}

function upload_img($img,$_W){
    $file = pathinfo($img);
//    $open_ext = array('jpg','jpeg','gif','png');
//    if(!in_array($file['extension'],$open_ext)){
//        return false;
//    }

//    $rs = ihttp_get($img);
//    if('OK'==$rs['status'] || !empty($rs['content'])){
        //$content = $rs['content'];
        $path = 'images/'.$_W['uniacid'].'/' . date('Y/m/d/');
        $p = ATTACHMENT_ROOT . $path;
        mkdirs($p);
        $filename = file_random_name(ATTACHMENT_ROOT . '/' . $path, 'jpg');
        $file_db_path = $path.$filename;
        $file_path = $p.$filename;
        //保存文件到本地服务器
        $f = turnimg($img,$file_path);
        //file_put_contents($file_path,$content);
        if($f){
            pdo_insert('core_attachment', array(

                'uniacid' => $_W['uniacid'],

                'uid' => $_W['uid'],

                'filename' => $file['basename'],

                'attachment' => $file_db_path,

                'type' => 1,

                'createtime' => TIMESTAMP,

            ));
            return $file_db_path;
        }else{
            return false;
        }



}


if(empty($_GPC ['uuid']) || empty($_GPC ['sex'])){
    message ( '采集参数错误！', $this->createWebUrl ( 'xunithumb', array ('op' => 'collection' ) ), 'error' );
    exit;
}
if(checksubmit ( 'submit' )){
    $sex = ! empty ( $_GPC ['sex'] ) ? $_GPC ['sex'] : 2;
    if(!empty($_GPC['img'])){
        $list_img = $_GPC['img'];
        $data = array();
        foreach($list_img as $value){
            $f = upload_img($value,$_W);
            if($f){
                $data[] = $f;
            }
        }
        if(!empty($data)){
            $llll=pdo_fetch("SELECT mid FROM ".tablename('jy_ppp_xunithumb')." ORDER BY mid DESC LIMIT 1 ");

            if(!empty($llll))

            {

                $mid=$llll['mid']+1;

            }

            else

            {

                $mid=1;

            }
            foreach($data as $k=>$v){
                 $d = array (

                'avatar' => 1,

                'sex' => $sex,

                'mid'=>$mid,

                'thumb' => $v,

                );
                if($k>0){
                    $d = array (

                        'avatar' => 0,

                        'sex' => $sex,

                        'mid'=>$mid,

                        'thumb' => $v,

                    );
                }else{
                    $d = array (

                        'avatar' => 1,

                        'sex' => $sex,

                        'mid'=>$mid,

                        'thumb' => $v,

                    );
                }

                pdo_insert('jy_ppp_xunithumb',$d);
            }
            message ( '导入成功！', $this->createWebUrl ( 'xunithumb', array ('op' => 'display' ) ), 'success' );


        }else{
            message ( '图片抓取失败', $this->createWebUrl ( 'xunithumb', array ('op' => 'display' ) ), 'error' );
            exit;
        }

    }else{
        message ( '未选择任何图片', $this->createWebUrl ( 'xunithumb', array ('op' => 'collection' ) ), 'error' );
        exit;
    }



}else{
    $uuid  = $_GPC ['uuid'];
//    $path = parse_url($url);
//    if(empty($path['host']) || empty($path['scheme'])){
//        message ( 'url采集参数错误！'.$url, $this->createWebUrl ( 'xunithumb', array ('op' => 'collection' ) ), 'error' );
//        exit;
//    }
//    $host = $path['scheme'].'://'.$path['host'];
    $url = 'http://yuehui.163.com/viewuser.do?id='.$uuid;
    $host = 'http://yuehui.163.com';
    $sex = ! empty ( $_GPC ['sex'] ) ? $_GPC ['sex'] : 2;
    $rs = ihttp_request_diy($url);
    if('OK'==$rs['status'] || !empty($rs['content'])){
        //$content = iconv('gbk','UTF-8',$rs['content']);
        $content =$rs['content'];
        $list = list_html($content,$host);
    }
    include $this->template ( 'web/one_coll' );
}