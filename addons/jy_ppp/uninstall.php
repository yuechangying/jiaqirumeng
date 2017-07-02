<?php
//decode by 冰锋微云www.ncwxyx.com www.ncwxyx.com

$sql =<<<EOF
DROP TABLE IF EXISTS `ims_jy_ppp_aihao`;
DROP TABLE IF EXISTS `ims_jy_ppp_attent`;
DROP TABLE IF EXISTS `ims_jy_ppp_baoyue_log`;
DROP TABLE IF EXISTS `ims_jy_ppp_basic`;
DROP TABLE IF EXISTS `ims_jy_ppp_black`;
DROP TABLE IF EXISTS `ims_jy_ppp_chat_doubi`;
DROP TABLE IF EXISTS `ims_jy_ppp_code`;
DROP TABLE IF EXISTS `ims_jy_ppp_credit_log`;
DROP TABLE IF EXISTS `ims_jy_ppp_desc`;
DROP TABLE IF EXISTS `ims_jy_ppp_dianyuan`;
DROP TABLE IF EXISTS `ims_jy_ppp_feedback`;
DROP TABLE IF EXISTS `ims_jy_ppp_help`;
DROP TABLE IF EXISTS `ims_jy_ppp_hf`;
DROP TABLE IF EXISTS `ims_jy_ppp_hf2`;
DROP TABLE IF EXISTS `ims_jy_ppp_hf2_send`;
DROP TABLE IF EXISTS `ims_jy_ppp_idcard`;
DROP TABLE IF EXISTS `ims_jy_ppp_kefu`;
DROP TABLE IF EXISTS `ims_jy_ppp_login_log`;
DROP TABLE IF EXISTS `ims_jy_ppp_mailui`;
DROP TABLE IF EXISTS `ims_jy_ppp_match`;
DROP TABLE IF EXISTS `ims_jy_ppp_member`;
DROP TABLE IF EXISTS `ims_jy_ppp_mianrao`;
DROP TABLE IF EXISTS `ims_jy_ppp_mobile`;
DROP TABLE IF EXISTS `ims_jy_ppp_msg`;
DROP TABLE IF EXISTS `ims_jy_ppp_nickname`;
DROP TABLE IF EXISTS `ims_jy_ppp_pay_log`;
DROP TABLE IF EXISTS `ims_jy_ppp_price`;
DROP TABLE IF EXISTS `ims_jy_ppp_report`;
DROP TABLE IF EXISTS `ims_jy_ppp_rule`;
DROP TABLE IF EXISTS `ims_jy_ppp_safe`;
DROP TABLE IF EXISTS `ims_jy_ppp_setting`;
DROP TABLE IF EXISTS `ims_jy_ppp_shouxin_log`;
DROP TABLE IF EXISTS `ims_jy_ppp_tezheng`;
DROP TABLE IF EXISTS `ims_jy_ppp_thumb`;
DROP TABLE IF EXISTS `ims_jy_ppp_visit`;
DROP TABLE IF EXISTS `ims_jy_ppp_xinxi`;
DROP TABLE IF EXISTS `ims_jy_ppp_xinxi_temp`;
DROP TABLE IF EXISTS `ims_jy_ppp_xuni_member`;
DROP TABLE IF EXISTS `ims_jy_ppp_xuni_pay`;
DROP TABLE IF EXISTS `ims_jy_ppp_xunithumb`;
DROP TABLE IF EXISTS `ims_jy_ppp_zhaohu`;
EOF;
pdo_run($sql);