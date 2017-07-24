<?php
//decode by 冰锋微云www.ncwxyx.com www.ncwxyx.com

$sql =<<<EOF
CREATE TABLE IF NOT EXISTS `ims_jy_ppp_aihao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `aihao` varchar(6) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_attent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `attentid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `attentid` (`attentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_baoyue_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `logid` int(10) NOT NULL COMMENT '充值记录id',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `blank` int(1) NOT NULL COMMENT '未填写的字段个数',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_black` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `blackid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `blackid` (`blackid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_chat_doubi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `chatid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_code` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_credit_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `credit` int(2) NOT NULL,
  `type` varchar(10) NOT NULL COMMENT 'add,reduce',
  `log` int(1) NOT NULL COMMENT '1为身份认证消耗积分,2为积分兑换聊天机会,3为系统变更积分,4为用户充值积分',
  `logid` int(10) NOT NULL COMMENT '对方用户的id或充值记录id',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `blank` int(1) NOT NULL COMMENT '未填写的字段个数',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_dianyuan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL DEFAULT '',
  `uid` int(10) NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `username` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(20) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `QQ` varchar(200) DEFAULT NULL,
  `wechat` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `description` text,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_help` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '批次ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `description` text COMMENT '描述',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_hf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0',
  `media_id` varchar(255) NOT NULL,
  `picurl` text,
  `sex` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_hf2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '0为文本，1为图片，2为语音，3为组合',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '批次ID,0为第一级',
  `media_id` varchar(255) NOT NULL,
  `picurl` text,
  `sex` int(2) NOT NULL DEFAULT '0' COMMENT '0为不限，1为男，2为女',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_hf2_send` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '0',
  `sendid` int(10) NOT NULL DEFAULT '0',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `sendid` (`sendid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_idcard` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `idcard` varchar(20) NOT NULL,
  `realname` varchar(100) NOT NULL,
  `sex` int(2) NOT NULL COMMENT '1为男,2为女',
  `brith` int(10) NOT NULL,
  `province` int(10) NOT NULL,
  `city` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_kefu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT 'text' COMMENT '客服接口消息类型',
  `content` text,
  `desc` text,
  `url` text,
  `picurl` text,
  `status` int(10) DEFAULT '0' COMMENT '0为成功,其他为错误代码',
  `createtime` int(10) NOT NULL,
  `sendid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_mailui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT 'ForLogoImage',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_match` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `age` int(1) DEFAULT '0' COMMENT '0为不限,1为18-25,2为26-35,3为36-45,4为46-55,5为55以上',
  `agemax` int(1) DEFAULT '0',
  `height` int(1) DEFAULT '0' COMMENT '0为不限,1为160以下,2为161-165,3为166-170,4为170以上',
  `heightmax` int(1) DEFAULT '0',
  `education` int(1) DEFAULT '0' COMMENT '0为不限,1为高中,中专及以上,2为大专及以上,3为本科及以上',
  `income` int(2) DEFAULT '0' COMMENT '0为不限,1为2000元以上,2为5000元以上,3为10000元以上',
  `incomemax` int(2) DEFAULT '0',
  `province` int(2) NOT NULL,
  `blank` int(1) NOT NULL COMMENT '未填写的字段个数',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `sex` int(1) NOT NULL COMMENT '1为男,2为女',
  `status` int(1) NOT NULL COMMENT '封号与否',
  `brith` int(10) NOT NULL,
  `province` int(2) NOT NULL,
  `city` int(2) NOT NULL,
  `credit` int(2) DEFAULT '0' COMMENT '金币',
  `baoyue` int(10) DEFAULT NULL COMMENT '包月过期时间',
  `shouxin` int(10) DEFAULT NULL COMMENT '收信宝过期时间',
  `type` int(1) NOT NULL COMMENT '3为工作人员虚拟用户,,1为微信,0为账户',
  `mobile_auth` int(1) DEFAULT '0' COMMENT '1为认证,0为未认证',
  `card_auth` int(1) DEFAULT '0' COMMENT '1为认证,0为未认证',
  `createtime` int(10) NOT NULL,
  `qrcode_id` int(10) DEFAULT '0',
  `parentid` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `province` (`province`),
  KEY `sex` (`sex`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_mianrao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `zhaohu` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝异性发来的招呼类信件',
  `thumb` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝无头像的异性信件',
  `province` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝异省的异性信件',
  `age` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝不符合征友条件年龄的异性信件',
  `mobile` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝未验证手机的异性信件',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_mobile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `type` int(2) NOT NULL DEFAULT '0',
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `media` text,
  `url` text,
  `picurl` text,
  `media_id` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_nickname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_pay_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `from_user` varchar(20) DEFAULT NULL COMMENT '付款的from_user,为空时代表自己付的款',
  `fee` int(10) NOT NULL,
  `log` int(10) NOT NULL COMMENT '1为购买豆币,2为购买包月服务,3为购买收信宝',
  `status` int(10) NOT NULL COMMENT '付款状态',
  `plid` bigint(11) unsigned DEFAULT NULL COMMENT 'core_paylog表的id',
  `paytime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `fee` int(10) NOT NULL,
  `credit` int(10) NOT NULL,
  `baoyue` int(10) NOT NULL,
  `shouxin` int(10) NOT NULL,
  `log` int(10) NOT NULL COMMENT '1为购买豆币,2为购买包月服务,3为购买收信宝',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  `huafei` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `reportid` int(11) NOT NULL,
  `report` text,
  `status` int(2) DEFAULT '0' COMMENT '0为审核中,1审核过',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rulename` varchar(255) NOT NULL,
  `desc` text,
  `ruleid` int(11) NOT NULL,
  `uniacid` int(11) unsigned NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_safe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '批次ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `description` text COMMENT '描述',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  `paixu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `sms_type` int(10) NOT NULL DEFAULT '0' COMMENT '0,1为互亿无线,2为微擎',
  `sms_sign` varchar(255) NOT NULL,
  `sms_product` varchar(255) NOT NULL,
  `sms_username` varchar(255) NOT NULL,
  `sms_pwd` varchar(255) NOT NULL,
  `address` int(10) DEFAULT '0',
  `province` int(10) DEFAULT '11',
  `city` int(10) DEFAULT '1101',
  `chat` int(10) DEFAULT '20',
  `idcard` int(10) DEFAULT '60',
  `doubi` varchar(255) NOT NULL DEFAULT '豆币',
  `unit` varchar(255) NOT NULL DEFAULT '豆',
  `jiange` int(10) DEFAULT '30',
  `shangxian` int(10) DEFAULT '12',
  `tel` varchar(255) NOT NULL,
  `kftime` varchar(255) NOT NULL,
  `rule` text,
  `createtime` int(10) NOT NULL,
  `thumb` int(2) NOT NULL DEFAULT '1',
  `kjmsg_num` int(10) DEFAULT '10',
  `kjmsg_jiange` int(10) DEFAULT '60',
  `moni` int(2) NOT NULL DEFAULT '0',
  `bd_ak` varchar(255) NOT NULL,
  `indexui` int(2) NOT NULL DEFAULT '0',
  `unzhuce` int(2) NOT NULL DEFAULT '0',
  `kjmsg_jiange2` int(10) DEFAULT '60',
  `user_addr` int(2) NOT NULL DEFAULT '0',
  `youhuo_pay` int(2) NOT NULL DEFAULT '0',
  `mail_float` int(2) NOT NULL DEFAULT '1',
  `sql_style` int(2) NOT NULL DEFAULT '0',
  `huafei` int(2) NOT NULL DEFAULT '0',
  `huafei_thumb` varchar(255) NOT NULL,
  `stat_style` int(2) NOT NULL DEFAULT '0',
  `kjmsg_jiange3` int(10) DEFAULT '60',
  `kjmsg_jiange4` int(10) DEFAULT '80',
  `cz_send_style` int(2) NOT NULL DEFAULT '0',
  `dw_style` int(2) NOT NULL DEFAULT '0',
  `cz_style` int(2) NOT NULL DEFAULT '0',
  `chat_style` int(2) NOT NULL DEFAULT '0',
  `czdh_style` int(2) NOT NULL DEFAULT '0',
  `mail_style` int(2) NOT NULL DEFAULT '0',
  `detail_style` int(2) NOT NULL DEFAULT '0',
  `chatui_style` int(2) NOT NULL DEFAULT '0',
  `tgy_sale` int(10) DEFAULT NULL,
  `tgy_parent` int(10) DEFAULT NULL,
  `tgy_kl_num` int(10) DEFAULT NULL,
  `tgy_kl_per` int(10) DEFAULT NULL,
  `tgy_min` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_shouxin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `logid` int(10) NOT NULL COMMENT '充值记录id',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tezheng` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `tezheng` varchar(6) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tgy_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `content` text,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_thumb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `type` int(2) DEFAULT '0' COMMENT '0为审核中,1为头像,2为非头像,3为不通过,4为删除',
  `thumb` longtext,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tixianrecord` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `from_user` varchar(30) NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `tgyid` int(10) NOT NULL DEFAULT '0',
  `fee` decimal(10,2) DEFAULT '0.00',
  `realname` varchar(200) NOT NULL,
  `alipay` varchar(200) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tuiguang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL DEFAULT '',
  `uid` int(10) NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `username` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(20) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `QQ` varchar(200) DEFAULT NULL,
  `wechat` varchar(200) DEFAULT NULL,
  `alipay` varchar(200) DEFAULT NULL,
  `realname` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `parentid` int(10) DEFAULT '0',
  `description` text,
  `createtime` int(10) unsigned NOT NULL,
  `credit` decimal(10,2) DEFAULT '0.00',
  `creditall` decimal(10,2) DEFAULT '0.00',
  `qrcode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tuiguang_xinxi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  `yuedu` tinyint(1) DEFAULT '1' COMMENT '0为未读,1为已读',
  `yuedutime` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_visit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `visitid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xinxi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '0',
  `sendid` int(10) NOT NULL DEFAULT '0' COMMENT '发送人员',
  `content` text,
  `zhaohuid` int(10) DEFAULT '0' COMMENT '打招呼id',
  `huifuid` int(10) DEFAULT '0' COMMENT '回复打招呼id',
  `type` int(10) DEFAULT '0' COMMENT '0为打招呼,1为会员推荐,2为最新回信,3为管理员',
  `yuedu` tinyint(1) DEFAULT '0' COMMENT '0为未读,1为已读',
  `yuedutime` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `picurl` text,
  `media_id` varchar(255) NOT NULL,
  `leixing` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `sendid` (`sendid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xinxi_temp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '0',
  `sendid` int(10) NOT NULL DEFAULT '0' COMMENT '发送人员',
  `content` text,
  `zhaohuid` int(10) DEFAULT '0' COMMENT '打招呼id',
  `huifuid` int(10) DEFAULT '0' COMMENT '回复打招呼id',
  `type` int(10) DEFAULT '0' COMMENT '0为打招呼,1为会员推荐,2为最新回信,3为管理员',
  `leixing` int(10) DEFAULT '0' COMMENT '0为文本,1为图片，2为语音，3为组合',
  `media_id` varchar(255) NOT NULL,
  `picurl` text,
  `yuedu` tinyint(1) DEFAULT '0' COMMENT '0为未读,1为已读',
  `yuedutime` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `sendid` (`sendid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xunithumb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `sex` int(2) NOT NULL COMMENT '1为男,2为女',
  `avatar` int(2) NOT NULL DEFAULT '0' COMMENT '1为头像,0为普通',
  `thumb` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=414 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xuni_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `dyid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xuni_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_yongjin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `tgyid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `plid` int(10) NOT NULL,
  `log` int(10) NOT NULL,
  `credit` decimal(10,2) DEFAULT '0.00' COMMENT '总额',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:直接销售，1：上级抽佣',
  `kl` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:未扣量，1：已扣量',
  `updatetime` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_zhaohu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '批次ID,0为第一级',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
EOF;
pdo_run($sql);
