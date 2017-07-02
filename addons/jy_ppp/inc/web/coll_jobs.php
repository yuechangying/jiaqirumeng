<?php
//decode by 折翼天使资源社区 www.zheyitianshi.com
global $_W, $_GPC;

$weid = $_W ['uniacid'];
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

$operation = ! empty ( $_GPC ['op'] ) ? $_GPC ['op'] : 'index';

if ($operation == 'index') {
    $ageBegin = ! empty ( $_GPC ['ageBegin'] ) ? $_GPC ['ageBegin'] : '18';
    $ageEnd = ! empty ( $_GPC ['ageEnd'] ) ? $_GPC ['ageEnd'] : '35';
    $site_map = array(
        '1'=>'http://yuehui.163.com/searchusersrcm.do?ajax=1&ageBegin='.$ageBegin.'&ageEnd='.$ageEnd.'&aim=-1&marriage=0&mode=4&order=8&province=0&city=0&district=-1&sex=1&userTag=0&vippage=-1&searchType=0&page=',
        '2'=>'http://yuehui.163.com/searchusersrcm.do?ajax=1&ageBegin='.$ageBegin.'&ageEnd='.$ageEnd.'&aim=-1&marriage=0&mode=4&order=8&province=0&city=0&district=-1&sex=0&userTag=0&vippage=-1&searchType=0&page=',
    );
    

    $sex = ! empty ( $_GPC ['sex'] ) ? $_GPC ['sex'] : 2;
    $page = ! empty ( $_GPC ['page'] ) ? $_GPC ['page'] : 1;
    if(!isset($site_map[$sex])){
        echo '采集参数错误，未识别到采集地址！';
        exit;
    }
    //采集地址
    $url = $site_map[$sex].$page;

    $rs = ihttp_request_diy($url);
    if('OK'!=$rs['status'] || empty($rs['content'])){
        echo '采集地址打开异常，或已无数据:'.$url;
        exit;
    }
    //$content = iconv('gbk','UTF-8',$rs['content']);
    $content = json_decode($rs['content'],true);
    //$list = list_html($content);
    if(empty($content)){
        echo '地址打开正常，但是未采集到任何数据'.$url;
        exit;
    }
    $content = $content[0];
    $list = $content['list'];




    //获取page信息
    //$page_data = list_page($content);
    $total = $content['total'];
    $pindex = $page;
    $psize = 81;
    $page_html = ajax_pagination($total, $pindex, $psize,'rest_coll');

    $num = count($list);
    $html = '<div class="panel-heading">
                    本页采集总数:'.$num.' 个
                </div>
                <div class="panel-body table-responsive">
                '.$page_html.'
                    <table class="table table-hover">

                    <thead class="navbar-inner">
                        <tr>
                            <th style="width:8%;">编号</th>
                            <th style="width:8%;">用户</th>
                            <th style="width:15%;">头像</th>
                            <th style="width:15%;">操作</th>
                        </tr>
                    </thead>

                    <tbody id="main">';

    foreach($list as $key=>$value){
        $html .='<tr class="selectedTr">
                            <td>'.($key+1).'
                            </td>
                            <td class="text-left">
                                '.$value['nick'].'
                            </td>

                            <td class="text-left">
                                <img width="80" src="'.$value['photoUri'].'" >
                            </td>

                            <td class="text-left">
                            <a href="'.$this->createWebUrl ( 'one_coll', array ('uuid' => $value['id'],'sex'=>$sex ) ).'" target="coll">采集</a>
                            </td>
                        </tr>';
    }

                $html .='</tbody>
                    </table>
                    '.$page_html.'
                </div>';
    echo $html;

}

function ajax_pagination($total, $pageIndex, $pageSize = 15, $ajax = '',$context = array('before' => 5, 'after' => 4, 'ajaxcallback' => '')) {


    $pdata = array(

        'tcount' => 0,

        'tpage' => 0,

        'cindex' => 0,

        'findex' => 0,

        'pindex' => 0,

        'nindex' => 0,

        'lindex' => 0,

        'options' => ''

    );




    $pdata['tcount'] = $total;

    $pdata['tpage'] = (empty($pageSize) || $pageSize < 0) ? 1 : ceil($total / $pageSize);

    if ($pdata['tpage'] <= 1) {

        return '';

    }

    $cindex = $pageIndex;

    $cindex = min($cindex, $pdata['tpage']);

    $cindex = max($cindex, 1);

    $pdata['cindex'] = $cindex;

    $pdata['findex'] = 1;

    $pdata['pindex'] = $cindex > 1 ? $cindex - 1 : 1;

    $pdata['nindex'] = $cindex < $pdata['tpage'] ? $cindex + 1 : $pdata['tpage'];

    $pdata['lindex'] = $pdata['tpage'];




        $pdata['faa'] = 'href="javascript:;" page="' . $pdata['findex'] . '" onclick="'.$ajax.'(\'' . $pdata['findex'] . '\');"';

        $pdata['paa'] = 'href="javascript:;" page="' . $pdata['pindex'] . '" '.$ajax.'(\'' . $pdata['pindex'] . '\');"';

        $pdata['naa'] = 'href="javascript:;" page="' . $pdata['nindex'] . '" onclick="'.$ajax.'(\'' . $pdata['nindex'] . '\')"';

        $pdata['laa'] = 'href="javascript:;" page="' . $pdata['lindex'] . '" onclick="'.$ajax.'(\'' . $pdata['lindex'] . '\')"';


    $html = '<div><ul class="pagination pagination-centered">';

    if ($pdata['cindex'] > 1) {

        $html .= "<li><a {$pdata['faa']} class=\"pager-nav\">首页</a></li>";

        $html .= "<li><a {$pdata['paa']} class=\"pager-nav\">&laquo;上一页</a></li>";

    }

    if (!$context['before'] && $context['before'] != 0) {

        $context['before'] = 5;

    }

    if (!$context['after'] && $context['after'] != 0) {

        $context['after'] = 4;

    }



    if ($context['after'] != 0 && $context['before'] != 0) {

        $range = array();

        $range['start'] = max(1, $pdata['cindex'] - $context['before']);

        $range['end'] = min($pdata['tpage'], $pdata['cindex'] + $context['after']);

        if ($range['end'] - $range['start'] < $context['before'] + $context['after']) {

            $range['end'] = min($pdata['tpage'], $range['start'] + $context['before'] + $context['after']);

            $range['start'] = max(1, $range['end'] - $context['before'] - $context['after']);

        }

        for ($i = $range['start']; $i <= $range['end']; $i++) {


                $aa = 'href="javascript:;" page="' . $i . '" onclick="'.$ajax.'(\'' . $i . '\');"';


            $html .= ($i == $pdata['cindex'] ? '<li class="active"><a href="javascript:;">' . $i . '</a></li>' : "<li><a {$aa}>" . $i . '</a></li>');

        }

    }






    if ($pdata['cindex'] < $pdata['tpage']) {

        $html .= "<li><a {$pdata['naa']} class=\"pager-nav\">下一页&raquo;</a></li>";

        $html .= "<li><a {$pdata['laa']} class=\"pager-nav\">尾页</a></li>";

    }
    $html .='<li><a class="pager-nav">共'.$pdata['tpage'].'页</a></li>';

    $html .= '</ul></div>';

    return $html;

}

//获取列表数据
function list_html($content){
    $site = 'http://www.6188.net';
    $list_s = '<ul class="product01">';//开始标签
    $list_e = '<div class="w1000 box04">';//结束标签

    $l_s = '<li>';//单条记录开始
    $l_e = '<\/li>';//单条记录结束

    $int = preg_match("/{$list_s}(.*?){$list_e}/ius",$content,$h1);
    if(!$int){
        echo '未匹配到列表页数据块';
        exit;
    }
    $h1 = $h1[1];

    $int = preg_match_all("/{$l_s}(.*?){$l_e}/ius",$h1,$h2);
    if(!$int){
        echo '未匹配到列表页数据记录';
        exit;
    }
    $h2 = $h2[1];
    $data = array();
    foreach($h2 as $key=>$value){
        $data[$key]['img'] = build_url(preg_img_src($value),$site);
        $data[$key]['title'] = preg_title($value);
        $data[$key]['href'] = build_url(preg_href($value),$site);;
    }
    return $data;

    //return $content;
}
//
function list_page($content){
    $list_s = '<div class="page">';//开始标签
    $list_e = '<div class="footer">';//结束标签

    $l_s = '<a href';//单条记录开始
    $l_e = '<\/a>';//单条记录结束

    $int = preg_match("/{$list_s}(.*?){$list_e}/ius",$content,$h1);
    if(!$int){
        return false;
    }
    $h1 = $h1[1];

    $int = preg_match_all("/{$l_s}(.*?){$l_e}/ius",$h1,$h2);
    if(!$int){
        return false;
    }
    $h2 = $h2[0];
    $data = array();
    foreach($h2 as $key=>$value){
        $data[$key]['page'] =  preg_num(preg_href($value));
        $data[$key]['title'] = preg_con($value);
    }
    return $data;
}
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

function preg_title($img){
    preg_match('/<a.*?alt="(.*?)".*?>/ius',$img,$array);
    return $array[1];
}

function preg_con($img){
    preg_match('/<a.*?>(.*?)<\/a>/ius',$img,$array);
    return $array[1];
}

function preg_num($img){
    preg_match_all('/[0-9]+/ius',$img,$array);
    return $array[0][1];
}

function preg_href($img){
    preg_match('/<a.*?href=[\'"](.*?)[\'"].*?>/ius',$img,$array);
    return $array[1];
}
