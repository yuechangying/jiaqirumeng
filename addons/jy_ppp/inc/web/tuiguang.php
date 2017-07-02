<?php
//decode by 折翼天使资源社区 www.zheyitianshi.com
global $_W, $_GPC;
		$weid=$_W['weid'];
		$op = !empty($_GPC['op']) ? $_GPC['op'] : 'tuiguang';
		$this->faxin();
		if($op=='tuiguang')
		{
			$condition = '';

			if (!empty($_GPC['keyword'])) {
					$condition .= " AND a.username LIKE '%{$_GPC['keyword']}%'";
				}


			$sql = "SELECT a.*,c.nickname,c.avatar FROM " . tablename('jy_ppp_tuiguang') . " AS a
					LEFT JOIN ".tablename('mc_members')." as c on a.uid=c.uid WHERE a.weid = ".$weid." $condition ";
			$list = pdo_fetchall($sql);
			$children = array();
			if(!empty($list))
			{
				foreach ($list as $key => $value) {
					$temp=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_rule')." WHERE uniacid=".$weid." AND rulename='推广员".$value['id']."推广二维码'");
		            if(!empty($temp))
		            {
		            	$url[$value['id']]=$_W['siteroot'].'app/'.substr($this->createMobileUrl('index',array('rid'=>$temp['ruleid'])), 2);
		            }
					$list[$key]['num']=pdo_fetchcolumn("SELECT count(id) FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND parentid=".$value['id']);
					if (!empty($value['parentid'])) {
						$value['num']=$list[$key]['num'];
		                $children[$value['parentid']][] = $value;
		                unset($list[$key]);
		            }
		            
				}
			}
		}
		elseif ($op=='sc')
		{
			$sql = "SELECT a.*,c.nickname,c.avatar FROM " . tablename('jy_ppp_tuiguang') . " AS a
					LEFT JOIN ".tablename('mc_members')." as c on a.uid=c.uid WHERE a.weid = ".$weid." $condition ";
			$list = pdo_fetchall($sql);
			foreach ($list as $key => $value) {
				$scene_str = "推广员".$value['id']."推广二维码";
				$id=$value['id'];
				if(empty($value['qrcode']))
				{
					$acid = intval($_W['acid']);
					load()->func('communication');
					$uniacccount = WeAccount::create($acid);
					$is_exist = pdo_fetchcolumn('SELECT ticket FROM ' . tablename('qrcode') . ' WHERE uniacid = :uniacid AND acid = :acid AND scene_str = :scene_str AND model = 2', array(':uniacid' => $_W['uniacid'], ':acid' => $_W['acid'], ':scene_str' => $scene_str));
					if(!empty($is_exist)) {
						pdo_update("jy_ppp_tuiguang",array('qrcode'=>$is_exist),array('id'=>$id));
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
							pdo_update("jy_ppp_tuiguang",array('qrcode'=>$result['ticket']),array('id'=>$id));
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


			}
			message('推广渠道二维码生成成功！', $this->createWebUrl('tuiguang', array('op' => 'tuiguang')), 'success');
		}
		elseif ($op=='edit')
		{
			$id = intval($_GPC['id']);
			$parentid = intval($_GPC['parentid']);
			if(!empty($parentid))
			{
				$parent = pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE id = :id", array(':id' => $parentid));
			}
			load()->func('tpl');
			if (!empty($id)) {
				$item = pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE id = :id", array(':id' => $id));
				if (empty($item)) {
					message('抱歉，该工作人员不存在或是已经删除！', '', 'error');
				}

			}

			if (checksubmit('submit')) {
				if (empty($_GPC['username'])) {
					message('请输入用户名！');
				}
				if(!empty($_GPC['mobile']))
				{
					if(preg_match('/1[345789]{1}\d{9}$/', $_GPC['mobile']))
					{
						if(!empty($id))
						{
							$temp=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND mobile='".$_GPC['mobile']."' AND id!=".$id);
						}
						else
						{
							$temp=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND mobile='".$_GPC['mobile']."'");
						}
						
						if(!empty($temp))
						{
							message("该手机号已经被其他工作人员所注册，请更改手机号！");
						}
					}
					else{
						message('店员手机格式错误!');
					}
				}
				else
				{
					message('请输入店员手机！');
				}
				if (empty($_GPC['password'])) {
					message('请输入店员密码！');
				}
				if (!empty($_GPC['mail'])) {
					if(ereg('([_a-z0-9-]+)(\.[_a-z0-9-]+)*@([a-z0-9-]+)(\.[a-z0-9-]+)*(\.[a-z]{2,4})$', $_GPC['mail']))
					{

					}
					else{
						message('邮箱地址错误!');
					}
				}
				$data = array(
					'weid' => $_W['weid'],
					'username' =>$_GPC['username'],
					'mobile' => $_GPC['mobile'],
					'mail' => $_GPC['mail'],
					'description' => $_GPC['description'],
					'QQ' => $_GPC['QQ'],
					'wechat' => $_GPC['wechat'],
					'alipay' => $_GPC['alipay'],
					'realname' => $_GPC['realname'],
					'password' =>$_GPC['password'],
					'createtime' =>TIMESTAMP,
				);
				if(!empty($parentid))
				{
					$data['parentid']=$parentid;
				}
				if(!empty($id))
				{
					pdo_update('jy_ppp_tuiguang', $data,array('id'=>$id));
				}
				else
				{
					pdo_insert('jy_ppp_tuiguang', $data);
					$id=pdo_insertid();
				}
				$scene_str = "推广员".$id."推广二维码";
				if(empty($item['qrcode']))
				{
					$acid = intval($_W['acid']);
					load()->func('communication');
					$uniacccount = WeAccount::create($acid);
					$is_exist = pdo_fetchcolumn('SELECT ticket FROM ' . tablename('qrcode') . ' WHERE uniacid = :uniacid AND acid = :acid AND scene_str = :scene_str AND model = 2', array(':uniacid' => $_W['uniacid'], ':acid' => $_W['acid'], ':scene_str' => $scene_str));
					if(!empty($is_exist)) {
						pdo_update("jy_ppp_tuiguang",array('qrcode'=>$is_exist),array('id'=>$id));
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
							pdo_update("jy_ppp_tuiguang",array('qrcode'=>$result['ticket']),array('id'=>$id));
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


				message('信息更新成功！', $this->createWebUrl('tuiguang', array('op' => 'tuiguang')), 'success');
			}
		}
		elseif ($op=='del') {
			$id = intval($_GPC['id']);
			$item = pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE id = ".$id);
			if (empty($item)) {
				message('抱歉，该用户不存在或是已经删除！', '', 'error');
			}
			pdo_delete('jy_ppp_tuiguang',array('id'=>$id));
			message('删除成功！', referer(), 'success');
		}
		include $this->template('web/tuiguang');