<?php
global $_W,$_GPC;
		if ( strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger') == false ) {
			$weixin=0;

			$weid=$_GPC['i'];

			$mid=$_SESSION['mid'];
			if(!empty($mid))
			{
				$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND id=".$mid." AND status=1");
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
					window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'match'))."';
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
						window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'match'))."';
					</script>";
				}
				else
				{
					$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND from_user='".$from_user."' AND status=1");
					$mid=$member['id'];
				}
			}
		}

		if(!empty($member))
		{
			$sitem=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_setting')." WHERE weid=".$weid);
			$match=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_match')." WHERE weid=".$weid." AND mid=".$mid);

			$op=$_GPC['op'];
			if($op=='add')
			{
				$data=array();
				$data['weid']=$weid;
				$data['mid']=$mid;
				$data['blank']=0;

			  	$data['age']=$_GPC['con_age'];
			  	if(empty($data['age']))
			  	{
			  		$data['blank']++;
			  	}
                $data['agemax']=$_GPC['con_agemax'];
                if(empty($data['agemax']))
                {
                    $data['blank']++;
                }

			  	$data['height']=$_GPC['con_height'];
			  	if(empty($data['height']))
			  	{
			  		$data['blank']++;
			  	}

                $data['heightmax']=$_GPC['con_heightmax'];
                if(empty($data['heightmax']))
                {
                    $data['blank']++;
                }

			  	$data['education']=$_GPC['con_edu'];
			  	if(empty($data['education']))
			  	{
			  		$data['blank']++;
			  	}
			  	$data['income']=$_GPC['con_income'];
			  	if(empty($data['income']))
			  	{
			  		$data['blank']++;
			  	}

                $data['incomemax']=$_GPC['con_incomemax'];
                if(empty($data['incomemax']))
                {
                    $data['blank']++;
                }

			  	$data['province']=$_GPC['con_province'];
			  	if(empty($data['province']))
			  	{
			  		$data['blank']++;
			  	}

                $data['city']=$_GPC['con_city'];
                if(empty($data['city']))
                {
                    $data['blank']++;
                }

                printLog(basename(__FILE__) . ",line=" . __LINE__ . " education=" . $data['education']);

			  	$data['createtime']=TIMESTAMP;

				if(empty($match))
				{
					pdo_insert('jy_ppp_match',$data);
				}
				else
				{
					pdo_update("jy_ppp_match",$data,array('id'=>$match['id']));
				}

				echo 1;
				exit;
			}
			else
			{
                printLog(basename(__FILE__) . ",line=" . __LINE__ . " matchprovince=" . $match['province'] . " matchcity=" . $match['city']);

				if(empty($match['province']) || empty($match['city']))
				{
					$province = $member['province'];
                    $city = $member['city'];
				}
				else
				{
					$province=$match['province'];
                    $city = $match['city'];
				}
				if(empty($province))
				{
					$province=32;
                    $city = 3201;
				}
				include $this->template('match');
			}

		}
		else
		{
			if($weixin==1)
			{
				echo "<script>
						window.location.href = '".$this->createMobileUrl('zhuce')."';
					</script>";
			}
			else
			{
				echo "<script>
						window.location.href = '".$this->createMobileUrl('login')."';
					</script>";
			}
		}