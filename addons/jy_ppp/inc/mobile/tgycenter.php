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
					window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgycenter'))."';
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
						window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgycenter'))."';
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
				$now=time();
				$now=$now-3600;
				if(empty($op))
				{
					if(empty($member['parentid']))
					{
						$child=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND parentid=".$member['id']." AND status=1 ");
						$child_num=count($child);
						if(!empty($child))
						{
							foreach ($child as $key => $value) {
								$child_str.=$value['id'].",";
							}
							$child_str.=substr($child_str, 0,-1);
							$child_newyh=pdo_fetchcolumn("SELECT count(id) FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND parentid IN (".$child_str.")  AND type!=3 AND status=1 ");
							$child_pay=pdo_fetchcolumn("SELECT sum(b.fee) FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id WHERE a.weid=".$weid." AND a.kl=0 AND a.tgyid IN (".$child_str.") AND b.status=1 AND a.type=0 ");

						}
						else
						{
							$child_newyh=0;
						}
						if(empty($child_pay))
						{
							$child_pay=0;
						}
					}
					$total=pdo_fetchcolumn("SELECT count(id) FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND parentid=".$member['id']." AND type!=3 AND status=1 ");


					$today=strtotime('today');
					$twoday=$today-3600*24;
					$threeday=$today-3600*24*2;
					$sevenday=$today-3600*24*6;
					$newyh1=pdo_fetchcolumn("SELECT count(id) FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND parentid=".$member['id']." AND type!=3 AND status=1 AND createtime>=".$today);
					$newyh2=pdo_fetchcolumn("SELECT count(id) FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND parentid=".$member['id']." AND type!=3 AND status=1 AND createtime<".$today." AND createtime>=".$threeday);
					$newyh3=pdo_fetchcolumn("SELECT count(id) FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND parentid=".$member['id']." AND type!=3 AND status=1 AND createtime<".$threeday." AND createtime>=".$sevenday);

					$pay1=pdo_fetchcolumn("SELECT sum(b.fee) FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id WHERE a.weid=".$weid." AND a.kl=0 AND a.tgyid=".$member['id']." AND a.type=0 AND b.status=1 AND b.createtime>=".$today);
					$pay2=pdo_fetchcolumn("SELECT sum(b.fee) FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id WHERE a.weid=".$weid." AND a.kl=0 AND a.tgyid=".$member['id']." AND a.type=0 AND b.status=1 AND b.createtime<".$today." AND b.createtime>=".$twoday);
					$pay3=pdo_fetchcolumn("SELECT sum(b.fee) FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id WHERE a.weid=".$weid." AND a.kl=0 AND a.tgyid=".$member['id']." AND a.type=0 AND b.status=1 ");
					if(empty($pay1))
					{
						$pay1=0;
					}
					if(empty($pay2))
					{
						$pay2=0;
					}
					if(empty($pay3))
					{
						$pay3=0;
					}

					$creditall=pdo_fetchcolumn("SELECT sum(credit) FROM ".tablename('jy_ppp_yongjin')." WHERE weid=".$weid." AND kl=0 AND tgyid=".$member['id']);
					$ylcredit=pdo_fetchcolumn("SELECT sum(fee) FROM ".tablename('jy_ppp_tixianrecord')." WHERE weid=".$weid." AND tgyid=".$member['id']." AND status=1 ");
					if(empty($ylcredit))
					{
						$ylcredit=0;
					}
					if(empty($creditall))
					{
						$creditall=0;
					}


					include $this->template('tgycenter');
				}
		}
		else
		{

			echo "<script>
					window.location.href = '".$this->createMobileUrl('tgy_login')."';
				</script>";
		}