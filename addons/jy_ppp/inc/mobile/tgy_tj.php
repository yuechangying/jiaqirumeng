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
					window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_tj'))."';
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
						window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgy_tj'))."';
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
				$scene_str = "推广员".$tgyid."推广二维码";
				if(empty($member['qrcode']))
				{
					$acid = intval($_W['acid']);
					load()->func('communication');
					$uniacccount = WeAccount::create($acid);
					$is_exist = pdo_fetchcolumn('SELECT ticket FROM ' . tablename('qrcode') . ' WHERE uniacid = :uniacid AND acid = :acid AND scene_str = :scene_str AND model = 2', array(':uniacid' => $_W['uniacid'], ':acid' => $_W['acid'], ':scene_str' => $scene_str));
					if(!empty($is_exist)) {
						pdo_update("jy_ppp_tuiguang",array('qrcode'=>$is_exist),array('id'=>$tgyid));
						$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND id=".$tgyid);
					}
					else
					{
						$barcode['action_info']['scene']['scene_str'] = $scene_str;
						$barcode['action_name'] = 'QR_LIMIT_STR_SCENE';
						$result = $uniacccount->barCodeCreateFixed($barcode);
						if(!is_error($result)) {
							$insert = array(
								'uniacid' => $_W['uniacid'],
								'acid' => $acid,
								'qrcid' => 0,
								'scene_str' => $barcode['action_info']['scene']['scene_str'],
								'keyword' => $scene_str,
								'name' => $scene_str,
								'model' => 2,
								'ticket' => $result['ticket'],
								'url' => $result['url'],
								'expire' => $result['expire_seconds'],
								'createtime' => TIMESTAMP,
								'status' => '1',
								'type' => 'scene',
							);
							pdo_insert('qrcode', $insert);
							pdo_update("jy_ppp_tuiguang",array('qrcode'=>$result['ticket']),array('id'=>$tgyid));
							$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND id=".$tgyid);
						} else {
							message("公众平台返回接口错误. <br />错误代码为: {$result['errorcode']} <br />错误信息为: {$result['message']}");
						}
					}
				}
				$temp_qrcode=pdo_fetch("SELECT * FROM ".tablename('rule')." WHERE uniacid=".$weid." AND module='jy_ppp' AND name='".$scene_str."'");
				if(empty($temp_qrcode))
				{
					$data_qrcode=array(
							'uniacid'=>$weid,
							'name'=>$scene_str,
							'module'=>'jy_ppp',
							'displayorder'=>0,
							'status'=>1,
						);
					pdo_insert('rule',$data_qrcode);
					$rid=pdo_insertid();
					$data_qrcode2=array(
							'uniacid'=>$weid,
							'rulename'=>$scene_str,
							'desc'=>'',
							'type'=>1,
							'ruleid'=>$rid,
						);
					pdo_insert('jy_ppp_rule',$data_qrcode2);
					$data_qrcode3=array(
							'uniacid'=>$weid,
							'rid'=>$rid,
							'content'=>$scene_str,
							'module'=>'jy_ppp',
							'type'=>1,
							'displayorder'=>0,
							'status'=>1,
						);
					pdo_insert('rule_keyword',$data_qrcode3);
				}

				include $this->template('tgy_tj');
		}
		else
		{

			echo "<script>
					window.location.href = '".$this->createMobileUrl('tgy_login')."';
				</script>";
		}