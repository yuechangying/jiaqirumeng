<?php
global $_W,$_GPC;

		if ( strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger') == false ) {
			$weixin=0;

			$weid=$_GPC['i'];

			$tgyid=$_SESSION['tgyid'];
			if(!empty($tgyid))
			{
				$member=pdo_fetch("SELECT a.*,b.avatar FROM ".tablename('jy_ppp_tuiguang')." as a left join ".tablename('mc_members')." as b on a.uid=b.uid WHERE a.weid=".$weid." AND a.id=".$tgyid);
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
					window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_change'))."';
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
						window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_change'))."';
					</script>";
				}
				else
				{
					$member=pdo_fetch("SELECT a.*,b.avatar FROM ".tablename('jy_ppp_tuiguang')." as a left join ".tablename('mc_members')." as b on a.uid=b.uid WHERE a.weid=".$weid." AND a.from_user='".$from_user."' AND a.status=1");
					$tgyid=$member['id'];
				}
			}
		}

		if(!empty($member))
		{
				$sitem=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_setting')." WHERE weid=".$weid);
				$op=$_GPC['op'];
				if($op=='add')
				{
					$old=$_GPC['oldpwd'];
					if($old!=$member['password'])
					{
						echo "您输入的旧密码不正确！";
						exit;
					}
					else
					{
						$newpwd=$_GPC['newpwd'];
						pdo_update("jy_ppp_tuiguang",array('password'=>$newpwd),array('id'=>$member['id']));
						echo 1;
						exit();
					}
				}
				include $this->template('tgy_change');
		}
		else
		{

			echo "<script>
					window.location.href = '".$this->createMobileUrl('tgy_login')."';
				</script>";
		}