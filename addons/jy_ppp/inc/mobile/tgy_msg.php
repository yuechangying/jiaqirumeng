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
					window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_msg'))."';
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
						window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_msg'))."';
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
			$op=$_GPC['op'];
			if($op=='yuedu')
			{
				$id=intval($_GPC['id']);
				if(empty($id))
				{
					echo "操作非法，请返回重试！";
					exit;
				}
				else
				{
					$xinxi=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang_xinxi')." WHERE weid=".$weid." AND id=".$id);
					if(empty($xinxi))
					{
						echo "消息已不存在!";
					}
					else
					{
						pdo_update('jy_ppp_tuiguang_xinxi',array('yuedu'=>1,'yuedutime'=>TIMESTAMP),array('id'=>$id));
						echo 1;
						exit;
					}
				}
			}
			else{
				$msg=$_GPC['msg'];
				if(empty($msg))
				{
					$condition=" AND yuedu=0 ";
				}
				else
				{
					$condition=" AND yuedu=1 ";
				}
				$msg=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_tuiguang_xinxi')." WHERE weid=".$weid." AND mid=".$member['id'].$condition." ORDER BY createtime DESC ");
				include $this->template('tgy_msg');
			}
		}
		else
		{

			echo "<script>
					window.location.href = '".$this->createMobileUrl('tgy_login')."';
				</script>";
		}