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
					window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_tx'))."';
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
						window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_tx'))."';
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

				$op=$_GPC['op'];
				if($op=='add')
				{
					$password=$_GPC['password'];
					if($password!=$member['password'])
					{
						echo "您输入的密码有误！";
						exit;
					}
					else
					{
						$fee=$_GPC['fee'];
						if($fee>=$sitem['tgy_min'])
						{
							$alipay=$_GPC['alipay'];
							$realname=$_GPC['realname'];
							if(empty($alipay) || empty($realname))
							{
								echo "操作有误！";
								exit;
							}
							else
							{
								if($member['credit']>=$fee)
								{
									$record=array(
										'weid'=>$weid,
										'fee'=>$fee,
										'alipay'=>$alipay,
										'realname'=>$realname,
										'status'=>0,
										'tgyid'=>$member['id'],
										'uid'=>$member['uid'],
										'from_user'=>$member['from_user'],
										'createtime'=>TIMESTAMP,
									);
									pdo_insert("jy_ppp_tixianrecord",$record);
									pdo_update("jy_ppp_tuiguang",array('credit'=>$member['credit']-$fee),array('id'=>$tgyid));
									echo 1;
									exit;
								}
								else
								{
									echo "您的余额不够".$fee."元,赶紧去推广吧！";
									exit;
								}
							}
						}
						else
						{
							echo "最低提现金额为".$sitem['tgy_min']."元!";
							exit;
						}
					}
				}


				include $this->template('tgy_tx');
		}
		else
		{

			echo "<script>
					window.location.href = '".$this->createMobileUrl('tgy_login')."';
				</script>";
		}