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
					window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_detail'))."';
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
						window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_detail'))."';
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

			$sitem=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_setting')." WHERE weid=".$weid);
			$tgyid=intval($_GPC['tgyid']);
			if(!empty($member['parentid']))
			{
				$condtion=" AND a.id=".$member['id'];
			}
			else
			{
				if(empty($tgyid))
				{
					$condtion=" AND a.id=".$member['id'];
				}
				else
				{
					$temp=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND id=".$tgyid." AND parentid= ".$member['id']);
					if(empty($temp))
					{
						message("您没有查看该下级用户的相关信息！");
					}
					else
					{
						$condtion=" AND a.id=".$tgyid;
					}
				}
			}

				$detail=pdo_fetch("SELECT a.*,b.avatar,b.nickname FROM ".tablename('jy_ppp_tuiguang')." as a left join ".tablename('mc_members')." as b on a.uid=b.uid WHERE a.weid=".$weid.$condtion." AND a.status=1 ");
				include $this->template('tgy_detail');

		}
		else
		{

			echo "<script>
					window.location.href = '".$this->createMobileUrl('tgy_login')."';
				</script>";
		}