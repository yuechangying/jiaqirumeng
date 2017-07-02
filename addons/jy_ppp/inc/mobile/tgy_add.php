<?php
global $_W,$_GPC;

		if ( strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger') == false ) {
			$weixin=0;

			$weid=$_GPC['i'];

			$tgyid=$_SESSION['tgyid'];
			if(!empty($tgyid))
			{
				$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND id=".$tgyid);
			}
		}
		else
		{
			$weixin=1;

			$weid=$_W['uniacid'];
			//checkAuth();
			$from_user=$_SESSION['jy_openid'];
			if(empty($from_user))
			{
				echo "<script>
					window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_add','tgyid'=>$_GPC['tgyid']))."';
				</script>";
			}
			else
			{
				$member_temp=pdo_fetch("SELECT uid,nickname,follow FROM ".tablename('mc_mapping_fans')." WHERE openid='$from_user' AND uniacid=".$weid);
				if(empty($member_temp['nickname']) || $member_temp['uid']==0)
				{
					unset($uid);
				}
				else
				{
					$uid=$member_temp['uid'];
					unset($member_temp);
				}
				if(empty($uid))
				{
					echo "<script>
						window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_add','tgyid'=>$_GPC['tgyid']))."';
					</script>";
				}
				else
				{
					$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND from_user='".$from_user."' AND status=1");
					$tgyid=$member['id'];
				}
			}
		}

		if(!empty($member))
		{
			$tgyid=intval($_GPC['tgyid']);
			if(!empty($member['parentid']) )
			{
				if(!empty($tgyid))
				{
					if($tgyid!=$member['id'])
					{
						message("操作非法！您没权限管理其它用户的个人信息!");
					}
				}
			}
			else
			{
				if(!empty($tgyid))
				{
					if($tgyid!=$member['id'])
					{
						$temp_child=pdo_fetch("SELECT id FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND parentid=".$member['id']." AND id=".$tgyid);
						if(empty($temp_child))
						{
							message("该推广员并不是您的下线，无法编辑他的信息！");
						}
					}
				}
			}
			if(!empty($tgyid))
			{
				$tgy=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND id=".$tgyid);
			}
				if(!empty($member['parentid']) && empty($tgyid))
				{
					message("您并没有权限添加下级推广员权限！");
				}
				$sitem=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_setting')." WHERE weid=".$weid);
				$op=$_GPC['op'];
				if($op=='add')
				{
					$pwd=intval($_GPC['password']);
					if(empty($pwd))
					{
						$pwd='123456';
					}
					$mobile=$_GPC['mobile'];
					$member2=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND mobile='".$mobile."'");
					if(!empty($member2) && $member2['id']!=$tgyid)
					{
						echo 2;
						exit;
					}
					else
					{
						$data=array(
								'weid'=>$weid,
								'username'=>$_GPC['username'],
								'mobile'=>$mobile,
								'mail'=>$_GPC['mail'],
								'QQ'=>$_GPC['QQ'],
								'wechat'=>$_GPC['wechat'],
								'alipay'=>$_GPC['alipay'],
								'realname'=>$_GPC['realname'],
							);
						if(empty($tgyid))
						{
							$data['createtime']=time();
							$data['password']=$pwd;
							$data['parentid']=$member['id'];
							pdo_insert("jy_ppp_tuiguang",$data);
						}
						else
						{
							pdo_update("jy_ppp_tuiguang",$data,array('id'=>$tgyid));
						}
						echo 1;
						exit;
					}


				}
				else
				{
					include $this->template('tgy_add');
				}
		}
		else
		{

			echo "<script>
					window.location.href = '".$this->createMobileUrl('tgy_login')."';
				</script>";
		}