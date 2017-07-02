<?php
error_reporting(0);
define('IN_MOBILE', true);

if(!empty($_REQUEST)) {
	$out_order_no = $_REQUEST['out_order_no'];
	require '../../framework/bootstrap.inc.php';
	require 'shanpayfunction.php';
	$_W['uniacid'] = $_W['weid'] = $_REQUEST['uniacid'];
	$setting = uni_setting($_W['uniacid'], array('payment'));
	
	if(is_array($setting['payment'])) {
		$shanpay = $setting['payment']['shanpay'];
		if(!empty($shanpay)) {
			$prepares = array();
			foreach($_REQUEST as $key => $value) {
				if($key != 'sign' && $key != 'sign_type') {
					$prepares[] = "{$key}={$value}";
				}
			}
			$shanNotify = md5VerifyShan($_REQUEST['out_order_no'],$_REQUEST['total_fee'],$_REQUEST['trade_status'],$_REQUEST['sign'],$shanpay['key'],$shanpay['partner']);
			
			if($shanNotify && $_REQUEST['trade_status'] == 'TRADE_SUCCESS') {
				$sql = 'SELECT * FROM ' . tablename('core_paylog') . ' WHERE `uniontid`=:uniontid';
				$params = array();
				$params[':uniontid'] = $out_order_no;
				$log = pdo_fetch($sql, $params);

				if(!empty($log) && $log['status'] == '0') {
					$log['transaction_id'] = $_REQUEST['trade_no'];
					$record = array();
					$record['status'] = '1';
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
						$log['card_id'] = intval($log['card_id']);
						pdo_update('activity_coupon_record', array('status' => '2', 'usetime' => time(), 'usemodule' => $log['module']), array('uniacid' => $_W['uniacid'], 'recid' => $log['card_id'], 'status' => '1'));
					}

					$site = WeUtility::createModuleSite($log['module']);
					if(!is_error($site)) {
						$method = 'payResult';
						if (method_exists($site, $method)) {
							$ret = array();
							$ret['weid'] = $log['weid'];
							$ret['uniacid'] = $log['uniacid'];
							$ret['result'] = 'success';
							$ret['type'] = $log['type'];
							$ret['from'] = 'notify';
							$ret['tid'] = $log['tid'];
							$ret['uniontid'] = $log['uniontid'];
							$ret['transaction_id'] = $log['transaction_id'];
							$ret['user'] = $log['openid'];
							$ret['fee'] = $log['fee'];
							$ret['is_usecard'] = $log['is_usecard'];
							$ret['card_type'] = $log['card_type'];
							$ret['card_fee'] = $log['card_fee'];
							$ret['card_id'] = $log['card_id'];
							$site->$method($ret);
							exit('success');
						}
					}
				}
			}
		}
	}
}
exit('fail');
