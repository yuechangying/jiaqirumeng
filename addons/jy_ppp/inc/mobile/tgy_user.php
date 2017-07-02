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
					window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_user'))."';
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
						window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_user'))."';
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
			if(!empty($member['parentid']))
			{
				echo "<script>
						window.location.href = '".$this->createMobileUrl('tgy_detail')."';
					</script>";
			}
			else{
				$xuni=pdo_fetchall("SELECT a.*,b.avatar FROM ".tablename('jy_ppp_tuiguang')." as a left join ".tablename('mc_members')." as b on a.uid=b.uid WHERE a.weid=".$weid." AND a.status=1 AND a.parentid=".$member['id']);
				foreach ($xuni as $key => $value) {
					$xuni[$key]['num']=pdo_fetchcolumn("SELECT count(id) FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND parentid=".$value['id']." AND type!=3 AND status=1 ");
					$xuni[$key]['credit_all']=pdo_fetchcolumn("SELECT sum(b.fee) FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id WHERE a.weid=".$weid." AND a.kl=0 AND a.tgyid=".$value['id']." AND b.status=1 ");
				}
				include $this->template('tgy_user');
			}
		}
		else
		{

			echo "<script>
					window.location.href = '".$this->createMobileUrl('tgy_login')."';
				</script>";
		}