<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header-base', TEMPLATE_INCLUDEPATH)) : (include template('common/header-base', TEMPLATE_INCLUDEPATH));?>

<section class="vbox hidden-bsection">
  <header class="bg-dark dk header navbar navbar-fixed-top-xs ">
    <div class="navbar-header aside-md"> <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen" data-target="#nav">
            <i class="fa fa-bars"></i> </a> 
       
                                <?php $logo = !empty($_W['setting']['copyright']['blogo'])?tomedia($_W['setting']['copyright']['blogo']):'./themes/hc_style1/style/images/gw-logo.png'?>
                                <a  href="./?refresh"><img src='<?php  echo $logo;?>' style='width:220px;height:50px;'/></a>
                             
        <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".nav-user"> <i class="fa fa-cog"></i> </a> </div>
  
      
      
      <?php  if(defined('IN_SOLUTION')) { ?>
			   <ul class="nav navbar-nav hidden-xs">
                               
				<?php  global $solution,$solutions;?>
				<?php  if($_W['role'] != 'operator') { ?>
				<li><a href="<?php  echo url('home/welcome/ext');?>"><i class="fa fa-reply-all"></i>返回公众号功能管理</a></li>
				<?php  } ?>
				<?php  if(is_array($solutions)) { foreach($solutions as $row) { ?>
				<li<?php  if($row['name'] == $solution['name']) { ?> class="dker"<?php  } ?>><a href="<?php  echo url('home/welcome/solution', array('m' => $row['name']));?>"><i class="fa fa-cog"></i><?php  echo $row['title'];?></a></li>
				<?php  } } ?>
                                                               <?php  if($_W['isfounder']) { ?><?php  } ?>
			</ul>
			<?php  } else { ?>
			   <ul class="nav navbar-nav hidden-xs">
				<li><a href="./?refresh"><i class="fa fa-reply-all"></i> 返回系统</a></li>
				<?php  global $top_nav;?>
				<?php  if(is_array($top_nav)) { foreach($top_nav as $nav) { ?>
					<?php  if(!empty($_W['isfounder']) || empty($_W['setting']['permurls']['sections']) || in_array($nav['name'], $_W['setting']['permurls']['sections'])) { ?><li<?php  if(FRAME == $nav['name']) { ?> class="active"<?php  } ?>><a href="<?php  echo url('home/welcome/' . $nav['name']);?>"><i class="<?php  echo $nav['append_title'];?>"></i><?php  echo $nav['title'];?></a></li><?php  } ?>
				<?php  } } ?>
				 <?php  if($_W['isfounder']) { ?><?php  } ?>
				 
			</ul>
			<?php  } ?>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown topbar-notice">
					<a type="button" data-toggle="dropdown">
						<i class="fa fa-bell"></i>
						<span class="badge" id="notice-total">0</span>
					</a>
					<div class="dropdown-menu" aria-labelledby="dLabel">
						<div class="topbar-notice-panel">
							<div class="topbar-notice-arrow"></div>
							<div class="topbar-notice-head">系统公告</div>
							<div class="topbar-notice-body">
								<ul id="notice-container"></ul>
							</div>
						</div>
					</div>
				</li>
				<li class="dropdown">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" style="display:block; max-width:150px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis; "><i class="fa fa-group"></i><?php  echo $_W['account']['name'];?> <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<?php  if($_W['role'] != 'operator') { ?>
						<li><a href="<?php  echo url('account/post', array('uniacid' => $_W['uniacid']));?>" target="_blank"><i class="fa fa-weixin fa-fw"></i> 编辑当前账号资料</a></li>
						<?php  } ?>
						<li><a href="<?php  echo url('account/display');?>" target="_blank"><i class="fa fa-cogs fa-fw"></i> 管理其它公众号</a></li>
						<li><a href="<?php  echo url('utility/emulator');?>" target="_blank"><i class="fa fa-mobile fa-fw"></i> 模拟测试</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" style="display:block; max-width:185px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis; "><i class="fa fa-user"></i><?php  echo $_W['user']['username'];?> (<?php  if($_W['role'] == 'founder') { ?>系统管理员<?php  } else if($_W['role'] == 'manager') { ?>公众号管理员<?php  } else { ?>公众号操作员<?php  } ?>) <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="<?php  echo url('user/profile/profile');?>" target="_blank"><i class="fa fa-weixin fa-fw"></i> 我的账号</a></li>
						<?php  if($_W['role'] != 'operator') { ?>
						<li class="divider"></li>
						<li><a href="<?php  echo url('system/welcome');?>" target="_blank"><i class="fa fa-sitemap fa-fw"></i> 系统管理</a></li>
						<li><a href="<?php  echo url('system/welcome');?>" target="_blank"><i class="fa fa-cloud-download fa-fw"></i> 自动更新</a></li>
						<li><a href="<?php  echo url('system/updatecache');?>" target="_blank"><i class="fa fa-refresh fa-fw"></i> 更新缓存</a></li>
						<li class="divider"></li>
						<?php  } ?>
						<li><a href="<?php  echo url('user/logout');?>"><i class="fa fa-sign-out fa-fw"></i> 退出系统</a></li>
					</ul>
				</li>
			</ul>
      <div class="msgbox"></div>
  </header>

<?php  

                  $modules_shcuts = uni_modules();
	$settings_shortcuts = uni_setting($_W['uniacid'], array('shortcuts'));
	$shorts_shcuts = $settings_shortcuts['shortcuts'];
	if(!is_array($shorts_shcuts)) {
		$shorts_shcuts = array();
	}
	$shortcut_scs_shcuts = array();
	foreach($shorts_shcuts as $shortcut_sc) {
		$module_sc = $modules_shcuts[$shortcut_sc['name']];
		if(!empty($module_sc)) {
			$shortcut_sc['title'] = $module_sc['title'];
			if(file_exists('../addons/' . $module_sc['name'] . '/icon.jpg')) {
				$shortcut_sc['image'] = '../addons/' . $module_sc['name'] . '/icon.jpg';
			} else {
				$shortcut_sc['image'] = '../web/resource/images/nopic-small.jpg';
			}
			$shortcut_scs_shcuts[] = $shortcut_sc;
		}
	}
	unset($shortcut_sc);
        
?>
<?php $frames = empty($frames) ? $GLOBALS['frames'] : $frames; _calc_current_frames($frames);?>
 
    <?php  if(!empty($frames)) { ?>
<section >
    <section class="hbox stretch"> <!-- .aside -->
      <aside class="bg-light lter aside-md hidden-print b-r" id="nav"  style="width:219px;">
        <section class="vbox">
          <header class="header bg-primary lter text-center clearfix">
            <div class="btn-group">
              <a class="btn btn-sm btn-dark btn-icon" title="添加快捷方式" href="<?php  echo url('profile/module');?>"><i class="fa fa-plus"></i></a>
              <div class="btn-group hidden-nav-xs">
                <button type="button" class="btn btn-sm btn-primary dropdown-toggle" data-toggle="dropdown"> 快捷方式 <span class="caret"></span> </button>
                <ul class="dropdown-menu text-left">
                    <li><a href="<?php  echo url('platform/reply', array('m' => 'userapi'))?>">
			<i class="fa fa-sitemap"></i>
			<span>自定义接口</span>
		</a></li>
                    <?php  if(is_array($shortcut_scs_shcuts)) { foreach($shortcut_scs_shcuts as $shortcut_sc) { ?>
			<li><a href="<?php  echo $shortcut_sc['link'];?>" title="<?php  echo $shortcut_sc['title'];?>">
				<img src="<?php  echo $shortcut_sc['image'];?>" alt="<?php  echo $shortcut_sc['title'];?>" style="width:14px;height:14px;" />
				<span><?php  echo $shortcut_sc['title'];?></span>
			</a></li>
		<?php  } } ?>
                 
                </ul>
              </div>
            </div>
          </header>
          <section class="w-f scrollable">
            <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="5px" data-color="#333333"> <!-- nav -->
              <nav class="nav-primary hidden-xs">
                <ul class="nav">
                
                                        
                                        <?php  $bgs=array('danger','warning','success','primary','info');?>
                  <?php  $c=0;?><?php  $hasActive = false;?>
                                        <?php  if(is_array($frames)) { foreach($frames as $k => $frame) { ?>
                  
                 <li class="nav-<?php  echo $c;?>"> 
                    <a href="#layout" > <i class="fa fa-columns icon"> <b class="bg-<?php  echo $bgs[$c]?>"></b> 
                        </i><span class="pull-right"> <i class="fa fa-angle-down text"></i> 
                            <i class="fa fa-angle-up text-active"></i> </span> 
                        <span><?php  echo $frame['title'];?></span> 
                    </a>
                     
                    <ul class="nav lt">
                        
                        <?php  if(is_array($frame['items'])) { foreach($frame['items'] as $link) { ?>
	                 <?php  if(!empty($link['append'])) { ?>
		<li class="<?php  echo $link['active'];?>"> <a  href="<?php  echo $link['url'];?>" class='pull-left' style='display: block;width:190px'><i class="fa fa-angle-right"></i> <span><?php  echo $link['title'];?></span></a>
                    <a href="<?php  echo $link['append']['url'];?>" class="pull-left" style="display:block;width:27px;height:43px;padding:5px;padding-right:10px;padding-top:10px;"/><?php  echo $link['append']['title'];?></a>
                        
                    </li>
		<?php  } else { ?>
                                    <li class="<?php  echo $link['active'];?>"><a  href="<?php  echo $link['url'];?>"><i class="fa fa-angle-right"></i> <span><?php  echo $link['title'];?></span></a></li>
							<?php  } ?>
                                                        <?php  if(!empty($link['active'])) { ?>
                                                        <?php  $hasActive = true;?>
                                                        <script language='javascript'>
                                                            $(".nav-<?php  echo $c;?>").addClass('active');
                                                        </script>

                                                        <?php  } ?>
							<?php  } } ?>
                                                        
                    
                    </ul>
                  </li>
                  <?php  $c++?>
                  <?php  if($c>=5) { ?><?php  $c=0;?><?php  } ?>
                  <?php  } } ?>
                     <?php  if(!$hasActive) { ?>
                                                        <script language='javascript'>
                                                            $(".nav-0").addClass('active');
                                                        </script>
                                                        <?php  } ?>
              
              </nav>
                <script language="javascript">
                     function append(e,url){
                       alert(url);
                            if(url!=''){
                                location.href= url;
                                e.stopPropagation();    
                            }
                            
                        }
                  
                    </script>
              <!-- / nav --> </div>
          </section>
           
            <footer class="footer lt hidden-xs b-t b-light">

                            <a class="pull-right btn btn-sm btn-default btn-icon " data-toggle="class:nav-xs" href="#nav">
                                <i class="fa fa-angle-left text"></i>
                                <i class="fa fa-angle-right text-active"></i>
                            </a>
                            <div class="copyright hidden-nav-xs">
                                &copy; <?php  echo $_W['page']['copyright']['sitename'];?>
                            </div>
                        </footer>
        </section>
      </aside>
    <script src="<?php echo RES_URL;?>js/common.js"></script>
	<?php  if(empty($_COOKIE['check_setmeal']) && !empty($_W['account']['endtime']) && ($_W['account']['endtime'] - TIMESTAMP < (6*86400))) { ?>
		<div class="upgrade-tips" id="setmeal-tips">
			<a href="<?php  echo url('user/edit', array('uid' => $_W['account']['uid']));?>" target="_blank">
				您的服务有效期限：<?php  echo date('Y-m-d', $_W['account']['starttime']);?> ~ <?php  echo date('Y-m-d', $_W['account']['endtime']);?>.
				<?php  if($_W['account']['endtime'] < TIMESTAMP) { ?>
				目前已到期，请联系管理员续费
				<?php  } else { ?>
				将在<?php  echo ($_W['account']['endtime'] - strtotime(date('Y-m-d')))/86400?>天后到期，请及时付费
				<?php  } ?>
			</a><span class="tips-close" style="background:#d03e14;" onclick="check_setmeal_hide();"><i class="fa fa-times-circle"></i></span>
		</div>
		<script>
			function check_setmeal_hide() {
				util.cookie.set('check_setmeal', 1, 1800);
				$('#setmeal-tips').hide();
				return false;
			}
		</script>
	<?php  } ?>
     <?php  if(defined('IN_MESSAGE')) { ?>
     <section class='vbox'>
 <div class="container-fluid" style="margin-top:20px;">
		 
		<div class="jumbotron clearfix alert alert-<?php  echo $label;?>">
			<div class="row">
				<div class="col-xs-12 col-sm-3 col-lg-2" style='text-align: right'>
					<i style='font-size:10em' class="fa fa-5x fa-<?php  if($label=='success') { ?>check-circle<?php  } ?><?php  if($label=='danger') { ?>times-circle<?php  } ?><?php  if($label=='info') { ?>info-circle<?php  } ?><?php  if($label=='warning') { ?>exclamation-triangle<?php  } ?>"></i>
				</div>
				<div class="col-xs-12 col-sm-8 col-md-9 col-lg-10">
					<?php  if(is_array($msg)) { ?>
						<h2>MYSQL 错误：</h2>
						<p><?php  echo cutstr($msg['sql'], 300, 1);?></p>
						<p><b><?php  echo $msg['error']['0'];?> <?php  echo $msg['error']['1'];?>：</b><?php  echo $msg['error']['2'];?></p>
					<?php  } else { ?>
					<h2><?php  echo $caption;?></h2>
					<p><?php  echo $msg;?></p>
					<?php  } ?>
					<?php  if($redirect) { ?>
					<p><a href="<?php  echo $redirect;?>">如果你的浏览器没有自动跳转，请点击此链接</a></p>
					<script type="text/javascript">
						setTimeout(function () {
							location.href = "<?php  echo $redirect;?>";
						}, 3000);
					</script>
					<?php  } else { ?>
					<p>[<a href="javascript:history.go(-1);">点击这里返回上一页</a>] &nbsp; [<a href="./?refresh">首页</a>]</p>
					<?php  } ?>
				</div>
				
            </div>
			
 </div>
     </section>
<?php  } ?>

      <!-- /.aside -->
      <section>
         <section class="vbox" >
              <section class="scrollable padder" style="padding-top:10px;">
    <?php  } ?>
 

 
