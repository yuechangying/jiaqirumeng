<?php
		//信息
		global $_W,$_GPC;
		$weid=$_W['uniacid'];
		checklogin();

		$op=$_GPC['op'];
		load()->func('tpl');

		$mid=intval($_GPC['mid']);
		if(!empty($mid))
		{
			$member=pdo_fetch("SELECT a.*,b.avatar,b.nickname FROM ".tablename('jy_ppp_tuiguang')." as a left join ".tablename('mc_members')." as b on a.uid=b.uid WHERE a.weid=".$weid." AND a.id=".$mid);
			if(empty($member))
			{
				message("该推广员用户已不存在！");
			}
			else
			{
				if($member['status']!=1)
				{
					message("该推广员用户已经被封号了！");
				}
			}
		}

		if(checksubmit()) {
			$title=$_GPC['title'];
			$content=$_GPC['content'];
			if(empty($title))
			{
				message("请输入消息的标题！");
			}
			if(empty($content))
			{
				message("请输入消息的正文!");
			}

			$type=intval($_GPC['type']);
			if(empty($type))
			{
				if(empty($mid))
				{
					message("未选择对应的用户id！");
				}
				$list=array();
				$list[0]=$member;
			}
			elseif ($type==1) {
				$qun=intval($_GPC['qun']);
				if(empty($qun))
				{
					message("请选择群发用户类型！");
				}
				elseif ($qun==1) {
					$list=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND  parentid=0 AND status=1 ");
				}
				elseif ($qun==2) {
					$list=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND  parentid>0 AND status=1 ");
				}
				elseif ($qun==3) {
					$list=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_tuiguang')." WHERE weid=".$weid." AND status=1 ");
				}
			}
			else
			{
				message("您选择的消息类型不正确！");
			}

			if(empty($list))
			{
				message("并未有任何服务条件的用户可以收到消息！");
			}
			else
			{
				$data=array(
					'weid'=>$weid,
					'title'=>$title,
					'content'=>$content,
					'yuedu'=>0,
					'yuedutime'=>0,
				);
				$text2=$title;
				$text=urlencode($text2);
				$desc2="点击我查看所有消息";
				$desc=urlencode($desc2);
				$pic2=$_W['siteroot']."addons/jy_ppp/images/mail3.png";

				$pic=urlencode($pic2);

				$url2=$_W['siteroot']."app/index.php?i={$weid}&c=entry&do=tgy_msg&m=jy_ppp";
				$url=urlencode($url2);
				$access_token = WeAccount::token();
				foreach ($list as $key => $value) {
					$data['createtime']=TIMESTAMP;
					$data['uid']=$value['uid'];
					$data['from_user']=$value['from_user'];
					$data['mid']=$value['id'];
					pdo_insert('jy_ppp_tuiguang_xinxi',$data);
					if(!empty($value['from_user']))
					{
						
						$data2 = array(
						  "touser"=>$value['from_user'],
						  "msgtype"=>"news",
						  "news"=>array("articles"=>array(0=>(array("title"=>$text,"description"=>$desc,"url"=>$url,'picurl'=>$pic))))
						);
						$url = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token={$access_token}";
						load()->func('communication');
						$response = ihttp_request($url, urldecode(json_encode($data2)));
						$errcode=json_decode($response['content'],true);

						$data3=array(
								'weid'=>$weid,
								'type'=>'news',
								'content'=>$text2,
								'desc'=>$desc2,
								'url'=>$url2,
								'picurl'=>$pic2,
								'status'=>$errcode['errcode'],
								'createtime'=>TIMESTAMP,
							);
						pdo_insert('jy_ppp_kefu',$data3);
					}
				}
				message("发送消息成功",$this->createWebUrl('send'),'success');
			}
		}

		include $this->template('web/send');
