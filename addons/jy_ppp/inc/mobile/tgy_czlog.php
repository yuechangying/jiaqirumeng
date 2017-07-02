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
					window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_czlog'))."';
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
						window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_czlog'))."';
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
			$day=intval($_GPC['day']);
			$starttime=$_GPC['starttime'];
			$endtime=$_GPC['endtime'];
			if(!empty($starttime) && !empty($endtime))
			{
				$starttime2=strtotime($starttime);
				$endtime2=strtotime($endtime);
				$condtion=" AND a.createtime<".$endtime2." AND a.createtime>=".$starttime2;
			}
			else{
				if(!empty($day))
				{
					$today=strtotime('today');
					$twoday=$today-3600*24*2;
					$threeday=$today-3600*24*3;
					$sevenday=$today-3600*24*7;
					if($day==1)
					{
						$condtion=" AND a.createtime>=".$today;
						$starttime=date('Y-m-d',$today);
						$endtime=date('Y-m-d');
					}
					if($day==2)
					{
						$condtion=" AND a.createtime<".$today." AND a.createtime>=".$twoday;
						$starttime=date('Y-m-d',$twoday);
						$endtime=date('Y-m-d',$today);
					}
				}
			}

			$tgyid_condition=intval($_GPC['tgyid']);
			if(!empty($tgyid_condition))
			{
				$condtion.=" AND tgyid=".$tgyid_condition;
				$tgyid_member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND id=".$tgyid_condition." AND status=1 ");
			}
			else
			{
				$foo=$_GPC['foo'];
				if($foo=='all' && empty($member['parentid']))
				{
					$child=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND parentid=".$member['id']." AND status=1 ");
					if(!empty($child))
					{
						foreach ($child as $key => $value) {
							$child_str.=$value['id'].",";
						}
						$child_str.=substr($child_str, 0,-1);
						$condtion.=" AND tgyid IN (".$child_str.") ";
					}
					else
					{
						$condtion.=" AND 0 ";
					}
				}
				else
				{
					$condtion.=" AND tgyid=".$member['id'];
				}
			}
			$op=$_GPC['op'];
			if($op=='more')
			{
				$str=$_GPC['str'];
				if(empty($str))
				{
					echo json_encode(array('status'=>3));
					exit;
				}
				else
				{
					$str=substr($str, 0,-1);
				}
				if(!empty($str))
				{
					$condtion.=" AND a.id NOT IN (".$str.")";
				}
				$list=pdo_fetchall("SELECT a.credit,a.log,a.type,a.id,a.createtime,b.fee,c.nicheng,c.avatar FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id left join ".tablename('jy_ppp_member')." as c on a.mid=c.id WHERE a.weid=".$weid." AND a.kl=0 ".$condtion." LIMIT 10");
				foreach ($list as $key => $value) {
					if(!empty($value['avatar']))
					{
						$value['avatar']=tomedia($value['avatar']);
					}
					else
					{
						$value['avatar']="../addons/jy_ppp/images/boy.png";
					}
					if($value['log']==1)
					{
						$fuwu=" ( 豆币服务 )";
					}
					if($value['log']==2)
					{
						$fuwu=" ( 包月服务 )";
					}
					if($value['log']==3)
					{
						$fuwu=" ( 收信宝服务 )";
					}
					if($value['type']==1)
					{
						$type="【上级抽佣】";
					}
					else
					{
						$type="【直接推广】";
					}
					$html='<div class="conDiv" data-id="'.$value['id'].'"><div class="ovfl conLeft"><div class="floL leftDiv"><img class="floL" src="'.$value['avatar'].'"/><div class="floR nowrap mainColor">'.$value['nicheng'].'</div><div class="floR nowrap " style="font-size:12px">金额：'.$value['fee'].'元'.$fuwu.$type.'</div></div><div class="floR rightDiv txtAC">'.date('m-d H:i',$value['createtime']).'</div></div><div class="zhanCol"></div></div>';
				}
				if(count($list)>9)
				{
					echo json_encode(array('status'=>1,'log'=>$html));
					exit;
				}
				else
				{
					echo json_encode(array('status'=>2,'log'=>$html));
					exit;
				}
			}
			else
			{
				$list=pdo_fetchall("SELECT a.credit,a.log,a.type,a.id,a.createtime,b.fee,c.nicheng,c.avatar FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id left join ".tablename('jy_ppp_member')." as c on a.mid=c.id WHERE a.weid=".$weid." AND a.kl=0 ".$condtion." LIMIT 10");
				if(empty($member['parentid']))
				{
					$child=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND parentid=".$member['id']." AND status=1 ");
				}
				include $this->template('tgy_czlog');
			}

		}
		else
		{

			echo "<script>
					window.location.href = '".$this->createMobileUrl('tgy_login')."';
				</script>";
		}