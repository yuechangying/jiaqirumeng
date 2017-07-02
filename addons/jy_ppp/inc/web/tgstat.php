<?php
//decode by 折翼天使资源社区 www.zheyitianshi.com
global $_W,$_GPC;
		$weid=$_W['uniacid'];
		checklogin();
		$this->faxin();

		load()->func('tpl');

		$now_day=strtotime(date('Y-m-d', time()));
		$time = $_GPC['time'];
		$starttime = empty($time['start']) ? $now_day : strtotime($time['start']);
		$endtime   = empty($time['end'])   ? $now_day + 7*86400 : strtotime($time['end']) + 86399;


		$tgid=$_GPC['tgid'];
		if(!empty($tgid))
		{
			if(!empty($tgid['childid']))
			{
				$childid=intval($tgid['childid']);
				if(!empty($childid))
				{
					$condition.=" AND a.parentid=".$childid;
					$condition2.=" AND a.tgyid=".$childid;
				}
			}
			else
			{
				if(!empty($tgid['parentid']))
				{
					$parentid=intval($tgid['parentid']);
					if(!empty($parentid))
					{
						$child_list=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND parentid=".$tgid['parentid']." AND status=1 ");
						print_r($child_str);
						if(!empty($child_list))
						{
							foreach ($child_list as $key => $value) {
								$child_str.=$value['id'].",";
							}
							$child_str.=$parentid;
							$condition.=" AND a.parentid IN (".$child_str.") ";
							$condition2.=" AND a.tgyid IN (".$child_str.") ";
						}
					}
				}
			}
		}
		if (!empty($_GPC['time'])) {
			$condition.=" AND a.createtime>=$starttime AND a.createtime<=$endtime ";
			$condition2.=" AND a.createtime>=$starttime AND a.createtime<=$endtime ";
		}
		else
		{
			$starttime=$now_day - 7*86400;
			$endtime=$now_day + 86400;
			$condition.=" AND a.createtime>=$starttime AND a.createtime<=$endtime ";
			$condition2.=" AND a.createtime>=$starttime AND a.createtime<=$endtime ";
		}

		$tuiguang=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE status=1 AND weid=".$weid);
		$parent=array();
		$child=array();
		foreach ($tuiguang as $key => $value) {
			if(!empty($value['parentid']))
			{
				$child[$value['parentid']][]=array('id'=>$value['id'],'name'=>$value['username']);
				unset($parent[$key]);
				$tgy_temp2[$value['id']]=$tgy_temp[$value['parentid']];
			}
			else
			{
				$child[$value['id']][]=array('id'=>$value['id'],'name'=>'自己');
				$parent[]=array('id'=>$value['id'],'name'=>$value['username']);
			}
			$tgy_temp[$value['id']]=$value['username'];
		}
		$zhuce=pdo_fetchcolumn("SELECT count(id) FROM ".tablename('jy_ppp_member')." as a WHERE  a.weid=".$weid." AND a.status=1 AND a.type!=3 AND a.parentid>0 ".$condition);
		$cz=pdo_fetchcolumn("SELECT sum(b.fee) FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id WHERE  a.weid=".$weid." AND a.kl=0 AND b.status=1 ".$condition2." AND a.type=0");
		$fc=pdo_fetchcolumn("SELECT sum(a.credit) FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id WHERE  a.weid=".$weid." AND a.kl=0 AND b.status=1 ".$condition2);

		if(empty($zhuce))
		{
			$zhuce=0;
		}
		if(empty($cz))
		{
			$cz=0;
		}
		if(empty($fc))
		{
			$fc=0;
		}


		$op=$_GPC['op'];

		if(empty($op) || $op=='zhuce')
		{
			$zhuce_tu_temp=pdo_fetchall("SELECT id,createtime,a.parentid FROM ".tablename('jy_ppp_member')." as a WHERE a.weid=".$weid." AND a.status=1 AND a.type!=3 AND a.parentid>0 ".$condition);
		}
		if(empty($op) || $op=='cz')
		{
			$cz_tu_temp=pdo_fetchall("SELECT a.id,b.fee,a.createtime,a.tgyid FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id WHERE a.weid=".$weid." AND b.status=1 AND a.kl=0 ".$condition2." AND a.type=0");
		}
		if(empty($op) || $op=='fc')
		{
			$fc_tu_temp=pdo_fetchall("SELECT a.id,a.credit,a.createtime,a.tgyid FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id WHERE a.weid=".$weid." AND b.status=1 AND a.kl=0 ".$condition2);
		}

		$riqi=array();
		for ($i=$starttime; $i <=$endtime ; $i+=86400) {
			$temp=date('Y-m-d',$i);
			$riqi[]=$temp;
			if(empty($op) || $op=='zhuce')
			{
				$zhuce_tu[$temp]=0;
			}
			if(empty($op) || $op=='cz')
			{
				$cz_tu[$temp]=0;
			}
			if(empty($op) || $op=='fc')
			{
				$fc_tu[$temp]=0;
			}
			$list[$temp]=array();
		}


		if(empty($op) || $op=='zhuce')
		{
			foreach ($zhuce_tu_temp as $key => $value) {
				$temp=date('Y-m-d',$value['createtime']);
				$zhuce_tu[$temp]++;
				if(empty($list[$temp][$value['parentid']]))
				{
					$list[$temp][$value['parentid']]=array();
					if(!empty($tgy_temp2[$value['parentid']]))
					{
						$list[$temp][$value['parentid']]['parentname']=$tgy_temp2[$value['parentid']];
						$list[$temp][$value['parentid']]['username']=$tgy_temp[$value['parentid']];
					}
					else
					{
						$list[$temp][$value['parentid']]['username']=$tgy_temp[$value['parentid']];
					}
					$list[$temp][$value['parentid']]['logtime']=$temp;

				}
				$list[$temp][$value['parentid']]['zhuce']++;
			}
		}
		if(empty($op) || $op=='cz')
		{
			if(!empty($cz_tu_temp))
			{
				foreach ($cz_tu_temp as $key => $value) {
					$temp=date('Y-m-d',$value['createtime']);
					$cz_tu[$temp]+=$value['fee'];
					if(empty($list[$temp][$value['tgyid']]))
					{
						$list[$temp][$value['tgyid']]=array();
						if(!empty($tgy_temp2[$value['tgyid']]))
						{
							$list[$temp][$value['tgyid']]['parentname']=$tgy_temp2[$value['tgyid']];
							$list[$temp][$value['tgyid']]['username']=$tgy_temp[$value['tgyid']];
						}
						else
						{
							$list[$temp][$value['tgyid']]['username']=$tgy_temp[$value['tgyid']];
						}
						$list[$temp][$value['tgyid']]['logtime']=$temp;

					}
					$list[$temp][$value['tgyid']]['cz']+=$value['fee'];
				}
			}
		}

		if(empty($op) || $op=='fc')
		{
			if(!empty($fc_tu_temp))
			{
				foreach ($fc_tu_temp as $key => $value) {
					$temp=date('Y-m-d',$value['createtime']);
					$fc_tu[$temp]+=$value['credit'];
					if(empty($list[$temp][$value['tgyid']]))
					{
						$list[$temp][$value['tgyid']]=array();
						if(!empty($tgy_temp2[$value['tgyid']]))
						{
							$list[$temp][$value['tgyid']]['parentname']=$tgy_temp2[$value['tgyid']];
							$list[$temp][$value['tgyid']]['username']=$tgy_temp[$value['tgyid']];
						}
						else
						{
							$list[$temp][$value['tgyid']]['username']=$tgy_temp[$value['tgyid']];
						}
						$list[$temp][$value['tgyid']]['logtime']=$temp;

					}
					$list[$temp][$value['tgyid']]['fc']+=$value['credit'];
				}
			}
		}


		$sitem=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_setting')." WHERE weid=".$weid);

		$pindex = max(1, intval($_GPC['page']));
		$psize = 20;

		if($op=='zhuce')
		{
			$zhuce_list=pdo_fetchall("SELECT a.createtime,b.username,a.nicheng,a.mobile,c.avatar,d.username as username2 FROM ".tablename('jy_ppp_member')." as a left join ".tablename('jy_ppp_tuiguang')." as b on a.parentid=b.id left join ".tablename('mc_members')." as c on a.uid=c.uid left join ".tablename('jy_ppp_tuiguang')." as d on b.parentid=d.id WHERE a.weid=".$weid." AND a.status=1 AND a.type!=3 AND a.parentid>0 ".$condition." LIMIT " . ($pindex - 1) * $psize . ",{$psize}");
			$zhuce_total = pdo_fetchcolumn("SELECT count(a.id) FROM ".tablename('jy_ppp_member')." as a WHERE a.weid=".$weid." AND a.status=1 AND a.type!=3 AND a.parentid>0 ".$condition);
			$pager = pagination($zhuce_total, $pindex, $psize);
		}
		if($op=='cz')
		{
			$cz_list=pdo_fetchall("SELECT b.fee,a.createtime,c.username,d.nicheng,d.mobile,e.avatar,f.username as username2 FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id left join ".tablename('jy_ppp_tuiguang')." as c on a.tgyid=c.id left join ".tablename('jy_ppp_member')." as d on a.mid=d.id left join ".tablename('mc_members')." as e on a.uid=e.uid left join ".tablename('jy_ppp_tuiguang')." as f on c.parentid=f.id WHERE a.weid=".$weid." AND b.status=1 AND a.kl=0 ".$condition2." AND a.type=0"." LIMIT " . ($pindex - 1) * $psize . ",{$psize}");
			$cz_total = pdo_fetchcolumn("SELECT count(a.id) FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id WHERE a.weid=".$weid." AND b.status=1 AND a.kl=0 ".$condition2);
			$pager = pagination($cz_total, $pindex, $psize);
		}
		if($op=='fc')
		{
			$fc_list=pdo_fetchall("SELECT a.credit,a.createtime,c.username,d.nicheng,d.mobile,e.avatar,f.username as username2 FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id left join ".tablename('jy_ppp_tuiguang')." as c on a.tgyid=c.id left join ".tablename('jy_ppp_member')." as d on a.mid=d.id left join ".tablename('mc_members')." as e on a.uid=e.uid left join ".tablename('jy_ppp_tuiguang')." as f on c.parentid=f.id WHERE a.weid=".$weid." AND b.status=1 AND a.kl=0 ".$condition2." LIMIT " . ($pindex - 1) * $psize . ",{$psize}");
			$fc_total = pdo_fetchcolumn("SELECT count(a.id) FROM ".tablename('jy_ppp_yongjin')." as a left join ".tablename('jy_ppp_pay_log')." as b on a.plid=b.id WHERE a.weid=".$weid." AND b.status=1 AND a.kl=0 ".$condition2);
			$pager = pagination($fc_total, $pindex, $psize);
		}


		include $this->template('web/tgstat');