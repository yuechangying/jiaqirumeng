<?php defined('IN_IA') or exit('Access Denied');?><html>
<head> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <title><?php  if(!empty($sitem['aname'])) { ?><?php  echo $sitem['aname'];?><?php  } else { ?>有缘网<?php  } ?></title>
    
        <link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css" />
        <link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css" />
        <link href="../addons/jy_ppp/css/pay_intercept.css" rel="stylesheet" type="text/css" />
        <link href="../addons/jy_ppp/css/swiper.min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../addons/jy_ppp/js/swiper.min.js"></script>
    <style type="text/css">
        .list img{background:none}
    </style>
</head>
<body>
<div class="top_blank"></div>
<nav class="nav" >
    <h2>充值</h2>

    <div class="left" onclick="history.go(-1)">
        <i class="le_trg"></i>返回
    </div>
</nav>
<?php  if(!empty($sitem['huafei']) && !empty($sitem['huafei_thumb'])) { ?>
<img src="<?php  echo tomedia($sitem['huafei_thumb'])?>" style="width:100%">
<?php  } ?>
<div class="content">
    <section data-type="baoyue">
        <div class="box-shadow">
            <?php  if(empty($category)) { ?>
                <?php  if($weixin==1) { ?>
                <a href="<?php  echo $this->createMobileUrl('pay',array('op'=>'baoyue','fee'=>100))?>"><ul class="click_op" style="margin:0">
                <?php  } else { ?>
                <a href="<?php  echo $this->createMobileUrl('pcpay',array('op'=>'baoyue','fee'=>100))?>"><ul class="click_op" style="margin:0">
                <?php  } ?>
                    <li>
                        <p class="tit blue"><label style="width:100px">90天</label><span>￥100</span><span></span></p>
                    </li>
                    <li style="color:#52A4CA">购买<i class="re_trg"></i></li>
                </ul></a>
                <?php  if($weixin==1) { ?>
                <a href="<?php  echo $this->createMobileUrl('pay',array('op'=>'baoyue','fee'=>50))?>"><ul class="click_op" style="margin:0">
                <?php  } else { ?>
                <a href="<?php  echo $this->createMobileUrl('pcpay',array('op'=>'baoyue','fee'=>50))?>"><ul class="click_op" style="margin:0">
                <?php  } ?>
                    <li>
                        <p class="tit blue"><label style="width:100px">30天</label><span>￥50</span></p>
                    </li>
                    <li style="color:#52A4CA">购买<i class="re_trg"></i></li>
                </ul></a>
            <?php  } else { ?>
                <?php  if(is_array($category)) { foreach($category as $c) { ?>
                    <?php  if($weixin==1) { ?>
                    <a href="<?php  echo $this->createMobileUrl('pay',array('op'=>'baoyue','fee'=>$c['fee']))?>"><ul class="click_op" style="margin:0">
                    <?php  } else { ?>
                    <a href="<?php  echo $this->createMobileUrl('pcpay',array('op'=>'baoyue','fee'=>$c['fee']))?>"><ul class="click_op" style="margin:0">
                    <?php  } ?>
                        <li>
                            <p class="tit blue"><label style="width:100px"><?php  echo $c['baoyue'];?>天</label><span><?php  if($c['fee']>0) { ?>￥<?php  echo $c['fee'];?><?php  } else { ?>免费<?php  } ?><?php  if(!empty($sitem['huafei']) && !empty($c['huafei'])) { ?>+送<?php  echo $c['huafei'];?>元话费<?php  } ?></span></p>
                        </li>
                        <li style="color:#52A4CA">购买<i class="re_trg"></i></li>
                    </ul></a>
                <?php  } } ?>
            <?php  } ?>
        </div>
        <p class="click_op_top" style="line-height: 22px;"><i class="write" style="vertical-align: top;"></i>写信包月说明<br /><span>服务期间内可与心仪的MM轻松快乐的畅聊。</span></p>
        <ol style="padding-top: 8% ;" class="list">
            <li><i><img src="../addons/jy_ppp/images/kxc.png"></i>无限制看美女相册</li>
            <li><i><img src="../addons/jy_ppp/images/kzl.png"></i>看用户微信号、手机号、QQ号</li>
            <li><i><img src="../addons/jy_ppp/images/kdt.png"></i>美女上线动态</li>
            <li><i><img src="../addons/jy_ppp/images/fxx.png"></i>无限制给美女发消息</li>
        </ol>
    </section>
    <?php  if(!empty($cz_list)) { ?>
        <div class="swiper-container swiper-container-vertical" style="height:250px;margin-top:20px;border-top: 1px #e0e0e0 solid;padding-top:5px;">
            <div class="swiper-wrapper">
            <?php  if(is_array($cz_list)) { foreach($cz_list as $c) { ?>
                <div class="swiper-slide stop-swiping "><span style="color:#fd6b8f">[<?php  echo $c['user'];?>]</span><?php  echo $c['name'];?></div>
            <?php  } } ?>
            </div>
        </div>
    <?php  } ?>
</div>
</body>
    <script src="../addons/jy_ppp/js/zepto.min.js"></script>
    <script src="../addons/jy_ppp/js/public.js"></script>
    <script type="text/javascript">
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 7,
            direction: 'vertical',
            speed: 3000,
            autoplay: 1,
            loop: true,
            loopedSlides: 100,
            noSwiping: true,
            noSwipingClass: 'stop-swiping',
            spaceBetween: 1
        });
    </script>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('inc/footer', TEMPLATE_INCLUDEPATH)) : (include template('inc/footer', TEMPLATE_INCLUDEPATH));?>
</html>