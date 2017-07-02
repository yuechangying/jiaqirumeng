<?php
//decode by 冰锋微云www.ncwxyx.com www.ncwxyx.com
/**
 * 粉丝啪啪啪模块处理程序
 *
 * @author Michael Hu
 * @url http://www.ncwxyx.com/
 */
defined('IN_IA') or exit('Access Denied');

class Jy_pppModuleProcessor extends WeModuleProcessor {
	public function respond() {
		global $_W;
		$rid = $this->rule;
		$from_user=$this->message['from'];
		$sql = "SELECT * FROM " . tablename('jy_ppp_rule') . " WHERE ruleid = :id ";
		$reply = pdo_fetch($sql, array(':id'=>$rid));
		$weid=$reply['uniacid'];
		$sql = "SELECT * FROM " . tablename('jy_ppp_setting') . " WHERE weid = :weid ";
		$sitem = pdo_fetch($sql, array(':weid'=>$reply['uniacid']));
		if( !empty($reply['type']) && !empty($sitem['unzhuce']) && !empty($from_user))
		{
			$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND from_user='".$from_user."' AND status=1");
			if(empty($member))
			{
				$nickname=$_W['member']['nickname'];
				$avatar=$_W['member']['avatar'];
				$sex=$_W['member']['gender'];
				if(empty($nickname))
				{
					if(empty($_W['oauth_account']))
					{
						$oauth_account=$_W['account'];
					}
					else
					{
						$oauth_account=$_W['oauth_account'];
					}
					if (!empty($from_user) && intval($oauth_account['level']) > 3) {
						$accObj = WeiXinAccount::create($oauth_account);
						$userinfo = $accObj->fansQueryInfo($from_user);
					}
					$nickname=$userinfo['nickname'];
					$avatar=$userinfo['headimgurl'];
					$sex=$userinfo['sex'];
				}
				$uid=$_W['member']['uid'];
				if(empty($sex))
				{
					$sex=1;
				}
				if($sitem['address']==1)
				{
					$province = $sitem['province'];
					if(empty($province))
					{
						$province=11;
					}
					$city = $sitem['city'];
					if(empty($city))
					{
						$city = $province."01";
					}
					if(empty($province))
					{
						$province=11;
					}
					if(empty($city))
					{
						$city=1101;
					}
				}
				

				pdo_update('jy_ppp_member',array('status'=>0),array('weid'=>$weid,'from_user'=>$from_user));

				$wechat_member_temp=pdo_fetch("SELECT id,sex FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND from_user='".$from_user."' AND type=1 ");
				$data=array(
					'weid'=>$weid,
					'sex'=>$sex,
					'nicheng'=>$nickname,
					'province'=>$province,
					'city'=>$city,
					'brith'=>662659200,
					'status'=>1,
					'type'=>1,
					'from_user'=>$from_user,
					'uid'=>$uid,
					'createtime'=>TIMESTAMP,
				);
				if(!empty($rid))
				{
					if(!empty($reply['type']))
					{
						$data['parentid']=preg_replace('/([\x80-\xff]*)/i','',$reply['rulename']);
					}
				}

				pdo_insert('jy_ppp_member',$data);
				$mid=pdo_insertid();

				if(!empty($avatar))
				{
					$temp_thumb=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_thumb')." WHERE weid=".$weid." AND mid=".$mid." AND thumb='".$avatar."'");
					if(empty($temp_thumb))
					{
						$data2=array(
						'weid'=>$weid,
						'mid'=>$mid,
						'thumb'=>$avatar,
						'createtime'=>TIMESTAMP,
						);
						if(!empty($sitem['thumb']))
						{
							$data2['type']=0;
						}
						else
						{
							$data2['type']=1;
							pdo_update("jy_ppp_member",array('avatar'=>$avatar),array('id'=>$mid));
						}
						pdo_insert("jy_ppp_thumb",$data2);
					}
				}
			}
		}
		$news[] = array(
				'title' => $sitem['zhuce_text'],
				'description' => $sitem['sharedescription'],
				'picurl' => '../addons/jy_ppp/images/notice.jpg',
				'url' => $this->createMobileUrl('index', array('rid' => $rid)),
			);
		return $this->respNews($news);
	}
}