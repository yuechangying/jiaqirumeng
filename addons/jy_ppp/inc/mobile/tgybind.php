<?php
global $_W,$_GPC;
		$id=$_GPC['id'];
		$weid=$_W['uniacid'];
		//checkAuth();
		$from_user=$_SESSION['jy_openid'];
		if(empty($from_user))
		{
			echo "<script>
				window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgybind','id'=>$_GPC['id']))."';
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
					window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgybind','id'=>$_GPC['id']))."';
				</script>";
			}
		}


		if(empty($uid))
		{
			echo "<script>
				window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'tgybind','id'=>$id))."';
			</script>";
		}
		else
		{
			$sitem=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_setting')." WHERE weid=".$weid);

			$item = pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE id = ".$id." AND status!=0");
			if (empty($item)) {
				message('抱歉，该用户不存在或是已经删除！', '', 'error');
			}
			if (!empty($uid))
			{
				pdo_update("jy_ppp_tuiguang",array('from_user'=>'','uid'=>0),array('uid'=>$uid));
			}
			pdo_update("jy_ppp_tuiguang",array('from_user'=>$from_user,'uid'=>$uid),array('id'=>$id));

		}

		include $this->template('dybind');