<?php
error_reporting(0);
define('IN_MOBILE', true);
if (empty($_REQUEST['out_order_no'])) {
	exit('request failed.');
}
sleep(3);
require '../../framework/bootstrap.inc.php';
load()->app('common');
load()->app('template');

$_W['uniacid'] = $_W['weid'] = $_REQUEST['uniacid'];
$setting = uni_setting($_W['uniacid'], array('payment'));

if (!is_array($setting['payment'])) {
	exit('request failed.');
}
$shanpay = $setting['payment']['shanpay'];

if (empty($shanpay)) {
	exit('request failed.');
}

require 'shanpayfunction.php';
$shanNotify = md5VerifyShan($_REQUEST['out_order_no'],$_REQUEST['total_fee'],$_REQUEST['trade_status'],$_REQUEST['sign'],$shanpay['key'],$shanpay['partner']);
if($shanNotify && $_REQUEST['trade_status'] == 'TRADE_SUCCESS') {
	$sql = 'SELECT * FROM ' . tablename('core_paylog') . ' WHERE `uniontid`=:uniontid';
	$params = array();
	$params[':uniontid'] = $_REQUEST['out_order_no'];
	$log = pdo_fetch($sql, $params);
	if (!empty($log)) {
		if (!empty($log['status'])) {
			$record = array();
			$record['status'] = $log['status'] = '1';
			pdo_update('core_paylog', $record, array('plid' => $log['plid']));
			if($log['is_usecard'] == 1 && $log['card_type'] == 1 &&  !empty($log['encrypt_code']) && $log['acid']) {
				load()->classs('coupon');
				$acc = new coupon($log['acid']);
				$codearr['encrypt_code'] = $log['encrypt_code'];
				$codearr['module'] = $log['module'];
				$codearr['card_id'] = $log['card_id'];
				$acc->PayConsumeCode($codearr);
			}
			if($log['is_usecard'] == 1 && $log['card_type'] == 2) {
				$now = time();
				$log['card_id'] = intval($log['card_id']);
				pdo_query('UPDATE ' . tablename('activity_coupon_record') . " SET status = 2, usetime = {$now}, usemodule = '{$log['module']}' WHERE uniacid = :aid AND couponid = :cid AND uid = :uid AND status = 1 {$condition} LIMIT 1", array(':aid' => $_W['uniacid'], ':uid' => $log['openid'], ':cid' => $log['card_id']));
			}
		}
		$site = WeUtility::createModuleSite($log['module']);
		if (!is_error($site)) {
			$site->weid = $_W['weid'];
			$site->uniacid = $_W['uniacid'];
			$site->inMobile = true;
			$method = 'payResult';
			if (method_exists($site, $method)) {
				$ret = array();
				$ret['weid'] = $log['weid'];
				$ret['uniacid'] = $log['uniacid'];
				$ret['acid'] = $log['acid'];
				$ret['uniontid'] = $log['uniontid'];
				$ret['result'] = $log['status'] == '1' ? 'success' : 'failed';
				$ret['type'] = $log['type'];
				$ret['from'] = 'return';
				$ret['tid'] = $log['tid'];
				$ret['user'] = $log['openid'];
				$ret['fee'] = $log['fee'];
				$ret['is_usecard'] = $log['is_usecard'];
				$ret['card_type'] = $log['card_type'];
				$ret['card_fee'] = $log['card_fee'];
				$ret['card_id'] = $log['card_id'];
				$site->$method($ret);
				$ret['from'] = 'return';
				exit($site->$method($ret));
			}
		}
	}
} else {
	message('支付异常，请返回微信客户端查看订单状态或是联系管理员', '', 'error');
}