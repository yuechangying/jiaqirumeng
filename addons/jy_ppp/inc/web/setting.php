<?php
global $_W,$_GPC;
		$weid=$_W['uniacid'];
		checklogin();

		$op=$_GPC['op'];
		if($op=='delxx')
		{
			$now=time();
			$old=$now-5*86400;
			$sql ="DELETE FROM `ims_jy_ppp_kefu` WHERE weid=".$weid." AND createtime<".$old.";";
		    pdo_query($sql);
		    $sql ="DELETE FROM `ims_jy_ppp_xinxi` WHERE weid=".$weid." AND createtime<".$old.";";
		    pdo_query($sql);
		    $sql ="DELETE FROM `ims_jy_ppp_xinxi_temp` WHERE weid=".$weid." AND createtime<".$old.";";
		    pdo_query($sql);
			message("删除消息成功！",$this->createWebUrl('setting'),'success');
		}
		else
		{
			$this->faxin();

			load()->func('tpl');

			$item=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_setting')." WHERE weid=".$weid);
			if(empty($item))
			{
				$item['zhuce_bg']='../addons/jy_ppp/images/speed_2015114.jpg';
				$item['adminthumb']='../addons/jy_ppp/images/adminthumb.png';
				$item['kftime']="9:00-21:00 周一至周五";
				$item['doubi']="豆币";
				$item['unit']="豆";
				$item['chat']=20;
				$item['idcard']=60;
				$item['jiange']=30;
				$item['shangxian']=12;
				$item['mail_float']=1;
				$item['huafei_thumb']="../addons/jy_ppp/images/huafei_thumb.png";
				$item['zhuce_text']="1亿9836万美女帅哥在这里等你哦~";
				$item['rule']="本网站是一个严肃纯净的婚恋交友软件，用户（以下也称“会员”）在此注册为征友会员并在之后进行的征友活动中应遵守以下会员注册条款：<br/><br/>1、注册条款的接受<br/>一旦会员注册即表示会员已经阅读并且同意该协议，并接受所有的注册条款。<br/><br/>2、会员注册条件<br/>1) 申请注册成为会员应同时满足下列全部条件：在注册之日以及此后使用交友服务期间必须以恋爱或者婚姻为目的；在注册之日以及此后使用交友服务期间必须是单身状态，包括未婚、离异或是丧偶；在注册之日必须年满18周岁以上。<br/>2) 为更好的享有提供的服务，会员应：提供本人真实、正确、最新及完整的资料； 随时更新登记资料，保持其真实性及有效性；提供真实有效的联系人手机号码；征友过程中，务必保持征友帐号的唯一性。<br/>3) 若会员提供任何错误、不实或不完整的资料，或被怀疑资料为错误、不实或不完整及违反会员注册条款的，或被怀疑其会员资料、言行等有悖于“严肃纯净的婚恋交友”主题的，官方将有权修改会员的注册昵称、独白等，或暂停或终止该会员的帐号，或暂停或终止提供全部或部分服务。<br/><br/>3、会员账号名称安全<br/>任何注册和使用的账号名称，不得有下列情形：<br/>（一）违反宪法或法律法规规定的；<br/>（二）危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；<br/>（三）损害国家荣誉和利益的，损害公共利益的；<br/>（四）煽动民族仇恨、民族歧视，破坏民族团结的；<br/>（五）破坏国家宗教政策，宣扬邪教和封建迷信的；<br/>（六）散布谣言，扰乱社会秩序，破坏社会稳定的；<br/>（七）散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；<br/>（八）侮辱或者诽谤他人，侵害他人合法权益的；<br/>（九）含有法律、行政法规禁止的其他内容的。<br/>会员以虚假信息骗取账号名称注册，或其账号头像、简介等注册信息存在违法和不良信息的，官方有权采取通知限期改正、暂停使用、注销登记等措施。<br/>对冒用关联机构或社会名人注册账号名称的会员，官方有权注销其账号。<br/><br/>4、服务说明<br/>1) 在提供网络服务时，可能会对部分网络服务收取一定的费用，在此情况下，会在相关页面上做明确的提示。如会员拒绝支付该等费用，则不能使用相关的网络服务。付费业务将在本注册条款的基础上另行规定服务条款，以规范付费业务的内容和双方的权利义务，会员应认真阅读，如会员购买付费业务，则视为接受付费业务的服务条款。<br/>2) 无论是付费业务还是免费提供服务，上述服务均有有效期，有效期结束后服务将自动终止，且有效期不可中断或延期。除非本注册条款另有规定，所有付费业务均不退费。<br/>3) 对于利用服务进行非法活动，或其言行（无论线上或者线下的）背离严肃交友目的的，官方将严肃处理，包括将其列入黑名单、将其被投诉的情形公之于众、删除会员帐号等处罚措施。<br/>4) 官方权向其会员发送广告信，或为组织线下活动等目的，向其会员发送电子邮件、短信或电话通知。由于手机网络的特殊性，官方有权获取会员的手机信息，如手机号码或会员的基站位置等。<br/>5) 为提高会员的交友的成功率和效率的目的，官方有权将会员的交友信息在合作网站上进行展示或其他类似行为。<br/><br/>5、免责条款<br/>1) 不保证其提供的服务一定能满足会员的要求和期望，也不保证服务不会中断，对服务的及时性、安全性、准确性都不作保证。<br/>2) 对于会员通过提供的服务传送的内容，官方会尽合理努力按照国家有关规定严格审查，但无法完全控制经由网站服务传送的内容，不保证内容的正确性、完整性或品质。因此会员在使用服务时，可能会接触到令人不快、不适当或令人厌恶的内容。在任何情况下，官方均不为会员经由网站服务以张贴、发送电子邮件或其它方式传送的任何内容负责。但官方有权依法停止传输任何前述内容并采取相应行动，包括但不限于暂停会员使用网站服务的全部或部分，保存有关记录，并根据国家法律法规、相关政策在必要时向有关机关报告并配合有关机关的行动。<br/>3) 对于网站提供的各种广告信息、链接、资讯等，官方会对广告内容进行初步审核，但是难以确保对方产品真实性、合法性或可靠性，由于产品购买导致的相关责任主要由广告商承担；敬告用户理性看待，如需购买或者交易，请谨慎考虑。并且，对于会员经由服务与广告商进行联系或商业往来，完全属于会员和广告商之间的行为，与官方无关。对于前述商业往来所产生的任何损害或损失，官方不承担任何责任。<br/>4) 对于用户上传的照片、资料、证件等，官方已采用相关措施并已尽合理努力进行审核，但不保证其内容的正确性、合法性或可靠性，相关责任由上传上述内容的会员负责。<br/>5) 会员以自己的独立判断从事与交友相关的行为，并独立承担可能产生的不利后果和责任，官方不承担任何法律责任。<br/>6)依据有关法律法规的规定或依据行政机关、司法机关、检察机关的要求，向其提供会员的基本信息或站内聊天信息，上述行为侵犯会员隐私权的，官方不承担任何法律责任。<br/>7)作为交友平台，帮助用户寻找心仪伴侣是我们的服务内容。官方推出的有缘小助手、红娘服务、收信宝等服务，全都是在用户同意并主动授权的情况下帮助授权用户寻找异性的功能性服务。不能保证用户通过此类服务授权由系统自动发出或接收到的信息完全满足用户交友需求。<br/>有缘小助手，为了提高用户处理私信的能力，看到更多符合自己要求的异性来信，提供了有缘小助手服务。在用户主动授权设置有缘小助手的情况下，有缘小助手会帮助用户过滤掉信箱中异性发来的招呼类信件，此类过滤掉的私信只是设为已读，仍然存于授权用户的信箱中。过滤的同时给符合授权用户征友要求的异性发送系统自动做出的信件回复。回复内容由官方根据用户交友互动中最常用的词语拟定，并由系统随机选取后发送。<br/>红娘服务，为了帮助女用户找到符合自己要求的异性，提供了红娘服务。红娘服务内容包括：优先将红娘会员推荐给优质男性用户，获得更多交流机会；红娘将帮助申请红娘服务的用户向符合其征友要求的异性询问交友意向；实时监控询问总数。<br/>收信宝，为了帮助男用户找到符合自己要求的异性，提供了收信宝服务。收信宝服务内容包括：优先将收信宝用户展示给女用户，通过替男用户打招呼的方式向符合男用户征友要求的女用户介绍男用户，从而增加男用户收信。 <br/>以上三种服务用户可以自行取消。<br/>8)  为了促进用户互动，产品上的组件应用或小游戏都带有触发招呼的功能。用户在玩此功能的组件或小游戏的同时会给符合自己征友要求的异性发去问候招呼。不能保证用户通过此类组件或小游戏发出或接受到的信息完全满足用户的交友需求。<br/><br/>6、会员应遵守以下法律法规：<br/>1) 提醒会员在使用服务时，遵守《中华人民共和国合同法》、《中华人民共和国著作权法》、《全国人民代表大会常务委员会关于维护互联网安全的决定》、《中华人民共和国保守国家秘密法》、《中华人民共和国电信条例》、《中华人民共和国计算机信息系统安全保护条例》、《中华人民共和国计算机信息网络国际联网管理暂行规定》及其实施办法、《计算机信息系统国际联网保密管理规定》、《互联网信息服务管理办法》、《计算机信息网络国际联网安全保护管理办法》、《互联网电子公告服务管理规定》、《互联网用户账号名称管理规定》等相关中国法律法规的规定。<br/>2) 在任何情况下，如果官方有理由认为会员使用服务过程中的任何行为，包括但不限于会员的任何言论和其它行为违反或可能违反上述法律和法规的任何规定，可在任何时候不经任何事先通知终止向该会员提供服务。<br/><br/>7、禁止会员从事下列行为:<br/>1)发布信息或者利用服务时在网页上或者利用服务制作、复制、发布、传播以下信息：反对宪法所确定的基本原则的；危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；损害国家荣誉和利益的；煽动民族仇恨、民族歧视、破坏民族团结的；破坏国家宗教政策，宣扬邪教和封建迷信的；散布谣言，扰乱社会秩序，破坏社会稳定的；散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；侮辱或者诽谤他人，侵害他人合法权利的；含有虚假、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它有悖道德、令人反感的内容；含有中国法律、法规、规章、条例以及任何具有法律效力的规范所限制或禁止的其它内容的。<br/>2) 使用服务的过程中，以任何方式危害未成年人的利益的。<br/>3) 冒充任何人或机构，包含但不限于冒充工作人员、版主、主持人，或以虚伪不实的方式陈述或谎称与任何人或机构有关的。<br/>4) 将侵犯任何人的肖像权、名誉权、隐私权、专利权、商标权、著作权、商业秘密或其它专属权利的内容上载、张贴、发送电子邮件或以其它方式传送的。<br/>5) 将病毒或其它计算机代码、档案和程序，加以上载、张贴、发送电子邮件或以其它方式传送的。<br/>6) 跟踪或以其它方式骚扰其他会员的。<br/>7) 未经合法授权而截获、篡改、收集、储存或删除他人个人信息、电子邮件或其它数据资料，或将获知的此类资料用于任何非法或不正当目的。<br/>8) 以任何方式干扰服务的。<br/><br/>8、关于会员在婚恋的上传或张贴的内容<br/>1) 会员上传或张贴的内容（包括照片、文字、交友成功会员的成功故事等），视为会员授予官方免费、非独家的使用权，有权为展示、传播及推广前述张贴内容的目的，对上述内容进行复制、修改、出版等。该使用权持续至会员书面通知官方不得继续使用，且以实际收到该等书面通知时止。官方合作伙伴使用或在现场活动中使用，官方将事先征得会员的同意，但官方使用不受此限。<br/>2) 因会员进行上述上传或张贴，而导致任何第三方提出侵权或索赔要求的，会员承担全部责任。<br/>3) 任何第三方对于会员在公开使用区域张贴的内容进行复制、修改、编辑、传播等行为的，该行为产生的法律后果和责任均由行为人承担，与官方无关。<br/><br/>9、会员注册条款的变更和修改<br/>有权随时对本注册条款进行变更和修改。一旦发生注册条款的变动，将在页面上提示修改的内容，或将最新版本的会员注册条款以邮件的形式发送给会员。会员如果不同意会员注册条款的修改，可以主动取消会员资格（如注销账号），如对部分服务支付了额外的费用，可以申请将费用全额或部分退回。如果会员继续使用会员帐号，则视为会员已经接受会员注册条款的修改。<br/>";
			}

			$tgy_rule=pdo_fetch("SELECT * FROM ".tablename("jy_ppp_tgy_rule")." WHERE weid=".$weid);

			if(checksubmit()) {
				$kjmsg_jiange=intval($_GPC['kjmsg_jiange']);
				$kjmsg_jiange2=intval($_GPC['kjmsg_jiange2']);
				if(empty($kjmsg_jiange))
				{
					$kjmsg_jiange=60;
				}
				if(empty($kjmsg_jiange2))
				{
					$kjmsg_jiange2=80;
				}
				if(!empty($kjmsg_jiange) && !empty($kjmsg_jiange2))
				{
					if($kjmsg_jiange>$kjmsg_jiange2)
					{
						message("自动消息回复时间间隔设置有误！");
					}
				}
				$kjmsg_jiange3=intval($_GPC['kjmsg_jiange3']);
				$kjmsg_jiange4=intval($_GPC['kjmsg_jiange4']);
				if(empty($kjmsg_jiange3))
				{
					$kjmsg_jiange3=60;
				}
				if(empty($kjmsg_jiange4))
				{
					$kjmsg_jiange4=80;
				}
				if(!empty($kjmsg_jiange3) && !empty($kjmsg_jiange4))
				{
					if($kjmsg_jiange3>$kjmsg_jiange4)
					{
						message("自动消息回复时间间隔设置有误！");
					}
				}
				if(empty($_GPC['city']))
				{
					$city=$_GPC['province']."01";
				}
				$data=array(
						'weid'=>$weid,
						'aname'=>$_GPC['aname'],
						'sharetitle'=>$_GPC['sharetitle'],
						'sharedesc'=>$_GPC['sharedesc'],
						'sharelogo'=>$_GPC['sharelogo'],
						'zhuce_bg'=>$_GPC['zhuce_bg'],
						'zhuce_text'=>$_GPC['zhuce_text'],
						'adminthumb'=>$_GPC['adminthumb'],
						'sms_type'=>$_GPC['sms_type'],
						'sms_sign'=>$_GPC['sms_sign'],
						'sms_username'=>$_GPC['sms_username'],
						'sms_pwd'=>$_GPC['sms_pwd'],
						'sms_product'=>$_GPC['sms_product'],
						'rule'=>$_GPC['rule'],
						'tel'=>$_GPC['tel'],
						'doubi'=>$_GPC['doubi'],
						'unit'=>$_GPC['unit'],
						'chat'=>$_GPC['chat'],
						'idcard'=>$_GPC['idcard'],
						'address'=>$_GPC['address'],
						'province'=>$_GPC['province'],
						'city'=>$city,
						'kftime'=>$_GPC['kftime'],
						'jiange'=>$_GPC['jiange'],
						'thumb'=>$_GPC['thumb'],
						'shangxian'=>$_GPC['shangxian'],
						'copyright'=>$_GPC['copyright'],
						'copyrighturl'=>$_GPC['copyrighturl'],
						'kjmsg_num'=>$_GPC['kjmsg_num'],
						'kjmsg_jiange'=>$kjmsg_jiange,
						'kjmsg_jiange2'=>$kjmsg_jiange2,
						'kjmsg_jiange3'=>$kjmsg_jiange3,
						'kjmsg_jiange4'=>$kjmsg_jiange4,
						'cz_send_style'=>$_GPC['cz_send_style'],
						'bd_ak'=>$_GPC['bd_ak'],
						'moni'=>$_GPC['moni'],
						'indexui'=>$_GPC['indexui'],
						'unzhuce'=>$_GPC['unzhuce'],
						'user_addr'=>$_GPC['user_addr'],
						'youhuo_pay'=>$_GPC['youhuo_pay'],
						'sql_style'=>$_GPC['sql_style'],
						'mail_float'=>$_GPC['mail_float'],
						'dw_yunpaykey'=>$_GPC['dw_yunpaykey'],
						'huafei'=>$_GPC['huafei'],
						'huafei_thumb'=>$_GPC['huafei_thumb'],
						'stat_style'=>$_GPC['stat_style'],
						'tgy_sale'=>$_GPC['tgy_sale'],
						'tgy_parent'=>$_GPC['tgy_parent'],
						'tgy_kl_num'=>$_GPC['tgy_kl_num'],
						'tgy_kl_per'=>$_GPC['tgy_kl_per'],
						'tgy_min'=>$_GPC['tgy_min'],
						'cz_style'=>$_GPC['cz_style'],
						'dw_style'=>$_GPC['dw_style'],
						'chat_style'=>$_GPC['chat_style'],
						'mail_style'=>$_GPC['mail_style'],
						'detail_style'=>$_GPC['detail_style'],
						'chatui_style'=>$_GPC['chatui_style'],
						'czdh_style'=>$_GPC['czdh_style'],
						'createtime'=>TIMESTAMP,
						'dw_yunpay'=>$_GPC['dw_yunpay'],
						'partner'=>$_GPC['partner'],
						'seller_email'=>$_GPC['seller_email'],
					);
				if(empty($item['id']))
				{
					pdo_insert("jy_ppp_setting",$data);
				}
				else
				{
					pdo_update("jy_ppp_setting",$data,array('weid'=>$weid));
				}

				$data2=array(
						'weid'=>$weid,
						'content'=>$_GPC['tgy_rule'],
					);
				if(empty($tgy_rule))
				{
					$data2['createtime']=TIMESTAMP;
					pdo_insert("jy_ppp_tgy_rule",$data2);
				}
				else
				{
					pdo_update("jy_ppp_tgy_rule",$data2,array('id'=>$tgy_rule['id']));
				}

				message("设置成功!",$this->createWebUrl('setting'),'success');
			}
			include $this->template('web/setting');
		}
