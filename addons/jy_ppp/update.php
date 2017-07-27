<?php

pdo_query('CREATE TABLE IF NOT EXISTS `ims_jy_ppp_aihao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `aihao` varchar(6) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_attent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `attentid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `attentid` (`attentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_baoyue_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `logid` int(10) NOT NULL COMMENT \'充值记录id\',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_basic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `height` int(1) NOT NULL,
  `car` varchar(6) NOT NULL,
  `constellation` varchar(4) NOT NULL,
  `education` varchar(6) NOT NULL,
  `job` varchar(10) NOT NULL,
  `income` varchar(1) NOT NULL,
  `marriage` varchar(5) NOT NULL,
  `house` varchar(7) NOT NULL,
  `blank` int(1) NOT NULL COMMENT \'未填写的字段个数\',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_black` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `blackid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `blackid` (`blackid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_chat_doubi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `chatid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_code` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_credit_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `credit` int(2) NOT NULL,
  `type` varchar(10) NOT NULL COMMENT \'add,reduce\',
  `log` int(1) NOT NULL COMMENT \'1为身份认证消耗积分,2为积分兑换聊天机会,3为系统变更积分,4为用户充值积分\',
  `logid` int(10) NOT NULL COMMENT \'对方用户的id或充值记录id\',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_desc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `lifestatus` varchar(5) NOT NULL,
  `jobstatus` varchar(8) NOT NULL,
  `companytype` varchar(6) NOT NULL,
  `smoke` varchar(8) NOT NULL,
  `parentstatus` varchar(6) NOT NULL,
  `chuyi` varchar(13) NOT NULL,
  `blank` int(1) NOT NULL COMMENT \'未填写的字段个数\',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_dianyuan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL DEFAULT \'\',
  `uid` int(10) NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT \'1\',
  `username` varchar(50) NOT NULL DEFAULT \'\',
  `mobile` varchar(20) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `QQ` varchar(200) DEFAULT NULL,
  `wechat` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `description` text,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_help` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT \'0\' COMMENT \'所属帐号\',
  `name` varchar(50) NOT NULL COMMENT \'名称\',
  `parentid` int(10) unsigned NOT NULL DEFAULT \'0\' COMMENT \'批次ID,0为第一级\',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT \'0\' COMMENT \'排序\',
  `description` text COMMENT \'描述\',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT \'1\' COMMENT \'是否开启\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_hf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT \'0\' COMMENT \'ForOrder\',
  `name` varchar(255) NOT NULL,
  `type` int(2) NOT NULL DEFAULT \'0\' COMMENT \'0为文本，1为图片，2为语音，3为组合\',
  `parentid` int(10) unsigned NOT NULL DEFAULT \'0\' COMMENT \'批次ID,0为第一级\',
  `media_id` varchar(255) NOT NULL,
  `picurl` text,
  `sex` int(2) NOT NULL DEFAULT \'0\' COMMENT \'0为不限，1为男，2为女\',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT \'1\' COMMENT \'0ForDeleted1ForExists\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_hf2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT \'0\' COMMENT \'ForOrder\',
  `name` varchar(255) NOT NULL,
  `type` int(2) NOT NULL DEFAULT \'0\' COMMENT \'0为文本，1为图片，2为语音，3为组合\',
  `parentid` int(10) unsigned NOT NULL DEFAULT \'0\' COMMENT \'批次ID,0为第一级\',
  `media_id` varchar(255) NOT NULL,
  `picurl` text,
  `sex` int(2) NOT NULL DEFAULT \'0\' COMMENT \'0为不限，1为男，2为女\',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT \'1\' COMMENT \'0ForDeleted1ForExists\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_hf2_send` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT \'0\',
  `sendid` int(10) NOT NULL DEFAULT \'0\',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `sendid` (`sendid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_idcard` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `idcard` varchar(20) NOT NULL,
  `realname` varchar(100) NOT NULL,
  `sex` int(2) NOT NULL COMMENT \'1为男,2为女\',
  `brith` int(10) NOT NULL,
  `province` int(10) NOT NULL,
  `city` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_kefu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT \'0\',
  `sendid` int(10) NOT NULL DEFAULT \'0\',
  `type` varchar(255) NOT NULL DEFAULT \'text\' COMMENT \'客服接口消息类型\',
  `content` text,
  `desc` text,
  `url` text,
  `picurl` text,
  `status` int(10) DEFAULT \'0\' COMMENT \'0为成功,其他为错误代码\',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_mailui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT \'0\' COMMENT \'ForOrder\',
  `name` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL DEFAULT \'\' COMMENT \'ForLogoImage\',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT \'1\' COMMENT \'0ForDeleted1ForExists\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_match` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `age` int(1) DEFAULT \'0\' COMMENT \'0为不限,1为18-25,2为26-35,3为36-45,4为46-55,5为55以上\',
  `agemax` int(1) DEFAULT \'0\',
  `height` int(1) DEFAULT \'0\' COMMENT \'0为不限,1为160以下,2为161-165,3为166-170,4为170以上\',
  `heightmax` int(1) DEFAULT \'0\',
  `education` int(1) DEFAULT \'0\' COMMENT \'0为不限,1为高中,中专及以上,2为大专及以上,3为本科及以上\',
  `income` int(2) DEFAULT \'0\' COMMENT \'0为不限,1为2000元以上,2为5000元以上,3为10000元以上\',
  `incomemax` int(2) DEFAULT \'0\',
  `province` int(2) NOT NULL,
  `city` int(2) NOT NULL,
  `blank` int(1) NOT NULL COMMENT \'未填写的字段个数\',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `nicheng` varchar(30) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `beizhu` varchar(205) NOT NULL,
  `sex` int(1) NOT NULL COMMENT \'1为男,2为女\',
  `status` int(1) NOT NULL COMMENT \'封号与否\',
  `brith` int(10) NOT NULL,
  `province` int(2) NOT NULL,
  `city` int(2) NOT NULL,
  `credit` int(2) DEFAULT \'0\' COMMENT \'金币\',
  `baoyue` int(10) DEFAULT NULL COMMENT \'包月过期时间\',
  `shouxin` int(10) DEFAULT NULL COMMENT \'收信宝过期时间\',
  `type` int(1) NOT NULL COMMENT \'3为工作人员虚拟用户,,1为微信,0为账户\',
  `mobile_auth` int(1) DEFAULT \'0\' COMMENT \'1为认证,0为未认证\',
  `card_auth` int(1) DEFAULT \'0\' COMMENT \'1为认证,0为未认证\',
  `qrcode_id` int(10) DEFAULT \'0\',
  `parentid` int(10) DEFAULT \'0\',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `province` (`province`),
  KEY `sex` (`sex`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_mianrao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `zhaohu` int(10) DEFAULT \'0\' COMMENT \'0为不限,1为拒绝异性发来的招呼类信件\',
  `thumb` int(10) DEFAULT \'0\' COMMENT \'0为不限,1为拒绝无头像的异性信件\',
  `province` int(10) DEFAULT \'0\' COMMENT \'0为不限,1为拒绝异省的异性信件\',
  `age` int(10) DEFAULT \'0\' COMMENT \'0为不限,1为拒绝不符合征友条件年龄的异性信件\',
  `mobile` int(10) DEFAULT \'0\' COMMENT \'0为不限,1为拒绝未验证手机的异性信件\',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_mobile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `type` int(2) NOT NULL DEFAULT \'0\' COMMENT \'0为文本，1为图片，2为图文，3为多图文，4为语音\',
  `displayorder` int(11) NOT NULL DEFAULT \'0\' COMMENT \'ForOrder\',
  `name` varchar(255) NOT NULL,
  `media` text,
  `url` text,
  `picurl` text,
  `media_id` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT \'1\' COMMENT \'0ForDeleted1ForExists\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_nickname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT \'0\' COMMENT \'ForOrder\',
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT \'1\' COMMENT \'0ForDeleted1ForExists\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_pay_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `from_user` varchar(20) DEFAULT NULL COMMENT \'付款的from_user,为空时代表自己付的款\',
  `fee` int(10) NOT NULL,
  `log` int(10) NOT NULL COMMENT \'1为购买豆币,2为购买包月服务,3为购买收信宝\',
  `status` int(10) NOT NULL COMMENT \'付款状态\',
  `plid` bigint(11) unsigned DEFAULT NULL COMMENT \'core_paylog表的id\',
  `paytime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT \'0\' COMMENT \'ForOrder\',
  `fee` int(10) NOT NULL,
  `huafei` int(10) NOT NULL,
  `credit` int(10) NOT NULL,
  `baoyue` int(10) NOT NULL,
  `shouxin` int(10) NOT NULL,
  `log` int(10) NOT NULL COMMENT \'1为购买豆币,2为购买包月服务,3为购买收信宝\',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT \'1\' COMMENT \'0ForDeleted1ForExists\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `reportid` int(11) NOT NULL,
  `report` text,
  `status` int(2) DEFAULT \'0\' COMMENT \'0为审核中,1审核过\',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rulename` varchar(255) NOT NULL,
  `desc` text,
  `ruleid` int(11) NOT NULL,
  `uniacid` int(11) unsigned NOT NULL,
  `type` int(1) NOT NULL DEFAULT \'0\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_safe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT \'0\' COMMENT \'所属帐号\',
  `name` varchar(50) NOT NULL COMMENT \'名称\',
  `parentid` int(10) unsigned NOT NULL DEFAULT \'0\' COMMENT \'批次ID,0为第一级\',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT \'0\' COMMENT \'排序\',
  `description` text COMMENT \'描述\',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT \'1\' COMMENT \'是否开启\',
  `paixu` tinyint(1) unsigned NOT NULL DEFAULT \'0\' COMMENT \'排序\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_setting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `aname` varchar(255) NOT NULL,
  `sharetitle` varchar(255) NOT NULL,
  `sharedesc` varchar(255) NOT NULL,
  `sharelogo` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `copyrighturl` varchar(255) NOT NULL,
  `zhuce_bg` varchar(255) NOT NULL,
  `zhuce_text` varchar(255) NOT NULL,
  `adminthumb` varchar(255) NOT NULL,
  `sms_type` int(10) NOT NULL DEFAULT \'0\' COMMENT \'0为网讯,1为互亿无线,2为无需，3为阿里大鱼\',
  `sms_sign` varchar(255) NOT NULL,
  `sms_product` varchar(255) NOT NULL,
  `sms_username` varchar(255) NOT NULL,
  `sms_pwd` varchar(255) NOT NULL,
  `address` int(10) DEFAULT \'0\',
  `province` int(10) DEFAULT \'11\',
  `city` int(10) DEFAULT \'1101\',
  `chat` int(10) DEFAULT \'20\',
  `idcard` int(10) DEFAULT \'60\',
  `doubi` varchar(255) NOT NULL DEFAULT \'豆币\',
  `unit` varchar(255) NOT NULL DEFAULT \'豆\',
  `jiange` int(10) DEFAULT \'30\',
  `shangxian` int(10) DEFAULT \'12\',
  `kjmsg_num` int(10) DEFAULT \'10\',
  `kjmsg_jiange` int(10) DEFAULT \'60\',
  `kjmsg_jiange2` int(10) DEFAULT \'80\',
  `kjmsg_jiange3` int(10) DEFAULT \'60\',
  `kjmsg_jiange4` int(10) DEFAULT \'60\',
  `cz_send_style` int(2) NOT NULL DEFAULT \'0\' COMMENT \'是否开启当用户充值后发信返回回复库2中的内容\',
  `tel` varchar(255) NOT NULL,
  `kftime` varchar(255) NOT NULL,
  `thumb` int(2) NOT NULL DEFAULT \'1\' COMMENT \'0为无需审核头像,1为需要审核头像\',
  `rule` text,
  `moni` int(2) NOT NULL DEFAULT \'0\' COMMENT \'是否开启模拟定位功能\',
  `indexui` int(2) NOT NULL DEFAULT \'0\' COMMENT \'0为列表,1为大图\',
  `unzhuce` int(2) NOT NULL DEFAULT \'0\' COMMENT \'0为需要注册,1为无需注册\',
  `user_addr` int(2) NOT NULL DEFAULT \'0\' COMMENT \'0为省市,1为省,2为市\',
  `youhuo_pay` int(2) NOT NULL DEFAULT \'0\' COMMENT \'用qq和微信诱惑充值\',
  `mail_float` int(2) NOT NULL DEFAULT \'1\' COMMENT \'是否显示悬浮信件提示\',
  `sql_style` int(2) NOT NULL DEFAULT \'0\' COMMENT \'数据库查数据方式设定\',
  `huafei` int(2) NOT NULL DEFAULT \'0\' COMMENT \'是否拥有充值话费假象\',
  `huafei_thumb` varchar(255) NOT NULL COMMENT \'充值话费图片banner\',
  `stat_style` int(2) NOT NULL DEFAULT \'0\' COMMENT \'是否在统计分析处显示图表\',
  `cz_style` int(2) NOT NULL DEFAULT \'0\' COMMENT \'是否隐藏没有设置的充值服务\',
  `dw_style` int(2) NOT NULL DEFAULT \'0\' COMMENT \'定位方式\',
  `chat_style` int(2) NOT NULL DEFAULT \'0\' COMMENT \'聊天规则，0为一天对一个用户一次，1为一天对一个平台一次\',
  `bd_ak` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  `czdh_style` int(2) NOT NULL DEFAULT \'0\',
  `mail_style` int(2) NOT NULL DEFAULT \'0\',
  `detail_style` int(2) NOT NULL DEFAULT \'0\',
  `chatui_style` int(2) NOT NULL DEFAULT \'0\',
  `tgy_sale` int(10) DEFAULT NULL,
  `tgy_parent` int(10) DEFAULT NULL,
  `tgy_kl_num` int(10) DEFAULT NULL,
  `tgy_kl_per` int(10) DEFAULT NULL,
  `tgy_min` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_shouxin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `logid` int(10) NOT NULL COMMENT \'充值记录id\',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tezheng` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `tezheng` varchar(6) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tgy_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `content` text,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_thumb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `type` int(2) DEFAULT \'0\' COMMENT \'0为审核中,1为头像,2为非头像,3为不通过,4为删除\',
  `thumb` longtext,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tixianrecord` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `from_user` varchar(30) NOT NULL,
  `uid` int(10) NOT NULL DEFAULT \'0\',
  `tgyid` int(10) NOT NULL DEFAULT \'0\',
  `fee` decimal(10,2) DEFAULT \'0.00\',
  `realname` varchar(200) NOT NULL,
  `alipay` varchar(200) NOT NULL,
  `status` tinyint(1) DEFAULT \'0\',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tuiguang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL DEFAULT \'\',
  `uid` int(10) NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT \'1\',
  `username` varchar(50) NOT NULL DEFAULT \'\',
  `mobile` varchar(20) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `QQ` varchar(200) DEFAULT NULL,
  `wechat` varchar(200) DEFAULT NULL,
  `alipay` varchar(200) DEFAULT NULL,
  `realname` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `parentid` int(10) DEFAULT \'0\',
  `description` text,
  `createtime` int(10) unsigned NOT NULL,
  `credit` decimal(10,2) DEFAULT \'0.00\',
  `creditall` decimal(10,2) DEFAULT \'0.00\',
  `qrcode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tuiguang_xinxi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  `yuedu` tinyint(1) DEFAULT \'1\' COMMENT \'0为未读,1为已读\',
  `yuedutime` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_visit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `visitid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xinxi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT \'0\',
  `sendid` int(10) NOT NULL DEFAULT \'0\' COMMENT \'发送人员\',
  `content` text,
  `zhaohuid` int(10) DEFAULT \'0\' COMMENT \'打招呼id\',
  `huifuid` int(10) DEFAULT \'0\' COMMENT \'回复打招呼id\',
  `type` int(10) DEFAULT \'0\' COMMENT \'0为打招呼,1为会员推荐,2为最新回信,3为管理员\',
  `leixing` int(10) DEFAULT \'0\' COMMENT \'0为文本,1为图片，2为语音，3为组合\',
  `media_id` varchar(255) NOT NULL,
  `picurl` text,
  `yuedu` tinyint(1) DEFAULT \'0\' COMMENT \'0为未读,1为已读\',
  `yuedutime` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `sendid` (`sendid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xinxi_temp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT \'0\',
  `sendid` int(10) NOT NULL DEFAULT \'0\' COMMENT \'发送人员\',
  `content` text,
  `zhaohuid` int(10) DEFAULT \'0\' COMMENT \'打招呼id\',
  `huifuid` int(10) DEFAULT \'0\' COMMENT \'回复打招呼id\',
  `type` int(10) DEFAULT \'0\' COMMENT \'0为打招呼,1为会员推荐,2为最新回信,3为管理员\',
  `leixing` int(10) DEFAULT \'0\' COMMENT \'0为文本,1为图片，2为语音，3为组合\',
  `media_id` varchar(255) NOT NULL,
  `picurl` text,
  `yuedu` tinyint(1) DEFAULT \'0\' COMMENT \'0为未读,1为已读\',
  `yuedutime` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `sendid` (`sendid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xuni_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `dyid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xuni_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT \'0\' COMMENT \'ForOrder\',
  `name` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT \'0\',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT \'1\' COMMENT \'0ForDeleted1ForExists\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xunithumb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `sex` int(2) NOT NULL COMMENT \'1为男,2为女\',
  `avatar` int(2) NOT NULL DEFAULT \'0\' COMMENT \'1为头像,0为普通\',
  `thumb` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_yongjin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `tgyid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `plid` int(10) NOT NULL,
  `log` int(10) NOT NULL,
  `credit` decimal(10,2) DEFAULT \'0.00\' COMMENT \'总额\',
  `type` tinyint(1) NOT NULL DEFAULT \'0\' COMMENT \'0:直接销售，1：上级抽佣\',
  `kl` tinyint(1) NOT NULL DEFAULT \'0\' COMMENT \'0:未扣量，1：已扣量\',
  `updatetime` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_zhaohu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT \'0\' COMMENT \'ForOrder\',
  `name` varchar(255) NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT \'0\' COMMENT \'批次ID,0为第一级\',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT \'1\' COMMENT \'0ForDeleted1ForExists\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
');
if (pdo_tableexists('jy_ppp_aihao')) {
    if (!pdo_fieldexists('jy_ppp_aihao', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_aihao') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_aihao')) {
    if (!pdo_fieldexists('jy_ppp_aihao', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_aihao') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_aihao')) {
    if (!pdo_fieldexists('jy_ppp_aihao', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_aihao') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_aihao')) {
    if (!pdo_fieldexists('jy_ppp_aihao', 'aihao')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_aihao') . ' ADD `aihao` varchar(6) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_aihao')) {
    if (!pdo_fieldexists('jy_ppp_aihao', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_aihao') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_attent')) {
    if (!pdo_fieldexists('jy_ppp_attent', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_attent') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_attent')) {
    if (!pdo_fieldexists('jy_ppp_attent', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_attent') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_attent')) {
    if (!pdo_fieldexists('jy_ppp_attent', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_attent') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_attent')) {
    if (!pdo_fieldexists('jy_ppp_attent', 'attentid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_attent') . ' ADD `attentid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_attent')) {
    if (!pdo_fieldexists('jy_ppp_attent', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_attent') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_baoyue_log')) {
    if (!pdo_fieldexists('jy_ppp_baoyue_log', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_baoyue_log') . ' ADD `id` int(10) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_baoyue_log')) {
    if (!pdo_fieldexists('jy_ppp_baoyue_log', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_baoyue_log') . ' ADD `weid` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_baoyue_log')) {
    if (!pdo_fieldexists('jy_ppp_baoyue_log', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_baoyue_log') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_baoyue_log')) {
    if (!pdo_fieldexists('jy_ppp_baoyue_log', 'starttime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_baoyue_log') . ' ADD `starttime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_baoyue_log')) {
    if (!pdo_fieldexists('jy_ppp_baoyue_log', 'endtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_baoyue_log') . ' ADD `endtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_baoyue_log')) {
    if (!pdo_fieldexists('jy_ppp_baoyue_log', 'logid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_baoyue_log') . ' ADD `logid` int(10) NOT NULL   COMMENT \'充值记录id\';');
    }
}
if (pdo_tableexists('jy_ppp_baoyue_log')) {
    if (!pdo_fieldexists('jy_ppp_baoyue_log', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_baoyue_log') . ' ADD `createtime` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_basic')) {
    if (!pdo_fieldexists('jy_ppp_basic', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_basic') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_basic')) {
    if (!pdo_fieldexists('jy_ppp_basic', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_basic') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_basic')) {
    if (!pdo_fieldexists('jy_ppp_basic', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_basic') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_basic')) {
    if (!pdo_fieldexists('jy_ppp_basic', 'height')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_basic') . ' ADD `height` int(1) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_basic')) {
    if (!pdo_fieldexists('jy_ppp_basic', 'car')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_basic') . ' ADD `car` varchar(6) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_basic')) {
    //if (!pdo_fieldexists('jy_ppp_basic', 'blood')) {
    if (!pdo_fieldexists('jy_ppp_basic', 'constellation')) {
    
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_basic') . ' ADD `constellation` varchar(4) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_basic')) {
    if (!pdo_fieldexists('jy_ppp_basic', 'education')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_basic') . ' ADD `education` varchar(6) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_basic')) {
    if (!pdo_fieldexists('jy_ppp_basic', 'job')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_basic') . ' ADD `job` varchar(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_basic')) {
    if (!pdo_fieldexists('jy_ppp_basic', 'income')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_basic') . ' ADD `income` int(1) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_basic')) {
    if (!pdo_fieldexists('jy_ppp_basic', 'marriage')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_basic') . ' ADD `marriage` varchar(5) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_basic')) {
    if (!pdo_fieldexists('jy_ppp_basic', 'house')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_basic') . ' ADD `house` varchar(7) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_basic')) {
    if (!pdo_fieldexists('jy_ppp_basic', 'blank')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_basic') . ' ADD `blank` int(1) NOT NULL   COMMENT \'未填写的字段个数\';');
    }
}
if (pdo_tableexists('jy_ppp_basic')) {
    if (!pdo_fieldexists('jy_ppp_basic', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_basic') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_black')) {
    if (!pdo_fieldexists('jy_ppp_black', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_black') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_black')) {
    if (!pdo_fieldexists('jy_ppp_black', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_black') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_black')) {
    if (!pdo_fieldexists('jy_ppp_black', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_black') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_black')) {
    if (!pdo_fieldexists('jy_ppp_black', 'blackid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_black') . ' ADD `blackid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_black')) {
    if (!pdo_fieldexists('jy_ppp_black', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_black') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_chat_doubi')) {
    if (!pdo_fieldexists('jy_ppp_chat_doubi', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_chat_doubi') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_chat_doubi')) {
    if (!pdo_fieldexists('jy_ppp_chat_doubi', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_chat_doubi') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_chat_doubi')) {
    if (!pdo_fieldexists('jy_ppp_chat_doubi', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_chat_doubi') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_chat_doubi')) {
    if (!pdo_fieldexists('jy_ppp_chat_doubi', 'chatid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_chat_doubi') . ' ADD `chatid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_chat_doubi')) {
    if (!pdo_fieldexists('jy_ppp_chat_doubi', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_chat_doubi') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_code')) {
    if (!pdo_fieldexists('jy_ppp_code', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_code') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_code')) {
    if (!pdo_fieldexists('jy_ppp_code', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_code') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_code')) {
    if (!pdo_fieldexists('jy_ppp_code', 'mobile')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_code') . ' ADD `mobile` varchar(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_code')) {
    if (!pdo_fieldexists('jy_ppp_code', 'code')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_code') . ' ADD `code` varchar(200) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_code')) {
    if (!pdo_fieldexists('jy_ppp_code', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_code') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_code')) {
    if (!pdo_fieldexists('jy_ppp_code', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_code') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_credit_log')) {
    if (!pdo_fieldexists('jy_ppp_credit_log', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_credit_log') . ' ADD `id` int(10) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_credit_log')) {
    if (!pdo_fieldexists('jy_ppp_credit_log', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_credit_log') . ' ADD `weid` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_credit_log')) {
    if (!pdo_fieldexists('jy_ppp_credit_log', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_credit_log') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_credit_log')) {
    if (!pdo_fieldexists('jy_ppp_credit_log', 'credit')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_credit_log') . ' ADD `credit` int(2) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_credit_log')) {
    if (!pdo_fieldexists('jy_ppp_credit_log', 'type')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_credit_log') . ' ADD `type` varchar(10) NOT NULL   COMMENT \'add,reduce\';');
    }
}
if (pdo_tableexists('jy_ppp_credit_log')) {
    if (!pdo_fieldexists('jy_ppp_credit_log', 'log')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_credit_log') . ' ADD `log` int(1) NOT NULL   COMMENT \'1为身份认证消耗积分,2为积分兑换聊天机会,3为系统变更积分,4为用户充值积分\';');
    }
}
if (pdo_tableexists('jy_ppp_credit_log')) {
    if (!pdo_fieldexists('jy_ppp_credit_log', 'logid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_credit_log') . ' ADD `logid` int(10) NOT NULL   COMMENT \'对方用户的id或充值记录id\';');
    }
}
if (pdo_tableexists('jy_ppp_credit_log')) {
    if (!pdo_fieldexists('jy_ppp_credit_log', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_credit_log') . ' ADD `createtime` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_desc')) {
    if (!pdo_fieldexists('jy_ppp_desc', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_desc') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_desc')) {
    if (!pdo_fieldexists('jy_ppp_desc', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_desc') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_desc')) {
    if (!pdo_fieldexists('jy_ppp_desc', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_desc') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_desc')) {
    if (!pdo_fieldexists('jy_ppp_desc', 'lifestatus')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_desc') . ' ADD `lifestatus` varchar(5) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_desc')) {
    if (!pdo_fieldexists('jy_ppp_desc', 'jobstatus')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_desc') . ' ADD `jobstatus` varchar(8) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_desc')) {
    if (!pdo_fieldexists('jy_ppp_desc', 'companytype')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_desc') . ' ADD `companytype` varchar(6) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_desc')) {
    if (!pdo_fieldexists('jy_ppp_desc', 'smoke')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_desc') . ' ADD `smoke` varchar(8) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_desc')) {
    if (!pdo_fieldexists('jy_ppp_desc', 'parentstatus')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_desc') . ' ADD `parentstatus` varchar(6) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_desc')) {
    if (!pdo_fieldexists('jy_ppp_desc', 'chuyi')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_desc') . ' ADD `chuyi` varchar(13) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_desc')) {
    if (!pdo_fieldexists('jy_ppp_desc', 'blank')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_desc') . ' ADD `blank` int(1) NOT NULL   COMMENT \'未填写的字段个数\';');
    }
}
if (pdo_tableexists('jy_ppp_desc')) {
    if (!pdo_fieldexists('jy_ppp_desc', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_desc') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_dianyuan')) {
    if (!pdo_fieldexists('jy_ppp_dianyuan', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_dianyuan') . ' ADD `id` int(10) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_dianyuan')) {
    if (!pdo_fieldexists('jy_ppp_dianyuan', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_dianyuan') . ' ADD `weid` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_dianyuan')) {
    if (!pdo_fieldexists('jy_ppp_dianyuan', 'from_user')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_dianyuan') . ' ADD `from_user` varchar(50) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_dianyuan')) {
    if (!pdo_fieldexists('jy_ppp_dianyuan', 'uid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_dianyuan') . ' ADD `uid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_dianyuan')) {
    if (!pdo_fieldexists('jy_ppp_dianyuan', 'status')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_dianyuan') . ' ADD `status` int(10) unsigned NOT NULL  DEFAULT 1 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_dianyuan')) {
    if (!pdo_fieldexists('jy_ppp_dianyuan', 'username')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_dianyuan') . ' ADD `username` varchar(50) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_dianyuan')) {
    if (!pdo_fieldexists('jy_ppp_dianyuan', 'mobile')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_dianyuan') . ' ADD `mobile` varchar(20)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_dianyuan')) {
    if (!pdo_fieldexists('jy_ppp_dianyuan', 'mail')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_dianyuan') . ' ADD `mail` varchar(200)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_dianyuan')) {
    if (!pdo_fieldexists('jy_ppp_dianyuan', 'QQ')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_dianyuan') . ' ADD `QQ` varchar(200)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_dianyuan')) {
    if (!pdo_fieldexists('jy_ppp_dianyuan', 'wechat')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_dianyuan') . ' ADD `wechat` varchar(200)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_dianyuan')) {
    if (!pdo_fieldexists('jy_ppp_dianyuan', 'password')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_dianyuan') . ' ADD `password` varchar(200)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_dianyuan')) {
    if (!pdo_fieldexists('jy_ppp_dianyuan', 'description')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_dianyuan') . ' ADD `description` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_dianyuan')) {
    if (!pdo_fieldexists('jy_ppp_dianyuan', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_dianyuan') . ' ADD `createtime` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_feedback')) {
    if (!pdo_fieldexists('jy_ppp_feedback', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_feedback') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_feedback')) {
    if (!pdo_fieldexists('jy_ppp_feedback', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_feedback') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_feedback')) {
    if (!pdo_fieldexists('jy_ppp_feedback', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_feedback') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_feedback')) {
    if (!pdo_fieldexists('jy_ppp_feedback', 'feedback')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_feedback') . ' ADD `feedback` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_feedback')) {
    if (!pdo_fieldexists('jy_ppp_feedback', 'mobile')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_feedback') . ' ADD `mobile` varchar(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_feedback')) {
    if (!pdo_fieldexists('jy_ppp_feedback', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_feedback') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_help')) {
    if (!pdo_fieldexists('jy_ppp_help', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_help') . ' ADD `id` int(10) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_help')) {
    if (!pdo_fieldexists('jy_ppp_help', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_help') . ' ADD `weid` int(10) unsigned NOT NULL  DEFAULT 0 COMMENT \'所属帐号\';');
    }
}
if (pdo_tableexists('jy_ppp_help')) {
    if (!pdo_fieldexists('jy_ppp_help', 'name')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_help') . ' ADD `name` varchar(50) NOT NULL   COMMENT \'名称\';');
    }
}
if (pdo_tableexists('jy_ppp_help')) {
    if (!pdo_fieldexists('jy_ppp_help', 'parentid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_help') . ' ADD `parentid` int(10) unsigned NOT NULL  DEFAULT 0 COMMENT \'批次ID,0为第一级\';');
    }
}
if (pdo_tableexists('jy_ppp_help')) {
    if (!pdo_fieldexists('jy_ppp_help', 'displayorder')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_help') . ' ADD `displayorder` tinyint(3) unsigned NOT NULL  DEFAULT 0 COMMENT \'排序\';');
    }
}
if (pdo_tableexists('jy_ppp_help')) {
    if (!pdo_fieldexists('jy_ppp_help', 'description')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_help') . ' ADD `description` text    COMMENT \'描述\';');
    }
}
if (pdo_tableexists('jy_ppp_help')) {
    if (!pdo_fieldexists('jy_ppp_help', 'enabled')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_help') . ' ADD `enabled` tinyint(1) unsigned NOT NULL  DEFAULT 1 COMMENT \'是否开启\';');
    }
}
if (pdo_tableexists('jy_ppp_hf')) {
    if (!pdo_fieldexists('jy_ppp_hf', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf') . ' ADD `id` int(11) NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf')) {
    if (!pdo_fieldexists('jy_ppp_hf', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf') . ' ADD `weid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf')) {
    if (!pdo_fieldexists('jy_ppp_hf', 'displayorder')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf') . ' ADD `displayorder` int(11) NOT NULL  DEFAULT 0 COMMENT \'ForOrder\';');
    }
}
if (pdo_tableexists('jy_ppp_hf')) {
    if (!pdo_fieldexists('jy_ppp_hf', 'name')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf') . ' ADD `name` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf')) {
    if (!pdo_fieldexists('jy_ppp_hf', 'type')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf') . ' ADD `type` int(2) NOT NULL  DEFAULT 0 COMMENT \'0为文本，1为图片，2为语音，3为组合\';');
    }
}
if (pdo_tableexists('jy_ppp_hf')) {
    if (!pdo_fieldexists('jy_ppp_hf', 'parentid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf') . ' ADD `parentid` int(10) unsigned NOT NULL  DEFAULT 0 COMMENT \'批次ID,0为第一级\';');
    }
}
if (pdo_tableexists('jy_ppp_hf')) {
    if (!pdo_fieldexists('jy_ppp_hf', 'media_id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf') . ' ADD `media_id` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf')) {
    if (!pdo_fieldexists('jy_ppp_hf', 'picurl')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf') . ' ADD `picurl` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf')) {
    if (!pdo_fieldexists('jy_ppp_hf', 'sex')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf') . ' ADD `sex` int(2) NOT NULL  DEFAULT 0 COMMENT \'0为不限，1为男，2为女\';');
    }
}
if (pdo_tableexists('jy_ppp_hf')) {
    if (!pdo_fieldexists('jy_ppp_hf', 'description')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf') . ' ADD `description` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf')) {
    if (!pdo_fieldexists('jy_ppp_hf', 'enabled')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf') . ' ADD `enabled` tinyint(1) unsigned NOT NULL  DEFAULT 1 COMMENT \'0ForDeleted1ForExists\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2')) {
    if (!pdo_fieldexists('jy_ppp_hf2', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2') . ' ADD `id` int(11) NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2')) {
    if (!pdo_fieldexists('jy_ppp_hf2', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2') . ' ADD `weid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2')) {
    if (!pdo_fieldexists('jy_ppp_hf2', 'displayorder')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2') . ' ADD `displayorder` int(11) NOT NULL  DEFAULT 0 COMMENT \'ForOrder\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2')) {
    if (!pdo_fieldexists('jy_ppp_hf2', 'name')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2') . ' ADD `name` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2')) {
    if (!pdo_fieldexists('jy_ppp_hf2', 'type')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2') . ' ADD `type` int(2) NOT NULL  DEFAULT 0 COMMENT \'0为文本，1为图片，2为语音，3为组合\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2')) {
    if (!pdo_fieldexists('jy_ppp_hf2', 'parentid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2') . ' ADD `parentid` int(10) unsigned NOT NULL  DEFAULT 0 COMMENT \'批次ID,0为第一级\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2')) {
    if (!pdo_fieldexists('jy_ppp_hf2', 'media_id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2') . ' ADD `media_id` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2')) {
    if (!pdo_fieldexists('jy_ppp_hf2', 'picurl')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2') . ' ADD `picurl` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2')) {
    if (!pdo_fieldexists('jy_ppp_hf2', 'sex')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2') . ' ADD `sex` int(2) NOT NULL  DEFAULT 0 COMMENT \'0为不限，1为男，2为女\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2')) {
    if (!pdo_fieldexists('jy_ppp_hf2', 'description')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2') . ' ADD `description` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2')) {
    if (!pdo_fieldexists('jy_ppp_hf2', 'enabled')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2') . ' ADD `enabled` tinyint(1) unsigned NOT NULL  DEFAULT 1 COMMENT \'0ForDeleted1ForExists\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2_send')) {
    if (!pdo_fieldexists('jy_ppp_hf2_send', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2_send') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2_send')) {
    if (!pdo_fieldexists('jy_ppp_hf2_send', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2_send') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2_send')) {
    if (!pdo_fieldexists('jy_ppp_hf2_send', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2_send') . ' ADD `mid` int(10) NOT NULL  DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2_send')) {
    if (!pdo_fieldexists('jy_ppp_hf2_send', 'sendid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2_send') . ' ADD `sendid` int(10) NOT NULL  DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_hf2_send')) {
    if (!pdo_fieldexists('jy_ppp_hf2_send', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_hf2_send') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_idcard')) {
    if (!pdo_fieldexists('jy_ppp_idcard', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_idcard') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_idcard')) {
    if (!pdo_fieldexists('jy_ppp_idcard', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_idcard') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_idcard')) {
    if (!pdo_fieldexists('jy_ppp_idcard', 'idcard')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_idcard') . ' ADD `idcard` varchar(20) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_idcard')) {
    if (!pdo_fieldexists('jy_ppp_idcard', 'realname')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_idcard') . ' ADD `realname` varchar(100) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_idcard')) {
    if (!pdo_fieldexists('jy_ppp_idcard', 'sex')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_idcard') . ' ADD `sex` int(2) NOT NULL   COMMENT \'1为男,2为女\';');
    }
}
if (pdo_tableexists('jy_ppp_idcard')) {
    if (!pdo_fieldexists('jy_ppp_idcard', 'brith')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_idcard') . ' ADD `brith` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_idcard')) {
    if (!pdo_fieldexists('jy_ppp_idcard', 'province')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_idcard') . ' ADD `province` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_idcard')) {
    if (!pdo_fieldexists('jy_ppp_idcard', 'city')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_idcard') . ' ADD `city` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_idcard')) {
    if (!pdo_fieldexists('jy_ppp_idcard', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_idcard') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_idcard')) {
    if (!pdo_fieldexists('jy_ppp_idcard', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_idcard') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_kefu')) {
    if (!pdo_fieldexists('jy_ppp_kefu', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_kefu') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_kefu')) {
    if (!pdo_fieldexists('jy_ppp_kefu', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_kefu') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_kefu')) {
    if (!pdo_fieldexists('jy_ppp_kefu', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_kefu') . ' ADD `mid` int(10) NOT NULL  DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_kefu')) {
    if (!pdo_fieldexists('jy_ppp_kefu', 'sendid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_kefu') . ' ADD `sendid` int(10) NOT NULL  DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_kefu')) {
    if (!pdo_fieldexists('jy_ppp_kefu', 'type')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_kefu') . ' ADD `type` varchar(255) NOT NULL  DEFAULT text COMMENT \'客服接口消息类型\';');
    }
}
if (pdo_tableexists('jy_ppp_kefu')) {
    if (!pdo_fieldexists('jy_ppp_kefu', 'content')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_kefu') . ' ADD `content` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_kefu')) {
    if (!pdo_fieldexists('jy_ppp_kefu', 'desc')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_kefu') . ' ADD `desc` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_kefu')) {
    if (!pdo_fieldexists('jy_ppp_kefu', 'url')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_kefu') . ' ADD `url` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_kefu')) {
    if (!pdo_fieldexists('jy_ppp_kefu', 'picurl')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_kefu') . ' ADD `picurl` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_kefu')) {
    if (!pdo_fieldexists('jy_ppp_kefu', 'status')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_kefu') . ' ADD `status` int(10)   DEFAULT 0 COMMENT \'0为成功,其他为错误代码\';');
    }
}
if (pdo_tableexists('jy_ppp_kefu')) {
    if (!pdo_fieldexists('jy_ppp_kefu', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_kefu') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_login_log')) {
    if (!pdo_fieldexists('jy_ppp_login_log', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_login_log') . ' ADD `id` int(10) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_login_log')) {
    if (!pdo_fieldexists('jy_ppp_login_log', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_login_log') . ' ADD `weid` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_login_log')) {
    if (!pdo_fieldexists('jy_ppp_login_log', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_login_log') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_login_log')) {
    if (!pdo_fieldexists('jy_ppp_login_log', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_login_log') . ' ADD `createtime` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_mailui')) {
    if (!pdo_fieldexists('jy_ppp_mailui', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mailui') . ' ADD `id` int(11) NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_mailui')) {
    if (!pdo_fieldexists('jy_ppp_mailui', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mailui') . ' ADD `weid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_mailui')) {
    if (!pdo_fieldexists('jy_ppp_mailui', 'displayorder')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mailui') . ' ADD `displayorder` int(11) NOT NULL  DEFAULT 0 COMMENT \'ForOrder\';');
    }
}
if (pdo_tableexists('jy_ppp_mailui')) {
    if (!pdo_fieldexists('jy_ppp_mailui', 'name')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mailui') . ' ADD `name` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_mailui')) {
    if (!pdo_fieldexists('jy_ppp_mailui', 'thumb')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mailui') . ' ADD `thumb` varchar(255) NOT NULL   COMMENT \'ForLogoImage\';');
    }
}
if (pdo_tableexists('jy_ppp_mailui')) {
    if (!pdo_fieldexists('jy_ppp_mailui', 'description')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mailui') . ' ADD `description` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_mailui')) {
    if (!pdo_fieldexists('jy_ppp_mailui', 'enabled')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mailui') . ' ADD `enabled` tinyint(1) unsigned NOT NULL  DEFAULT 1 COMMENT \'0ForDeleted1ForExists\';');
    }
}
if (pdo_tableexists('jy_ppp_match')) {
    if (!pdo_fieldexists('jy_ppp_match', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_match') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_match')) {
    if (!pdo_fieldexists('jy_ppp_match', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_match') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_match')) {
    if (!pdo_fieldexists('jy_ppp_match', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_match') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_match')) {
    if (!pdo_fieldexists('jy_ppp_match', 'age')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_match') . ' ADD `age` int(1)   DEFAULT 0 ;');
    }
}
if (pdo_tableexists('jy_ppp_match')) {
    if (!pdo_fieldexists('jy_ppp_match', 'agemax')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_match') . ' ADD `agemax` int(1)   DEFAULT 0 ;');
    }
}
if (pdo_tableexists('jy_ppp_match')) {
    if (!pdo_fieldexists('jy_ppp_match', 'height')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_match') . ' ADD `height` int(1)   DEFAULT 0 ;');
    }
}
if (pdo_tableexists('jy_ppp_match')) {
    if (!pdo_fieldexists('jy_ppp_match', 'heightmax')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_match') . ' ADD `height` int(10)   DEFAULT 0 ;');
    }
}
if (pdo_tableexists('jy_ppp_match')) {
    if (!pdo_fieldexists('jy_ppp_match', 'education')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_match') . ' ADD `education` int(1)   DEFAULT 0 ;');
    }
}
if (pdo_tableexists('jy_ppp_match')) {
    if (!pdo_fieldexists('jy_ppp_match', 'income')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_match') . ' ADD `income` int(2)   DEFAULT 0 ;');
    }
}
if (pdo_tableexists('jy_ppp_match')) {
    if (!pdo_fieldexists('jy_ppp_match', 'incomemax')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_match') . ' ADD `incomemax` int(2)   DEFAULT 0 ;');
    }
}
if (pdo_tableexists('jy_ppp_match')) {
    if (!pdo_fieldexists('jy_ppp_match', 'province')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_match') . ' ADD `province` int(2) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_match')) {
    if (!pdo_fieldexists('jy_ppp_match', 'city')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_match') . ' ADD `city` int(2) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_match')) {
    if (!pdo_fieldexists('jy_ppp_match', 'blank')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_match') . ' ADD `blank` int(1) NOT NULL   COMMENT \'未填写的字段个数\';');
    }
}
if (pdo_tableexists('jy_ppp_match')) {
    if (!pdo_fieldexists('jy_ppp_match', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_match') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'uid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `uid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'from_user')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `from_user` varchar(50) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'nicheng')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `nicheng` varchar(30) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'avatar')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `avatar` varchar(255)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'mobile')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `mobile` varchar(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'pwd')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `pwd` varchar(20) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'beizhu')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `beizhu` varchar(205) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'sex')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `sex` int(1) NOT NULL   COMMENT \'1为男,2为女\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'status')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `status` int(1) NOT NULL   COMMENT \'封号与否\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'brith')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `brith` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'province')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `province` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'city')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `city` int(2) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'credit')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `credit` int(2)   DEFAULT 0 COMMENT \'金币\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'baoyue')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `baoyue` int(10)    COMMENT \'包月过期时间\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'shouxin')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `shouxin` int(10)    COMMENT \'收信宝过期时间\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'type')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `type` int(1) NOT NULL   COMMENT \'3为工作人员虚拟用户,,1为微信,0为账户\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'mobile_auth')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `mobile_auth` int(1)   DEFAULT 0 COMMENT \'1为认证,0为未认证\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'card_auth')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `card_auth` int(1)   DEFAULT 0 COMMENT \'1为认证,0为未认证\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'qrcode_id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `qrcode_id` int(10)   DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'parentid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `parentid` int(10)   DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_member')) {
    if (!pdo_fieldexists('jy_ppp_member', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_member') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_mianrao')) {
    if (!pdo_fieldexists('jy_ppp_mianrao', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mianrao') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_mianrao')) {
    if (!pdo_fieldexists('jy_ppp_mianrao', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mianrao') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_mianrao')) {
    if (!pdo_fieldexists('jy_ppp_mianrao', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mianrao') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_mianrao')) {
    if (!pdo_fieldexists('jy_ppp_mianrao', 'zhaohu')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mianrao') . ' ADD `zhaohu` int(10)   DEFAULT 0 COMMENT \'0为不限,1为拒绝异性发来的招呼类信件\';');
    }
}
if (pdo_tableexists('jy_ppp_mianrao')) {
    if (!pdo_fieldexists('jy_ppp_mianrao', 'thumb')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mianrao') . ' ADD `thumb` int(10)   DEFAULT 0 COMMENT \'0为不限,1为拒绝无头像的异性信件\';');
    }
}
if (pdo_tableexists('jy_ppp_mianrao')) {
    if (!pdo_fieldexists('jy_ppp_mianrao', 'province')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mianrao') . ' ADD `province` int(10)   DEFAULT 0 COMMENT \'0为不限,1为拒绝异省的异性信件\';');
    }
}
if (pdo_tableexists('jy_ppp_mianrao')) {
    if (!pdo_fieldexists('jy_ppp_mianrao', 'age')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mianrao') . ' ADD `age` int(10)   DEFAULT 0 COMMENT \'0为不限,1为拒绝不符合征友条件年龄的异性信件\';');
    }
}
if (pdo_tableexists('jy_ppp_mianrao')) {
    if (!pdo_fieldexists('jy_ppp_mianrao', 'mobile')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mianrao') . ' ADD `mobile` int(10)   DEFAULT 0 COMMENT \'0为不限,1为拒绝未验证手机的异性信件\';');
    }
}
if (pdo_tableexists('jy_ppp_mianrao')) {
    if (!pdo_fieldexists('jy_ppp_mianrao', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mianrao') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_mobile')) {
    if (!pdo_fieldexists('jy_ppp_mobile', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mobile') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_mobile')) {
    if (!pdo_fieldexists('jy_ppp_mobile', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mobile') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_mobile')) {
    if (!pdo_fieldexists('jy_ppp_mobile', 'mobile')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mobile') . ' ADD `mobile` varchar(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_mobile')) {
    if (!pdo_fieldexists('jy_ppp_mobile', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mobile') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_mobile')) {
    if (!pdo_fieldexists('jy_ppp_mobile', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_mobile') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_msg')) {
    if (!pdo_fieldexists('jy_ppp_msg', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_msg') . ' ADD `id` int(11) NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_msg')) {
    if (!pdo_fieldexists('jy_ppp_msg', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_msg') . ' ADD `weid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_msg')) {
    if (!pdo_fieldexists('jy_ppp_msg', 'parentid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_msg') . ' ADD `parentid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_msg')) {
    if (!pdo_fieldexists('jy_ppp_msg', 'type')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_msg') . ' ADD `type` int(2) NOT NULL  DEFAULT 0 COMMENT \'0为文本，1为图片，2为图文，3为多图文，4为语音\';');
    }
}
if (pdo_tableexists('jy_ppp_msg')) {
    if (!pdo_fieldexists('jy_ppp_msg', 'displayorder')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_msg') . ' ADD `displayorder` int(11) NOT NULL  DEFAULT 0 COMMENT \'ForOrder\';');
    }
}
if (pdo_tableexists('jy_ppp_msg')) {
    if (!pdo_fieldexists('jy_ppp_msg', 'name')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_msg') . ' ADD `name` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_msg')) {
    if (!pdo_fieldexists('jy_ppp_msg', 'media')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_msg') . ' ADD `media` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_msg')) {
    if (!pdo_fieldexists('jy_ppp_msg', 'url')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_msg') . ' ADD `url` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_msg')) {
    if (!pdo_fieldexists('jy_ppp_msg', 'picurl')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_msg') . ' ADD `picurl` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_msg')) {
    if (!pdo_fieldexists('jy_ppp_msg', 'media_id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_msg') . ' ADD `media_id` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_msg')) {
    if (!pdo_fieldexists('jy_ppp_msg', 'description')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_msg') . ' ADD `description` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_msg')) {
    if (!pdo_fieldexists('jy_ppp_msg', 'enabled')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_msg') . ' ADD `enabled` tinyint(1) unsigned NOT NULL  DEFAULT 1 COMMENT \'0ForDeleted1ForExists\';');
    }
}
if (pdo_tableexists('jy_ppp_nickname')) {
    if (!pdo_fieldexists('jy_ppp_nickname', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_nickname') . ' ADD `id` int(11) NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_nickname')) {
    if (!pdo_fieldexists('jy_ppp_nickname', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_nickname') . ' ADD `weid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_nickname')) {
    if (!pdo_fieldexists('jy_ppp_nickname', 'displayorder')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_nickname') . ' ADD `displayorder` int(11) NOT NULL  DEFAULT 0 COMMENT \'ForOrder\';');
    }
}
if (pdo_tableexists('jy_ppp_nickname')) {
    if (!pdo_fieldexists('jy_ppp_nickname', 'name')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_nickname') . ' ADD `name` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_nickname')) {
    if (!pdo_fieldexists('jy_ppp_nickname', 'description')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_nickname') . ' ADD `description` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_nickname')) {
    if (!pdo_fieldexists('jy_ppp_nickname', 'enabled')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_nickname') . ' ADD `enabled` tinyint(1) unsigned NOT NULL  DEFAULT 1 COMMENT \'0ForDeleted1ForExists\';');
    }
}
if (pdo_tableexists('jy_ppp_pay_log')) {
    if (!pdo_fieldexists('jy_ppp_pay_log', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_pay_log') . ' ADD `id` int(10) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_pay_log')) {
    if (!pdo_fieldexists('jy_ppp_pay_log', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_pay_log') . ' ADD `weid` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_pay_log')) {
    if (!pdo_fieldexists('jy_ppp_pay_log', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_pay_log') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_pay_log')) {
    if (!pdo_fieldexists('jy_ppp_pay_log', 'from_user')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_pay_log') . ' ADD `from_user` varchar(20)    COMMENT \'付款的from_user,为空时代表自己付的款\';');
    }
}
if (pdo_tableexists('jy_ppp_pay_log')) {
    if (!pdo_fieldexists('jy_ppp_pay_log', 'fee')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_pay_log') . ' ADD `fee` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_pay_log')) {
    if (!pdo_fieldexists('jy_ppp_pay_log', 'log')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_pay_log') . ' ADD `log` int(10) NOT NULL   COMMENT \'1为购买豆币,2为购买包月服务,3为购买收信宝\';');
    }
}
if (pdo_tableexists('jy_ppp_pay_log')) {
    if (!pdo_fieldexists('jy_ppp_pay_log', 'status')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_pay_log') . ' ADD `status` int(10) NOT NULL   COMMENT \'付款状态\';');
    }
}
if (pdo_tableexists('jy_ppp_pay_log')) {
    if (!pdo_fieldexists('jy_ppp_pay_log', 'plid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_pay_log') . ' ADD `plid` bigint(11) unsigned    COMMENT \'core_paylog表的id\';');
    }
}
if (pdo_tableexists('jy_ppp_pay_log')) {
    if (!pdo_fieldexists('jy_ppp_pay_log', 'paytime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_pay_log') . ' ADD `paytime` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_pay_log')) {
    if (!pdo_fieldexists('jy_ppp_pay_log', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_pay_log') . ' ADD `createtime` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_price')) {
    if (!pdo_fieldexists('jy_ppp_price', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_price') . ' ADD `id` int(11) NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_price')) {
    if (!pdo_fieldexists('jy_ppp_price', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_price') . ' ADD `weid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_price')) {
    if (!pdo_fieldexists('jy_ppp_price', 'displayorder')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_price') . ' ADD `displayorder` int(11) NOT NULL  DEFAULT 0 COMMENT \'ForOrder\';');
    }
}
if (pdo_tableexists('jy_ppp_price')) {
    if (!pdo_fieldexists('jy_ppp_price', 'fee')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_price') . ' ADD `fee` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_price')) {
    if (!pdo_fieldexists('jy_ppp_price', 'huafei')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_price') . ' ADD `huafei` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_price')) {
    if (!pdo_fieldexists('jy_ppp_price', 'credit')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_price') . ' ADD `credit` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_price')) {
    if (!pdo_fieldexists('jy_ppp_price', 'baoyue')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_price') . ' ADD `baoyue` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_price')) {
    if (!pdo_fieldexists('jy_ppp_price', 'shouxin')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_price') . ' ADD `shouxin` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_price')) {
    if (!pdo_fieldexists('jy_ppp_price', 'log')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_price') . ' ADD `log` int(10) NOT NULL   COMMENT \'1为购买豆币,2为购买包月服务,3为购买收信宝\';');
    }
}
if (pdo_tableexists('jy_ppp_price')) {
    if (!pdo_fieldexists('jy_ppp_price', 'description')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_price') . ' ADD `description` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_price')) {
    if (!pdo_fieldexists('jy_ppp_price', 'enabled')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_price') . ' ADD `enabled` tinyint(1) unsigned NOT NULL  DEFAULT 1 COMMENT \'0ForDeleted1ForExists\';');
    }
}
if (pdo_tableexists('jy_ppp_report')) {
    if (!pdo_fieldexists('jy_ppp_report', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_report') . ' ADD `id` int(11) NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_report')) {
    if (!pdo_fieldexists('jy_ppp_report', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_report') . ' ADD `weid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_report')) {
    if (!pdo_fieldexists('jy_ppp_report', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_report') . ' ADD `mid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_report')) {
    if (!pdo_fieldexists('jy_ppp_report', 'reportid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_report') . ' ADD `reportid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_report')) {
    if (!pdo_fieldexists('jy_ppp_report', 'report')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_report') . ' ADD `report` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_report')) {
    if (!pdo_fieldexists('jy_ppp_report', 'status')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_report') . ' ADD `status` int(2)   DEFAULT 0 COMMENT \'0为审核中,1审核过\';');
    }
}
if (pdo_tableexists('jy_ppp_report')) {
    if (!pdo_fieldexists('jy_ppp_report', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_report') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_rule')) {
    if (!pdo_fieldexists('jy_ppp_rule', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_rule') . ' ADD `id` int(11) NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_rule')) {
    if (!pdo_fieldexists('jy_ppp_rule', 'rulename')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_rule') . ' ADD `rulename` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_rule')) {
    if (!pdo_fieldexists('jy_ppp_rule', 'desc')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_rule') . ' ADD `desc` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_rule')) {
    if (!pdo_fieldexists('jy_ppp_rule', 'ruleid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_rule') . ' ADD `ruleid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_rule')) {
    if (!pdo_fieldexists('jy_ppp_rule', 'uniacid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_rule') . ' ADD `uniacid` int(11) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_rule')) {
    if (!pdo_fieldexists('jy_ppp_rule', 'type')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_rule') . ' ADD `type` int(1) NOT NULL  DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_safe')) {
    if (!pdo_fieldexists('jy_ppp_safe', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_safe') . ' ADD `id` int(10) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_safe')) {
    if (!pdo_fieldexists('jy_ppp_safe', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_safe') . ' ADD `weid` int(10) unsigned NOT NULL  DEFAULT 0 COMMENT \'所属帐号\';');
    }
}
if (pdo_tableexists('jy_ppp_safe')) {
    if (!pdo_fieldexists('jy_ppp_safe', 'name')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_safe') . ' ADD `name` varchar(50) NOT NULL   COMMENT \'名称\';');
    }
}
if (pdo_tableexists('jy_ppp_safe')) {
    if (!pdo_fieldexists('jy_ppp_safe', 'parentid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_safe') . ' ADD `parentid` int(10) unsigned NOT NULL  DEFAULT 0 COMMENT \'批次ID,0为第一级\';');
    }
}
if (pdo_tableexists('jy_ppp_safe')) {
    if (!pdo_fieldexists('jy_ppp_safe', 'displayorder')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_safe') . ' ADD `displayorder` tinyint(3) unsigned NOT NULL  DEFAULT 0 COMMENT \'排序\';');
    }
}
if (pdo_tableexists('jy_ppp_safe')) {
    if (!pdo_fieldexists('jy_ppp_safe', 'description')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_safe') . ' ADD `description` text    COMMENT \'描述\';');
    }
}
if (pdo_tableexists('jy_ppp_safe')) {
    if (!pdo_fieldexists('jy_ppp_safe', 'enabled')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_safe') . ' ADD `enabled` tinyint(1) unsigned NOT NULL  DEFAULT 1 COMMENT \'是否开启\';');
    }
}
if (pdo_tableexists('jy_ppp_safe')) {
    if (!pdo_fieldexists('jy_ppp_safe', 'paixu')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_safe') . ' ADD `paixu` tinyint(1) unsigned NOT NULL  DEFAULT 0 COMMENT \'排序\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'aname')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `aname` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'sharetitle')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `sharetitle` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'sharedesc')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `sharedesc` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'sharelogo')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `sharelogo` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'copyright')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `copyright` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'copyrighturl')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `copyrighturl` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'zhuce_bg')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `zhuce_bg` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'zhuce_text')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `zhuce_text` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'adminthumb')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `adminthumb` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'sms_type')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `sms_type` int(10) NOT NULL  DEFAULT 0 COMMENT \'0为网讯,1为互亿无线,2为无需，3为阿里大鱼\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'sms_sign')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `sms_sign` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'sms_product')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `sms_product` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'sms_username')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `sms_username` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'sms_pwd')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `sms_pwd` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'address')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `address` int(10)   DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'province')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `province` int(10)   DEFAULT 11 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'city')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `city` int(10)   DEFAULT 1101 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'chat')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `chat` int(10)   DEFAULT 20 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'idcard')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `idcard` int(10)   DEFAULT 60 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'doubi')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `doubi` varchar(255) NOT NULL  DEFAULT 豆币 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'unit')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `unit` varchar(255) NOT NULL  DEFAULT 豆 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'jiange')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `jiange` int(10)   DEFAULT 30 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'shangxian')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `shangxian` int(10)   DEFAULT 12 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'kjmsg_num')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `kjmsg_num` int(10)   DEFAULT 10 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'kjmsg_jiange')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `kjmsg_jiange` int(10)   DEFAULT 60 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'kjmsg_jiange2')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `kjmsg_jiange2` int(10)   DEFAULT 80 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'kjmsg_jiange3')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `kjmsg_jiange3` int(10)   DEFAULT 60 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'kjmsg_jiange4')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `kjmsg_jiange4` int(10)   DEFAULT 60 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'cz_send_style')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `cz_send_style` int(2) NOT NULL  DEFAULT 0 COMMENT \'是否开启当用户充值后发信返回回复库2中的内容\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'tel')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `tel` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'kftime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `kftime` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'thumb')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `thumb` int(2) NOT NULL  DEFAULT 1 COMMENT \'0为无需审核头像,1为需要审核头像\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'rule')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `rule` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'moni')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `moni` int(2) NOT NULL  DEFAULT 0 COMMENT \'是否开启模拟定位功能\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'indexui')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `indexui` int(2) NOT NULL  DEFAULT 0 COMMENT \'0为列表,1为大图\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'unzhuce')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `unzhuce` int(2) NOT NULL  DEFAULT 0 COMMENT \'0为需要注册,1为无需注册\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'user_addr')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `user_addr` int(2) NOT NULL  DEFAULT 0 COMMENT \'0为省市,1为省,2为市\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'youhuo_pay')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `youhuo_pay` int(2) NOT NULL  DEFAULT 0 COMMENT \'用qq和微信诱惑充值\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'mail_float')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `mail_float` int(2) NOT NULL  DEFAULT 1 COMMENT \'是否显示悬浮信件提示\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'sql_style')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `sql_style` int(2) NOT NULL  DEFAULT 0 COMMENT \'数据库查数据方式设定\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'huafei')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `huafei` int(2) NOT NULL  DEFAULT 0 COMMENT \'是否拥有充值话费假象\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'huafei_thumb')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `huafei_thumb` varchar(255) NOT NULL   COMMENT \'充值话费图片banner\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'stat_style')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `stat_style` int(2) NOT NULL  DEFAULT 0 COMMENT \'是否在统计分析处显示图表\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'cz_style')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `cz_style` int(2) NOT NULL  DEFAULT 0 COMMENT \'是否隐藏没有设置的充值服务\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'dw_style')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `dw_style` int(2) NOT NULL  DEFAULT 0 COMMENT \'定位方式\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'chat_style')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `chat_style` int(2) NOT NULL  DEFAULT 0 COMMENT \'聊天规则，0为一天对一个用户一次，1为一天对一个平台一次\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'bd_ak')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `bd_ak` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'czdh_style')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `czdh_style` int(2) NOT NULL  DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'mail_style')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `mail_style` int(2) NOT NULL  DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'detail_style')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `detail_style` int(2) NOT NULL  DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'chatui_style')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `chatui_style` int(2) NOT NULL  DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'tgy_sale')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `tgy_sale` int(10)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'tgy_parent')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `tgy_parent` int(10)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'tgy_kl_num')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `tgy_kl_num` int(10)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'tgy_kl_per')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `tgy_kl_per` int(10)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_setting')) {
    if (!pdo_fieldexists('jy_ppp_setting', 'tgy_min')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_setting') . ' ADD `tgy_min` int(10)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_shouxin_log')) {
    if (!pdo_fieldexists('jy_ppp_shouxin_log', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_shouxin_log') . ' ADD `id` int(10) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_shouxin_log')) {
    if (!pdo_fieldexists('jy_ppp_shouxin_log', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_shouxin_log') . ' ADD `weid` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_shouxin_log')) {
    if (!pdo_fieldexists('jy_ppp_shouxin_log', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_shouxin_log') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_shouxin_log')) {
    if (!pdo_fieldexists('jy_ppp_shouxin_log', 'starttime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_shouxin_log') . ' ADD `starttime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_shouxin_log')) {
    if (!pdo_fieldexists('jy_ppp_shouxin_log', 'endtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_shouxin_log') . ' ADD `endtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_shouxin_log')) {
    if (!pdo_fieldexists('jy_ppp_shouxin_log', 'logid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_shouxin_log') . ' ADD `logid` int(10) NOT NULL   COMMENT \'充值记录id\';');
    }
}
if (pdo_tableexists('jy_ppp_shouxin_log')) {
    if (!pdo_fieldexists('jy_ppp_shouxin_log', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_shouxin_log') . ' ADD `createtime` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tezheng')) {
    if (!pdo_fieldexists('jy_ppp_tezheng', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tezheng') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tezheng')) {
    if (!pdo_fieldexists('jy_ppp_tezheng', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tezheng') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tezheng')) {
    if (!pdo_fieldexists('jy_ppp_tezheng', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tezheng') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tezheng')) {
    if (!pdo_fieldexists('jy_ppp_tezheng', 'tezheng')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tezheng') . ' ADD `tezheng` varchar(6) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tezheng')) {
    if (!pdo_fieldexists('jy_ppp_tezheng', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tezheng') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tgy_rule')) {
    if (!pdo_fieldexists('jy_ppp_tgy_rule', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tgy_rule') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tgy_rule')) {
    if (!pdo_fieldexists('jy_ppp_tgy_rule', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tgy_rule') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tgy_rule')) {
    if (!pdo_fieldexists('jy_ppp_tgy_rule', 'content')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tgy_rule') . ' ADD `content` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tgy_rule')) {
    if (!pdo_fieldexists('jy_ppp_tgy_rule', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tgy_rule') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_thumb')) {
    if (!pdo_fieldexists('jy_ppp_thumb', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_thumb') . ' ADD `id` int(11) NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_thumb')) {
    if (!pdo_fieldexists('jy_ppp_thumb', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_thumb') . ' ADD `weid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_thumb')) {
    if (!pdo_fieldexists('jy_ppp_thumb', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_thumb') . ' ADD `mid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_thumb')) {
    if (!pdo_fieldexists('jy_ppp_thumb', 'type')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_thumb') . ' ADD `type` int(2)   DEFAULT 0 COMMENT \'0为审核中,1为头像,2为非头像,3为不通过,4为删除\';');
    }
}
if (pdo_tableexists('jy_ppp_thumb')) {
    if (!pdo_fieldexists('jy_ppp_thumb', 'thumb')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_thumb') . ' ADD `thumb` longtext    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_thumb')) {
    if (!pdo_fieldexists('jy_ppp_thumb', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_thumb') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tixianrecord')) {
    if (!pdo_fieldexists('jy_ppp_tixianrecord', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tixianrecord') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tixianrecord')) {
    if (!pdo_fieldexists('jy_ppp_tixianrecord', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tixianrecord') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tixianrecord')) {
    if (!pdo_fieldexists('jy_ppp_tixianrecord', 'from_user')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tixianrecord') . ' ADD `from_user` varchar(30) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tixianrecord')) {
    if (!pdo_fieldexists('jy_ppp_tixianrecord', 'uid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tixianrecord') . ' ADD `uid` int(10) NOT NULL  DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tixianrecord')) {
    if (!pdo_fieldexists('jy_ppp_tixianrecord', 'tgyid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tixianrecord') . ' ADD `tgyid` int(10) NOT NULL  DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tixianrecord')) {
    if (!pdo_fieldexists('jy_ppp_tixianrecord', 'fee')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tixianrecord') . ' ADD `fee` decimal(10,2)   DEFAULT 0.00 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tixianrecord')) {
    if (!pdo_fieldexists('jy_ppp_tixianrecord', 'realname')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tixianrecord') . ' ADD `realname` varchar(200) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tixianrecord')) {
    if (!pdo_fieldexists('jy_ppp_tixianrecord', 'alipay')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tixianrecord') . ' ADD `alipay` varchar(200) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tixianrecord')) {
    if (!pdo_fieldexists('jy_ppp_tixianrecord', 'status')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tixianrecord') . ' ADD `status` tinyint(1)   DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tixianrecord')) {
    if (!pdo_fieldexists('jy_ppp_tixianrecord', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tixianrecord') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `id` int(10) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `weid` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'from_user')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `from_user` varchar(50) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'uid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `uid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'status')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `status` int(10) unsigned NOT NULL  DEFAULT 1 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'username')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `username` varchar(50) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'mobile')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `mobile` varchar(20)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'mail')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `mail` varchar(200)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'QQ')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `QQ` varchar(200)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'wechat')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `wechat` varchar(200)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'alipay')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `alipay` varchar(200)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'realname')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `realname` varchar(200)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'password')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `password` varchar(200)    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'parentid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `parentid` int(10)   DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'description')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `description` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `createtime` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'credit')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `credit` decimal(10,2)   DEFAULT 0.00 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'creditall')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `creditall` decimal(10,2)   DEFAULT 0.00 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang', 'qrcode')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang') . ' ADD `qrcode` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang_xinxi', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang_xinxi') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang_xinxi', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang_xinxi') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang_xinxi', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang_xinxi') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang_xinxi', 'uid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang_xinxi') . ' ADD `uid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang_xinxi', 'from_user')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang_xinxi') . ' ADD `from_user` varchar(50) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang_xinxi', 'title')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang_xinxi') . ' ADD `title` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang_xinxi', 'content')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang_xinxi') . ' ADD `content` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang_xinxi', 'yuedu')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang_xinxi') . ' ADD `yuedu` tinyint(1)   DEFAULT 1 COMMENT \'0为未读,1为已读\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang_xinxi', 'yuedutime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang_xinxi') . ' ADD `yuedutime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_tuiguang_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_tuiguang_xinxi', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_tuiguang_xinxi') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_visit')) {
    if (!pdo_fieldexists('jy_ppp_visit', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_visit') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_visit')) {
    if (!pdo_fieldexists('jy_ppp_visit', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_visit') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_visit')) {
    if (!pdo_fieldexists('jy_ppp_visit', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_visit') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_visit')) {
    if (!pdo_fieldexists('jy_ppp_visit', 'visitid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_visit') . ' ADD `visitid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_visit')) {
    if (!pdo_fieldexists('jy_ppp_visit', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_visit') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_xinxi', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_xinxi', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_xinxi', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi') . ' ADD `mid` int(10) NOT NULL  DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_xinxi', 'sendid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi') . ' ADD `sendid` int(10) NOT NULL  DEFAULT 0 COMMENT \'发送人员\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_xinxi', 'content')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi') . ' ADD `content` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_xinxi', 'zhaohuid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi') . ' ADD `zhaohuid` int(10)   DEFAULT 0 COMMENT \'打招呼id\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_xinxi', 'huifuid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi') . ' ADD `huifuid` int(10)   DEFAULT 0 COMMENT \'回复打招呼id\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_xinxi', 'type')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi') . ' ADD `type` int(10)   DEFAULT 0 COMMENT \'0为打招呼,1为会员推荐,2为最新回信,3为管理员\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_xinxi', 'leixing')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi') . ' ADD `leixing` int(10)   DEFAULT 0 COMMENT \'0为文本,1为图片，2为语音，3为组合\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_xinxi', 'media_id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi') . ' ADD `media_id` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_xinxi', 'picurl')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi') . ' ADD `picurl` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_xinxi', 'yuedu')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi') . ' ADD `yuedu` tinyint(1)   DEFAULT 0 COMMENT \'0为未读,1为已读\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_xinxi', 'yuedutime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi') . ' ADD `yuedutime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi')) {
    if (!pdo_fieldexists('jy_ppp_xinxi', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi_temp')) {
    if (!pdo_fieldexists('jy_ppp_xinxi_temp', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi_temp') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi_temp')) {
    if (!pdo_fieldexists('jy_ppp_xinxi_temp', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi_temp') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi_temp')) {
    if (!pdo_fieldexists('jy_ppp_xinxi_temp', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi_temp') . ' ADD `mid` int(10) NOT NULL  DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi_temp')) {
    if (!pdo_fieldexists('jy_ppp_xinxi_temp', 'sendid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi_temp') . ' ADD `sendid` int(10) NOT NULL  DEFAULT 0 COMMENT \'发送人员\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi_temp')) {
    if (!pdo_fieldexists('jy_ppp_xinxi_temp', 'content')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi_temp') . ' ADD `content` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi_temp')) {
    if (!pdo_fieldexists('jy_ppp_xinxi_temp', 'zhaohuid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi_temp') . ' ADD `zhaohuid` int(10)   DEFAULT 0 COMMENT \'打招呼id\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi_temp')) {
    if (!pdo_fieldexists('jy_ppp_xinxi_temp', 'huifuid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi_temp') . ' ADD `huifuid` int(10)   DEFAULT 0 COMMENT \'回复打招呼id\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi_temp')) {
    if (!pdo_fieldexists('jy_ppp_xinxi_temp', 'type')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi_temp') . ' ADD `type` int(10)   DEFAULT 0 COMMENT \'0为打招呼,1为会员推荐,2为最新回信,3为管理员\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi_temp')) {
    if (!pdo_fieldexists('jy_ppp_xinxi_temp', 'leixing')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi_temp') . ' ADD `leixing` int(10)   DEFAULT 0 COMMENT \'0为文本,1为图片，2为语音，3为组合\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi_temp')) {
    if (!pdo_fieldexists('jy_ppp_xinxi_temp', 'media_id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi_temp') . ' ADD `media_id` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi_temp')) {
    if (!pdo_fieldexists('jy_ppp_xinxi_temp', 'picurl')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi_temp') . ' ADD `picurl` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi_temp')) {
    if (!pdo_fieldexists('jy_ppp_xinxi_temp', 'yuedu')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi_temp') . ' ADD `yuedu` tinyint(1)   DEFAULT 0 COMMENT \'0为未读,1为已读\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi_temp')) {
    if (!pdo_fieldexists('jy_ppp_xinxi_temp', 'yuedutime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi_temp') . ' ADD `yuedutime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xinxi_temp')) {
    if (!pdo_fieldexists('jy_ppp_xinxi_temp', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xinxi_temp') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xuni_member')) {
    if (!pdo_fieldexists('jy_ppp_xuni_member', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xuni_member') . ' ADD `id` int(10) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xuni_member')) {
    if (!pdo_fieldexists('jy_ppp_xuni_member', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xuni_member') . ' ADD `weid` int(10) unsigned NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xuni_member')) {
    if (!pdo_fieldexists('jy_ppp_xuni_member', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xuni_member') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xuni_member')) {
    if (!pdo_fieldexists('jy_ppp_xuni_member', 'dyid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xuni_member') . ' ADD `dyid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xuni_pay')) {
    if (!pdo_fieldexists('jy_ppp_xuni_pay', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xuni_pay') . ' ADD `id` int(11) NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xuni_pay')) {
    if (!pdo_fieldexists('jy_ppp_xuni_pay', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xuni_pay') . ' ADD `weid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xuni_pay')) {
    if (!pdo_fieldexists('jy_ppp_xuni_pay', 'displayorder')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xuni_pay') . ' ADD `displayorder` int(11) NOT NULL  DEFAULT 0 COMMENT \'ForOrder\';');
    }
}
if (pdo_tableexists('jy_ppp_xuni_pay')) {
    if (!pdo_fieldexists('jy_ppp_xuni_pay', 'name')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xuni_pay') . ' ADD `name` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xuni_pay')) {
    if (!pdo_fieldexists('jy_ppp_xuni_pay', 'user')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xuni_pay') . ' ADD `user` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xuni_pay')) {
    if (!pdo_fieldexists('jy_ppp_xuni_pay', 'price')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xuni_pay') . ' ADD `price` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xuni_pay')) {
    if (!pdo_fieldexists('jy_ppp_xuni_pay', 'description')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xuni_pay') . ' ADD `description` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xuni_pay')) {
    if (!pdo_fieldexists('jy_ppp_xuni_pay', 'type')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xuni_pay') . ' ADD `type` tinyint(1) unsigned NOT NULL  DEFAULT 0 COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xuni_pay')) {
    if (!pdo_fieldexists('jy_ppp_xuni_pay', 'enabled')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xuni_pay') . ' ADD `enabled` tinyint(1) unsigned NOT NULL  DEFAULT 1 COMMENT \'0ForDeleted1ForExists\';');
    }
}
if (pdo_tableexists('jy_ppp_xunithumb')) {
    if (!pdo_fieldexists('jy_ppp_xunithumb', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xunithumb') . ' ADD `id` int(11) NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xunithumb')) {
    if (!pdo_fieldexists('jy_ppp_xunithumb', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xunithumb') . ' ADD `mid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_xunithumb')) {
    if (!pdo_fieldexists('jy_ppp_xunithumb', 'sex')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xunithumb') . ' ADD `sex` int(2) NOT NULL   COMMENT \'1为男,2为女\';');
    }
}
if (pdo_tableexists('jy_ppp_xunithumb')) {
    if (!pdo_fieldexists('jy_ppp_xunithumb', 'avatar')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xunithumb') . ' ADD `avatar` int(2) NOT NULL  DEFAULT 0 COMMENT \'1为头像,0为普通\';');
    }
}
if (pdo_tableexists('jy_ppp_xunithumb')) {
    if (!pdo_fieldexists('jy_ppp_xunithumb', 'thumb')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_xunithumb') . ' ADD `thumb` text    COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_yongjin')) {
    if (!pdo_fieldexists('jy_ppp_yongjin', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_yongjin') . ' ADD `id` int(11) unsigned NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_yongjin')) {
    if (!pdo_fieldexists('jy_ppp_yongjin', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_yongjin') . ' ADD `weid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_yongjin')) {
    if (!pdo_fieldexists('jy_ppp_yongjin', 'uid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_yongjin') . ' ADD `uid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_yongjin')) {
    if (!pdo_fieldexists('jy_ppp_yongjin', 'from_user')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_yongjin') . ' ADD `from_user` varchar(50) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_yongjin')) {
    if (!pdo_fieldexists('jy_ppp_yongjin', 'tgyid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_yongjin') . ' ADD `tgyid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_yongjin')) {
    if (!pdo_fieldexists('jy_ppp_yongjin', 'mid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_yongjin') . ' ADD `mid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_yongjin')) {
    if (!pdo_fieldexists('jy_ppp_yongjin', 'plid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_yongjin') . ' ADD `plid` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_yongjin')) {
    if (!pdo_fieldexists('jy_ppp_yongjin', 'log')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_yongjin') . ' ADD `log` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_yongjin')) {
    if (!pdo_fieldexists('jy_ppp_yongjin', 'credit')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_yongjin') . ' ADD `credit` decimal(10,2)   DEFAULT 0.00 COMMENT \'总额\';');
    }
}
if (pdo_tableexists('jy_ppp_yongjin')) {
    if (!pdo_fieldexists('jy_ppp_yongjin', 'type')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_yongjin') . ' ADD `type` tinyint(1) NOT NULL  DEFAULT 0 COMMENT \'0:直接销售，1：上级抽佣\';');
    }
}
if (pdo_tableexists('jy_ppp_yongjin')) {
    if (!pdo_fieldexists('jy_ppp_yongjin', 'kl')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_yongjin') . ' ADD `kl` tinyint(1) NOT NULL  DEFAULT 0 COMMENT \'0:未扣量，1：已扣量\';');
    }
}
if (pdo_tableexists('jy_ppp_yongjin')) {
    if (!pdo_fieldexists('jy_ppp_yongjin', 'updatetime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_yongjin') . ' ADD `updatetime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_yongjin')) {
    if (!pdo_fieldexists('jy_ppp_yongjin', 'createtime')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_yongjin') . ' ADD `createtime` int(10) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_zhaohu')) {
    if (!pdo_fieldexists('jy_ppp_zhaohu', 'id')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_zhaohu') . ' ADD `id` int(11) NOT NULL auto_increment  COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_zhaohu')) {
    if (!pdo_fieldexists('jy_ppp_zhaohu', 'weid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_zhaohu') . ' ADD `weid` int(11) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_zhaohu')) {
    if (!pdo_fieldexists('jy_ppp_zhaohu', 'displayorder')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_zhaohu') . ' ADD `displayorder` int(11) NOT NULL  DEFAULT 0 COMMENT \'ForOrder\';');
    }
}
if (pdo_tableexists('jy_ppp_zhaohu')) {
    if (!pdo_fieldexists('jy_ppp_zhaohu', 'name')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_zhaohu') . ' ADD `name` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_zhaohu')) {
    if (!pdo_fieldexists('jy_ppp_zhaohu', 'parentid')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_zhaohu') . ' ADD `parentid` int(10) unsigned NOT NULL  DEFAULT 0 COMMENT \'批次ID,0为第一级\';');
    }
}
if (pdo_tableexists('jy_ppp_zhaohu')) {
    if (!pdo_fieldexists('jy_ppp_zhaohu', 'description')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_zhaohu') . ' ADD `description` varchar(255) NOT NULL   COMMENT \'\';');
    }
}
if (pdo_tableexists('jy_ppp_zhaohu')) {
    if (!pdo_fieldexists('jy_ppp_zhaohu', 'enabled')) {
        pdo_query('ALTER TABLE ' . tablename('jy_ppp_zhaohu') . ' ADD `enabled` tinyint(1) unsigned NOT NULL  DEFAULT 1 COMMENT \'0ForDeleted1ForExists\';');
    }
}