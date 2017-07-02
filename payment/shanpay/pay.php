<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */
define('IN_MOBILE', true);
require '../../framework/bootstrap.inc.php';
require '../../app/common/bootstrap.app.inc.php';
load()->app('common');
load()->app('template');

$sl = $_GPC['ps'];
$params = @json_decode(base64_decode($sl), true);

$setting = uni_setting($_W['uniacid'], array('payment'));
if(!is_array($setting['payment'])) {
	exit('没有设定支付参数.');
}
$payment = $setting['payment']['shanpay'];
require 'shanpayfunction.php';
$sql = 'SELECT * FROM ' . tablename('core_paylog') . ' WHERE `plid`=:plid';
$paylog = pdo_fetch($sql, array(':plid' => $params['tid']));
if(!empty($paylog) && $paylog['status'] != '0') {
	exit('这个订单已经支付成功, 不需要重复支付.');
}
$auth = sha1($sl . $paylog['uniacid'] . $_W['config']['setting']['authkey']);
if($auth != $_GPC['auth']) {
	exit('参数传输错误.');
}
$_W['openid'] = intval($paylog['openid']);


//构造要请求的参数数组，无需改动
$parameter = array(
		"partner" => $payment['partner'],
        "user_seller"  => $payment['user_seller'],
		"out_order_no"	=> $paylog['uniontid'],
		"subject"	=> $params['title'],
		"total_fee"	=> $paylog['fee'],
		"body"	=> $paylog['uniontid'],
		"notify_url"	=> $_W['siteroot'] . 'notify.php?uniacid='.$_W['uniacid'],
		"return_url"	=> $_W['siteroot'] . 'return.php?uniacid='.$_W['uniacid'],
);

//建立请求
$html_text = buildRequestFormShan($parameter, $payment['key']);
echo $html_text;