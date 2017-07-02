<?php
global $_W,$_GPC;

		$api = $this->module['config']['api'];
		$uniacid=$_W['uniacid'];
		$weid=$_W['uniacid'];

		$id=substr($params['tid'], 10);

		$params['module'] = $this->module['name'];
		$pars = array();
		$pars[':uniacid'] = $_W['uniacid'];
		$pars[':module'] = $params['module'];
		$pars[':tid'] = $params['tid'];
		$sql = 'SELECT * FROM ' . tablename('core_paylog') . ' WHERE `uniacid`=:uniacid AND `module`=:module AND `tid`=:tid';
		$log = pdo_fetch($sql, $pars);

		$pay_log_temp=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_pay_log')." WHERE weid=".$weid." AND id=".$id);



		if($pay_log_temp['fee']!=$params['fee'])
		{
			message('非法操作！发布失败!');
		}

		$temp=pdo_fetch("SELECT a.*,b.credit,b.from_user,b.baoyue,b.parentid,b.uid FROM ".tablename('jy_ppp_pay_log')." as a left join ".tablename('jy_ppp_member')." as b on a.mid=b.id  WHERE a.weid=".$uniacid." AND a.id=".$id);

		if ($params['result'] == 'success' && $params['from'] == 'notify')
		{
			if(empty($temp))
			{
				message('操作错误！，请返回重试!', $this->createMobileUrl('geren'), 'success');
			}
			else
			{
				if(empty($temp['status']))
				{
					$sitem=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_setting')." WHERE weid=".$uniacid);

					if(!empty($params['user']) && $params['user']!=$temp['from_user'])
					{
						pdo_update("jy_ppp_pay_log",array('status'=>1,'plid'=>$log['plid'],'from_user'=>$params['user'],'paytime'=>TIMESTAMP),array('id'=>$id));
					}
					else
					{
						pdo_update("jy_ppp_pay_log",array('status'=>1,'plid'=>$log['plid'],'paytime'=>TIMESTAMP),array('id'=>$id));
					}

					if(!empty($temp['parentid']) && !empty($sitem['tgy_sale']))
					{
						$temp_yongjin=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_yongjin')." WHERE weid=".$weid." AND plid=".$id);
						if(empty($temp_yongjin))
						{
							$tgy=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND id=".$temp['parentid']." AND status=1 ");
							if(!empty($tgy))
							{
								$data7=array(
									'weid'=>$weid,
									'uid'=>$temp['uid'],
									'from_user'=>$temp['from_user'],
									'tgyid'=>$temp['parentid'],
									'mid'=>$temp['mid'],
									'plid'=>$id,
									'log'=>$temp['log'],
									'type'=>0,
									'updatetime'=>TIMESTAMP,
									'createtime'=>TIMESTAMP,
								);
								$data7['credit']=($params['fee']*$sitem['tgy_sale'])/100;
								//扣量的问题

								$kl=0;

								$data7['kl']=$kl;

								pdo_insert("jy_ppp_yongjin",$data7);
								if(empty($kl))
								{
									pdo_update("jy_ppp_tuiguang",array('credit'=>($tgy['credit']+$data7['credit']),'creditall'=>($tgy['creditall']+$data7['credit'])),array('id'=>$tgy['id']));
								}
								if(!empty($tgy['parentid']) && !empty($sitem['tgy_parent']))
								{
									$tgy_parent=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND id=".$tgy['parentid']." AND status=1 ");
									if(!empty($tgy_parent))
									{
										$data8=array(
											'weid'=>$weid,
											'uid'=>$temp['uid'],
											'from_user'=>$temp['from_user'],
											'tgyid'=>$tgy['parentid'],
											'mid'=>$temp['mid'],
											'plid'=>$id,
											'log'=>$temp['log'],
											'type'=>1,
											'updatetime'=>TIMESTAMP,
											'createtime'=>TIMESTAMP,
										);
										$data8['credit']=($params['fee']*$sitem['tgy_parent'])/100;
										$data8['kl']=$kl;

										pdo_insert("jy_ppp_yongjin",$data8);
										if(empty($kl))
										{
											pdo_update("jy_ppp_tuiguang",array('credit'=>($tgy['credit']+$data8['credit']),'creditall'=>($tgy['creditall']+$data8['credit'])),array('id'=>$tgy_parent['id']));
										}
									}
								}
							}
						}
					}


					if($temp['log']==1)
					{

						$data2=array(
							'weid'=>$uniacid,
							'mid'=>$temp['mid'],
							'type'=>'add',
							'log'=>4,
							'logid'=>$id,
							'createtime'=>TIMESTAMP,
						);

						$category = pdo_fetchall ( "SELECT * FROM " . tablename ( 'jy_ppp_price' ) . " WHERE weid = ".$weid." AND log=1 ORDER BY displayorder DESC,id ASC" );

						if(empty($category))
						{
							if($temp['fee']==100)
							{
								$data2['credit']=1300;
							}
							elseif ($temp['fee']==50) {
								$data2['credit']=600;
							}
							elseif ($temp['fee']==30) {
								$data2['credit']=300;
							}
						}
						else
						{
							foreach ($category as $key => $c) {
								if($temp['fee']==$c['fee'])
								{
									$data2['credit']=$c['credit'];
								}
							}
						}
						pdo_insert("jy_ppp_credit_log",$data2);
						pdo_update('jy_ppp_member',array('credit'=>$temp['credit']+$data2['credit']),array('id'=>$temp['mid']));

						if(empty($sitem['unit']))
						{
							$sitem['unit']='豆';
						}

						if(empty($sitem['tel']))
						{
							$text2="您在".date('Y-m-d G:i:s',$data2['createtime'])."的充值已经成功，本次充值".$data2['credit'].$sitem['unit']."，已经打到您的账号上，欢迎您再次使用!";
							$xinxi=$text2;
						}
						else
						{
							$text2="您在".date('Y-m-d G:i:s',$data2['createtime'])."的充值已经成功，本次充值".$data2['credit'].$sitem['unit']."，已经打到您的账号上，欢迎您再次使用，如有问题，请拨打充值热线:<a href='tel:".$sitem['tel']."'>".$sitem['tel']."</a>";
							$xinxi="您在".date('Y-m-d G:i:s',$data2['createtime'])."的充值已经成功，本次充值".$data2['credit'].$sitem['unit']."，已经打到您的账号上，欢迎您再次使用，如有问题，请拨打充值热线:".$sitem['tel'];
						}
						$text=urlencode($text2);
						$access_token = WeAccount::token();
						$data = array(
						  "touser"=>$temp['from_user'],
						  "msgtype"=>"text",
						  "text"=>array("content"=>$text)
						);
						$url = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token={$access_token}";
						load()->func('communication');
						$response = ihttp_request($url, urldecode(json_encode($data)));
						$errcode=json_decode($response['content'],true);
						$data3=array(
								'weid'=>$uniacid,
								'mid'=>$temp['mid'],
								'type'=>'text',
								'content'=>$text2,
								'status'=>$errcode['errcode'],
								'createtime'=>TIMESTAMP,
							);
						pdo_insert("jy_ppp_kefu",$data3);
						$data4=array(
							'weid'=>$uniacid,
							'mid'=>$temp['mid'],
							'sendid'=>0,
							'content'=>$xinxi,
							'type'=>3,
							'yuedu'=>0,
							'createtime'=>TIMESTAMP,
						);
						pdo_insert("jy_ppp_xinxi",$data4);
					}
					if($temp['log']==2)
					{
						$data2=array(
							'weid'=>$uniacid,
							'mid'=>$temp['mid'],
							'logid'=>$id,
							'createtime'=>TIMESTAMP,
						);
						$now=time();
						$category = pdo_fetchall ( "SELECT * FROM " . tablename ( 'jy_ppp_price' ) . " WHERE weid = ".$weid." AND log=2 ORDER BY displayorder DESC,id ASC" );
						if(empty($category))
						{
							if($temp['fee']==100)
							{
								if($temp['baoyue']>$now)
								{
									$baoyue=86400*90+$temp['baoyue'];
									$data2['starttime']=$temp['baoyue'];
								}
								else
								{
									$baoyue=86400*90+$now;
									$data2['starttime']=$now;
								}
								$by_time=90;
							}
							elseif ($temp['fee']==50) {
								if($temp['baoyue']>$now)
								{
									$baoyue=86400*30+$temp['baoyue'];
									$data2['starttime']=$temp['baoyue'];
								}
								else
								{
									$baoyue=86400*30+$now;
									$data2['starttime']=$now;
								}
								$by_time=30;
							}
						}
						else
						{
							foreach ($category as $key => $c) {
								if($temp['fee']==$c['fee'])
								{
									if($temp['baoyue']>$now)
									{
										$baoyue=86400*$c['baoyue']+$temp['baoyue'];
										$data2['starttime']=$temp['baoyue'];
									}
									else
									{
										$baoyue=86400*$c['baoyue']+$now;
										$data2['starttime']=$now;
									}
									$by_time=$c['baoyue'];
								}
							}
						}
						$data2['endtime']=$baoyue;

						pdo_insert("jy_ppp_baoyue_log",$data2);

						pdo_update('jy_ppp_member',array('baoyue'=>$baoyue),array('id'=>$temp['mid']));

						$data2['createtime']=time();
						if(empty($sitem['tel']))
						{
							$text2="您在".date('Y-m-d G:i:s',$data2['createtime'])."的充值已经成功，本次充值获得".$by_time."天的写信包月服务，欢迎您再次使用!";
							$xinxi=$text2;
						}
						else
						{
							$text2="您在".date('Y-m-d G:i:s',$data2['createtime'])."的充值已经成功，本次充值获得".$by_time."天的写信包月服务，欢迎您再次使用，如有问题，请拨打充值热线:<a href='tel:".$sitem['tel']."'>".$sitem['tel']."</a>";
							$xinxi="您在".date('Y-m-d G:i:s',$data2['createtime'])."的充值已经成功，本次充值获得".$by_time."天的写信包月服务，如有问题，请拨打充值热线:".$sitem['tel'];
						}
						$text=urlencode($text2);
						$access_token = WeAccount::token();
						$data = array(
						  "touser"=>$temp['from_user'],
						  "msgtype"=>"text",
						  "text"=>array("content"=>$text)
						);
						$url = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token={$access_token}";
						load()->func('communication');
						$response = ihttp_request($url, urldecode(json_encode($data)));
						$errcode=json_decode($response['content'],true);
						$data3=array(
								'weid'=>$uniacid,
								'mid'=>$temp['mid'],
								'type'=>'text',
								'content'=>$text2,
								'status'=>$errcode['errcode'],
								'createtime'=>TIMESTAMP,
							);
						pdo_insert("jy_ppp_kefu",$data3);
						$data4=array(
							'weid'=>$uniacid,
							'mid'=>$temp['mid'],
							'sendid'=>0,
							'content'=>$xinxi,
							'type'=>3,
							'yuedu'=>0,
							'createtime'=>TIMESTAMP,
						);
						pdo_insert("jy_ppp_xinxi",$data4);
					}
					if($temp['log']==3)
					{
						$data2=array(
							'weid'=>$uniacid,
							'mid'=>$temp['mid'],
							'logid'=>$id,
							'createtime'=>TIMESTAMP,
						);
						$now=time();
						$category = pdo_fetchall ( "SELECT * FROM " . tablename ( 'jy_ppp_price' ) . " WHERE weid = ".$weid." AND log=3 ORDER BY displayorder DESC,id ASC" );
						if(empty($category))
						{
							if($temp['fee']==100)
							{
								if($temp['shouxin']>$now)
								{
									$shouxin=86400*15+$temp['shouxin'];
									$data2['starttime']=$temp['shouxin'];
								}
								else
								{
									$shouxin=86400*15+$now;
									$data2['starttime']=$now;
								}
								$by_time=15;
							}
							elseif ($temp['fee']==50) {
								if($temp['shouxin']>$now)
								{
									$shouxin=86400*7+$temp['shouxin'];
									$data2['starttime']=$temp['shouxin'];
								}
								else
								{
									$shouxin=86400*7+$now;
									$data2['starttime']=$now;
								}
								$by_time=7;
							}
							elseif ($temp['fee']==30) {
								if($temp['shouxin']>$now)
								{
									$shouxin=86400*3+$temp['shouxin'];
									$data2['starttime']=$temp['shouxin'];
								}
								else
								{
									$shouxin=86400*3+$now;
									$data2['starttime']=$now;
								}
								$by_time=3;
							}
							elseif ($temp['fee']==10) {
								if($temp['shouxin']>$now)
								{
									$shouxin=86400*1+$temp['shouxin'];
									$data2['starttime']=$temp['shouxin'];
								}
								else
								{
									$shouxin=86400*1+$now;
									$data2['starttime']=$now;
								}
								$by_time=1;
							}
						}
						else
						{
							foreach ($category as $key => $c) {
								if($temp['fee']==$c['fee'])
								{
									if($temp['shouxin']>$now)
									{
										$shouxin=86400*$c['shouxin']+$temp['shouxin'];
										$data2['starttime']=$temp['shouxin'];
									}
									else
									{
										$shouxin=86400*$c['shouxin']+$now;
										$data2['starttime']=$now;
									}
									$by_time=$c['shouxin'];
								}
							}
						}
						$data2['endtime']=$shouxin;

						pdo_insert("jy_ppp_shouxin_log",$data2);

						pdo_update('jy_ppp_member',array('shouxin'=>$shouxin),array('id'=>$temp['mid']));

						$data2['createtime']=time();
						if(empty($sitem['tel']))
						{
							$text2="您在".date('Y-m-d G:i:s',$data2['createtime'])."的充值已经成功，本次充值获得".$by_time."天的收信宝服务，欢迎您再次使用!";
							$xinxi=$text2;
						}
						else
						{
							$text2="您在".date('Y-m-d G:i:s',$data2['createtime'])."的充值已经成功，本次充值获得".$by_time."天的收信宝服务，欢迎您再次使用，如有问题，请拨打充值热线:<a href='tel:".$sitem['tel']."'>".$sitem['tel']."</a>";
							$xinxi="您在".date('Y-m-d G:i:s',$data2['createtime'])."的充值已经成功，本次充值获得".$by_time."天的收信宝服务，如有问题，请拨打充值热线:".$sitem['tel'];
						}
						$text=urlencode($text2);
						$access_token = WeAccount::token();
						$data = array(
						  "touser"=>$temp['from_user'],
						  "msgtype"=>"text",
						  "text"=>array("content"=>$text)
						);
						$url = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token={$access_token}";
						load()->func('communication');
						$response = ihttp_request($url, urldecode(json_encode($data)));
						$errcode=json_decode($response['content'],true);
						$data3=array(
								'weid'=>$uniacid,
								'mid'=>$temp['mid'],
								'type'=>'text',
								'content'=>$text2,
								'status'=>$errcode['errcode'],
								'createtime'=>TIMESTAMP,
							);
						pdo_insert("jy_ppp_kefu",$data3);
						$data4=array(
							'weid'=>$uniacid,
							'mid'=>$temp['mid'],
							'sendid'=>0,
							'content'=>$xinxi,
							'type'=>3,
							'yuedu'=>0,
							'createtime'=>TIMESTAMP,
						);
						pdo_insert("jy_ppp_xinxi",$data4);
					}
				}
			}
			echo "<script>

					window.location.href = '".$_W['siteroot'].'app/' .substr($this->createMobileUrl('geren'),2)."';

				</script>";
		}

		if ($params['from'] == 'return') {
			if ($params['result'] == 'success') {
				echo "<script>

					window.location.href = '".$_W['siteroot'].'app/' .substr($this->createMobileUrl('geren'),2)."';

				</script>";
			}
			else
			{
				message('支付失败！', $this->createMobileUrl('geren'), 'success');
			}

		}
