<?php defined('IN_IA') or exit('Access Denied');?>﻿<?php  !defined('RES_URL') && define('RES_URL','./themes/hc_style1/style/')?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<script type="text/javascript">
if(window.parent.frames[0]){window.parent.location.href=location.href;}
</script>
<script type="text/javascript">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>约爱管理系统</title>
<link rel="icon" href="<?php echo RES_URL;?>/aaa/image/favicon.ico" type="image/x-icon" />
<meta name="description" content="约爱管理系统">
<meta name="Keywords" content="约爱管理系统">
<link rel="stylesheet" href="<?php echo RES_URL;?>/aaa/css/start_v5.css?v=201407028" />
<script type="text/javascript" src="<?php echo RES_URL;?>/aaa/js/jquery-1.7.2.min.js?v=20140703"></script>
<script type="text/javascript" src="<?php echo RES_URL;?>/aaa/js/plugin/jquery.cookie.min.js?v=20140703"></script>
<script type="text/javascript" src="<?php echo RES_URL;?>/aaa/js/plugin/jquery.tipsy.js?v=20140703"></script>
</head>
<style>
.online_icon a {
	width: 55px;
	height: 157px;
	background: url(<?php echo RES_URL;?>/aaa/image/start/v5/qq_online_trigger_2.png) no-repeat 0px 0px;
}
.city h2 {
	padding-right: 8px;
}
.main .item_1 .toolbar .tel{
	margin-left: 6px;
}
</style>

<body>
	

	
	<div class="wrap">

		<div class="main">
			<div class="item item_1">
				<div class="loading"><div class="load">&nbsp;</div></div>
				<div class="bgwrap"></div>
				<div class="honor">
					<p></p>
				</div>
				<div class="footer fn-clear">
					<p class="lt copyright">源代码生活馆提供技术支持 店址： <a href="https://textile18.taobao.com">https://textile18.taobao.com</a> </p>
					<div class="rt cert-cont fn-clear">
						<div class="cert3 lt"></div>
						<div class="cert4 lt"></div>
					</div>
				</div>
				<div class="toolbar">
					
					<div style="width: 960px;margin: 0 auto;">
						<div class="toolbar_logo">呵</div>


						<p class="tel"></p>
					</div>
				</div>
				<a class="show_more_btn" style="position: absolute;top: 40%;left: 50%;z-index: 100;cursor: pointer;margin-left: -91.5px;margin-top: 310px;" href='javascript:;'><img src="<?php echo RES_URL;?>/aaa/image/start/v5/show_more.png" /></a>
				<div class="content">
					<div class="header">
						<div class="wjj_tm"></div>
					</div>
					<div class="sub_header">超人气！超吸粉！引爆微信营销！感谢您的支持！</div>
					<div class="btn_wrap fn-clear">
						<a href="javascript:;" class="login">登录</a>
						<a href="<?php  echo url('user/register');?>" target="_blank" class="reg" id="reg" style="position: relative;">注册
							<img src="<?php echo RES_URL;?>/aaa/image/start/v5/reg_forfree.png" style="display: block;position: absolute;left: 45px;top: -40px;" />
						</a>
						<a class="review">更多服务<b>&gt;</b>
							<div style="position: absolute;top: 0px;right: 7px;width: 45px;height: 44px;background-position: -755px -94px;" class="wjj_update"></div>
						</a>
					</div>
					<div class="nav_btn_wrap fn-clear">
						<a href="javascript:;">微约爱</a>
						<a href="javascript:;">微酒店</a>
						<a href="javascript:;">微拼团</a>
						<a href="javascript:;" style="position: relative;" id="qudaodaili">微场景
					  <div style="position: absolute;left: 12px;top: -8px;width: 27px;height: 14px;background-position: -643px -114px;" class="hot"></div></a>
						<a href="javascript:;">更多仍在开发……</a>
				  </div>
					<div class="m-login ztag" id="loginbox">
						<div class="arr"><span class="ztag arml">&nbsp;</span></div>
						<div class="cont ztag" style="">
							<div class="contc f-cb">
								<div class="contl">
									<h3>使用营销账号</h3>
									<form class="ztag" action="" method="post" target="_top" onSubmit="return formcheck();">
										<ul class="w-user w-user-1">
											<li class="w0">
												<div class="inpt ztag">
													<label class="ztag"></label>
													
													<input  class="txt"  name="username"  type="text"  value=""  placeholder="账号">
												</div>
											</li>
											<li class="w0">
												<div class="inpt"><label class="ztag"></label>
												
												<input  class="txt ztag"  name="password"  type="password"  value=""  placeholder="密码">
												</div>
											</li>
											<li class="w0 w2">
										
												<input style="font-size:18px;color:#FFF;font-weight:blod;text-align:center;"  class="btn"  type="submit"  name="submit" value="后 台 登 录" >
												<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
											</li>
											<li class="w0 w3 f-cb">
												<a class="fgt" href="#" target="_blank">忘记密码？请联系客服协助修改！</a>
											</li>
										</ul>
					           		</form>
								</div>

							</div>
						</div>
			    	</div>
				</div>
			</div>
			<script type="text/javascript">
			document.getElementsByClassName("item")[0].style.height=document.documentElement.clientHeight+"px";
			//$(".item").css("height",document.documentElement.clientHeight);
			</script>


			</div>
		</div>
	</div>
	<div id="goto_top"></div>
	
	

<style>
 .quyu_online_qq_layer ul li{
 	line-height: 35px;
 	height: 35px;
 }
 .quyu_online_qq_layer ul li .kf-img img {
	float: left;
	margin: 5px 3px 0px 0px;
 }
 .quyu_online_qq_layer ul li a.wpa_qq{
 	background: url('<?php echo RES_URL;?>/aaa/image/start/v2/qq.png') no-repeat;
 	padding-left: 18px;
 	margin-left: -10px;
 }
</style>


<div id="online_qq_layer">
    <div id="online_qq_tab">
        <div class="online_icon">
            <a title="联系我们" id="floatTrigger" href="javascript:void(0);"></a>
        </div>
    </div>
    <div id="onlineService">
        <div class="online_windows overz">
            <div class="online_w_top">
            </div>
            <!--online_w_top end-->
            <div class="online_w_c overz">
                <!--online_bar end-->
                <div class="online_bar collapse" id="onlineSort2">

                </div>
                <!--online_bar end-->
                <div class="online_bar collapse" id="onlineSort3">
                    <h2>
                       <a href="javascript:;">扫一扫，体验功能</a>
                    </h2>
                    <div class="online_content overz" id="onlineType3" style="display: block;">
                          	<div class="qrcode"></div>
                    </div>
                </div>
                <!--online_bar end-->
            </div>
            <!--online_w_c end-->
            <div class="online_w_bottom">
            </div>
            <!--online_w_bottom end-->
        </div>
        <!--online_windows end-->
    </div>
</div>	



	<!-- 百度统计 -->

</body>
<script type="text/javascript" src="<?php echo RES_URL;?>/aaa/js/page/start_v5.js?v=20140703"></script>
<script type="text/javascript" src="<?php echo RES_URL;?>/aaa/js/page/top_banner_v1.js?v=20140703"></script>
<script type="text/javascript">

</script>
</html>
