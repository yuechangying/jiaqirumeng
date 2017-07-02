-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-12-15 18:08:19
-- 服务器版本： 10.1.8-MariaDB
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `ims_account`
--

CREATE TABLE IF NOT EXISTS `ims_account` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_account`
--

INSERT INTO `ims_account` (`acid`, `uniacid`, `hash`, `type`, `isconnect`, `isdeleted`) VALUES
(1, 1, 'uRr8qvQV', 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_account_wechats`
--

CREATE TABLE IF NOT EXISTS `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `access_token` varchar(1000) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `auth_refresh_token` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_account_wechats`
--

INSERT INTO `ims_account_wechats` (`acid`, `uniacid`, `token`, `access_token`, `encodingaeskey`, `level`, `name`, `account`, `original`, `signature`, `country`, `province`, `city`, `username`, `password`, `lastupdate`, `key`, `secret`, `styleid`, `subscribeurl`, `auth_refresh_token`) VALUES
(1, 1, '32af05mheep0bmeiwbu3a5q3i4yo2m0n', '', 'rPjp6Y0tiw7FeiReRyDGuN24ORqLT3Hf1S8qIR1u8Gq', 4, '爱赞婚恋', '15312312918@163.com', 'gh_b1412554cddd', '', '', '', '', 'admin', '396943cc86a06c916de7a56d33c192f6', 0, 'wx1a28012435517d03', '16463b62aa35eb570ef86e26a1fe7069', 1, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_clerks`
--

CREATE TABLE IF NOT EXISTS `ims_activity_clerks` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_clerk_menu`
--

CREATE TABLE IF NOT EXISTS `ims_activity_clerk_menu` (
  `id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `displayorder` int(4) NOT NULL,
  `pid` int(6) NOT NULL,
  `group_name` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `url` varchar(60) NOT NULL,
  `type` varchar(20) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `system` int(2) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_activity_clerk_menu`
--

INSERT INTO `ims_activity_clerk_menu` (`id`, `uniacid`, `displayorder`, `pid`, `group_name`, `title`, `icon`, `url`, `type`, `permission`, `system`) VALUES
(1, 0, 0, 0, 'mc', '快捷交易', '', '', '', 'mc_manage', 1),
(2, 0, 0, 1, '', '积分充值', 'fa fa-money', 'credit1', 'modal', 'mc_credit1', 1),
(3, 0, 0, 1, '', '余额充值', 'fa fa-cny', 'credit2', 'modal', 'mc_credit2', 1),
(4, 0, 0, 1, '', '消费', 'fa fa-usd', 'consume', 'modal', 'mc_consume', 1),
(5, 0, 0, 1, '', '发放会员卡', 'fa fa-credit-card', 'card', 'modal', 'mc_card', 1),
(6, 0, 0, 0, 'stat', '数据统计', '', '', '', 'stat_manage', 1),
(7, 0, 0, 6, '', '积分统计', 'fa fa-bar-chart', './index.php?c=stat&a=credit1', 'url', 'stat_credit1', 1),
(8, 0, 0, 6, '', '余额统计', 'fa fa-bar-chart', './index.php?c=stat&a=credit2', 'url', 'stat_credit2', 1),
(9, 0, 0, 6, '', '现金消费统计', 'fa fa-bar-chart', './index.php?c=stat&a=cash', 'url', 'stat_cash', 1),
(10, 0, 0, 6, '', '会员卡统计', 'fa fa-bar-chart', './index.php?c=stat&a=card', 'url', 'stat_card', 1),
(11, 0, 0, 0, 'activity', '系统优惠券核销', '', '', '', 'activity_card_manage', 1),
(12, 0, 0, 11, '', '折扣券核销', 'fa fa-money', './index.php?c=activity&a=consume&do=display&type=1', 'url', 'activity_consume_coupon', 1),
(13, 0, 0, 11, '', '代金券核销', 'fa fa-money', './index.php?c=activity&a=consume&do=display&type=2', 'url', 'activity_consume_token', 1),
(14, 0, 0, 0, 'wechat', '微信卡券核销', '', '', '', 'wechat_card_manage', 1),
(15, 0, 0, 14, '', '卡券核销', 'fa fa-money', './index.php?c=wechat&a=consume', 'url', 'wechat_consume', 1),
(16, 0, 0, 6, '', '收银台收款统计', 'fa fa-bar-chart', './index.php?c=stat&a=paycenter', 'url', 'stat_paycenter', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_coupon_allocation`
--

CREATE TABLE IF NOT EXISTS `ims_activity_coupon_allocation` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `groupid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_coupon_modules`
--

CREATE TABLE IF NOT EXISTS `ims_activity_coupon_modules` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_exchange`
--

CREATE TABLE IF NOT EXISTS `ims_activity_exchange` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `extra` varchar(3000) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `pretotal` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_exchange_trades`
--

CREATE TABLE IF NOT EXISTS `ims_activity_exchange_trades` (
  `tid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_exchange_trades_shipping`
--

CREATE TABLE IF NOT EXISTS `ims_activity_exchange_trades_shipping` (
  `tid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_modules`
--

CREATE TABLE IF NOT EXISTS `ims_activity_modules` (
  `mid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `available` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_modules_record`
--

CREATE TABLE IF NOT EXISTS `ims_activity_modules_record` (
  `id` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL,
  `num` tinyint(3) NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_stores`
--

CREATE TABLE IF NOT EXISTS `ims_activity_stores` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `source` tinyint(3) unsigned NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_category`
--

CREATE TABLE IF NOT EXISTS `ims_article_category` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_news`
--

CREATE TABLE IF NOT EXISTS `ims_article_news` (
  `id` int(10) unsigned NOT NULL,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_notice`
--

CREATE TABLE IF NOT EXISTS `ims_article_notice` (
  `id` int(10) unsigned NOT NULL,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_unread_notice`
--

CREATE TABLE IF NOT EXISTS `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_basic_reply`
--

CREATE TABLE IF NOT EXISTS `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_basic_reply`
--

INSERT INTO `ims_basic_reply` (`id`, `rid`, `content`) VALUES
(1, 11, '微信项目开发，请联系技术微信:215681445');

-- --------------------------------------------------------

--
-- 表的结构 `ims_business`
--

CREATE TABLE IF NOT EXISTS `ims_business` (
  `id` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lng` varchar(10) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `industry1` varchar(10) NOT NULL,
  `industry2` varchar(10) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_attachment`
--

CREATE TABLE IF NOT EXISTS `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_attachment`
--

INSERT INTO `ims_core_attachment` (`id`, `uniacid`, `uid`, `filename`, `attachment`, `type`, `createtime`) VALUES
(1, 1, 1, 'for-charge-bg.png', 'images/1/2016/11/Rr5sJa8A3sbvbF22Qj2ab5S2g25S5A.png', 1, 1477966714),
(2, 1, 1, 'WzZE6i9963Np661ENn09KLkpNKPN39.jpg', 'images/1/2016/12/UrywuF3wKzcysi3RBONi99BRWCRY89.jpg', 1, 1481586219),
(3, 1, 1, 'QQ截图20160806085214.jpg', 'images/1/2016/12/bmjA8bd6Mid62y0t1BzZItt8Fit618.jpg', 1, 1481587571),
(4, 1, 1, '4.jpg', 'images/1/2016/12/VvZtnOWrce77wuTz7cL7CZEu7VcL17.jpg', 1, 1481588267),
(5, 1, 1, 'p2847HM7NamD82S2Laae48Dz228Cn5.jpg', 'images/1/2016/12/a5qegISqe3GGV2FbIcNG2FnCGR03eG.jpg', 1, 1481793602),
(6, 1, 1, 'i0RK3yIgEo3ErY1993I18X0XkK8ybR.png', 'images/1/2016/12/FRQMU5rOnNH1QT377R1hPmTQPQ1MQ3.png', 1, 1481793648),
(7, 1, 1, 'XE27wJ6dOL7hEdfdw2d7jMm3l331v7.jpg', 'images/1/2016/12/huTUkMJf2l9JCj9jc97lck9CkcARcC.jpg', 1, 1481793816),
(8, 1, 1, '8faf8d5494eef01fe4a55179e0fe9925bd317dfd.jpg', 'images/1/2016/12/oJHM6Z230F3eMHP343d88j3432434L.jpg', 1, 1481793917),
(9, 1, 1, '38a4462309f7905253f4274a0af3d7ca7acbd5df.jpg', 'images/1/2016/12/L8tR8WBMx2ycVVcLRh2rExhpWRjb8b.jpg', 1, 1481793965),
(11, 1, 1, '14d7912397dda1441dcec6bcb4b7d0a20df486fd.png', 'images/1/2016/12/xaPnuAun4uzA9q9n98ONNaAD8B98ap.png', 1, 1481794001),
(12, 1, 1, 'ef03918fa0ec08fa7455c8d15fee3d6d55fbda6b.jpg', 'images/1/2016/12/eCbio288EB5Ac5oeVAma7A55hr28um.jpg', 1, 1481794015),
(13, 1, 1, '3d1f95cad1c8a786f4fd1e8e6209c93d71cf505e.jpg', 'images/1/2016/12/OiT0892DQ2QdjDTgYI0d6yyg9ftyFn.jpg', 1, 1481794037);

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_cache`
--

CREATE TABLE IF NOT EXISTS `ims_core_cache` (
  `key` varchar(50) NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_cache`
--

INSERT INTO `ims_core_cache` (`key`, `value`) VALUES
('setting', 'a:6:{s:9:"copyright";a:24:{s:6:"status";s:1:"0";s:10:"verifycode";s:1:"0";s:6:"reason";s:0:"";s:8:"sitename";s:0:"";s:3:"url";s:7:"http://";s:8:"statcode";s:0:"";s:10:"footerleft";s:0:"";s:11:"footerright";s:0:"";s:4:"icon";s:0:"";s:5:"flogo";s:0:"";s:6:"slides";s:216:"a:3:{i:0;s:58:"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg";i:1;s:58:"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg";i:2;s:58:"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg";}";s:6:"notice";s:0:"";s:5:"blogo";s:0:"";s:8:"baidumap";a:2:{s:3:"lng";s:0:"";s:3:"lat";s:0:"";}s:7:"company";s:0:"";s:14:"companyprofile";s:0:"";s:7:"address";s:0:"";s:6:"person";s:6:"叶枫";s:5:"phone";s:11:"18565188982";s:2:"qq";s:9:"215681445";s:5:"email";s:16:"215681445@qq.com";s:8:"keywords";s:0:"";s:11:"description";s:0:"";s:12:"showhomepage";i:0;}s:8:"authmode";i:1;s:5:"close";a:2:{s:6:"status";s:1:"0";s:6:"reason";s:0:"";}s:8:"register";a:4:{s:4:"open";i:1;s:6:"verify";i:0;s:4:"code";i:1;s:7:"groupid";i:1;}s:8:"platform";a:5:{s:5:"token";s:32:"UtL3K7q0t3tz22T37Yu5Su20NyTaLu8y";s:14:"encodingaeskey";s:43:"I55Q57TT0y2usYU3S2K02sYY3lTNyL5zNEznK28tTz2";s:9:"appsecret";s:0:"";s:5:"appid";s:0:"";s:9:"authstate";i:1;}s:5:"basic";a:1:{s:8:"template";s:9:"hc_style1";}}'),
('system_frame', 'a:5:{s:8:"platform";a:3:{i:0;a:2:{s:5:"title";s:12:"基本功能";s:5:"items";a:9:{i:0;a:5:{s:2:"id";s:1:"3";s:5:"title";s:12:"文字回复";s:3:"url";s:38:"./index.php?c=platform&a=reply&m=basic";s:15:"permission_name";s:20:"platform_reply_basic";s:6:"append";a:2:{s:5:"title";s:26:"<i class="fa fa-plus"></i>";s:3:"url";s:46:"./index.php?c=platform&a=reply&do=post&m=basic";}}i:1;a:5:{s:2:"id";s:1:"4";s:5:"title";s:12:"图文回复";s:3:"url";s:37:"./index.php?c=platform&a=reply&m=news";s:15:"permission_name";s:19:"platform_reply_news";s:6:"append";a:2:{s:5:"title";s:26:"<i class="fa fa-plus"></i>";s:3:"url";s:45:"./index.php?c=platform&a=reply&do=post&m=news";}}i:2;a:5:{s:2:"id";s:1:"5";s:5:"title";s:12:"音乐回复";s:3:"url";s:38:"./index.php?c=platform&a=reply&m=music";s:15:"permission_name";s:20:"platform_reply_music";s:6:"append";a:2:{s:5:"title";s:26:"<i class="fa fa-plus"></i>";s:3:"url";s:46:"./index.php?c=platform&a=reply&do=post&m=music";}}i:3;a:5:{s:2:"id";s:1:"6";s:5:"title";s:12:"图片回复";s:3:"url";s:39:"./index.php?c=platform&a=reply&m=images";s:15:"permission_name";s:21:"platform_reply_images";s:6:"append";a:2:{s:5:"title";s:26:"<i class="fa fa-plus"></i>";s:3:"url";s:47:"./index.php?c=platform&a=reply&do=post&m=images";}}i:4;a:5:{s:2:"id";s:1:"7";s:5:"title";s:12:"语音回复";s:3:"url";s:38:"./index.php?c=platform&a=reply&m=voice";s:15:"permission_name";s:20:"platform_reply_voice";s:6:"append";a:2:{s:5:"title";s:26:"<i class="fa fa-plus"></i>";s:3:"url";s:46:"./index.php?c=platform&a=reply&do=post&m=voice";}}i:5;a:5:{s:2:"id";s:1:"8";s:5:"title";s:12:"视频回复";s:3:"url";s:38:"./index.php?c=platform&a=reply&m=video";s:15:"permission_name";s:20:"platform_reply_video";s:6:"append";a:2:{s:5:"title";s:26:"<i class="fa fa-plus"></i>";s:3:"url";s:46:"./index.php?c=platform&a=reply&do=post&m=video";}}i:6;a:5:{s:2:"id";s:1:"9";s:5:"title";s:18:"微信卡券回复";s:3:"url";s:39:"./index.php?c=platform&a=reply&m=wxcard";s:15:"permission_name";s:21:"platform_reply_wxcard";s:6:"append";a:2:{s:5:"title";s:26:"<i class="fa fa-plus"></i>";s:3:"url";s:47:"./index.php?c=platform&a=reply&do=post&m=wxcard";}}i:7;a:5:{s:2:"id";s:2:"10";s:5:"title";s:21:"自定义接口回复";s:3:"url";s:40:"./index.php?c=platform&a=reply&m=userapi";s:15:"permission_name";s:22:"platform_reply_userapi";s:6:"append";a:2:{s:5:"title";s:26:"<i class="fa fa-plus"></i>";s:3:"url";s:48:"./index.php?c=platform&a=reply&do=post&m=userapi";}}i:8;a:4:{s:2:"id";s:2:"11";s:5:"title";s:12:"系统回复";s:3:"url";s:44:"./index.php?c=platform&a=special&do=display&";s:15:"permission_name";s:21:"platform_reply_system";}}}i:1;a:2:{s:5:"title";s:12:"高级功能";s:5:"items";a:6:{i:0;a:4:{s:2:"id";s:2:"13";s:5:"title";s:18:"常用服务接入";s:3:"url";s:43:"./index.php?c=platform&a=service&do=switch&";s:15:"permission_name";s:16:"platform_service";}i:1;a:4:{s:2:"id";s:2:"14";s:5:"title";s:15:"自定义菜单";s:3:"url";s:30:"./index.php?c=platform&a=menu&";s:15:"permission_name";s:13:"platform_menu";}i:2;a:4:{s:2:"id";s:2:"15";s:5:"title";s:18:"特殊消息回复";s:3:"url";s:44:"./index.php?c=platform&a=special&do=message&";s:15:"permission_name";s:16:"platform_special";}i:3;a:4:{s:2:"id";s:2:"16";s:5:"title";s:15:"二维码管理";s:3:"url";s:28:"./index.php?c=platform&a=qr&";s:15:"permission_name";s:11:"platform_qr";}i:4;a:4:{s:2:"id";s:2:"17";s:5:"title";s:15:"多客服接入";s:3:"url";s:39:"./index.php?c=platform&a=reply&m=custom";s:15:"permission_name";s:21:"platform_reply_custom";}i:5;a:4:{s:2:"id";s:2:"18";s:5:"title";s:18:"长链接二维码";s:3:"url";s:32:"./index.php?c=platform&a=url2qr&";s:15:"permission_name";s:15:"platform_url2qr";}}}i:2;a:2:{s:5:"title";s:12:"数据统计";s:5:"items";a:4:{i:0;a:4:{s:2:"id";s:2:"20";s:5:"title";s:12:"聊天记录";s:3:"url";s:41:"./index.php?c=platform&a=stat&do=history&";s:15:"permission_name";s:21:"platform_stat_history";}i:1;a:4:{s:2:"id";s:2:"21";s:5:"title";s:24:"回复规则使用情况";s:3:"url";s:38:"./index.php?c=platform&a=stat&do=rule&";s:15:"permission_name";s:18:"platform_stat_rule";}i:2;a:4:{s:2:"id";s:2:"22";s:5:"title";s:21:"关键字命中情况";s:3:"url";s:41:"./index.php?c=platform&a=stat&do=keyword&";s:15:"permission_name";s:21:"platform_stat_keyword";}i:3;a:4:{s:2:"id";s:2:"23";s:5:"title";s:6:"参数";s:3:"url";s:41:"./index.php?c=platform&a=stat&do=setting&";s:15:"permission_name";s:21:"platform_stat_setting";}}}}s:4:"site";a:3:{i:0;a:2:{s:5:"title";s:12:"微站管理";s:5:"items";a:3:{i:0;a:5:{s:2:"id";s:2:"26";s:5:"title";s:12:"站点管理";s:3:"url";s:38:"./index.php?c=site&a=multi&do=display&";s:15:"permission_name";s:18:"site_multi_display";s:6:"append";a:2:{s:5:"title";s:26:"<i class="fa fa-plus"></i>";s:3:"url";s:35:"./index.php?c=site&a=multi&do=post&";}}i:1;a:4:{s:2:"id";s:2:"29";s:5:"title";s:12:"模板管理";s:3:"url";s:39:"./index.php?c=site&a=style&do=template&";s:15:"permission_name";s:19:"site_style_template";}i:2;a:4:{s:2:"id";s:2:"30";s:5:"title";s:18:"模块模板扩展";s:3:"url";s:37:"./index.php?c=site&a=style&do=module&";s:15:"permission_name";s:17:"site_style_module";}}}i:1;a:2:{s:5:"title";s:18:"特殊页面管理";s:5:"items";a:2:{i:0;a:4:{s:2:"id";s:2:"32";s:5:"title";s:12:"会员中心";s:3:"url";s:34:"./index.php?c=site&a=editor&do=uc&";s:15:"permission_name";s:14:"site_editor_uc";}i:1;a:5:{s:2:"id";s:2:"33";s:5:"title";s:12:"专题页面";s:3:"url";s:36:"./index.php?c=site&a=editor&do=page&";s:15:"permission_name";s:16:"site_editor_page";s:6:"append";a:2:{s:5:"title";s:26:"<i class="fa fa-plus"></i>";s:3:"url";s:38:"./index.php?c=site&a=editor&do=design&";}}}}i:2;a:2:{s:5:"title";s:12:"功能组件";s:5:"items";a:2:{i:0;a:4:{s:2:"id";s:2:"35";s:5:"title";s:12:"分类设置";s:3:"url";s:30:"./index.php?c=site&a=category&";s:15:"permission_name";s:13:"site_category";}i:1;a:4:{s:2:"id";s:2:"36";s:5:"title";s:12:"文章管理";s:3:"url";s:29:"./index.php?c=site&a=article&";s:15:"permission_name";s:12:"site_article";}}}}s:2:"mc";a:8:{i:0;a:2:{s:5:"title";s:12:"粉丝管理";s:5:"items";a:2:{i:0;a:4:{s:2:"id";s:2:"39";s:5:"title";s:12:"粉丝分组";s:3:"url";s:28:"./index.php?c=mc&a=fangroup&";s:15:"permission_name";s:11:"mc_fangroup";}i:1;a:4:{s:2:"id";s:2:"40";s:5:"title";s:6:"粉丝";s:3:"url";s:24:"./index.php?c=mc&a=fans&";s:15:"permission_name";s:7:"mc_fans";}}}i:1;a:2:{s:5:"title";s:12:"会员中心";s:5:"items";a:3:{i:0;a:4:{s:2:"id";s:2:"42";s:5:"title";s:21:"会员中心关键字";s:3:"url";s:37:"./index.php?c=platform&a=cover&do=mc&";s:15:"permission_name";s:17:"platform_cover_mc";}i:1;a:5:{s:2:"id";s:2:"43";s:5:"title";s:6:"会员";s:3:"url";s:25:"./index.php?c=mc&a=member";s:15:"permission_name";s:9:"mc_member";s:6:"append";a:2:{s:5:"title";s:26:"<i class="fa fa-plus"></i>";s:3:"url";s:32:"./index.php?c=mc&a=member&do=add";}}i:2;a:4:{s:2:"id";s:2:"44";s:5:"title";s:9:"会员组";s:3:"url";s:25:"./index.php?c=mc&a=group&";s:15:"permission_name";s:8:"mc_group";}}}i:2;a:2:{s:5:"title";s:15:"会员卡管理";s:5:"items";a:4:{i:0;a:4:{s:2:"id";s:2:"46";s:5:"title";s:18:"会员卡关键字";s:3:"url";s:39:"./index.php?c=platform&a=cover&do=card&";s:15:"permission_name";s:19:"platform_cover_card";}i:1;a:4:{s:2:"id";s:2:"47";s:5:"title";s:15:"会员卡管理";s:3:"url";s:33:"./index.php?c=mc&a=card&do=manage";s:15:"permission_name";s:14:"mc_card_manage";}i:2;a:4:{s:2:"id";s:2:"48";s:5:"title";s:15:"会员卡设置";s:3:"url";s:33:"./index.php?c=mc&a=card&do=editor";s:15:"permission_name";s:14:"mc_card_editor";}i:3;a:4:{s:2:"id";s:2:"49";s:5:"title";s:21:"会员卡其他功能";s:3:"url";s:32:"./index.php?c=mc&a=card&do=other";s:15:"permission_name";s:13:"mc_card_other";}}}i:3;a:2:{s:5:"title";s:12:"积分兑换";s:5:"items";a:2:{i:0;a:4:{s:2:"id";s:2:"51";s:5:"title";s:12:"卡券兑换";s:3:"url";s:56:"./index.php?c=activity&a=exchange&do=display&type=coupon";s:15:"permission_name";s:24:"activity_coupon_exchange";}i:1;a:4:{s:2:"id";s:2:"52";s:5:"title";s:18:"真实物品兑换";s:3:"url";s:55:"./index.php?c=activity&a=exchange&do=display&type=goods";s:15:"permission_name";s:22:"activity_goods_display";}}}i:4;a:2:{s:5:"title";s:19:"微信素材&群发";s:5:"items";a:2:{i:0;a:4:{s:2:"id";s:2:"54";s:5:"title";s:13:"素材&群发";s:3:"url";s:32:"./index.php?c=material&a=display";s:15:"permission_name";s:16:"material_display";}i:1;a:4:{s:2:"id";s:2:"55";s:5:"title";s:12:"定时群发";s:3:"url";s:29:"./index.php?c=material&a=mass";s:15:"permission_name";s:13:"material_mass";}}}i:5;a:2:{s:5:"title";s:12:"卡券管理";s:5:"items";a:3:{i:0;a:4:{s:2:"id";s:2:"57";s:5:"title";s:12:"卡券列表";s:3:"url";s:42:"./index.php?c=activity&a=coupon&do=display";s:15:"permission_name";s:23:"activity_coupon_display";}i:1;a:4:{s:2:"id";s:2:"58";s:5:"title";s:12:"卡券营销";s:3:"url";s:29:"index.php?c=activity&a=market";s:15:"permission_name";s:22:"activity_coupon_market";}i:2;a:4:{s:2:"id";s:2:"59";s:5:"title";s:12:"卡券核销";s:3:"url";s:52:"./index.php?c=activity&a=consume&do=display&status=2";s:15:"permission_name";s:23:"activity_consume_coupon";}}}i:6;a:2:{s:5:"title";s:9:"工作台";s:5:"items";a:4:{i:0;a:4:{s:2:"id";s:2:"61";s:5:"title";s:12:"门店列表";s:3:"url";s:30:"./index.php?c=activity&a=store";s:15:"permission_name";s:19:"activity_store_list";}i:1;a:4:{s:2:"id";s:2:"62";s:5:"title";s:12:"店员列表";s:3:"url";s:30:"./index.php?c=activity&a=clerk";s:15:"permission_name";s:19:"activity_clerk_list";}i:2;a:4:{s:2:"id";s:2:"63";s:5:"title";s:18:"微信刷卡收款";s:3:"url";s:40:"./index.php?c=paycenter&a=wxmicro&do=pay";s:15:"permission_name";s:21:"paycenter_wxmicro_pay";}i:3;a:4:{s:2:"id";s:2:"64";s:5:"title";s:21:"店员操作关键字";s:3:"url";s:39:"./index.php?c=platform&a=cover&do=clerk";s:15:"permission_name";s:15:"paycenter_clerk";}}}i:7;a:2:{s:5:"title";s:12:"统计中心";s:5:"items";a:5:{i:0;a:4:{s:2:"id";s:2:"66";s:5:"title";s:18:"会员积分统计";s:3:"url";s:28:"./index.php?c=stat&a=credit1";s:15:"permission_name";s:12:"stat_credit1";}i:1;a:4:{s:2:"id";s:2:"67";s:5:"title";s:18:"会员余额统计";s:3:"url";s:28:"./index.php?c=stat&a=credit2";s:15:"permission_name";s:12:"stat_credit2";}i:2;a:4:{s:2:"id";s:2:"68";s:5:"title";s:24:"会员现金消费统计";s:3:"url";s:25:"./index.php?c=stat&a=cash";s:15:"permission_name";s:9:"stat_cash";}i:3;a:4:{s:2:"id";s:2:"69";s:5:"title";s:15:"会员卡统计";s:3:"url";s:25:"./index.php?c=stat&a=card";s:15:"permission_name";s:9:"stat_card";}i:4;a:4:{s:2:"id";s:2:"70";s:5:"title";s:21:"收银台收款统计";s:3:"url";s:30:"./index.php?c=stat&a=paycenter";s:15:"permission_name";s:14:"stat_paycenter";}}}}s:7:"setting";a:3:{i:0;a:2:{s:5:"title";s:15:"公众号选项";s:5:"items";a:7:{i:0;a:4:{s:2:"id";s:2:"73";s:5:"title";s:12:"支付参数";s:3:"url";s:32:"./index.php?c=profile&a=payment&";s:15:"permission_name";s:15:"profile_payment";}i:1;a:4:{s:2:"id";s:2:"74";s:5:"title";s:19:"借用 oAuth 权限";s:3:"url";s:37:"./index.php?c=mc&a=passport&do=oauth&";s:15:"permission_name";s:17:"mc_passport_oauth";}i:2;a:4:{s:2:"id";s:2:"75";s:5:"title";s:22:"借用 JS 分享权限";s:3:"url";s:31:"./index.php?c=profile&a=jsauth&";s:15:"permission_name";s:14:"profile_jsauth";}i:3;a:4:{s:2:"id";s:2:"76";s:5:"title";s:18:"会员字段管理";s:3:"url";s:25:"./index.php?c=mc&a=fields";s:15:"permission_name";s:9:"mc_fields";}i:4;a:4:{s:2:"id";s:2:"77";s:5:"title";s:18:"微信通知设置";s:3:"url";s:28:"./index.php?c=mc&a=tplnotice";s:15:"permission_name";s:12:"mc_tplnotice";}i:5;a:4:{s:2:"id";s:2:"78";s:5:"title";s:21:"工作台菜单设置";s:3:"url";s:32:"./index.php?c=profile&a=deskmenu";s:15:"permission_name";s:16:"profile_deskmenu";}i:6;a:4:{s:2:"id";s:2:"79";s:5:"title";s:18:"会员扩展功能";s:3:"url";s:25:"./index.php?c=mc&a=plugin";s:15:"permission_name";s:9:"mc_plugin";}}}i:1;a:2:{s:5:"title";s:21:"会员及粉丝选项";s:5:"items";a:5:{i:0;a:4:{s:2:"id";s:2:"81";s:5:"title";s:12:"积分设置";s:3:"url";s:26:"./index.php?c=mc&a=credit&";s:15:"permission_name";s:9:"mc_credit";}i:1;a:4:{s:2:"id";s:2:"82";s:5:"title";s:12:"注册设置";s:3:"url";s:40:"./index.php?c=mc&a=passport&do=passport&";s:15:"permission_name";s:20:"mc_passport_passport";}i:2;a:4:{s:2:"id";s:2:"83";s:5:"title";s:18:"粉丝同步设置";s:3:"url";s:36:"./index.php?c=mc&a=passport&do=sync&";s:15:"permission_name";s:16:"mc_passport_sync";}i:3;a:4:{s:2:"id";s:2:"84";s:5:"title";s:14:"UC站点整合";s:3:"url";s:22:"./index.php?c=mc&a=uc&";s:15:"permission_name";s:5:"mc_uc";}i:4;a:4:{s:2:"id";s:2:"85";s:5:"title";s:18:"邮件通知参数";s:3:"url";s:30:"./index.php?c=profile&a=notify";s:15:"permission_name";s:14:"profile_notify";}}}i:2;a:1:{s:5:"title";s:18:"其他功能选项";}}s:3:"ext";a:1:{i:0;a:2:{s:5:"title";s:6:"管理";s:5:"items";a:1:{i:0;a:4:{s:2:"id";s:2:"89";s:5:"title";s:18:"扩展功能管理";s:3:"url";s:31:"./index.php?c=profile&a=module&";s:15:"permission_name";s:14:"profile_module";}}}}}'),
('userbasefields', 'a:44:{s:7:"uniacid";s:17:"同一公众号id";s:7:"groupid";s:8:"分组id";s:7:"credit1";s:6:"积分";s:7:"credit2";s:6:"余额";s:7:"credit3";s:19:"预留积分类型3";s:7:"credit4";s:19:"预留积分类型4";s:7:"credit5";s:19:"预留积分类型5";s:7:"credit6";s:19:"预留积分类型6";s:10:"createtime";s:12:"加入时间";s:6:"mobile";s:12:"手机号码";s:5:"email";s:12:"电子邮箱";s:8:"realname";s:12:"真实姓名";s:8:"nickname";s:6:"昵称";s:6:"avatar";s:6:"头像";s:2:"qq";s:5:"QQ号";s:6:"gender";s:6:"性别";s:5:"birth";s:6:"生日";s:13:"constellation";s:6:"星座";s:6:"zodiac";s:6:"生肖";s:9:"telephone";s:12:"固定电话";s:6:"idcard";s:12:"证件号码";s:9:"studentid";s:6:"学号";s:5:"grade";s:6:"班级";s:7:"address";s:6:"地址";s:7:"zipcode";s:6:"邮编";s:11:"nationality";s:6:"国籍";s:6:"reside";s:9:"居住地";s:14:"graduateschool";s:12:"毕业学校";s:7:"company";s:6:"公司";s:9:"education";s:6:"学历";s:10:"occupation";s:6:"职业";s:8:"position";s:6:"职位";s:7:"revenue";s:9:"年收入";s:15:"affectivestatus";s:12:"情感状态";s:10:"lookingfor";s:13:" 交友目的";s:9:"bloodtype";s:6:"血型";s:6:"height";s:6:"身高";s:6:"weight";s:6:"体重";s:6:"alipay";s:15:"支付宝帐号";s:3:"msn";s:3:"MSN";s:6:"taobao";s:12:"阿里旺旺";s:4:"site";s:6:"主页";s:3:"bio";s:12:"自我介绍";s:8:"interest";s:12:"兴趣爱好";}'),
('usersfields', 'a:45:{s:8:"realname";s:12:"真实姓名";s:8:"nickname";s:6:"昵称";s:6:"avatar";s:6:"头像";s:2:"qq";s:5:"QQ号";s:6:"mobile";s:12:"手机号码";s:3:"vip";s:9:"VIP级别";s:6:"gender";s:6:"性别";s:9:"birthyear";s:12:"出生生日";s:13:"constellation";s:6:"星座";s:6:"zodiac";s:6:"生肖";s:9:"telephone";s:12:"固定电话";s:6:"idcard";s:12:"证件号码";s:9:"studentid";s:6:"学号";s:5:"grade";s:6:"班级";s:7:"address";s:12:"邮寄地址";s:7:"zipcode";s:6:"邮编";s:11:"nationality";s:6:"国籍";s:14:"resideprovince";s:12:"居住地址";s:14:"graduateschool";s:12:"毕业学校";s:7:"company";s:6:"公司";s:9:"education";s:6:"学历";s:10:"occupation";s:6:"职业";s:8:"position";s:6:"职位";s:7:"revenue";s:9:"年收入";s:15:"affectivestatus";s:12:"情感状态";s:10:"lookingfor";s:13:" 交友目的";s:9:"bloodtype";s:6:"血型";s:6:"height";s:6:"身高";s:6:"weight";s:6:"体重";s:6:"alipay";s:15:"支付宝帐号";s:3:"msn";s:3:"MSN";s:5:"email";s:12:"电子邮箱";s:6:"taobao";s:12:"阿里旺旺";s:4:"site";s:6:"主页";s:3:"bio";s:12:"自我介绍";s:8:"interest";s:12:"兴趣爱好";s:7:"uniacid";s:17:"同一公众号id";s:7:"groupid";s:8:"分组id";s:7:"credit1";s:6:"积分";s:7:"credit2";s:6:"余额";s:7:"credit3";s:19:"预留积分类型3";s:7:"credit4";s:19:"预留积分类型4";s:7:"credit5";s:19:"预留积分类型5";s:7:"credit6";s:19:"预留积分类型6";s:10:"createtime";s:12:"加入时间";}'),
('module_receive_enable', 'a:0:{}'),
('checkupgrade:system', 'a:1:{s:10:"lastupdate";i:1481794980;}'),
('unisetting:1', 'a:23:{s:7:"uniacid";s:1:"1";s:8:"passport";a:3:{s:8:"focusreg";i:0;s:4:"item";s:5:"email";s:4:"type";s:8:"password";}s:5:"oauth";a:2:{s:4:"host";s:19:"http://www.apwei.cn";s:7:"account";i:1;}s:11:"jsauth_acid";s:1:"1";s:2:"uc";a:1:{s:6:"status";i:0;}s:6:"notify";a:1:{s:3:"sms";a:2:{s:7:"balance";i:0;s:9:"signature";s:0:"";}}s:11:"creditnames";a:5:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}s:7:"credit3";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit4";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit5";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:6:"关注";s:7:"default";s:6:"关注";s:15:"default_message";s:0:"";s:9:"shortcuts";a:1:{s:6:"jy_ppp";a:2:{s:4:"name";s:6:"jy_ppp";s:4:"link";s:44:"./index.php?c=home&a=welcome&do=ext&m=jy_ppp";}}s:7:"payment";a:8:{s:6:"credit";a:1:{s:6:"switch";b:0;}s:6:"alipay";a:4:{s:6:"switch";b:0;s:7:"account";s:0:"";s:7:"partner";s:0:"";s:6:"secret";s:0:"";}s:6:"wechat";a:11:{s:6:"switch";s:1:"1";s:7:"account";s:1:"1";s:7:"signkey";s:32:"wa430430430430430430430430430430";s:7:"partner";s:0:"";s:3:"key";s:0:"";s:7:"version";s:1:"2";s:5:"mchid";s:10:"1337334001";s:6:"apikey";s:32:"wa430430430430430430430430430430";s:7:"service";s:1:"0";s:6:"borrow";s:1:"0";s:10:"sub_mch_id";s:0:"";}s:8:"delivery";a:1:{s:6:"switch";b:0;}s:18:"wechat_facilitator";a:3:{s:5:"mchid";i:0;s:7:"signkey";s:0:"";s:6:"switch";b:0;}s:8:"unionpay";a:3:{s:6:"switch";b:0;s:11:"signcertpwd";s:0:"";s:5:"merid";s:0:"";}s:8:"baifubao";a:3:{s:6:"switch";b:0;s:7:"signkey";s:0:"";s:5:"mchid";s:0:"";}s:4:"line";a:2:{s:6:"switch";b:0;s:7:"message";s:0:"";}}s:4:"stat";s:0:"";s:12:"default_site";s:1:"1";s:4:"sync";s:1:"1";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";s:7:"menuset";s:0:"";}'),
('accesstoken:1', 'a:2:{s:5:"token";s:138:"rwLLaxssfQ5QRro_ythOvBvNmeggTBY4lhfQCOOcxl-L2Ki2nZ7peSSN4ZPLKIANE_cVtT0cH-lXqsIjucsHjgshJ6ADfbjSld8GPJhTOluH6B6J3fEMQ1r_iVWhDCxfYAPfAJAIKZ";s:6:"expire";i:1481802485;}'),
('jsticket:1', 'a:2:{s:6:"ticket";s:86:"kgt8ON7yVITDhtdwci0qeeW1USGI248BWTv0YqxnsN9zQmk48p34LTkYh9MMN1zfD_UElZEHr-yxqBPHqjU3SA";s:6:"expire";i:1481802751;}'),
('defaultgroupid:1', 's:1:"1";'),
('uniaccount:2', 'a:6:{s:4:"type";b:0;s:3:"uid";N;s:9:"starttime";N;s:7:"endtime";N;s:6:"groups";a:0:{}s:10:"grouplevel";b:0;}'),
('unisetting:2', 'b:0;'),
('unimodules:2:1', 'a:13:{s:5:"basic";a:19:{s:3:"mid";s:1:"1";s:4:"name";s:5:"basic";s:4:"type";s:6:"system";s:5:"title";s:18:"基本文字回复";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"和您进行简单对话";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:4:"news";a:19:{s:3:"mid";s:1:"2";s:4:"name";s:4:"news";s:4:"type";s:6:"system";s:5:"title";s:24:"基本混合图文回复";s:7:"version";s:3:"1.0";s:7:"ability";s:33:"为你提供生动的图文资讯";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"music";a:19:{s:3:"mid";s:1:"3";s:4:"name";s:5:"music";s:4:"type";s:6:"system";s:5:"title";s:18:"基本音乐回复";s:7:"version";s:3:"1.0";s:7:"ability";s:39:"提供语音、音乐等音频类回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:7:"userapi";a:19:{s:3:"mid";s:1:"4";s:4:"name";s:7:"userapi";s:4:"type";s:6:"system";s:5:"title";s:21:"自定义接口回复";s:7:"version";s:3:"1.1";s:7:"ability";s:33:"更方便的第三方接口设置";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:8:"recharge";a:19:{s:3:"mid";s:1:"5";s:4:"name";s:8:"recharge";s:4:"type";s:6:"system";s:5:"title";s:24:"会员中心充值模块";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"提供会员充值功能";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"custom";a:19:{s:3:"mid";s:1:"6";s:4:"name";s:6:"custom";s:4:"type";s:6:"system";s:5:"title";s:15:"多客服转接";s:7:"version";s:5:"1.0.0";s:7:"ability";s:36:"用来接入腾讯的多客服系统";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:17:"http://bbs.we7.cc";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:5:"video";i:3;s:8:"location";i:4;s:4:"link";i:5;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"images";a:19:{s:3:"mid";s:1:"7";s:4:"name";s:6:"images";s:4:"type";s:6:"system";s:5:"title";s:18:"基本图片回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"video";a:19:{s:3:"mid";s:1:"8";s:4:"name";s:5:"video";s:4:"type";s:6:"system";s:5:"title";s:18:"基本视频回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"voice";a:19:{s:3:"mid";s:1:"9";s:4:"name";s:5:"voice";s:4:"type";s:6:"system";s:5:"title";s:18:"基本语音回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供语音回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"chats";a:19:{s:3:"mid";s:2:"10";s:4:"name";s:5:"chats";s:4:"type";s:6:"system";s:5:"title";s:18:"发送客服消息";s:7:"version";s:3:"1.0";s:7:"ability";s:77:"公众号可以在粉丝最后发送消息的48小时内无限制发送消息";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"wxcard";a:19:{s:3:"mid";s:2:"11";s:4:"name";s:6:"wxcard";s:4:"type";s:6:"system";s:5:"title";s:18:"微信卡券回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"微信卡券回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:9:"paycenter";a:19:{s:3:"mid";s:2:"12";s:4:"name";s:9:"paycenter";s:4:"type";s:6:"system";s:5:"title";s:9:"收银台";s:7:"version";s:3:"1.0";s:7:"ability";s:9:"收银台";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:4:"core";a:5:{s:5:"title";s:24:"系统事件处理模块";s:4:"name";s:4:"core";s:8:"issystem";i:1;s:7:"enabled";i:1;s:9:"isdisplay";i:0;}}'),
('unimodules:1:1', 'a:14:{s:5:"basic";a:19:{s:3:"mid";s:1:"1";s:4:"name";s:5:"basic";s:4:"type";s:6:"system";s:5:"title";s:18:"基本文字回复";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"和您进行简单对话";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:4:"news";a:19:{s:3:"mid";s:1:"2";s:4:"name";s:4:"news";s:4:"type";s:6:"system";s:5:"title";s:24:"基本混合图文回复";s:7:"version";s:3:"1.0";s:7:"ability";s:33:"为你提供生动的图文资讯";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"music";a:19:{s:3:"mid";s:1:"3";s:4:"name";s:5:"music";s:4:"type";s:6:"system";s:5:"title";s:18:"基本音乐回复";s:7:"version";s:3:"1.0";s:7:"ability";s:39:"提供语音、音乐等音频类回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:7:"userapi";a:19:{s:3:"mid";s:1:"4";s:4:"name";s:7:"userapi";s:4:"type";s:6:"system";s:5:"title";s:21:"自定义接口回复";s:7:"version";s:3:"1.1";s:7:"ability";s:33:"更方便的第三方接口设置";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:8:"recharge";a:19:{s:3:"mid";s:1:"5";s:4:"name";s:8:"recharge";s:4:"type";s:6:"system";s:5:"title";s:24:"会员中心充值模块";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"提供会员充值功能";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"custom";a:19:{s:3:"mid";s:1:"6";s:4:"name";s:6:"custom";s:4:"type";s:6:"system";s:5:"title";s:15:"多客服转接";s:7:"version";s:5:"1.0.0";s:7:"ability";s:36:"用来接入腾讯的多客服系统";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:17:"http://bbs.we7.cc";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:5:"video";i:3;s:8:"location";i:4;s:4:"link";i:5;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"images";a:19:{s:3:"mid";s:1:"7";s:4:"name";s:6:"images";s:4:"type";s:6:"system";s:5:"title";s:18:"基本图片回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"video";a:19:{s:3:"mid";s:1:"8";s:4:"name";s:5:"video";s:4:"type";s:6:"system";s:5:"title";s:18:"基本视频回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"voice";a:19:{s:3:"mid";s:1:"9";s:4:"name";s:5:"voice";s:4:"type";s:6:"system";s:5:"title";s:18:"基本语音回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供语音回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"chats";a:19:{s:3:"mid";s:2:"10";s:4:"name";s:5:"chats";s:4:"type";s:6:"system";s:5:"title";s:18:"发送客服消息";s:7:"version";s:3:"1.0";s:7:"ability";s:77:"公众号可以在粉丝最后发送消息的48小时内无限制发送消息";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"wxcard";a:19:{s:3:"mid";s:2:"11";s:4:"name";s:6:"wxcard";s:4:"type";s:6:"system";s:5:"title";s:18:"微信卡券回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"微信卡券回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:9:"paycenter";a:19:{s:3:"mid";s:2:"12";s:4:"name";s:9:"paycenter";s:4:"type";s:6:"system";s:5:"title";s:9:"收银台";s:7:"version";s:3:"1.0";s:7:"ability";s:9:"收银台";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"jy_ppp";a:19:{s:3:"mid";s:2:"13";s:4:"name";s:6:"jy_ppp";s:4:"type";s:8:"business";s:5:"title";s:9:"想约你";s:7:"version";s:3:"6.3";s:7:"ability";s:9:"想约你";s:6:"author";s:19:"叶枫 qq 215681445";s:3:"url";s:21:"http://www.ncwxyx.com";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:6:"a:0:{}";s:7:"enabled";s:1:"1";s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:4:"core";a:5:{s:5:"title";s:24:"系统事件处理模块";s:4:"name";s:4:"core";s:8:"issystem";i:1;s:7:"enabled";i:1;s:9:"isdisplay";i:0;}}'),
('uniaccount:1', 'a:28:{s:4:"acid";s:1:"1";s:7:"uniacid";s:1:"1";s:5:"token";s:32:"32af05mheep0bmeiwbu3a5q3i4yo2m0n";s:12:"access_token";s:0:"";s:14:"encodingaeskey";s:43:"rPjp6Y0tiw7FeiReRyDGuN24ORqLT3Hf1S8qIR1u8Gq";s:5:"level";s:1:"4";s:4:"name";s:12:"爱赞婚恋";s:7:"account";s:19:"15312312918@163.com";s:8:"original";s:15:"gh_b1412554cddd";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:5:"admin";s:8:"password";s:32:"396943cc86a06c916de7a56d33c192f6";s:10:"lastupdate";s:1:"0";s:3:"key";s:18:"wx1a28012435517d03";s:6:"secret";s:32:"16463b62aa35eb570ef86e26a1fe7069";s:7:"styleid";s:1:"1";s:12:"subscribeurl";s:0:"";s:18:"auth_refresh_token";s:0:"";s:12:"default_acid";s:1:"1";s:4:"type";s:1:"1";s:3:"uid";N;s:9:"starttime";N;s:7:"endtime";N;s:6:"groups";a:1:{i:1;a:5:{s:7:"groupid";s:1:"1";s:7:"uniacid";s:1:"1";s:5:"title";s:15:"默认会员组";s:6:"credit";s:1:"0";s:9:"isdefault";s:1:"1";}}s:10:"grouplevel";s:1:"0";}'),
('unimodules:1:', 'a:14:{s:5:"basic";a:19:{s:3:"mid";s:1:"1";s:4:"name";s:5:"basic";s:4:"type";s:6:"system";s:5:"title";s:18:"基本文字回复";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"和您进行简单对话";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:4:"news";a:19:{s:3:"mid";s:1:"2";s:4:"name";s:4:"news";s:4:"type";s:6:"system";s:5:"title";s:24:"基本混合图文回复";s:7:"version";s:3:"1.0";s:7:"ability";s:33:"为你提供生动的图文资讯";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"music";a:19:{s:3:"mid";s:1:"3";s:4:"name";s:5:"music";s:4:"type";s:6:"system";s:5:"title";s:18:"基本音乐回复";s:7:"version";s:3:"1.0";s:7:"ability";s:39:"提供语音、音乐等音频类回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:7:"userapi";a:19:{s:3:"mid";s:1:"4";s:4:"name";s:7:"userapi";s:4:"type";s:6:"system";s:5:"title";s:21:"自定义接口回复";s:7:"version";s:3:"1.1";s:7:"ability";s:33:"更方便的第三方接口设置";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:8:"recharge";a:19:{s:3:"mid";s:1:"5";s:4:"name";s:8:"recharge";s:4:"type";s:6:"system";s:5:"title";s:24:"会员中心充值模块";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"提供会员充值功能";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"custom";a:19:{s:3:"mid";s:1:"6";s:4:"name";s:6:"custom";s:4:"type";s:6:"system";s:5:"title";s:15:"多客服转接";s:7:"version";s:5:"1.0.0";s:7:"ability";s:36:"用来接入腾讯的多客服系统";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:17:"http://bbs.we7.cc";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:5:"video";i:3;s:8:"location";i:4;s:4:"link";i:5;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"images";a:19:{s:3:"mid";s:1:"7";s:4:"name";s:6:"images";s:4:"type";s:6:"system";s:5:"title";s:18:"基本图片回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"video";a:19:{s:3:"mid";s:1:"8";s:4:"name";s:5:"video";s:4:"type";s:6:"system";s:5:"title";s:18:"基本视频回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"voice";a:19:{s:3:"mid";s:1:"9";s:4:"name";s:5:"voice";s:4:"type";s:6:"system";s:5:"title";s:18:"基本语音回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供语音回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"chats";a:19:{s:3:"mid";s:2:"10";s:4:"name";s:5:"chats";s:4:"type";s:6:"system";s:5:"title";s:18:"发送客服消息";s:7:"version";s:3:"1.0";s:7:"ability";s:77:"公众号可以在粉丝最后发送消息的48小时内无限制发送消息";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"wxcard";a:19:{s:3:"mid";s:2:"11";s:4:"name";s:6:"wxcard";s:4:"type";s:6:"system";s:5:"title";s:18:"微信卡券回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"微信卡券回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:9:"paycenter";a:19:{s:3:"mid";s:2:"12";s:4:"name";s:9:"paycenter";s:4:"type";s:6:"system";s:5:"title";s:9:"收银台";s:7:"version";s:3:"1.0";s:7:"ability";s:9:"收银台";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"jy_ppp";a:19:{s:3:"mid";s:2:"13";s:4:"name";s:6:"jy_ppp";s:4:"type";s:8:"business";s:5:"title";s:9:"想约你";s:7:"version";s:3:"6.3";s:7:"ability";s:9:"想约你";s:6:"author";s:19:"叶枫 qq 215681445";s:3:"url";s:21:"http://www.ncwxyx.com";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:6:"a:0:{}";s:7:"enabled";s:1:"1";s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:4:"core";a:5:{s:5:"title";s:24:"系统事件处理模块";s:4:"name";s:4:"core";s:8:"issystem";i:1;s:7:"enabled";i:1;s:9:"isdisplay";i:0;}}'),
('unisetting:', 'b:0;'),
('unicount:1', 's:1:"1";'),
('unimodules::1', 'a:13:{s:5:"basic";a:19:{s:3:"mid";s:1:"1";s:4:"name";s:5:"basic";s:4:"type";s:6:"system";s:5:"title";s:18:"基本文字回复";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"和您进行简单对话";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:4:"news";a:19:{s:3:"mid";s:1:"2";s:4:"name";s:4:"news";s:4:"type";s:6:"system";s:5:"title";s:24:"基本混合图文回复";s:7:"version";s:3:"1.0";s:7:"ability";s:33:"为你提供生动的图文资讯";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"music";a:19:{s:3:"mid";s:1:"3";s:4:"name";s:5:"music";s:4:"type";s:6:"system";s:5:"title";s:18:"基本音乐回复";s:7:"version";s:3:"1.0";s:7:"ability";s:39:"提供语音、音乐等音频类回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:7:"userapi";a:19:{s:3:"mid";s:1:"4";s:4:"name";s:7:"userapi";s:4:"type";s:6:"system";s:5:"title";s:21:"自定义接口回复";s:7:"version";s:3:"1.1";s:7:"ability";s:33:"更方便的第三方接口设置";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:8:"recharge";a:19:{s:3:"mid";s:1:"5";s:4:"name";s:8:"recharge";s:4:"type";s:6:"system";s:5:"title";s:24:"会员中心充值模块";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"提供会员充值功能";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"custom";a:19:{s:3:"mid";s:1:"6";s:4:"name";s:6:"custom";s:4:"type";s:6:"system";s:5:"title";s:15:"多客服转接";s:7:"version";s:5:"1.0.0";s:7:"ability";s:36:"用来接入腾讯的多客服系统";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:17:"http://bbs.we7.cc";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:5:"video";i:3;s:8:"location";i:4;s:4:"link";i:5;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"images";a:19:{s:3:"mid";s:1:"7";s:4:"name";s:6:"images";s:4:"type";s:6:"system";s:5:"title";s:18:"基本图片回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"video";a:19:{s:3:"mid";s:1:"8";s:4:"name";s:5:"video";s:4:"type";s:6:"system";s:5:"title";s:18:"基本视频回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"voice";a:19:{s:3:"mid";s:1:"9";s:4:"name";s:5:"voice";s:4:"type";s:6:"system";s:5:"title";s:18:"基本语音回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供语音回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"chats";a:19:{s:3:"mid";s:2:"10";s:4:"name";s:5:"chats";s:4:"type";s:6:"system";s:5:"title";s:18:"发送客服消息";s:7:"version";s:3:"1.0";s:7:"ability";s:77:"公众号可以在粉丝最后发送消息的48小时内无限制发送消息";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"wxcard";a:19:{s:3:"mid";s:2:"11";s:4:"name";s:6:"wxcard";s:4:"type";s:6:"system";s:5:"title";s:18:"微信卡券回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"微信卡券回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:9:"paycenter";a:19:{s:3:"mid";s:2:"12";s:4:"name";s:9:"paycenter";s:4:"type";s:6:"system";s:5:"title";s:9:"收银台";s:7:"version";s:3:"1.0";s:7:"ability";s:9:"收银台";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:4:"core";a:5:{s:5:"title";s:24:"系统事件处理模块";s:4:"name";s:4:"core";s:8:"issystem";i:1;s:7:"enabled";i:1;s:9:"isdisplay";i:0;}}');
INSERT INTO `ims_core_cache` (`key`, `value`) VALUES
('unimodules::', 'a:13:{s:5:"basic";a:19:{s:3:"mid";s:1:"1";s:4:"name";s:5:"basic";s:4:"type";s:6:"system";s:5:"title";s:18:"基本文字回复";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"和您进行简单对话";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:4:"news";a:19:{s:3:"mid";s:1:"2";s:4:"name";s:4:"news";s:4:"type";s:6:"system";s:5:"title";s:24:"基本混合图文回复";s:7:"version";s:3:"1.0";s:7:"ability";s:33:"为你提供生动的图文资讯";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"music";a:19:{s:3:"mid";s:1:"3";s:4:"name";s:5:"music";s:4:"type";s:6:"system";s:5:"title";s:18:"基本音乐回复";s:7:"version";s:3:"1.0";s:7:"ability";s:39:"提供语音、音乐等音频类回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:7:"userapi";a:19:{s:3:"mid";s:1:"4";s:4:"name";s:7:"userapi";s:4:"type";s:6:"system";s:5:"title";s:21:"自定义接口回复";s:7:"version";s:3:"1.1";s:7:"ability";s:33:"更方便的第三方接口设置";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:8:"recharge";a:19:{s:3:"mid";s:1:"5";s:4:"name";s:8:"recharge";s:4:"type";s:6:"system";s:5:"title";s:24:"会员中心充值模块";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"提供会员充值功能";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"custom";a:19:{s:3:"mid";s:1:"6";s:4:"name";s:6:"custom";s:4:"type";s:6:"system";s:5:"title";s:15:"多客服转接";s:7:"version";s:5:"1.0.0";s:7:"ability";s:36:"用来接入腾讯的多客服系统";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:17:"http://bbs.we7.cc";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:5:"video";i:3;s:8:"location";i:4;s:4:"link";i:5;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"images";a:19:{s:3:"mid";s:1:"7";s:4:"name";s:6:"images";s:4:"type";s:6:"system";s:5:"title";s:18:"基本图片回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"video";a:19:{s:3:"mid";s:1:"8";s:4:"name";s:5:"video";s:4:"type";s:6:"system";s:5:"title";s:18:"基本视频回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"voice";a:19:{s:3:"mid";s:1:"9";s:4:"name";s:5:"voice";s:4:"type";s:6:"system";s:5:"title";s:18:"基本语音回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供语音回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:5:"chats";a:19:{s:3:"mid";s:2:"10";s:4:"name";s:5:"chats";s:4:"type";s:6:"system";s:5:"title";s:18:"发送客服消息";s:7:"version";s:3:"1.0";s:7:"ability";s:77:"公众号可以在粉丝最后发送消息的48小时内无限制发送消息";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:6:"wxcard";a:19:{s:3:"mid";s:2:"11";s:4:"name";s:6:"wxcard";s:4:"type";s:6:"system";s:5:"title";s:18:"微信卡券回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"微信卡券回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:9:"paycenter";a:19:{s:3:"mid";s:2:"12";s:4:"name";s:9:"paycenter";s:4:"type";s:6:"system";s:5:"title";s:9:"收银台";s:7:"version";s:3:"1.0";s:7:"ability";s:9:"收银台";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:7:"enabled";i:1;s:6:"config";a:0:{}s:9:"isdisplay";i:1;}s:4:"core";a:5:{s:5:"title";s:24:"系统事件处理模块";s:4:"name";s:4:"core";s:8:"issystem";i:1;s:7:"enabled";i:1;s:9:"isdisplay";i:0;}}'),
('uniaccount:0', 'a:6:{s:4:"type";b:0;s:3:"uid";N;s:9:"starttime";N;s:7:"endtime";N;s:6:"groups";a:0:{}s:10:"grouplevel";b:0;}'),
('unisetting:0', 'b:0;'),
('unicount:2', 's:1:"0";');

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_cron`
--

CREATE TABLE IF NOT EXISTS `ims_core_cron` (
  `id` int(10) unsigned NOT NULL,
  `cloudid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `lastruntime` int(10) unsigned NOT NULL,
  `nextruntime` int(10) unsigned NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `extra` varchar(5000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_cron_record`
--

CREATE TABLE IF NOT EXISTS `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_menu`
--

CREATE TABLE IF NOT EXISTS `ims_core_menu` (
  `id` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(60) NOT NULL,
  `append_title` varchar(30) NOT NULL,
  `append_url` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL,
  `permission_name` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_menu`
--

INSERT INTO `ims_core_menu` (`id`, `pid`, `title`, `name`, `url`, `append_title`, `append_url`, `displayorder`, `type`, `is_display`, `is_system`, `permission_name`) VALUES
(1, 0, '基础设置', 'platform', '', 'fa fa-cog', '', 0, 'url', 1, 1, ''),
(2, 1, '基本功能', 'platform', '', '', '', 0, 'url', 1, 1, 'platform_basic_function'),
(3, 2, '文字回复', 'platform', './index.php?c=platform&a=reply&m=basic', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=basic', 0, 'url', 1, 1, 'platform_reply_basic'),
(4, 2, '图文回复', 'platform', './index.php?c=platform&a=reply&m=news', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=news', 0, 'url', 1, 1, 'platform_reply_news'),
(5, 2, '音乐回复', 'platform', './index.php?c=platform&a=reply&m=music', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=music', 0, 'url', 1, 1, 'platform_reply_music'),
(6, 2, '图片回复', 'platform', './index.php?c=platform&a=reply&m=images', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=images', 0, 'url', 1, 1, 'platform_reply_images'),
(7, 2, '语音回复', 'platform', './index.php?c=platform&a=reply&m=voice', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=voice', 0, 'url', 1, 1, 'platform_reply_voice'),
(8, 2, '视频回复', 'platform', './index.php?c=platform&a=reply&m=video', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=video', 0, 'url', 1, 1, 'platform_reply_video'),
(9, 2, '微信卡券回复', 'platform', './index.php?c=platform&a=reply&m=wxcard', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=wxcard', 0, 'url', 1, 1, 'platform_reply_wxcard'),
(10, 2, '自定义接口回复', 'platform', './index.php?c=platform&a=reply&m=userapi', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=userapi', 0, 'url', 1, 1, 'platform_reply_userapi'),
(11, 2, '系统回复', 'platform', './index.php?c=platform&a=special&do=display&', '', '', 0, 'url', 1, 1, 'platform_reply_system'),
(12, 1, '高级功能', 'platform', '', '', '', 0, 'url', 1, 1, 'platform_high_function'),
(13, 12, '常用服务接入', 'platform', './index.php?c=platform&a=service&do=switch&', '', '', 0, 'url', 1, 1, 'platform_service'),
(14, 12, '自定义菜单', 'platform', './index.php?c=platform&a=menu&', '', '', 0, 'url', 1, 1, 'platform_menu'),
(15, 12, '特殊消息回复', 'platform', './index.php?c=platform&a=special&do=message&', '', '', 0, 'url', 1, 1, 'platform_special'),
(16, 12, '二维码管理', 'platform', './index.php?c=platform&a=qr&', '', '', 0, 'url', 1, 1, 'platform_qr'),
(17, 12, '多客服接入', 'platform', './index.php?c=platform&a=reply&m=custom', '', '', 0, 'url', 1, 1, 'platform_reply_custom'),
(18, 12, '长链接二维码', 'platform', './index.php?c=platform&a=url2qr&', '', '', 0, 'url', 1, 1, 'platform_url2qr'),
(19, 1, '数据统计', 'platform', '', '', '', 0, 'url', 1, 1, 'platform_stat'),
(20, 19, '聊天记录', 'platform', './index.php?c=platform&a=stat&do=history&', '', '', 0, 'url', 1, 1, 'platform_stat_history'),
(21, 19, '回复规则使用情况', 'platform', './index.php?c=platform&a=stat&do=rule&', '', '', 0, 'url', 1, 1, 'platform_stat_rule'),
(22, 19, '关键字命中情况', 'platform', './index.php?c=platform&a=stat&do=keyword&', '', '', 0, 'url', 1, 1, 'platform_stat_keyword'),
(23, 19, '参数', 'platform', './index.php?c=platform&a=stat&do=setting&', '', '', 0, 'url', 1, 1, 'platform_stat_setting'),
(24, 0, '微站功能', 'site', '', 'fa fa-life-bouy', '', 0, 'url', 1, 1, ''),
(25, 24, '微站管理', 'site', '', '', '', 0, 'url', 1, 1, 'site_manage'),
(26, 25, '站点管理', 'site', './index.php?c=site&a=multi&do=display&', 'fa fa-plus', './index.php?c=site&a=multi&do=post&', 0, 'url', 1, 1, 'site_multi_display'),
(27, 25, '站点添加/编辑', 'site', '', '', '', 0, 'permission', 0, 1, 'site_multi_post'),
(28, 25, '站点删除', 'site', '', '', '', 0, 'permission', 0, 1, 'site_multi_del'),
(29, 25, '模板管理', 'site', './index.php?c=site&a=style&do=template&', '', '', 0, 'url', 1, 1, 'site_style_template'),
(30, 25, '模块模板扩展', 'site', './index.php?c=site&a=style&do=module&', '', '', 0, 'url', 1, 1, 'site_style_module'),
(31, 24, '特殊页面管理', 'site', '', '', '', 0, 'url', 1, 1, 'site_special_page'),
(32, 31, '会员中心', 'site', './index.php?c=site&a=editor&do=uc&', '', '', 0, 'url', 1, 1, 'site_editor_uc'),
(33, 31, '专题页面', 'site', './index.php?c=site&a=editor&do=page&', 'fa fa-plus', './index.php?c=site&a=editor&do=design&', 0, 'url', 1, 1, 'site_editor_page'),
(34, 24, '功能组件', 'site', '', '', '', 0, 'url', 1, 1, 'site_article'),
(35, 34, '分类设置', 'site', './index.php?c=site&a=category&', '', '', 0, 'url', 1, 1, 'site_category'),
(36, 34, '文章管理', 'site', './index.php?c=site&a=article&', '', '', 0, 'url', 1, 1, 'site_article'),
(37, 0, '粉丝营销', 'mc', '', 'fa fa-gift', '', 0, 'url', 1, 1, ''),
(38, 37, '粉丝管理', 'mc', '', '', '', 0, 'url', 1, 1, 'mc_fans_manage'),
(39, 38, '粉丝分组', 'mc', './index.php?c=mc&a=fangroup&', '', '', 0, 'url', 1, 1, 'mc_fangroup'),
(40, 38, '粉丝', 'mc', './index.php?c=mc&a=fans&', '', '', 0, 'url', 1, 1, 'mc_fans'),
(41, 37, '会员中心', 'mc', '', '', '', 0, 'url', 1, 1, 'mc_members_manage'),
(42, 41, '会员中心关键字', 'mc', './index.php?c=platform&a=cover&do=mc&', '', '', 0, 'url', 1, 1, 'platform_cover_mc'),
(43, 41, '会员', 'mc', './index.php?c=mc&a=member', 'fa fa-plus', './index.php?c=mc&a=member&do=add', 0, 'url', 1, 1, 'mc_member'),
(44, 41, '会员组', 'mc', './index.php?c=mc&a=group&', '', '', 0, 'url', 1, 1, 'mc_group'),
(45, 37, '会员卡管理', 'mc', '', '', '', 0, 'url', 1, 1, 'mc_card_manage'),
(46, 45, '会员卡关键字', 'mc', './index.php?c=platform&a=cover&do=card&', '', '', 0, 'url', 1, 1, 'platform_cover_card'),
(47, 45, '会员卡管理', 'mc', './index.php?c=mc&a=card&do=manage', '', '', 0, 'url', 1, 1, 'mc_card_manage'),
(48, 45, '会员卡设置', 'mc', './index.php?c=mc&a=card&do=editor', '', '', 0, 'url', 1, 1, 'mc_card_editor'),
(49, 45, '会员卡其他功能', 'mc', './index.php?c=mc&a=card&do=other', '', '', 0, 'url', 1, 1, 'mc_card_other'),
(50, 37, '积分兑换', 'mc', '', '', '', 0, 'url', 1, 1, 'activity_discount_manage'),
(51, 50, '卡券兑换', 'mc', './index.php?c=activity&a=exchange&do=display&type=coupon', '', '', 0, 'url', 1, 1, 'activity_coupon_exchange'),
(52, 50, '真实物品兑换', 'mc', './index.php?c=activity&a=exchange&do=display&type=goods', '', '', 0, 'url', 1, 1, 'activity_goods_display'),
(53, 37, '微信素材&群发', 'mc', '', '', '', 0, 'url', 1, 1, 'material_manage'),
(54, 53, '素材&群发', 'mc', './index.php?c=material&a=display', '', '', 0, 'url', 1, 1, 'material_display'),
(55, 53, '定时群发', 'mc', './index.php?c=material&a=mass', '', '', 0, 'url', 1, 1, 'material_mass'),
(56, 37, '卡券管理', 'mc', '', '', '', 0, 'url', 1, 1, 'wechat_card_manage'),
(57, 56, '卡券列表', 'mc', './index.php?c=activity&a=coupon&do=display', '', '', 0, 'url', 1, 1, 'activity_coupon_display'),
(58, 56, '卡券营销', 'mc', 'index.php?c=activity&a=market', '', '', 0, 'url', 1, 1, 'activity_coupon_market'),
(59, 56, '卡券核销', 'mc', './index.php?c=activity&a=consume&do=display&status=2', '', '', 0, 'url', 1, 1, 'activity_consume_coupon'),
(60, 37, '工作台', 'mc', '', '', '', 0, 'url', 1, 1, 'paycenter_manage'),
(61, 60, '门店列表', 'mc', './index.php?c=activity&a=store', '', '', 0, 'url', 1, 1, 'activity_store_list'),
(62, 60, '店员列表', 'mc', './index.php?c=activity&a=clerk', '', '', 0, 'url', 1, 1, 'activity_clerk_list'),
(63, 60, '微信刷卡收款', 'mc', './index.php?c=paycenter&a=wxmicro&do=pay', '', '', 0, 'url', 1, 1, 'paycenter_wxmicro_pay'),
(64, 60, '店员操作关键字', 'mc', './index.php?c=platform&a=cover&do=clerk', '', '', 0, 'url', 1, 1, 'paycenter_clerk'),
(65, 37, '统计中心', 'mc', '', '', '', 0, 'url', 1, 1, 'stat_center'),
(66, 65, '会员积分统计', 'mc', './index.php?c=stat&a=credit1', '', '', 0, 'url', 1, 1, 'stat_credit1'),
(67, 65, '会员余额统计', 'mc', './index.php?c=stat&a=credit2', '', '', 0, 'url', 1, 1, 'stat_credit2'),
(68, 65, '会员现金消费统计', 'mc', './index.php?c=stat&a=cash', '', '', 0, 'url', 1, 1, 'stat_cash'),
(69, 65, '会员卡统计', 'mc', './index.php?c=stat&a=card', '', '', 0, 'url', 1, 1, 'stat_card'),
(70, 65, '收银台收款统计', 'mc', './index.php?c=stat&a=paycenter', '', '', 0, 'url', 1, 1, 'stat_paycenter'),
(71, 0, '功能选项', 'setting', '', 'fa fa-umbrella', '', 0, 'url', 1, 1, ''),
(72, 71, '公众号选项', 'setting', '', '', '', 0, 'url', 1, 1, 'account_setting'),
(73, 72, '支付参数', 'setting', './index.php?c=profile&a=payment&', '', '', 0, 'url', 1, 1, 'profile_payment'),
(74, 72, '借用 oAuth 权限', 'setting', './index.php?c=mc&a=passport&do=oauth&', '', '', 0, 'url', 1, 1, 'mc_passport_oauth'),
(75, 72, '借用 JS 分享权限', 'setting', './index.php?c=profile&a=jsauth&', '', '', 0, 'url', 1, 1, 'profile_jsauth'),
(76, 72, '会员字段管理', 'setting', './index.php?c=mc&a=fields', '', '', 0, 'url', 1, 1, 'mc_fields'),
(77, 72, '微信通知设置', 'setting', './index.php?c=mc&a=tplnotice', '', '', 0, 'url', 1, 1, 'mc_tplnotice'),
(78, 72, '工作台菜单设置', 'setting', './index.php?c=profile&a=deskmenu', '', '', 0, 'url', 1, 1, 'profile_deskmenu'),
(79, 72, '会员扩展功能', 'setting', './index.php?c=mc&a=plugin', '', '', 0, 'url', 1, 1, 'mc_plugin'),
(80, 71, '会员及粉丝选项', 'setting', '', '', '', 0, 'url', 1, 1, 'mc_setting'),
(81, 80, '积分设置', 'setting', './index.php?c=mc&a=credit&', '', '', 0, 'url', 1, 1, 'mc_credit'),
(82, 80, '注册设置', 'setting', './index.php?c=mc&a=passport&do=passport&', '', '', 0, 'url', 1, 1, 'mc_passport_passport'),
(83, 80, '粉丝同步设置', 'setting', './index.php?c=mc&a=passport&do=sync&', '', '', 0, 'url', 1, 1, 'mc_passport_sync'),
(84, 80, 'UC站点整合', 'setting', './index.php?c=mc&a=uc&', '', '', 0, 'url', 1, 1, 'mc_uc'),
(85, 80, '邮件通知参数', 'setting', './index.php?c=profile&a=notify', '', '', 0, 'url', 1, 1, 'profile_notify'),
(86, 71, '其他功能选项', 'setting', '', '', '', 0, 'url', 1, 1, 'others_setting'),
(87, 0, '扩展功能', 'ext', '', 'fa fa-cubes', '', 0, 'url', 1, 1, ''),
(88, 87, '管理', 'ext', '', '', '', 0, 'url', 1, 1, ''),
(89, 88, '扩展功能管理', 'ext', './index.php?c=profile&a=module&', '', '', 0, 'url', 1, 1, 'profile_module');

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_paylog`
--

CREATE TABLE IF NOT EXISTS `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `tid` varchar(128) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_paylog`
--

INSERT INTO `ims_core_paylog` (`plid`, `type`, `uniacid`, `acid`, `openid`, `uniontid`, `tid`, `fee`, `status`, `module`, `tag`, `is_usecard`, `card_type`, `card_id`, `card_fee`, `encrypt_code`) VALUES
(1, '', 1, 1, '1', '', '20161101113038229051', '100.00', 0, 'recharge', '', 0, 0, '', '100.00', ''),
(2, 'wechat', 1, 1, '1', '2016110112083600000514227489', '20161101120889013698', '1.00', 1, 'recharge', 'a:1:{s:14:"transaction_id";s:28:"4007682001201611018358377917";}', 0, 0, '0', '1.00', ''),
(3, 'wechat', 1, 1, '1', '2016110118311800000545812241', '20161101183106448838', '25.00', 1, 'recharge', 'a:1:{s:14:"transaction_id";s:28:"4007682001201611018401036167";}', 0, 0, '0', '25.00', ''),
(4, 'wechat', 1, 1, 'ozJkmt5WVyGSfs-fmn3S6lTRKa44', '2016121314215100001303562868', '14816101101', '100.00', 0, 'jy_ppp', '', 0, 0, '0', '100.00', ''),
(5, 'wechat', 1, 1, 'ozJkmt5WVyGSfs-fmn3S6lTRKa44', '2016121314221200001318222322', '14816101312', '50.00', 0, 'jy_ppp', '', 0, 0, '0', '50.00', ''),
(6, 'wechat', 1, 1, 'ozJkmt5WVyGSfs-fmn3S6lTRKa44', '2016121314225200001344959842', '14816101723', '200.00', 0, 'jy_ppp', '', 0, 0, '0', '200.00', ''),
(7, 'wechat', 1, 1, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '2016121314294100001321063788', '14816105784', '200.00', 0, 'jy_ppp', '', 0, 0, '0', '200.00', ''),
(8, 'wechat', 1, 1, 'ozJkmt5WVyGSfs-fmn3S6lTRKa44', '2016121316212400001336345882', '14816172835', '50.00', 0, 'jy_ppp', '', 0, 0, '0', '50.00', ''),
(9, 'wechat', 1, 1, 'o8cSQwGR4ZP_WVDr_cri6fTFvZPg', '2016121518065800001362826152', '14817964176', '200.00', 0, 'jy_ppp', '', 0, 0, '0', '200.00', ''),
(10, 'wechat', 1, 1, 'o8cSQwGR4ZP_WVDr_cri6fTFvZPg', '2016121518070300001343852084', '14817964237', '200.00', 0, 'jy_ppp', '', 0, 0, '0', '200.00', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_performance`
--

CREATE TABLE IF NOT EXISTS `ims_core_performance` (
  `id` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_queue`
--

CREATE TABLE IF NOT EXISTS `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_resource`
--

CREATE TABLE IF NOT EXISTS `ims_core_resource` (
  `mid` int(11) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_sendsms_log`
--

CREATE TABLE IF NOT EXISTS `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_sessions`
--

CREATE TABLE IF NOT EXISTS `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_sessions`
--

INSERT INTO `ims_core_sessions` (`sid`, `uniacid`, `openid`, `data`, `expiretime`) VALUES
('3982dd1873e5d89f9d0d7f9e75393a12', 1, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'openid|s:28:"ozJkmt4EVRLFlD56N48B8gfNyaLw";', 1481621043),
('57be7a4a874c9281680249fffc9ae109', 1, '112.96.109.84', 'acid|s:1:"1";uniacid|i:1;token|a:6:{s:4:"sqWB";i:1477998585;s:4:"S7yf";i:1477998619;s:4:"iHnl";i:1477998619;s:4:"lMc4";i:1477998620;s:4:"Z5ko";i:1477998625;s:4:"h2JO";i:1477998627;}dest_url|s:75:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dmc%26a%3Dhome%26";oauth_openid|s:28:"ozJkmt4EVRLFlD56N48B8gfNyaLw";oauth_acid|s:1:"1";openid|s:28:"ozJkmt4EVRLFlD56N48B8gfNyaLw";uid|s:1:"1";', 1478002227),
('fbe6fac1307fafa15b8ca1e951c7191f', 1, '140.207.185.109', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Jfs1";i:1477968560;}', 1477972160),
('35428e1e407c87c28a70994da9fad980', 1, '140.207.124.105', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Eomo";i:1477968560;}', 1477972160),
('706d129d128009a993ec0fb0fc2d5c70', 1, '180.153.81.203', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"oGdI";i:1477968569;}', 1477972169),
('5eb8609f0a966becc85f6c6ad85d8136', 1, '180.153.212.13', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"tWKf";i:1477970413;s:4:"rH3C";i:1477970413;}', 1477974013),
('65670a8cffd594c858125433f2124cec', 1, '180.153.214.189', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"RjXz";i:1477970421;s:4:"hddo";i:1477970421;}', 1477974021),
('226ad331e7dffb29df71236e4f145675', 1, '101.226.68.200', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"g7bt";i:1477970438;s:4:"wWqW";i:1477970438;}', 1477974038),
('6a34ad4f87ff610d9aef4fc5af177e07', 1, '101.226.33.225', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"Rurt";i:1477970441;s:4:"G55s";i:1477970441;}', 1477974041),
('6bba13726438c95bfbc099f3e134fcda', 1, 'ozJkmt0mbBksG054GNzn7fgdB_UE', 'openid|s:28:"ozJkmt0mbBksG054GNzn7fgdB_UE";', 1477976489),
('db2f13d3da0fb7acd123bca69ef884f1', 1, '180.153.214.152', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"y3Z3";i:1477970454;s:4:"cCRr";i:1477970454;}', 1477974054),
('0d6a2602e7934298b29368fab1518c3f', 1, '113.142.9.142', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"EbPs";i:1477970526;s:4:"FCsJ";i:1477970526;}', 1477974126),
('59070989a228a6146a1c05332e26fb24', 1, '113.142.9.143', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"n1d1";i:1477970529;s:4:"cKvR";i:1477970529;}', 1477974129),
('9bdc3c8fa4d86ccb4e8f62b96cd15361', 1, '101.226.65.102', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"xP5e";i:1477970599;s:4:"qNVS";i:1477970600;}', 1477974200),
('fb68f7538d0098d3e4fb81cf4690c835', 1, '101.226.33.200', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"s0Z7";i:1477970599;s:4:"fyR8";i:1477970600;}', 1477974200),
('d1b73eb0f6758bdbf820fd2c0deb827f', 1, '101.226.66.172', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"QX1U";i:1477970609;s:4:"fGIN";i:1477970609;}', 1477974209),
('35ecdecc8a0b0d50f24633efec385287', 2, '101.226.89.116', 'acid|N;uniacid|i:2;token|a:1:{s:4:"qc3W";i:1477996883;}', 1478000483),
('77f37b5d4ccaa8c5b64b30269e13824d', 1, '180.163.2.118', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"lHIi";i:1477973292;s:4:"YZoi";i:1477973292;}', 1477976892),
('e98f23f71d69802c04b1d59f0a786c20', 1, '101.226.33.201', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"QJNT";i:1477973332;}', 1477976932),
('174066d52589c88a17b563400e9d137c', 1, '101.226.89.122', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"s1cD";i:1477973334;}', 1477976934),
('e712d2a03b1027508c4073dcdfece16e', 1, '180.153.214.189', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"NDcv";i:1477973354;}', 1477976954),
('2759744093278bec70753da0f1ee0eae', 1, 'ozJkmtxMfDdQHp3JV5-L8ieNnasM', 'openid|s:28:"ozJkmtxMfDdQHp3JV5-L8ieNnasM";', 1477978930),
('1994b1721135ce759b2750e200a6405b', 1, 'ozJkmtwETOGPtnDp881J5bNjRMAU', 'openid|s:28:"ozJkmtwETOGPtnDp881J5bNjRMAU";', 1477992183),
('abe2a4b440ed6c27d9bc098510981855', 1, 'ozJkmt0S_DfB5u-tPP5gSYlwknnY', 'openid|s:28:"ozJkmt0S_DfB5u-tPP5gSYlwknnY";', 1477993724),
('e5e4ff9dff66c91da52f2989fb86c14d', 1, '101.226.66.181', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"boQy";i:1477991701;}', 1477995301),
('8db9a2ac265cf08f62838a9941f9eda1', 1, '101.226.102.97', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"rhkb";i:1477993284;s:4:"WLlJ";i:1477993284;}', 1477996884),
('6aa6c330ed8ab51e0bb67abcc9b8b8ac', 1, '202.100.206.196', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"zpb4";i:1478008473;}dest_url|s:64:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dmc%26";', 1478012073),
('6fd8762b2bd3710ddea35a12a05abd04', 1, 'ozJkmtzZ03vabK8oWEgOYZ-vnXzE', 'openid|s:28:"ozJkmtzZ03vabK8oWEgOYZ-vnXzE";', 1478013794),
('7cfbdb95522d65b04c1bce04a4b909a2', 1, 'ozJkmt9-AOg2uQ-bLzdjei78N1os', 'openid|s:28:"ozJkmt9-AOg2uQ-bLzdjei78N1os";', 1478057607),
('d399572e411e7dae84573cd1a234ef25', 0, '112.96.128.68', 'acid|N;uniacid|i:0;token|a:3:{s:4:"Fn5s";i:1478141362;s:4:"fo4r";i:1478141369;s:4:"sVfL";i:1478141373;}', 1478144973),
('adbf4807ce867e47e84cb21728d37faf', 0, '101.226.33.200', 'acid|N;uniacid|i:0;token|a:1:{s:4:"TSWw";i:1478138485;}', 1478142085),
('a98a19ddd80e5b7a8d7c18f8cd92697d', 0, '140.207.185.109', 'acid|N;uniacid|i:0;token|a:1:{s:4:"b4l1";i:1478141379;}', 1478144979),
('d7fe8f72185cf567727049b7a95db8bb', 0, '101.226.61.207', 'acid|N;uniacid|i:0;token|a:1:{s:4:"ne8e";i:1478141383;}', 1478144983),
('65c820f12e92b65f18d8edb02f07b356', 1, '101.226.99.195', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"dWDw";i:1478054548;s:4:"RiNN";i:1478054548;}', 1478058148),
('4f1c3d89ece9c565cae89610796ae869', 1, '180.163.2.88', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"tYfl";i:1478054550;s:4:"tkNo";i:1478054550;}', 1478058150),
('662465e5c34b394f144f3011ea1d210f', 1, '101.226.89.119', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"uR99";i:1477993687;}', 1477997287),
('c80f905c6df86111d6198fd3a8f84b1d', 1, '112.65.193.13', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"uFG2";i:1477993688;s:4:"PAq3";i:1477993688;}', 1477997288),
('33a94c2b9ce83693985d40f9d0fd8ca0', 1, 'ozJkmt-xAd4HWuaIqELIPD7bva_I', 'openid|s:28:"ozJkmt-xAd4HWuaIqELIPD7bva_I";', 1478012154),
('4debe8c1eea521262591932df6d29711', 1, '101.226.85.67', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"schF";i:1477994325;s:4:"mIzr";i:1477994326;}', 1477997926),
('29dc08558cdf4e4672f1534f8f871c31', 1, '180.153.214.199', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"z9vX";i:1477994416;s:4:"d14a";i:1477994416;}', 1477998016),
('630b91e310f69020b5eaf66ad322810a', 1, '101.226.65.107', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"kCR6";i:1477994503;s:4:"SinS";i:1477994503;}', 1477998103),
('29b198396720cbd74d45542917d90e33', 1, '140.207.185.107', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"nRR7";i:1477994609;s:4:"hL2l";i:1477994609;}', 1477998209),
('9a83d6e93b3799c8f5c981ca4d5fb504', 1, '101.226.89.120', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"Y8vc";i:1477995725;s:4:"Dczk";i:1477995725;}', 1477999325),
('a2f4fc3cebafcfc81ebd95b1d397b26c', 1, '61.151.218.119', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"qSFz";i:1477995894;s:4:"ZvvY";i:1477995894;}', 1477999494),
('25f241cff68ff549cf1907c1506b0aeb', 1, '101.226.66.174', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"L9P9";i:1477995895;s:4:"fGyh";i:1477995896;}', 1477999496),
('e7a2fd0e6106ad6a9481f022d800d5e4', 1, '101.226.61.206', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"ca4J";i:1477995898;s:4:"Gp1y";i:1477995898;}', 1477999498),
('f7fc313150712e98a1dad4f7f538aa86', 1, '101.226.33.200', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"q63z";i:1477996286;}', 1477999886),
('b26b409476299a5b9d98984aac1bbe1f', 1, '180.153.206.20', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"g3Ec";i:1477996295;}', 1477999895),
('fc87c80de562321bb5f08b1e85ce2d6d', 1, '101.226.33.200', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hPyi";i:1477996322;}', 1477999922),
('6cbd954f1ae44b6dce2beea7e7375343', 1, '117.185.27.113', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"dFNA";i:1477996458;}', 1478000058),
('0078bd60a4bf4b4aab46eecfe1bd3c69', 1, '101.226.33.223', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"JY9m";i:1477996459;}', 1478000059),
('b4d0d64f3d85a496279b12ae77d8fc3b', 1, '101.226.51.227', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"RG4v";i:1477996466;}', 1478000066),
('dc810be865a3381ce5c36f2ae4a8f829', 1, '180.153.206.23', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"WvYt";i:1477996469;}', 1478000069),
('2d1d4238ac3688f1149f8b07e8e2fa2a', 1, '101.226.61.206', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"vhx1";i:1477998579;s:4:"xE3o";i:1477998579;}', 1478002179),
('c0821c69a5c8fd0917eb6376eece8780', 1, 'ozJkmt28vASmJko3t61qFDLP8xj8', 'openid|s:28:"ozJkmt28vASmJko3t61qFDLP8xj8";', 1478065089),
('2fdc56fff8a7d3bb12375a245ce6f782', 1, '117.136.11.163', 'acid|s:1:"1";uniacid|i:1;token|a:5:{s:4:"GAu3";i:1477999385;s:4:"Y86M";i:1477999386;s:4:"O53J";i:1477999387;s:4:"Deee";i:1477999387;s:4:"NJjk";i:1477999387;}dest_url|s:75:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dmc%26a%3Dhome%26";oauth_openid|s:28:"ozJkmt28vASmJko3t61qFDLP8xj8";oauth_acid|s:1:"1";openid|s:28:"ozJkmt28vASmJko3t61qFDLP8xj8";uid|s:1:"3";', 1478002987),
('4a4a4661326769c581d83dd8bfeac47f', 1, '117.136.11.163', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"PS0A";i:1477999385;}dest_url|s:75:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dmc%26a%3Dhome%26";', 1478002985),
('5294fb97f557e789689ca9efb0c2eea8', 1, '101.226.66.179', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"sSYf";i:1477999391;s:4:"P3zS";i:1477999391;}', 1478002991),
('bde9aa16c5da61dbf70e2fcc002057c6', 1, '117.136.11.163', 'acid|s:1:"1";uniacid|i:1;token|a:6:{s:4:"GJjh";i:1478001792;s:4:"Q8Fq";i:1478001796;s:4:"Bp1d";i:1478001797;s:4:"l6W6";i:1478001798;s:4:"J6js";i:1478001808;s:4:"WKJF";i:1478001809;}', 1478005409),
('4fba1c7365d6369c23aae51c73693b8e', 1, '101.226.61.206', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"G6lN";i:1478001804;s:4:"MOIi";i:1478001804;}', 1478005404),
('f80df3af0e20366f12e217da49704996', 1, '180.153.214.180', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"q0Hh";i:1478001808;}', 1478005408),
('5b6770f4a61c0a193576dffb02476f1e', 1, 'ozJkmt_E3nI0NpX60pXW9y3TYsko', 'openid|s:28:"ozJkmt_E3nI0NpX60pXW9y3TYsko";', 1478009382),
('0564c25c6237a29a882fd643c0c4bb3b', 1, 'ozJkmt1IY2cnogs4HQylbxa2fBB8', 'openid|s:28:"ozJkmt1IY2cnogs4HQylbxa2fBB8";', 1478011135),
('d1c857b8317366993f22dacad4f6d933', 1, '27.151.136.34', 'acid|s:1:"1";uniacid|i:1;token|a:6:{s:4:"Ea1F";i:1478058325;s:4:"Zlpu";i:1478058327;s:4:"pU8S";i:1478058327;s:4:"xo89";i:1478058329;s:4:"U8iD";i:1478058329;s:4:"znNY";i:1478058329;}', 1478061929),
('756726f64c32ccafb256b516c4df837d', 1, '27.151.136.34', 'acid|s:1:"1";uniacid|i:1;token|a:4:{s:4:"aDpP";i:1478058795;s:4:"DH4h";i:1478058795;s:4:"x10e";i:1478058797;s:4:"qroF";i:1478058820;}dest_url|s:117:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26m%3Drecharge%26do%3Dpay%26wxref%3Dmp.weixin.qq.com";oauth_openid|s:28:"ozJkmt28vASmJko3t61qFDLP8xj8";oauth_acid|s:1:"1";openid|s:28:"ozJkmt28vASmJko3t61qFDLP8xj8";uid|s:1:"3";', 1478062420),
('0465e5c8155a9e76c11e89538550e748', 1, '183.240.20.46', 'acid|s:1:"1";uniacid|i:1;token|a:3:{s:4:"I0XX";i:1478059103;s:4:"sZoC";i:1478059103;s:4:"MTD4";i:1478059108;}', 1478062708),
('8f3ecabfbae4f01b99dfdd699fb7f458', 1, '117.185.27.114', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"iY4j";i:1478059110;s:4:"GD4Z";i:1478059110;}', 1478062710),
('f54319589bb2b5927aa8c9011f2fec10', 1, '101.226.85.67', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"C2Vl";i:1478060225;}', 1478063825),
('b840957a2fc739ab2ddd62033e5d4e2a', 1, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', 'openid|s:28:"ozJkmt9xVNIy_Pjs3JW9OKxFqmoU";', 1478070503),
('18610f3453e7eac6383c43bf0b9f66a4', 1, 'ozJkmt1zFv9V6e1L8CDTdbWdW_fg', 'openid|s:28:"ozJkmt1zFv9V6e1L8CDTdbWdW_fg";', 1478091836),
('2eeb3d9242ac51da58941f4f8979c253', 1, 'ozJkmt_rs3FYKF1GGKc-4DcLxpQk', 'openid|s:28:"ozJkmt_rs3FYKF1GGKc-4DcLxpQk";', 1478098141),
('9359d2715f0fb80c2216f926161a57e7', 0, '180.163.2.118', 'acid|N;uniacid|i:0;token|a:1:{s:4:"wK3r";i:1478141389;}', 1478144989),
('f19fd4e9e3422a272c220f17168bf2a3', 0, '180.153.201.79', 'acid|N;uniacid|i:0;token|a:1:{s:4:"Owj0";i:1478141391;}', 1478144991),
('0eea9f7b2271758751af9c1c022e4809', 0, '101.226.33.206', 'acid|N;uniacid|i:0;token|a:1:{s:4:"VOe9";i:1478141391;}', 1478144991),
('d5b47eca9917d76171705fffd57d84c4', 2, '1.180.237.251', 'acid|N;uniacid|i:2;token|a:1:{s:4:"L4rW";i:1478173489;}', 1478177089),
('e4b9d886185e48998a1e97534b023311', 2, '101.226.89.116', 'acid|N;uniacid|i:2;token|a:1:{s:4:"y35L";i:1478173508;}', 1478177108),
('54204ce6cc72076904f4459a8a3b93dd', 2, '111.72.45.174', 'acid|N;uniacid|i:2;token|a:3:{s:4:"g30t";i:1478236320;s:4:"mB0M";i:1478236338;s:4:"AwLn";i:1478236364;}', 1478239964),
('2e28ddac59b6d11b1211f52d785ca2d6', 2, '180.153.206.17', 'acid|N;uniacid|i:2;token|a:1:{s:4:"m6C1";i:1478236337;}', 1478239937),
('93452423dc7218aa0facec66da2e4b0e', 2, '101.226.66.179', 'acid|N;uniacid|i:2;token|a:1:{s:4:"C0W0";i:1478236354;}', 1478239954),
('3f0dfc97767f4637cc726586dbbdc1b7', 2, '101.226.33.224', 'acid|N;uniacid|i:2;token|a:1:{s:4:"UTb9";i:1478236379;}', 1478239979),
('69a06cf7cc02aae42566fe7e0e3d3784', 1, 'ozJkmt6kTYYprJFWGBjw_D3dFEb4', 'openid|s:28:"ozJkmt6kTYYprJFWGBjw_D3dFEb4";', 1478252913),
('6646ffd57af9a04f5ca6e1aa28458eef', 0, '117.177.43.160', 'acid|N;uniacid|i:0;token|a:1:{s:4:"YQWw";i:1478249315;}', 1478252915),
('65f1c6bed47f8fb05c397bb96fc298bd', 0, '180.153.81.212', 'acid|N;uniacid|i:0;token|a:1:{s:4:"bEs7";i:1478249331;}', 1478252931),
('a4db2a7b0d1b22ff86aa5f0f82081376', 1, 'ozJkmt5PuG4UrEDWNl1INZk6VS94', 'openid|s:28:"ozJkmt5PuG4UrEDWNl1INZk6VS94";', 1478269121),
('1732d8ce43b73262a3007a918150f103', 0, '117.136.24.170', 'acid|N;uniacid|i:0;token|a:1:{s:4:"K0Zq";i:1478265532;}', 1478269132),
('db745f30c9d2e3a7a7ea139e788bd375', 1, '202.100.206.196', 'acid|s:1:"1";uniacid|i:1;token|a:5:{s:4:"Nadw";i:1478267003;s:4:"pmPM";i:1478267004;s:4:"C1Ge";i:1478267006;s:4:"Mk7j";i:1478267008;s:4:"FZ3G";i:1478267009;}dest_url|s:124:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dmc%26a%3Dhome%26u%3D1%26from%3Dsinglemessage%26isappinstalled%3D0";oauth_openid|s:28:"ozJkmt4EVRLFlD56N48B8gfNyaLw";oauth_acid|s:1:"1";openid|s:28:"ozJkmt4EVRLFlD56N48B8gfNyaLw";uid|s:1:"1";', 1478270609),
('975d6652c587ab4d30f94be6761168f6', 1, '140.207.185.107', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"zKfI";i:1478267013;}', 1478270613),
('25bceca2373f63562d162623094a784c', 1, '101.226.65.104', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"QPf4";i:1478267020;s:4:"cLp3";i:1478267020;}', 1478270620),
('f45dcbd03b16cfefa8f8f19ba15b8a29', 1, '112.96.100.61', 'acid|s:1:"1";uniacid|i:1;token|a:3:{s:4:"KL44";i:1478277954;s:4:"WoMa";i:1478277956;s:4:"KrRN";i:1478277958;}dest_url|s:83:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dhome%26a%3Dpage%26id%3D3";oauth_openid|s:28:"ozJkmt4EVRLFlD56N48B8gfNyaLw";oauth_acid|s:1:"1";openid|s:28:"ozJkmt4EVRLFlD56N48B8gfNyaLw";uid|s:1:"1";', 1478281558),
('d2a05b1ea51b084128567badd6110f7b', 1, '101.226.33.206', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"bXtN";i:1478277967;}', 1478281567),
('09ee9591b63431e4de40088faa9098f2', 1, '101.226.33.224', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"c7P2";i:1478277968;}', 1478281568),
('c0ca5f3c69ef2c1d3ce5a3023e7aab49', 1, '101.226.64.177', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"X9P9";i:1478277971;}', 1478281571),
('d35019c62cdc5f2b6566c0ed26fea9b9', 1, 'ozJkmt4k3soznKFRnWIaOgxE0nKU', 'openid|s:28:"ozJkmt4k3soznKFRnWIaOgxE0nKU";', 1478281737),
('a52f4471ff628a9585f82775cfdf0785', 0, '117.136.92.116', 'acid|N;uniacid|i:0;token|a:1:{s:4:"nSI4";i:1478278140;}', 1478281740),
('3fb9250f44f9923a8f60d7a64c5d4afc', 0, '180.153.214.152', 'acid|N;uniacid|i:0;token|a:1:{s:4:"Wr68";i:1478278155;}', 1478281755),
('b5cfc68c9e10f31d9bb2441015bcdab9', 1, 'ozJkmt7HH4qS2nGdhmcQgnoTZzJU', 'openid|s:28:"ozJkmt7HH4qS2nGdhmcQgnoTZzJU";', 1478371963),
('8a4457072fab9ea5d545d65bc0092527', 2, '222.125.113.235', 'acid|N;uniacid|i:2;token|a:3:{s:4:"eB4Y";i:1478400069;s:4:"PYNL";i:1478400074;s:4:"cE00";i:1478400081;}', 1478403681),
('c32a3a214fe8d8c5e52d502317b4b64d', 2, '180.153.214.152', 'acid|N;uniacid|i:2;token|a:1:{s:4:"iBnL";i:1478400087;}', 1478403687),
('74132b33dcd21f461d3c9187e08bc877', 2, '180.153.201.28', 'acid|N;uniacid|i:2;token|a:1:{s:4:"Urq2";i:1478400098;}', 1478403698),
('be40e3a974a6aa0aa42b692c3bd713af', 1, 'ozJkmt9Ie_WGsdv4QKDnC5QYhzwA', 'openid|s:28:"ozJkmt9Ie_WGsdv4QKDnC5QYhzwA";', 1478409968),
('34b2d440c34ac9e60725b504a83e5d2f', 0, '220.200.11.61', 'acid|N;uniacid|i:0;token|a:2:{s:4:"fVEW";i:1478406345;s:4:"BY33";i:1478406368;}', 1478409968),
('350cfde2d3ecee56045346d6c8123f33', 0, '61.151.226.189', 'acid|N;uniacid|i:0;token|a:1:{s:4:"vKki";i:1478406377;}', 1478409977),
('c3728b0d7d91b51eaf3791e4a3ce3e0b', 1, 'ozJkmt5kSjhPJXHFiNmcty8JM4U4', 'openid|s:28:"ozJkmt5kSjhPJXHFiNmcty8JM4U4";', 1478416378),
('82297446718ab9f906a43a56dca77bfc', 0, '117.177.199.143', 'acid|N;uniacid|i:0;token|a:5:{s:4:"SF2t";i:1478412718;s:4:"x17H";i:1478412735;s:4:"h7ui";i:1478412745;s:4:"ARTn";i:1478412771;s:4:"u7nB";i:1478412779;}', 1478416379),
('b81aac611074c3b364b78dc7d1274148', 0, '101.226.66.178', 'acid|N;uniacid|i:0;token|a:1:{s:4:"oudx";i:1478412727;}', 1478416327),
('51888b2c6dcfa0860cbbf11b7bd3c814', 0, '180.153.160.24', 'acid|N;uniacid|i:0;token|a:1:{s:4:"aFkS";i:1478412795;}', 1478416395),
('3c8308e44fb3fe309d7b993f8869c370', 2, '119.147.207.158', 'acid|N;uniacid|i:2;token|a:1:{s:4:"uc33";i:1478416165;}', 1478419765),
('a2e81dcbc8f2f95153cb206163dfea90', 2, '119.147.207.158', 'acid|N;uniacid|i:2;token|a:1:{s:4:"BZ0o";i:1478416165;}', 1478419765),
('16e05fc743dc830e6b67280f50ef8153', 2, '119.147.207.158', 'acid|N;uniacid|i:2;token|a:1:{s:4:"ai1y";i:1478416165;}', 1478419765),
('fd5c195a7a2977cdca30cf8fddf838d2', 2, '119.147.207.158', 'acid|N;uniacid|i:2;token|a:1:{s:4:"l8IQ";i:1478416165;}', 1478419765),
('e9907e056f96a1f3306f00c0513aba46', 1, 'ozJkmt3TT-nyCQu1RxFSc68TTqqA', 'openid|s:28:"ozJkmt3TT-nyCQu1RxFSc68TTqqA";', 1478420247),
('b72b6fcd95d227e1998f964dce3778bb', 0, '202.100.206.196', 'acid|N;uniacid|i:0;token|a:1:{s:4:"v752";i:1478486832;}', 1478490432),
('62a006ba7fca15be0fc28dee9d5c773a', 0, '61.151.226.202', 'acid|N;uniacid|i:0;token|a:1:{s:4:"q8Av";i:1478435488;}', 1478439088),
('5de82da0ce7f55df727d44a205e6621f', 1, 'ozJkmt1SIpGw51EDfUKwNidanG_0', 'openid|s:28:"ozJkmt1SIpGw51EDfUKwNidanG_0";', 1478454615),
('bc2035eec7eb1b53819af55af1331c4f', 1, 'ozJkmt9mBwDs2IbRyPfqPRFInj0Q', 'openid|s:28:"ozJkmt9mBwDs2IbRyPfqPRFInj0Q";', 1478481488),
('da405ed3d130483e04b76013b9285f19', 0, '118.250.112.12', 'acid|N;uniacid|i:0;token|a:1:{s:4:"Qh9h";i:1478477893;}', 1478481493),
('072bd10e026a219993c2a00e218fe80a', 1, 'ozJkmt5JINNJ0kVphaYjEGfhxajI', 'openid|s:28:"ozJkmt5JINNJ0kVphaYjEGfhxajI";', 1478485048),
('06767e7e14af0aff0c5f1c74c7090486', 0, '140.255.78.243', 'acid|N;uniacid|i:0;token|a:3:{s:4:"kyzz";i:1478481411;s:4:"knmC";i:1478481435;s:4:"BIGv";i:1478481449;}', 1478485049),
('0fe706cc8c423db6f919f95bfc657284', 1, 'ozJkmt9eiGVbDfbF2lU9Kfx2Z-4g', 'openid|s:28:"ozJkmt9eiGVbDfbF2lU9Kfx2Z-4g";', 1478501837),
('4f040fa648f5c3ca4a68ca57147827fc', 0, '112.86.118.245', 'acid|N;uniacid|i:0;token|a:3:{s:4:"k2FH";i:1478498206;s:4:"Rg3V";i:1478498231;s:4:"V0nR";i:1478498238;}', 1478501838),
('de308f6aa946543d9fabf7e400be32c3', 0, '101.226.33.226', 'acid|N;uniacid|i:0;token|a:1:{s:4:"l9u2";i:1478498223;}', 1478501823),
('42e97602f6ad10129080a1ce3d81efa4', 1, 'ozJkmt3F4OfFyMBm8YIo_XpodmSA', 'openid|s:28:"ozJkmt3F4OfFyMBm8YIo_XpodmSA";', 1478505753),
('a3cbee7743ddead8651fa5787199b11d', 0, '223.104.6.8', 'acid|N;uniacid|i:0;token|a:3:{s:4:"eTyd";i:1478502122;s:4:"W7v6";i:1478502151;s:4:"yfaF";i:1478502153;}', 1478505753),
('af61b35a31fd4ab0afb077afae0a339a', 0, '101.226.33.200', 'acid|N;uniacid|i:0;token|a:1:{s:4:"y7wK";i:1478502171;}', 1478505771),
('dbecd73d08749c9882c2686e6d75f18a', 1, 'ozJkmt8LYT47xA9IPEGvWSGuDHVk', 'openid|s:28:"ozJkmt8LYT47xA9IPEGvWSGuDHVk";', 1478528269),
('0b9a14265e1120706b41dc56c6e39941', 0, '60.180.149.120', 'acid|N;uniacid|i:0;token|a:1:{s:4:"cwQz";i:1478524670;}', 1478528270),
('770ed53e7621dd07e8d01a5a727c53b5', 1, 'ozJkmt4Q-NeLELYkCz0-05Wxr4qQ', 'openid|s:28:"ozJkmt4Q-NeLELYkCz0-05Wxr4qQ";', 1478699446),
('6bab4cbf8d3cb582668da46340e82797', 1, 'ozJkmt3y8ohmvmZE0Y5H-lN2PoTY', 'openid|s:28:"ozJkmt3y8ohmvmZE0Y5H-lN2PoTY";', 1478604930),
('21774214363c71c32471d0c795b93cfe', 2, '180.153.205.253', 'acid|N;uniacid|i:2;token|a:1:{s:4:"q62o";i:1478670420;}', 1478674020),
('7e081b5057a9f06c0e65a28579a2626d', 1, '58.38.1.37', 'acid|s:1:"1";uniacid|i:1;token|a:3:{s:4:"u4QS";i:1478694181;s:4:"gcKu";i:1478694182;s:4:"mCQH";i:1478694184;}dest_url|s:75:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D35";oauth_openid|s:28:"ozJkmt5Tnz1S1oTnYDg5dfFAyE1Y";oauth_acid|s:1:"1";openid|s:28:"ozJkmt5Tnz1S1oTnYDg5dfFAyE1Y";', 1478697784),
('d848299720d095532aabd341de634cc2', 1, '61.151.226.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"X2K2";i:1478694196;}', 1478697796),
('bb85359fb4cd3e3cc2099e07e1449588', 1, '101.226.102.97', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"mZne";i:1478694201;}', 1478697801),
('e4fd9c053f6356c1970df21ad80386fa', 0, '211.142.241.88', 'acid|N;uniacid|i:0;token|a:2:{s:4:"m45X";i:1478695746;s:4:"enFf";i:1478695809;}', 1478699409),
('f9fa1b2a00fea4f85147d81c2bda5c09', 0, '180.153.206.17', 'acid|N;uniacid|i:0;token|a:1:{s:4:"iRG3";i:1478695765;}', 1478699365),
('e552a64a648a017b1487360cb72c0fd6', 0, '101.226.51.228', 'acid|N;uniacid|i:0;token|a:1:{s:4:"A1E4";i:1478695825;}', 1478699425),
('614ef2b25634b998865c05c397a6a4db', 1, 'ozJkmtxFX1QjoyCCTL5znFmj4ti8', 'openid|s:28:"ozJkmtxFX1QjoyCCTL5znFmj4ti8";', 1478703393),
('01275a5a284584520668a8623fe6d5f2', 1, 'ozJkmty4PPYjrOUZ2O-TQNTViycI', 'openid|s:28:"ozJkmty4PPYjrOUZ2O-TQNTViycI";', 1478779053),
('12c8991bcb5e538bff21b1bc07ff8c40', 0, '117.136.8.231', 'acid|N;uniacid|i:0;token|a:2:{s:4:"boDm";i:1478775439;s:4:"uZ5I";i:1478775454;}', 1478779054),
('384e3033d7a9b59037c6169c7ab27a5b', 0, '101.226.65.105', 'acid|N;uniacid|i:0;token|a:1:{s:4:"e6DD";i:1478775457;}', 1478779057),
('fb188eb8dd5a256577ef9955d2346c23', 0, '101.226.66.174', 'acid|N;uniacid|i:0;token|a:1:{s:4:"V4wY";i:1478775472;}', 1478779072),
('058d788f8fb4c0b5d45c5f92864b3a56', 1, 'ozJkmt0xYzh2USIJ2cZZpnKQFhO4', 'openid|s:28:"ozJkmt0xYzh2USIJ2cZZpnKQFhO4";', 1478847365),
('0a01530e33609b40dbbc4343eb0a8e3a', 2, '180.163.2.116', 'acid|N;uniacid|i:2;token|a:1:{s:4:"bPcK";i:1478843937;}', 1478847537),
('d1f84394ee39374644b4eb61aab5a3d3', 1, 'ozJkmt34SJ9mgESUR1eNVJhAl_5I', 'openid|s:28:"ozJkmt34SJ9mgESUR1eNVJhAl_5I";', 1478962889),
('d054883c5a8bdd07af296adbd819a2a8', 0, '113.135.126.45', 'acid|N;uniacid|i:0;token|a:2:{s:4:"ZsHP";i:1478865652;s:4:"yXPF";i:1478865659;}', 1478869259),
('a78aaf588e58e3caf4f07ce3c289c22a', 0, '101.226.33.227', 'acid|N;uniacid|i:0;token|a:1:{s:4:"L6xl";i:1478865673;}', 1478869273),
('6965b0a62ca035c2f1720db743b11843', 0, '111.206.36.19', 'acid|N;uniacid|i:0;token|a:1:{s:4:"RU2B";i:1478865881;}', 1478869481),
('8274e43a88a69311be415d6a9bd2c7a1', 1, 'ozJkmt7-h4UdCpcYuFebLY1bWDoA', 'openid|s:28:"ozJkmt7-h4UdCpcYuFebLY1bWDoA";', 1478948074),
('cf9de4cb3aef90da2b08ce7a36f0f104', 1, 'ozJkmtxrT4Du7WKCqSxmm7WyEQJI', 'openid|s:28:"ozJkmtxrT4Du7WKCqSxmm7WyEQJI";', 1478879655),
('731a882ea09fab32e91aa82ebcf2fee7', 0, '60.223.112.20', 'acid|N;uniacid|i:0;token|a:1:{s:4:"itMS";i:1478876057;}', 1478879657),
('569f092e3fb0e6465e6444de189aec2a', 0, '101.226.61.206', 'acid|N;uniacid|i:0;token|a:1:{s:4:"gL3x";i:1478876075;}', 1478879675),
('ca4c45adcc28ea86bc9abb60c00ad58b', 0, '202.100.206.195', 'acid|N;uniacid|i:0;token|a:1:{s:4:"ZoV3";i:1478881670;}', 1478885270),
('b7326d0d9a03865e27e4b585ffe0cdce', 2, '223.104.63.40', 'acid|N;uniacid|i:2;token|a:1:{s:4:"h2WT";i:1478881696;}', 1478885296),
('e62f9d2f2a9956ee4bc33c47face2fa5', 2, '180.153.206.16', 'acid|N;uniacid|i:2;token|a:1:{s:4:"xLPT";i:1478881712;}', 1478885312),
('9f5d9b83568dd1ab8617fc6f8b4912b2', 1, 'ozJkmt6H4BOlCnatwfU43jgfnXuM', 'openid|s:28:"ozJkmt6H4BOlCnatwfU43jgfnXuM";', 1481642353),
('4bb692e2c46de7a47235ce252ae0b8f7', 0, '113.109.73.69', 'acid|N;uniacid|i:0;token|a:1:{s:4:"XLJz";i:1478889895;}', 1478893495),
('4efdf5bb21a1db862c82ef916f203d9a', 0, '101.226.66.173', 'acid|N;uniacid|i:0;token|a:1:{s:4:"HtUr";i:1478885101;}', 1478888701),
('ffe184967d36f4323608fb64e96f8ea1', 0, '36.5.137.183', 'acid|N;uniacid|i:0;token|a:1:{s:4:"B99B";i:1478944474;}', 1478948074),
('4d87f636b994184a04022c94ceba78ec', 0, '117.185.27.113', 'acid|N;uniacid|i:0;token|a:1:{s:4:"yF7j";i:1478944484;}', 1478948084),
('769f6afe2d641244314d8761f0ceb6f3', 0, '1.83.236.148', 'acid|N;uniacid|i:0;token|a:2:{s:4:"tfvf";i:1478959282;s:4:"eBBb";i:1478959290;}', 1478962890),
('46aa97aa3ada65e8073cfd88b0ff3127', 1, 'ozJkmt2LKzV0vuYBRR8keJyIrH10', 'openid|s:28:"ozJkmt2LKzV0vuYBRR8keJyIrH10";', 1479030876),
('0fcb20d66688d3e1bf048509c23d6e23', 0, '1.194.68.99', 'acid|N;uniacid|i:0;token|a:4:{s:4:"nS2B";i:1479027248;s:4:"Z1Hd";i:1479027260;s:4:"PjS6";i:1479027264;s:4:"IllM";i:1479027269;}', 1479030869),
('31d3a6c6d98fec04fa7872ba0bf5bc19', 0, '101.226.89.122', 'acid|N;uniacid|i:0;token|a:1:{s:4:"ZK9D";i:1479027279;}', 1479030879),
('0b5519897c972e6d3cb8be8df09c84f9', 0, '61.151.226.189', 'acid|N;uniacid|i:0;token|a:1:{s:4:"UWiZ";i:1479027279;}', 1479030879),
('e457b85f888489c12b17754af1f9719b', 0, '101.226.61.206', 'acid|N;uniacid|i:0;token|a:1:{s:4:"M5l7";i:1479027286;}', 1479030886),
('fcb1e82ab3666403932e845353071612', 0, '112.96.173.77', 'acid|N;uniacid|i:0;token|a:3:{s:4:"u344";i:1479042618;s:4:"YxXT";i:1479042625;s:4:"mg90";i:1479042628;}', 1479046228),
('712ec8372ccb082fb40e962d4dcd4aee', 0, '180.153.205.252', 'acid|N;uniacid|i:0;token|a:1:{s:4:"Umse";i:1479042641;}', 1479046241),
('7f174817e2b7201438b4202ed9733490', 0, '101.226.99.197', 'acid|N;uniacid|i:0;token|a:1:{s:4:"EkiR";i:1479042645;}', 1479046245),
('244d6fa7fa88d529e9a1e157ecc09b38', 1, '101.226.103.61', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hYh3";i:1481477596;}', 1481481196),
('7f2c038d7e20f87ba73096faa0b65748', 1, '101.226.103.61', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"qO85";i:1481477597;}', 1481481197),
('83f207c15125a148e23a44d47bad0d39', 1, '101.226.233.148', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"J36I";i:1481477598;}', 1481488398),
('bcb5122a6e74a78c7fbdaf4cd98575c8', 1, '101.226.103.61', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"t1K3";i:1481477600;}', 1481488400),
('6c4b7a2bd4ba37072158deabaec56710', 1, '101.226.103.61', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"NhTL";i:1481477600;}', 1481481200),
('deecc03b217e5eead89f830595c92140', 1, '101.226.103.60', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"J5oE";i:1481564049;}', 1481567649),
('94f882396cb58b6f3342c43fcf36b59a', 1, '101.226.103.61', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"iivA";i:1481564049;}', 1481567649),
('e495d75d454e136b49dd2d27a165727e', 1, '101.226.103.61', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"AjjV";i:1481564050;}', 1481574850),
('5c378f52b9067584fb492ea625b52e2d', 1, '101.226.233.158', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"el25";i:1481564055;}', 1481574855),
('cb533e7cb8999def9a9d3b885bff9373', 1, '101.226.233.150', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Bkhk";i:1481564055;}', 1481567655),
('980dd7d9bc0dbbaaa90e0547a77dc61c', 1, '116.21.80.31', 'acid|s:1:"1";uniacid|i:1;token|a:6:{s:4:"CiS3";i:1481618289;s:4:"Ud1W";i:1481618294;s:4:"Woqc";i:1481618301;s:4:"kp5C";i:1481618304;s:4:"UmUH";i:1481618308;s:4:"KYAt";i:1481618310;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dindex%26m%3Djy_ppp";oauth_openid|s:28:"ozJkmt4EVRLFlD56N48B8gfNyaLw";oauth_acid|s:1:"1";openid|s:28:"ozJkmt4EVRLFlD56N48B8gfNyaLw";uid|s:1:"1";userinfo|s:632:"YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210NEVWUkxGbEQ1Nk40OEI4Z2ZOeWFMdyI7czo4OiJuaWNrbmFtZSI7czo2OiLlj7bmnqsiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuW5v+W3niI7czo4OiJwcm92aW5jZSI7czo2OiLlub/kuJwiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE0ODE1ODYyMDY7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzA6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vVTZTRlJFOVZ5cEZkZHNTV2liT2RSZ1RzamZYYllwcFBaUkMwQU1BdDA0Z2lhNm53NEJXaWNSNUxtWGliSjN6OWRkRXdRaWNlY0VzNDB4UXRJV3hOMlB2aWFHY0NJdmJmVnJyQ3hkLzAiO30=";jy_openid|s:28:"ozJkmt4EVRLFlD56N48B8gfNyaLw";address|i:1;address_time|i:1481623511;moni_city|s:9:"广州市";moni_province|s:9:"广东省";', 1481978310),
('43cbd1a02a3946e62f82d06e1a273383', 1, '101.226.33.238', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ptx3";i:1481587538;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dindex%26m%3Djy_ppp";', 1481591138),
('0a3be3317b24da75ed865a61d324ac55', 1, '101.226.66.173', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"H2qv";i:1481586961;}dest_url|s:106:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26op%3Dindex%26do%3Duserinfo%26m%3Djy_ppp";', 1481590561),
('dabf4f5ffa03dc1080aeb63601e7cbb3', 1, '180.153.211.172', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"KAtK";i:1481586965;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dindex%26m%3Djy_ppp";', 1481590565),
('96865c808b6966bd8957d3aaeec21897', 1, '117.185.27.114', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"l1Wd";i:1481587886;}dest_url|s:105:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26foo%3Dindex%26do%3Dzhaohu%26m%3Djy_ppp";', 1481591486),
('2b573b1cfea954adbc767018460ca128', 1, '180.153.206.17', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"IClc";i:1481587892;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dindex%26m%3Djy_ppp";', 1481591492),
('ac608881f21daf2b75e24c4f52535857', 1, '112.65.193.14', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"cfJF";i:1481587893;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dgeren%26m%3Djy_ppp";', 1481591493),
('7a010e82015f54280220d45669911464', 1, '101.226.125.100', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"qw7C";i:1481587897;}dest_url|s:87:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dcz%26m%3Djy_ppp";', 1481591497),
('c7d1cfe23749d05ba4567056fe7fcf50', 1, '180.153.201.66', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"KVZN";i:1481587904;}dest_url|s:91:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dbaoyue%26m%3Djy_ppp";', 1481591504),
('77fdf3566f1c39542d65c837c4c0efd2', 1, '180.153.211.190', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"kFAb";i:1481587910;}dest_url|s:89:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmail%26m%3Djy_ppp";', 1481591510),
('3aca32ee5d703b3e8014cca5d3e293a0', 1, '101.226.89.121', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"i4F9";i:1481587916;}dest_url|s:89:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dluck%26m%3Djy_ppp";', 1481591516),
('f63ae4eef2038e714496e7f2b0b0bf26', 1, '61.151.218.118', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"rz19";i:1481592911;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D62%26do%3Dchat%26m%3Djy_ppp";', 1481596511),
('1504dcab7e547589c44cbbd0913f751e', 1, '180.153.206.17', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"XSPP";i:1481588148;}dest_url|s:105:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26foo%3Dgeren%26do%3Dzhaohu%26m%3Djy_ppp";', 1481591748),
('48cddc97425dec5f713f4162ebff458d', 1, '61.151.226.202', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"porw";i:1481588200;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D77%26do%3Ddetail%26m%3Djy_ppp";', 1481591800),
('33f807f5d78d80620b610d5ebdb11f8e', 1, '180.153.205.252', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Z94E";i:1481588200;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D77%26do%3Ddetail%26m%3Djy_ppp";', 1481591800),
('156eb81d0d6b5e25e791e21876e93077', 1, '61.151.217.45', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"U9Kz";i:1481588200;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D77%26do%3Ddetail%26m%3Djy_ppp";', 1481591800),
('0ee6d9749ed218ac9b9f5703fa02f160', 1, '180.163.2.118', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"L2Ai";i:1481588209;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D77%26do%3Ddetail%26m%3Djy_ppp";', 1481591809),
('87f553939dd7f01aa65c04ebf5628b0e', 1, '180.153.206.18', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"U2zA";i:1481588360;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D69%26do%3Dchat%26m%3Djy_ppp";', 1481591960),
('46498169604eac09396688b4076283a4', 1, '101.226.33.201', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"U1S2";i:1481588364;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D70%26do%3Dchat%26m%3Djy_ppp";', 1481591964),
('aee94e5e0160082774205fcdd12e6643', 1, '101.226.33.225', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"KCEE";i:1481589213;}dest_url|s:98:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D7%26do%3Dchat%26m%3Djy_ppp";', 1481592813),
('d98b3f5986e67eff48765deb1a6792fe', 1, '61.151.226.202', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"i6sS";i:1481589214;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D23%26do%3Dchat%26m%3Djy_ppp";', 1481592814),
('2c64bed5659a4acc15f1ffa45dff4087', 1, '101.226.33.203', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Ms4R";i:1481589217;}dest_url|s:98:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D9%26do%3Dchat%26m%3Djy_ppp";', 1481592817),
('ab9f8252377ce161ed12c6899bc0d9b3', 1, '123.207.36.151', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"zM22";i:1481589224;}', 1481600024),
('d301b88424304190ab237752399c7803', 1, '101.226.89.120', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"WxM6";i:1481589225;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D33%26do%3Dchat%26m%3Djy_ppp";', 1481592825),
('b7c8c85fe622d7801acf6c412032187d', 1, '101.226.99.197', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"CKgY";i:1481590002;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D83%26do%3Dchat%26m%3Djy_ppp";', 1481593602),
('1d29227ca4876cf52ae23fea712d7dec', 1, '180.153.212.13', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"VQcj";i:1481590051;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D74%26do%3Dchat%26m%3Djy_ppp";', 1481593651),
('df3b39e7799f0eb2fc67ca42b345f892', 1, '140.207.185.109', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"DcHF";i:1481590087;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D79%26do%3Dchat%26m%3Djy_ppp";', 1481593687),
('819dc2888b39abb27ac837e17ae90492', 1, '180.153.205.254', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"O4me";i:1481590431;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D56%26do%3Dchat%26m%3Djy_ppp";', 1481594031),
('84a3bf63f64432f6548ebbae9743c0a3', 1, 'ozJkmt1L_xp_V4NTo0W6qdlQwAkU', 'openid|s:28:"ozJkmt1L_xp_V4NTo0W6qdlQwAkU";', 1481594210),
('75326bc106ed174ad6efcb06178620c9', 1, '116.21.80.31', 'acid|s:1:"1";uniacid|i:1;token|a:6:{s:4:"BxqX";i:1481618029;s:4:"dPvV";i:1481618035;s:4:"U7x7";i:1481618037;s:4:"WtPH";i:1481618041;s:4:"H788";i:1481618043;s:4:"id4D";i:1481618049;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dindex%26m%3Djy_ppp";oauth_openid|s:28:"ozJkmt1L_xp_V4NTo0W6qdlQwAkU";oauth_acid|s:1:"1";openid|s:28:"ozJkmt1L_xp_V4NTo0W6qdlQwAkU";uid|s:1:"2";userinfo|s:664:"YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210MUxfeHBfVjROVG8wVzZxZGxRd0FrVSI7czo4OiJuaWNrbmFtZSI7czoxODoi5YWw6Imy5ae/5oGL5Y6C5ZWGIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLlub/lt54iO3M6ODoicHJvdmluY2UiO3M6Njoi5bm/5LicIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNDcyMDEzNDcwO3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTQwOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1EzYXVIZ3p3ek03QUJpY0VJNFkwT0RseVZzMDBJTDlwVTQ2Nzd3VVJOWW5jRldmM1RmdmJQSTJpYnJ3QWpIWHh6Y3VFaWN2QmliWWVKNzJmbWVzSTFBUldpYU0zNEdWUlBiQTI1T05mOFRvc01KNE0vMCI7fQ==";jy_openid|s:28:"ozJkmt1L_xp_V4NTo0W6qdlQwAkU";moni_city|s:9:"广州市";moni_province|s:9:"广东省";address|i:1;address_time|i:1481631990;', 1481978049),
('5a44071c220c2ab7b7765e4f3c8791db', 1, '101.226.33.228', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"k6U3";i:1481590625;}', 1481594225),
('321332837736da5f5657fd9a4a46e52d', 1, '180.153.201.28', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Aplb";i:1481590627;}dest_url|s:106:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26op%3Dindex%26do%3Duserinfo%26m%3Djy_ppp";', 1481594227),
('7e80aa716c848388d2dfdba50ab6c60a', 1, '101.226.33.219', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"vuuX";i:1481590669;}dest_url|s:87:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dcz%26m%3Djy_ppp";', 1481594269),
('85ea37f6f67b12f3021e65232861f18f', 1, '221.235.210.8', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"V77J";i:1481592935;}', 1481603735),
('895e9694413d979abddbf0b806a8e01f', 1, 'ozJkmtzgkhi8NlDtvO4fFAfIsgRU', 'openid|s:28:"ozJkmtzgkhi8NlDtvO4fFAfIsgRU";', 1481600922),
('faedf5678399c5df18ccba8dfed9e36e', 1, '36.5.199.195', 'acid|s:1:"1";uniacid|i:1;token|a:6:{s:4:"miH2";i:1481597292;s:4:"I3P7";i:1481597294;s:4:"nn22";i:1481597299;s:4:"mUfQ";i:1481597300;s:4:"BLv1";i:1481597302;s:4:"u97D";i:1481597308;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dindex%26m%3Djy_ppp";oauth_openid|s:28:"ozJkmtzgkhi8NlDtvO4fFAfIsgRU";oauth_acid|s:1:"1";openid|s:28:"ozJkmtzgkhi8NlDtvO4fFAfIsgRU";uid|s:2:"14";userinfo|s:624:"YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210emdraGk4TmxEdHZPNGZGQWZJc2dSVSI7czo4OiJuaWNrbmFtZSI7czoxMToi4pyoQWRtaW7inKgiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWQiOiCpSI7czo4OiJwcm92aW5jZSI7czo2OiLlronlvr0iO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE0ODE1OTcwNzI7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMTg6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vYWpOVmRxSFpMTER1NmlhM3ZSbEtyRmgwazR4M1paTm8zVnJxOVVrc2liN2JBbDM1OGhzMGhRSnB0T3RpY0FJZnkxWUpBVGs2Wk9MRVNRcFpkTlJkT3ppYkRRLzAiO30=";jy_openid|s:28:"ozJkmtzgkhi8NlDtvO4fFAfIsgRU";moni_city|s:9:"合肥市";moni_province|s:9:"安徽省";address|i:1;address_time|i:1481611632;', 1481957308),
('94e6bb6508b14d7b23843216750d6721', 1, '180.153.81.212', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"l6NM";i:1481597294;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D52%26do%3Ddetail%26m%3Djy_ppp";', 1481600894),
('b6f8c7cee95613188d3bffd2fcfa07ba', 1, '101.226.89.119', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Ti2V";i:1481597317;}dest_url|s:91:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dbeizhu%26m%3Djy_ppp";', 1481600917),
('f05ae328746de0fefa19fa5d109fd139', 1, '182.135.184.113', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Ee8E";i:1481597186;}', 1481607986),
('b9873148f3dd834aab06016e6c14daeb', 1, 'ozJkmt5WVyGSfs-fmn3S6lTRKa44', 'openid|s:28:"ozJkmt5WVyGSfs-fmn3S6lTRKa44";', 1481623001),
('9004f625a90404d8d47c4a75d29804c0', 1, '119.130.187.105', 'acid|s:1:"1";uniacid|i:1;token|a:6:{s:4:"u7J7";i:1481619597;s:4:"e3c0";i:1481619599;s:4:"U5FS";i:1481619601;s:4:"u2aP";i:1481619602;s:4:"P7oV";i:1481619605;s:4:"vrQ4";i:1481619607;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dindex%26m%3Djy_ppp";oauth_openid|s:28:"ozJkmt5WVyGSfs-fmn3S6lTRKa44";oauth_acid|s:1:"1";openid|s:28:"ozJkmt5WVyGSfs-fmn3S6lTRKa44";uid|s:2:"15";userinfo|s:644:"YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210NVdWeUdTZnMtZm1uM1M2bFRSS2E0NCI7czo4OiJuaWNrbmFtZSI7czoxNDoi5rip5aauYmFieWZhY2UiO3M6Mzoic2V4IjtpOjI7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuW5v+W3niI7czo4OiJwcm92aW5jZSI7czo2OiLlub/kuJwiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE0ODE2MDkwNjE7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMjk6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vVTZTRlJFOVZ5cEdRbXRvN0htVGJiaENWNUVmZHl4V09IdHRSaWJWRndHakFMY1Y5cllKbTl1MWZ1Rk1NaWFpYTFOMEFyU0Y4MGlheEM4SnlZeFhNbGhGVXFYOGljeGdRek5qUTAvMCI7fQ==";jy_openid|s:28:"ozJkmt5WVyGSfs-fmn3S6lTRKa44";moni_city|s:9:"广州市";moni_province|s:9:"广东省";address|i:1;address_time|i:1481624487;', 1481979607),
('3e7039a5024eec9f40bdb37c6c147812', 1, '180.153.206.24', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"oV6e";i:1481610571;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D41%26do%3Dchat%26m%3Djy_ppp";', 1481614171),
('188a3feaa529a12ed691235ddd0ee77e', 1, '180.153.214.199', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"bzCP";i:1481609115;}dest_url|s:98:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D8%26do%3Dchat%26m%3Djy_ppp";', 1481612715),
('26cd2ae8c05dfc18987dd6ba3acd4e35', 1, '101.226.66.177', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hMjS";i:1481609124;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D17%26do%3Dchat%26m%3Djy_ppp";', 1481612724),
('01ecb22e2e1a605290654e18e04b7523', 1, '180.153.205.254', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"IAAY";i:1481609124;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dindex%26m%3Djy_ppp";', 1481612724),
('add108aa4a637fcde69118daf7024fe6', 1, '101.226.33.227', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ev80";i:1481609124;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D14%26do%3Dchat%26m%3Djy_ppp";', 1481612724),
('e4bba0f845b96dcbedf0560a52f7a1eb', 1, '180.153.206.22', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"FQNo";i:1481609473;}dest_url|s:91:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dbaoyue%26m%3Djy_ppp";', 1481613073),
('8d9afd18267b3c824cacf7deab39209d', 1, '101.226.69.246', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"RxQP";i:1481609163;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dgeren%26m%3Djy_ppp";', 1481612763),
('7249d5cdbca2506913ff8fc4e2306e50', 1, '101.226.51.226', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"FZnP";i:1481609170;}dest_url|s:89:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dluck%26m%3Djy_ppp";', 1481612770),
('43feb51097934443f09d76228f4a74f4', 1, '101.226.99.196', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"fGc8";i:1481609174;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D16%26do%3Dchat%26m%3Djy_ppp";', 1481612774),
('85d6bbe783e3d6b7126a018a58fbfafb', 1, '180.153.160.24', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"X09l";i:1481609193;}dest_url|s:91:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dbeizhu%26m%3Djy_ppp";', 1481612793),
('6c505d44ffee0051bc2bd2bc856b7619', 1, '101.226.89.122', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"TXFo";i:1481609196;}dest_url|s:91:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dupload%26m%3Djy_ppp";', 1481612796),
('9170f2e70da2560b9a27a9396af94fab', 1, '180.153.206.23', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"RBH7";i:1481609196;}dest_url|s:91:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dloveme%26m%3Djy_ppp";', 1481612796),
('a460b8c39d8bd21acbcbf4bb5716d86e', 1, '180.153.206.18', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"qPQd";i:1481609205;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D92%26do%3Ddetail%26m%3Djy_ppp";', 1481612805),
('131a644356f70dce27d8367cb1074cc9', 1, '139.199.168.75', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"pQow";i:1481609217;}', 1481620017),
('2aea8bbb03d3f054e55ec783c1780375', 1, '101.226.51.227', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Fb3o";i:1481609220;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D92%26do%3Ddetail%26m%3Djy_ppp";', 1481612820),
('7726b87eed21492022ddf3cb036403ef', 1, '180.153.214.199', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"WpTj";i:1481609220;}dest_url|s:104:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D92%26do%3Duserthumb%26m%3Djy_ppp";', 1481612820),
('058766e1802ae54a2475d796bf4ff137', 1, '101.226.33.221', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"btbJ";i:1481609227;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D90%26do%3Ddetail%26m%3Djy_ppp";', 1481612827),
('0129ee4b170aa6797162b25c572c1275', 1, '180.153.214.190', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"xVNr";i:1481609246;}dest_url|s:91:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Didcard%26m%3Djy_ppp";', 1481612846),
('89569e9fcecf54e8ba52c09656fb8959', 1, '101.226.64.177', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"VELV";i:1481609296;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D91%26do%3Ddetail%26m%3Djy_ppp";', 1481612896),
('1382968257861aaf23bdfccafad799c4', 1, '101.226.33.225', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"b0aU";i:1481609425;}dest_url|s:98:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D0%26do%3Dchat%26m%3Djy_ppp";', 1481613025),
('32d0261912f52cd5639fc67d3a7edc64', 1, '101.226.125.111', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"lXzd";i:1481609427;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26op%3Dnext%26do%3Dchat%26m%3Djy_ppp";', 1481613027),
('c54eba40b880fa7da959a7b429baafb7', 1, '101.226.33.238', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Jk86";i:1481609931;}dest_url|s:92:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Daccount%26m%3Djy_ppp";', 1481613531),
('25ed4edd1e3a954ebb93c1865b97df57', 1, '180.153.205.254', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"z3u2";i:1481609936;}dest_url|s:92:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dsetting%26m%3Djy_ppp";', 1481613536),
('1a701e5926c37e308ebb9a468add4be7', 1, '101.226.66.180', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"jIR4";i:1481609940;}dest_url|s:92:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmianrao%26m%3Djy_ppp";', 1481613540),
('53c63f3a3cc07776b6c07ada9f714278', 1, '180.163.2.119', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"aczG";i:1481609944;}dest_url|s:93:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Drenzheng%26m%3Djy_ppp";', 1481613544),
('5cb863821d0b6238f4ae3e84d67ac4a5', 1, '180.163.2.117', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"fnFs";i:1481609944;}dest_url|s:89:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dhelp%26m%3Djy_ppp";', 1481613544),
('451ef142c42a3b0e787052135bf91d91', 1, '101.226.33.239', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"LkhT";i:1481609947;}dest_url|s:92:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmyblack%26m%3Djy_ppp";', 1481613547),
('5b9fd602bc9d43f31f576761a6ef1060', 1, '101.226.51.228', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"S171";i:1481609959;}dest_url|s:89:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dsafe%26m%3Djy_ppp";', 1481613559),
('393cd3350ab752b811bddb6e043c9b77', 1, '139.199.28.51', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"K4hT";i:1481609972;}', 1481620772),
('602d075f64681d6779d96382b1c41952', 1, '101.226.66.178', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Gh32";i:1481610014;}dest_url|s:89:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Ddesc%26m%3Djy_ppp";', 1481613614),
('9a9e471af3162afc4a65c85da6501ba2', 1, '101.226.66.177', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"G5FG";i:1481610024;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmatch%26m%3Djy_ppp";', 1481613624),
('785fb4d9eabdeb80dff68f14ec5faf4f', 1, '139.201.148.239', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"tx26";i:1481610028;}', 1481620828),
('f10a4c2680a73b3710eeb6fbac631fd7', 1, '101.226.125.111', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"IDet";i:1481610035;}dest_url|s:94:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dtp_notice%26m%3Djy_ppp";', 1481613635),
('3e80dd1038df43958c8882025761be0b', 1, '101.226.33.240', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"sU8G";i:1481610042;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dbasic%26m%3Djy_ppp";', 1481613642),
('470551595ad3b294855b08c4611160a5', 1, '101.226.66.173', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"B06N";i:1481610083;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dzhuce%26m%3Djy_ppp";', 1481613683),
('e3b58b2977bfbc6bd8b6312c9e277407', 1, '180.153.201.66', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"X4QS";i:1481610086;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dlogin%26m%3Djy_ppp";', 1481613686),
('4b663b56b4d2aa89035b711f0b7780b2', 1, '101.226.33.220', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"SdF4";i:1481610090;}dest_url|s:111:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26sex%3D1%26rid%3D0%26do%3Dzhuce2%26m%3Djy_ppp";', 1481613690),
('38c9346e8bbb50c2b328c4f155b8c2ea', 1, '101.226.33.225', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"V69h";i:1481610104;}dest_url|s:105:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26foo%3Dindex%26do%3Dzhaohu%26m%3Djy_ppp";', 1481613704),
('97c3e1a4c39fe55f914f2d765347f9c0', 1, '101.226.89.115', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"M4e0";i:1481610114;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D73%26do%3Dchat%26m%3Djy_ppp";', 1481613714),
('fbe0b82a01a4e1c567aedeac2afca9fc', 1, '180.163.2.88', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"THhV";i:1481610120;}dest_url|s:114:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26op%3Dbaoyue%26do%3Dpay%26m%3Djy_ppp%26fee%3D100";', 1481613720);
INSERT INTO `ims_core_sessions` (`sid`, `uniacid`, `openid`, `data`, `expiretime`) VALUES
('7c61374a9ebc503a9c9489ae56d91445', 1, '101.226.33.208', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"KbJ4";i:1481610128;}dest_url|s:316:"http%3A%2F%2Fwww.sktdi.com%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D1%26auth%3Dfbddfb4a5a2dc6e627ef8f118f6d49399f3d8874%26ps%3DeyJ0aWQiOiI0IiwidW5pb250aWQiOiIyMDE2MTIxMzE0MjE1MTAwMDAxMzAzNTYyODY4IiwidXNlciI6Im96SmttdDVXVnlHU2ZzLWZtbjNTNmxUUkthNDQiLCJmZWUiOiIxMDAuMDAiLCJ0aXRsZSI6IiVFNiU5NCVBRiVFNCVCQiU5OCJ9%26payopenid%3D";', 1481613728),
('574fcd3c4214510e6ee3b2574860c8fc', 1, '117.185.27.114', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"toQP";i:1481610142;}dest_url|s:297:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26%26params%3DeyJ0aWQiOiIxNDgxNjEwMTMxMiIsImZlZSI6IjUwIiwidXNlciI6Im96SmttdDVXVnlHU2ZzLWZtbjNTNmxUUkthNDQiLCJ0aXRsZSI6Ilx1NjUyZlx1NGVkOCIsIm9yZGVyc24iOiJsTTRsakM0YyIsInZpcnR1YWwiOnRydWUsIm1vZHVsZSI6Imp5X3BwcCJ9";', 1481613742),
('97640ad5bded0a529409e71f497c1318', 1, '101.226.66.177', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"xL88";i:1481610144;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D30%26do%3Ddetail%26m%3Djy_ppp";', 1481613744),
('66fca2f5fec80150e035c98901107a0a', 1, '101.226.33.225', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"h4mU";i:1481610151;}dest_url|s:113:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26op%3Dbaoyue%26do%3Dpay%26m%3Djy_ppp%26fee%3D50";', 1481613751),
('3f86fc0571519473b3d2138e6700d980', 1, '101.226.66.180', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hcqq";i:1481610179;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Ddoubi%26m%3Djy_ppp";', 1481613779),
('fa1d960791d98335e9455e0e60d2c87d', 1, '101.226.33.201', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"rAqh";i:1481610182;}dest_url|s:316:"http%3A%2F%2Fwww.sktdi.com%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D1%26auth%3D4c07fa1a3a45ece06b44a2dc3b79c23eff0f3fe0%26ps%3DeyJ0aWQiOiI2IiwidW5pb250aWQiOiIyMDE2MTIxMzE0MjI1MjAwMDAxMzQ0OTU5ODQyIiwidXNlciI6Im96SmttdDVXVnlHU2ZzLWZtbjNTNmxUUkthNDQiLCJmZWUiOiIyMDAuMDAiLCJ0aXRsZSI6IiVFNiU5NCVBRiVFNCVCQiU5OCJ9%26payopenid%3D";', 1481613782),
('9e06952f256a637f605f2d227e614e71', 1, '101.226.69.246', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"zTXy";i:1481610182;}dest_url|s:305:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26%26params%3DeyJ0aWQiOiIxNDgxNjEwMTcyMyIsImZlZSI6IjIwMCIsInVzZXIiOiJvekprbXQ1V1Z5R1Nmcy1mbW4zUzZsVFJLYTQ0IiwidGl0bGUiOiJcdTY1MmZcdTRlZDgiLCJvcmRlcnNuIjoiZ1FibDZCMk8iLCJ2aXJ0dWFsIjp0cnVlLCJtb2R1bGUiOiJqeV9wcHAifQ%3D%3D";', 1481613782),
('166c2dbe1d0ad81f4a6707b52c60ede5', 1, '101.226.33.200', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"mutd";i:1481610190;}dest_url|s:113:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26op%3Ddoubi%26fee%3D200%26do%3Dpay%26m%3Djy_ppp";', 1481613790),
('699bc6c3ca0e2daa2e8f2f9ab1fc2106', 1, '117.94.92.44', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"v24D";i:1481610195;}', 1481620995),
('79220a4836d86be99ac3547f48119086', 1, '101.226.33.226', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"cIil";i:1481610292;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D19%26do%3Dchat%26m%3Djy_ppp";', 1481613892),
('fc7c9e86c84a8cad33a21159875755ff', 1, '180.153.205.253', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"L413";i:1481610330;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D11%26do%3Dchat%26m%3Djy_ppp";', 1481613930),
('32c5ecfa467c4852bb670553c3d7ea93', 1, '101.226.33.219', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"I1no";i:1481610330;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D25%26do%3Ddetail%26m%3Djy_ppp";', 1481613930),
('2b72be68bd7d8e8b4171fd37355711ee', 1, '112.65.193.15', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"xlVF";i:1481611301;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D50%26do%3Ddetail%26m%3Djy_ppp";', 1481614901),
('52be9f04381eb8c3ca7a9d45452438f3', 1, '101.226.65.108', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Tdb9";i:1481610573;}dest_url|s:98:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D8%26do%3Dchat%26m%3Djy_ppp";', 1481614173),
('924f286f2af8226e49fc42ffe9369a62', 1, '180.153.214.200', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"c5TP";i:1481610573;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D87%26do%3Dchat%26m%3Djy_ppp";', 1481614173),
('a2a58e5ee3240ed70fa86f71f618cfd7', 1, '180.153.214.192', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"U1uO";i:1481610599;}dest_url|s:316:"http%3A%2F%2Fwww.sktdi.com%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D1%26auth%3D3a7ecd23c60b24211fd63577d59b5f70cf4cd1ca%26ps%3DeyJ0aWQiOiI3IiwidW5pb250aWQiOiIyMDE2MTIxMzE0Mjk0MTAwMDAxMzIxMDYzNzg4IiwidXNlciI6Im96SmttdDRFVlJMRmxENTZONDhCOGdmTnlhTHciLCJmZWUiOiIyMDAuMDAiLCJ0aXRsZSI6IiVFNiU5NCVBRiVFNCVCQiU5OCJ9%26payopenid%3D";', 1481614199),
('d0107c8059bb20f41135896ac66f607b', 1, '101.226.33.224', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hvzv";i:1481610600;}dest_url|s:305:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26%26params%3DeyJ0aWQiOiIxNDgxNjEwNTc4NCIsImZlZSI6IjIwMCIsInVzZXIiOiJvekprbXQ0RVZSTEZsRDU2TjQ4QjhnZk55YUx3IiwidGl0bGUiOiJcdTY1MmZcdTRlZDgiLCJvcmRlcnNuIjoiTjlzRnk5U2wiLCJ2aXJ0dWFsIjp0cnVlLCJtb2R1bGUiOiJqeV9wcHAifQ%3D%3D";', 1481614200),
('c825dac5586bb79231b4de8cce929bce', 1, '180.153.81.203', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"eTTN";i:1481611310;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D76%26do%3Dchat%26m%3Djy_ppp";', 1481614910),
('530e8db2a7c67225a7a263e8f371af69', 1, '101.226.66.187', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"jqox";i:1481611320;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D50%26do%3Dchat%26m%3Djy_ppp";', 1481614920),
('9a09abe0d3700bd310666366e1c225ab', 1, 'ozJkmt2i0qj5wOdVi4A3myPcMuSk', 'openid|s:28:"ozJkmt2i0qj5wOdVi4A3myPcMuSk";', 1481620792),
('55047e98a1af8cd6af63fbe927686f07', 1, '117.136.66.185', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"NBQh";i:1481617204;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dindex%26m%3Djy_ppp";', 1481620804),
('ab5e0df8024368b361669fabeb10ad5a', 1, '117.136.66.185', 'acid|s:1:"1";uniacid|i:1;token|a:6:{s:4:"dzhZ";i:1481617214;s:4:"oY8N";i:1481617214;s:4:"wdB9";i:1481617220;s:4:"Dp97";i:1481617314;s:4:"xpF6";i:1481617322;s:4:"zyd7";i:1481617458;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dindex%26m%3Djy_ppp";oauth_openid|s:28:"ozJkmt2i0qj5wOdVi4A3myPcMuSk";oauth_acid|s:1:"1";openid|s:28:"ozJkmt2i0qj5wOdVi4A3myPcMuSk";uid|s:2:"16";userinfo|s:648:"YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210MmkwcWo1d09kVmk0QTNteVBjTXVTayI7czo4OiJuaWNrbmFtZSI7czoyNzoi5Y2K5p2v5ZKW5ZWh7omP4oKC4oKA4oKB4oKGIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLmt67lrokiO3M6ODoicHJvdmluY2UiO3M6Njoi5rGf6IuPIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNDgxNjE3MTQ2O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTIwOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1BpYWp4U3FCUmFFSk00aWFDMVVZVmliWGFtd3kzTGlhajhKeldna1l2V2U2UjZxQ3JlZ2Q0TDdqYUVHZjF5M3ZGUWZtQ1BpYnFnQktPaEFpY2NFR3IzU2RWWktBLzAiO30=";jy_openid|s:28:"ozJkmt2i0qj5wOdVi4A3myPcMuSk";moni_city|s:9:"常州市";moni_province|s:9:"江苏省";address|i:1;address_time|i:1481631608;', 1481977458),
('584a3b91ba8624069263f8756efd3386', 1, '140.207.185.112', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"enbo";i:1481617215;}', 1481620815),
('ec76aa0dfcb186a0cb6a9cac358ba72b', 1, '140.207.185.111', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"J9j1";i:1481617247;}dest_url|s:100:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D8%26do%3Ddetail%26m%3Djy_ppp";', 1481620847),
('c612e97dafd162bbd1022ccf40585220', 1, '180.153.81.212', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"zIkg";i:1481617254;}dest_url|s:98:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D4%26do%3Dchat%26m%3Djy_ppp";', 1481620854),
('4037d7c720cd5ac8bcd5e8a54c56170b', 1, '112.65.193.15', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"kY80";i:1481617257;}dest_url|s:98:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D2%26do%3Dchat%26m%3Djy_ppp";', 1481620857),
('50811f811a8d55e5cd5ebbf1ef8a74d3', 1, '101.226.66.192', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"mq6s";i:1481617264;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D18%26do%3Dchat%26m%3Djy_ppp";', 1481620864),
('4c9e6c4139331edcc43f6a3c9ba8b7ba', 1, '101.226.89.117', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Rf3D";i:1481617267;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D22%26do%3Dchat%26m%3Djy_ppp";', 1481620867),
('ea01c8bf62ddf2f17ed467849a03e8bf', 1, '61.151.226.189', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"z5mb";i:1481617274;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D34%26do%3Dchat%26m%3Djy_ppp";', 1481620874),
('5eed993326a0ace16a64a659ed0539ed', 1, '180.153.214.180', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"B3z1";i:1481617294;}dest_url|s:318:"http%3A%2F%2Fwww.sktdi.com%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D1%26auth%3D9cb1a96ead24a370987d8408fac8dd66e9741100%26ps%3DeyJ0aWQiOiI4IiwidW5pb250aWQiOiIyMDE2MTIxMzE2MjEyNDAwMDAxMzM2MzQ1ODgyIiwidXNlciI6Im96SmttdDVXVnlHU2ZzLWZtbjNTNmxUUkthNDQiLCJmZWUiOiI1MC4wMCIsInRpdGxlIjoiJUU2JTk0JUFGJUU0JUJCJTk4In0%3D%26payopenid%3D";', 1481620894),
('8f53e726ac9cbf307134800417de66e8', 1, '101.226.125.105', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"K66q";i:1481617300;}dest_url|s:297:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26%26params%3DeyJ0aWQiOiIxNDgxNjE3MjgzNSIsImZlZSI6IjUwIiwidXNlciI6Im96SmttdDVXVnlHU2ZzLWZtbjNTNmxUUkthNDQiLCJ0aXRsZSI6Ilx1NjUyZlx1NGVkOCIsIm9yZGVyc24iOiJpNFQ3TFkxeSIsInZpcnR1YWwiOnRydWUsIm1vZHVsZSI6Imp5X3BwcCJ9";', 1481620900),
('600eeb16b3b3654793b6500ba47254fa', 1, '101.226.61.206', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"JAN8";i:1481617330;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D79%26do%3Dchat%26m%3Djy_ppp";', 1481620930),
('336b392a409a3d782063f9cebfabee01', 1, '180.153.214.176', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"A0ks";i:1481617488;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D47%26do%3Ddetail%26m%3Djy_ppp";', 1481621088),
('fbf5da153e2d8478a8ee5829f3288cf6', 1, '180.153.206.17', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ykKQ";i:1481617501;}dest_url|s:101:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D71%26do%3Ddetail%26m%3Djy_ppp";', 1481621101),
('c9b5fd8045dfa0dce30e4fcb8048782e', 1, '180.153.201.15', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"XxXk";i:1481617515;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D93%26do%3Dchat%26m%3Djy_ppp";', 1481621115),
('9b4ceaa86a4ef0f1c22b0f2809ae2fec', 1, '112.65.193.13', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Xy8q";i:1481617571;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D26%26do%3Dchat%26m%3Djy_ppp";', 1481621171),
('246fb6f418935fab4925e4389e1c13a1', 1, '180.153.160.24', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"cnQ9";i:1481617607;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D45%26do%3Dchat%26m%3Djy_ppp";', 1481621207),
('ce5ddd1ba3818bb18b083616ee44cf32', 1, '112.65.193.14', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"TvZt";i:1481618016;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D12%26do%3Dchat%26m%3Djy_ppp";', 1481621616),
('d54f5db57a6c831aaa18e621b8f7a442', 1, '140.207.185.107', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Y0aF";i:1481618040;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D38%26do%3Dchat%26m%3Djy_ppp";', 1481621640),
('5f43616a4883623680f97a2ae93266df', 1, '101.226.33.218', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"fOdT";i:1481618047;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D51%26do%3Dchat%26m%3Djy_ppp";', 1481621647),
('1c9e85152fb10745edbcfadc31bf31a2', 1, '101.226.33.218', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"zda4";i:1481618053;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D83%26do%3Dchat%26m%3Djy_ppp";', 1481621653),
('79ae00dc0b9ae25b75c89ec0bf575cb0', 1, '180.153.214.180', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"VB10";i:1481618053;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D83%26do%3Dchat%26m%3Djy_ppp";', 1481621653),
('16fd008335542d6aeeb2eca8f7550cc6', 1, '180.153.214.200', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"u9W6";i:1481618053;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D83%26do%3Dchat%26m%3Djy_ppp";', 1481621653),
('934c95cc90e83706c2629e3a491579e3', 1, '101.226.33.200', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Qz82";i:1481618059;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D83%26do%3Dchat%26m%3Djy_ppp";', 1481621659),
('2d35aeccacf8c837ab91f240d655888b', 1, '116.21.80.31', 'acid|s:1:"1";uniacid|i:1;token|a:5:{s:4:"OL33";i:1481622521;s:4:"QIJ2";i:1481622524;s:4:"PyiM";i:1481622529;s:4:"UsQ5";i:1481622532;s:4:"R4R0";i:1481622545;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dindex%26m%3Djy_ppp";oauth_openid|s:28:"ozJkmt4EVRLFlD56N48B8gfNyaLw";oauth_acid|s:1:"1";openid|s:28:"ozJkmt4EVRLFlD56N48B8gfNyaLw";uid|s:1:"1";userinfo|s:632:"YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210NEVWUkxGbEQ1Nk40OEI4Z2ZOeWFMdyI7czo4OiJuaWNrbmFtZSI7czo2OiLlj7bmnqsiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuW5v+W3niI7czo4OiJwcm92aW5jZSI7czo2OiLlub/kuJwiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE0ODE1OTAyNTA7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzA6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vVTZTRlJFOVZ5cEZkZHNTV2liT2RSZ1RzamZYYllwcFBaUkMwQU1BdDA0Z2lhNm53NEJXaWNSNUxtWGliSjN6OWRkRXdRaWNlY0VzNDB4UXRJV3hOMlB2aWFHY0NJdmJmVnJyQ3hkLzAiO30=";jy_openid|s:28:"ozJkmt4EVRLFlD56N48B8gfNyaLw";moni_city|s:9:"广州市";moni_province|s:9:"广东省";address|i:1;address_time|i:1481634579;', 1481982545),
('ebb6ef85721530e3cb5c7bf016b979c8', 1, '180.163.1.46', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"fl0S";i:1481622538;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dbasic%26m%3Djy_ppp";', 1481626138),
('9306af03ade40c39fcc0e60f67ad3a71', 1, 'ozJkmt-hPB7SLQ6zLlP7_Fmb22zg', 'openid|s:28:"ozJkmt-hPB7SLQ6zLlP7_Fmb22zg";', 1481630319),
('1e9f55480f820fc3fa8e0a6efa75be33', 1, '60.165.219.19', 'acid|s:1:"1";uniacid|i:1;token|a:6:{s:4:"A5eC";i:1481626772;s:4:"V4pk";i:1481626805;s:4:"PdYk";i:1481626873;s:4:"q9Oj";i:1481626885;s:4:"CIgJ";i:1481626885;s:4:"RXV7";i:1481626930;}dest_url|s:90:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dindex%26m%3Djy_ppp";oauth_openid|s:28:"ozJkmt-hPB7SLQ6zLlP7_Fmb22zg";oauth_acid|s:1:"1";openid|s:28:"ozJkmt-hPB7SLQ6zLlP7_Fmb22zg";uid|s:2:"17";userinfo|s:624:"YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210LWhQQjdTTFE2ekxsUDdfRm1iMjJ6ZyI7czo4OiJuaWNrbmFtZSI7czo3OiLlj6Twn5CyIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czowOiIiO3M6ODoicHJvdmluY2UiO3M6Njoi55SY6IKDIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNDgxNjI2NjQzO3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTI5OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1U2U0ZSRTlWeXBGZGRzU1dpYk9kUmdaTHJnM2V5aWNoc1NPckpzN3FxMlRJTDE0NEhST2liV3lOdkhoaWJpYndKWW1NNGRlcjlwMHB0M2ZOYjkxclJBS0tIT0E0eXBCUjIzMDRFLzAiO30=";jy_openid|s:28:"ozJkmt-hPB7SLQ6zLlP7_Fmb22zg";moni_city|s:21:"临夏回族自治州";moni_province|s:9:"甘肃省";address|i:1;address_time|i:1481641132;', 1481986930),
('658835b742196647c9461a6988a92c20', 1, '180.153.206.21', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"uBvE";i:1481626894;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D84%26do%3Dchat%26m%3Djy_ppp";', 1481630494),
('4f40a064b614719c32b1807732f7a084', 1, '140.207.124.105', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"rkgH";i:1481626895;}dest_url|s:99:"http%3A%2F%2Fwww.sktdi.com%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D35%26do%3Dchat%26m%3Djy_ppp";', 1481630495),
('12e98b099b6c0fe1380186663858a5fc', 1, '112.96.109.118', 'acid|s:1:"1";uniacid|i:1;token|a:6:{s:4:"RGHn";i:1481796418;s:4:"r5Jt";i:1481796421;s:4:"a7U5";i:1481796423;s:4:"ya5F";i:1481796423;s:4:"zZ22";i:1481796424;s:4:"FUXt";i:1481796426;}dest_url|s:73:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D1";oauth_openid|s:28:"o8cSQwGR4ZP_WVDr_cri6fTFvZPg";oauth_acid|s:1:"1";userinfo|s:628:"YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoibzhjU1F3R1I0WlBfV1ZEcl9jcmk2ZlRGdlpQZyI7czo4OiJuaWNrbmFtZSI7czo2OiLlj7bmnqsiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuW5v+W3niI7czo4OiJwcm92aW5jZSI7czo2OiLlub/kuJwiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE0ODE3OTUwODQ7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMjc6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vSDBidFg2VnJDN0RLOU85TWdoWmQ2dHRlWTIzekxNNGNaNnNzN0JzQ2VuTFhYSUxjT2NXQXJycU5hZTNXaWE3Q1JocmlhR0tRSDAzdElmNW1XRDY0aG82S0JEc2lhekp6VE1iLzAiO30=";uid|s:2:"18";openid|s:28:"o8cSQwGR4ZP_WVDr_cri6fTFvZPg";jy_openid|s:28:"o8cSQwGR4ZP_WVDr_cri6fTFvZPg";address|i:1;address_time|i:1481809782;', 1482156426),
('02124794eb136b372025619ba0527854', 1, '180.153.214.176', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"G827";i:1481794759;}', 1481798359),
('ddee61449546855556443e130ac64b50', 1, '101.226.66.177', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Dz1s";i:1481794761;}dest_url|s:73:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D1";', 1481798361),
('1f35d5a9f8a4ceae42085ceab0205e1e', 1, '101.226.99.195', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"fydJ";i:1481795111;}', 1481798711),
('e1c016339e3f6c92aeb9ea3e3a62210f', 1, 'o8cSQwGR4ZP_WVDr_cri6fTFvZPg', 'openid|s:28:"o8cSQwGR4ZP_WVDr_cri6fTFvZPg";', 1481800006),
('cd60b95a362e01f9bb83ec30f4357102', 1, '101.226.33.201', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"h8U4";i:1481795769;}dest_url|s:98:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26id%3D80%26do%3Dchat%26m%3Djy_ppp";', 1481799369),
('4097c36c5cbc53431f265e1c28533d74', 1, '180.153.163.190', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hpt2";i:1481795387;}dest_url|s:105:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26op%3Dindex%26do%3Duserinfo%26m%3Djy_ppp";', 1481798987),
('ca5b508655c22fa1f0dd8908a16ffb53', 1, '101.226.65.107', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"t3gm";i:1481795399;}dest_url|s:104:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26foo%3Dindex%26do%3Dzhaohu%26m%3Djy_ppp";', 1481798999),
('2c8d02ffb7ac0edc8b9207034177bc82', 1, '123.206.125.107', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Zr3K";i:1481795411;}', 1481806211),
('b8a3c7ef61812cfafd2672951454f5f9', 1, '112.65.193.13', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"m9EW";i:1481795425;}dest_url|s:73:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D7";', 1481799025),
('e521375d69462f72a326f1a4db8b16cd', 1, '101.226.125.104', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"LZz7";i:1481795430;}dest_url|s:93:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dtgy_login%26m%3Djy_ppp";', 1481799030),
('eafd37ef4efe33824c01b37811b96a5f', 1, '101.226.66.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"GYXF";i:1481795430;}dest_url|s:73:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5";', 1481799030),
('3ae353882a6d2c66c9289941134600d3', 1, '101.226.33.240', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"J1hb";i:1481795438;}dest_url|s:73:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D8";', 1481799038),
('4d5189bfb54b51d0929673ad5034aee3', 1, '101.226.89.120', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"i7vl";i:1481795438;}dest_url|s:89:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dgeren%26m%3Djy_ppp";', 1481799038),
('aeedc66118c5d87908fd7a08691fb10a', 1, '180.153.201.79', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"WCjV";i:1481795451;}dest_url|s:88:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmail%26m%3Djy_ppp";', 1481799051),
('6326e023671338b13af2bb20d5fdb1c9', 1, '101.226.99.197', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"PlBc";i:1481796379;}', 1481799979),
('7dc75c6ca4171bfda378c8d025c2e714', 1, '101.226.89.116', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"VYSR";i:1481796425;}dest_url|s:73:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D2";', 1481800025),
('c7d0b59a1bfdc2653669e3dc229e7530', 1, '180.153.214.188', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"PGfT";i:1481796425;}dest_url|s:86:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dcz%26m%3Djy_ppp";', 1481800025),
('d46d8417026972e16ff10a58b1d4f58f', 1, '180.153.214.199', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"TBV8";i:1481796427;}dest_url|s:90:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmylove%26m%3Djy_ppp";', 1481800027),
('5d0de27eb492742461ab7f649c5dd063', 1, '140.207.185.109', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Sbkf";i:1481796427;}dest_url|s:315:"http%3A%2F%2Fwww.apwei.cn%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D1%26auth%3D522c83e17cb134e712c6fa390c11d93aaca6efe1%26ps%3DeyJ0aWQiOiI5IiwidW5pb250aWQiOiIyMDE2MTIxNTE4MDY1ODAwMDAxMzYyODI2MTUyIiwidXNlciI6Im84Y1NRd0dSNFpQX1dWRHJfY3JpNmZURnZaUGciLCJmZWUiOiIyMDAuMDAiLCJ0aXRsZSI6IiVFNiU5NCVBRiVFNCVCQiU5OCJ9%26payopenid%3D";', 1481800027),
('439ace3fe2f955bc0f5dd9d8605789d1', 1, '180.153.206.17', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"l9q3";i:1481796429;}dest_url|s:90:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dbaoyue%26m%3Djy_ppp";', 1481800029),
('4a7cf817fd38a367aa3c5d2eea8c3e39', 1, '112.65.193.13', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"lYNo";i:1481796433;}dest_url|s:304:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26%26params%3DeyJ0aWQiOiIxNDgxNzk2NDIzNyIsImZlZSI6IjIwMCIsInVzZXIiOiJvOGNTUXdHUjRaUF9XVkRyX2NyaTZmVEZ2WlBnIiwidGl0bGUiOiJcdTY1MmZcdTRlZDgiLCJvcmRlcnNuIjoiRE96ZDVQNWQiLCJ2aXJ0dWFsIjp0cnVlLCJtb2R1bGUiOiJqeV9wcHAifQ%3D%3D";', 1481800033),
('296992d74c9d7edb2adf8a21189f6009', 1, '101.226.102.97', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"RqV9";i:1481796434;}dest_url|s:304:"http%3A%2F%2Fwww.apwei.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26%26params%3DeyJ0aWQiOiIxNDgxNzk2NDE3NiIsImZlZSI6IjIwMCIsInVzZXIiOiJvOGNTUXdHUjRaUF9XVkRyX2NyaTZmVEZ2WlBnIiwidGl0bGUiOiJcdTY1MmZcdTRlZDgiLCJvcmRlcnNuIjoiWkUwbkowYzAiLCJ2aXJ0dWFsIjp0cnVlLCJtb2R1bGUiOiJqeV9wcHAifQ%3D%3D";', 1481800034),
('19954551e6e831e6cb2f38401ba271e0', 1, '175.155.155.90', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"DjW5";i:1481796437;}', 1481807237),
('8d043753c2e746527ea7826b2a78113e', 1, '123.206.125.107', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"W494";i:1481796442;}', 1481807242),
('5ddfeaf96dd50afb0f749bb5d28bd3e2', 1, '119.5.221.60', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"KQu4";i:1481796445;}', 1481807245);

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_settings`
--

CREATE TABLE IF NOT EXISTS `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_settings`
--

INSERT INTO `ims_core_settings` (`key`, `value`) VALUES
('copyright', 'a:24:{s:6:"status";s:1:"0";s:10:"verifycode";s:1:"0";s:6:"reason";s:0:"";s:8:"sitename";s:0:"";s:3:"url";s:7:"http://";s:8:"statcode";s:0:"";s:10:"footerleft";s:0:"";s:11:"footerright";s:0:"";s:4:"icon";s:0:"";s:5:"flogo";s:0:"";s:6:"slides";s:216:"a:3:{i:0;s:58:"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg";i:1;s:58:"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg";i:2;s:58:"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg";}";s:6:"notice";s:0:"";s:5:"blogo";s:0:"";s:8:"baidumap";a:2:{s:3:"lng";s:0:"";s:3:"lat";s:0:"";}s:7:"company";s:0:"";s:14:"companyprofile";s:0:"";s:7:"address";s:0:"";s:6:"person";s:6:"叶枫";s:5:"phone";s:11:"18565188982";s:2:"qq";s:9:"215681445";s:5:"email";s:16:"215681445@qq.com";s:8:"keywords";s:0:"";s:11:"description";s:0:"";s:12:"showhomepage";i:0;}'),
('authmode', 'i:1;'),
('close', 'a:2:{s:6:"status";s:1:"0";s:6:"reason";s:0:"";}'),
('register', 'a:4:{s:4:"open";i:1;s:6:"verify";i:0;s:4:"code";i:1;s:7:"groupid";i:1;}'),
('platform', 'a:5:{s:5:"token";s:32:"UtL3K7q0t3tz22T37Yu5Su20NyTaLu8y";s:14:"encodingaeskey";s:43:"I55Q57TT0y2usYU3S2K02sYY3lTNyL5zNEznK28tTz2";s:9:"appsecret";s:0:"";s:5:"appid";s:0:"";s:9:"authstate";i:1;}'),
('basic', 'a:1:{s:8:"template";s:9:"hc_style1";}');

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon`
--

CREATE TABLE IF NOT EXISTS `ims_coupon` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `logo_url` varchar(150) NOT NULL,
  `code_type` tinyint(3) unsigned NOT NULL,
  `brand_name` varchar(15) NOT NULL,
  `title` varchar(15) NOT NULL,
  `sub_title` varchar(20) NOT NULL,
  `color` varchar(15) NOT NULL,
  `notice` varchar(15) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_info` varchar(200) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `use_custom_code` tinyint(3) NOT NULL,
  `bind_openid` tinyint(3) unsigned NOT NULL,
  `can_share` tinyint(3) unsigned NOT NULL,
  `can_give_friend` tinyint(3) unsigned NOT NULL,
  `get_limit` tinyint(3) unsigned NOT NULL,
  `service_phone` varchar(20) NOT NULL,
  `extra` varchar(1000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_selfconsume` tinyint(3) unsigned NOT NULL,
  `promotion_url_name` varchar(10) NOT NULL,
  `promotion_url` varchar(100) NOT NULL,
  `promotion_url_sub_title` varchar(10) NOT NULL,
  `source` tinyint(3) unsigned NOT NULL,
  `dosage` int(10) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_activity`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_activity` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL,
  `msg_id` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` int(3) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `coupons` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `members` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_groups`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_groups` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL,
  `couponid` varchar(255) NOT NULL,
  `groupid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_location`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_modules`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_modules` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_record`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_record` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `friend_openid` varchar(50) NOT NULL,
  `givebyfriend` tinyint(3) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `usetime` int(10) unsigned NOT NULL,
  `status` tinyint(3) NOT NULL,
  `clerk_name` varchar(15) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `grantmodule` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_store`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_store` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL,
  `couponid` varchar(255) NOT NULL,
  `storeid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_cover_reply`
--

CREATE TABLE IF NOT EXISTS `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `do` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_cover_reply`
--

INSERT INTO `ims_cover_reply` (`id`, `uniacid`, `multiid`, `rid`, `module`, `do`, `title`, `description`, `thumb`, `url`) VALUES
(1, 1, 0, 7, 'mc', '', '会员主页', '', '', './index.php?i=1&c=mc&a=home&'),
(2, 1, 1, 8, 'site', '', '进入首页', '', '', './index.php?c=home&i=1&t=1'),
(3, 1, 3, 9, 'page', '', '青年会自助充值', '自助充值', 'http://www.sktdi.com/attachment/images/1/2016/11/Rr5sJa8A3sbvbF22Qj2ab5S2g25S5A.png', './index.php?i=1&c=home&a=page&id=3'),
(4, 1, 0, 10, 'jy_ppp', 'index', '约爱程序【演示平台切勿下单】', '技术微信 ：215681445 很不错的一款交友源码，欢迎咨询！', 'images/1/2016/12/VvZtnOWrce77wuTz7cL7CZEu7VcL17.jpg', './index.php?i=1&c=entry&do=index&m=jy_ppp');

-- --------------------------------------------------------

--
-- 表的结构 `ims_custom_reply`
--

CREATE TABLE IF NOT EXISTS `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_images_reply`
--

CREATE TABLE IF NOT EXISTS `ims_images_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_aihao`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_aihao` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `aihao` varchar(200) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_aihao`
--

INSERT INTO `ims_jy_ppp_aihao` (`id`, `weid`, `mid`, `aihao`, `createtime`) VALUES
(94, 1, 105, '写作', 1481796258),
(93, 1, 104, '烹饪', 1481796258),
(92, 1, 103, '其他', 1481796258),
(91, 1, 102, '旅游', 1481796258),
(90, 1, 101, '上网', 1481796258),
(89, 1, 100, '跳舞', 1481796258),
(88, 1, 99, '养小动物', 1481796258),
(87, 1, 98, '做手工艺', 1481796258);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_attent`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_attent` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `attentid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_attent`
--

INSERT INTO `ims_jy_ppp_attent` (`id`, `weid`, `mid`, `attentid`, `createtime`) VALUES
(1, 1, 93, 92, 1481609208);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_baoyue_log`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_baoyue_log` (
  `id` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `logid` int(10) NOT NULL COMMENT '充值记录id',
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_basic`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_basic` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `height` int(10) NOT NULL,
  `weight` int(10) NOT NULL,
  `blood` varchar(50) NOT NULL,
  `education` varchar(50) NOT NULL,
  `job` varchar(200) NOT NULL,
  `income` varchar(200) NOT NULL,
  `marriage` varchar(200) NOT NULL,
  `house` varchar(200) NOT NULL,
  `blank` int(10) NOT NULL COMMENT '未填写的字段个数',
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_basic`
--

INSERT INTO `ims_jy_ppp_basic` (`id`, `weid`, `mid`, `height`, `weight`, `blood`, `education`, `job`, `income`, `marriage`, `house`, `blank`, `createtime`) VALUES
(94, 1, 105, 162, 105, 'A', '高中及中专', '政府机关/事业单位工作者', '5000-10000', '未婚', '租房', 0, 1481796258),
(93, 1, 104, 162, 106, 'AB', '本科', '企业职工', '5000-10000', '未婚', '已购房', 0, 1481796258),
(92, 1, 103, 163, 95, 'O', '高中及中专', '其他', '2000-5000', '未婚', '租房', 0, 1481796258),
(91, 1, 102, 162, 108, 'O', '大专', '政府机关/事业单位工作者', '10000-20000', '未婚', '其他', 0, 1481796258),
(90, 1, 101, 173, 97, 'B', '大专', '企业职工', '10000-20000', '未婚', '租房', 0, 1481796258),
(89, 1, 100, 172, 96, 'A', '大专', '其他', '5000-10000', '未婚', '租房', 0, 1481796258),
(88, 1, 99, 155, 107, 'B', '大专', '政府机关/事业单位工作者', '10000-20000', '未婚', '已购房', 0, 1481796258),
(87, 1, 98, 168, 100, 'B', '本科', '私营业主', '5000-10000', '未婚', '与父母同住', 0, 1481796258);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_black`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_black` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `blackid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_chat_doubi`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_chat_doubi` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `chatid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_code`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_code` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_credit_log`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_credit_log` (
  `id` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `credit` int(10) NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'add,reduce',
  `log` int(10) NOT NULL COMMENT '1为身份认证消耗积分,2为积分兑换聊天机会,3为系统变更积分,4为用户充值积分',
  `logid` int(10) NOT NULL COMMENT '对方用户的id或充值记录id',
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_desc`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_desc` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `child` varchar(200) NOT NULL,
  `yidi` varchar(200) NOT NULL,
  `leixin` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `fumu` varchar(200) NOT NULL,
  `meili` varchar(200) NOT NULL,
  `blank` int(10) NOT NULL COMMENT '未填写的字段个数',
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_desc`
--

INSERT INTO `ims_jy_ppp_desc` (`id`, `weid`, `mid`, `child`, `yidi`, `leixin`, `sex`, `fumu`, `meili`, `blank`, `createtime`) VALUES
(94, 1, 105, '想', '不能', '眉清目秀', '看情况', '看情况', '耳朵', 0, 1481796258),
(93, 1, 104, '想', '看情况', '眉清目秀', '能', '不愿意', '胳膊', 0, 1481796258),
(92, 1, 103, '还没想好', '看情况', '娇小可爱', '能', '不愿意', '笑容', 0, 1481796258),
(91, 1, 102, '还没想好', '能', '雍容华贵', '不能', '愿意', '牙齿', 0, 1481796258),
(90, 1, 101, '不想', '不能', '雍容华贵', '不能', '不愿意', '胸部', 0, 1481796258),
(89, 1, 100, '想', '看情况', '成熟魅力', '看情况', '愿意', '腰部', 0, 1481796258),
(88, 1, 99, '想', '能', '落落大方', '不能', '看情况', '嘴唇', 0, 1481796258),
(87, 1, 98, '不想', '不能', '眉清目秀', '看情况', '看情况', '腰部', 0, 1481796258);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_dianyuan`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_dianyuan` (
  `id` int(10) unsigned NOT NULL,
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
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_feedback`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_feedback` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_help`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_help` (
  `id` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '批次ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `description` text COMMENT '描述',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启'
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_help`
--

INSERT INTO `ims_jy_ppp_help` (`id`, `weid`, `name`, `parentid`, `displayorder`, `description`, `enabled`) VALUES
(1, 1, '服务充值', 0, 0, '', 1),
(2, 1, '账号密码', 0, 0, '', 1),
(3, 1, '照片问题', 0, 0, '', 1),
(4, 1, '活动咨询', 0, 0, '', 1),
(5, 1, '聊天相关', 0, 0, '', 1),
(6, 1, '投诉举报', 0, 0, '', 1),
(7, 1, '其他常见', 0, 0, '', 1),
(9, 1, '银行卡充值已经准确的填写了相关信息，还是失败怎么办?', 1, 0, '您选择的银行卡手机支付,失败原因可能有多种：1.您的银行卡号,身份证号、姓名等信息输入有误；2.手机状态异常，未能顺利完成银联支付系统的电话语音确认；3.您的银行卡暂不被支持；如信息正确的情况下，尝试3次依然失败，请更换其他银行卡重试或购买全国通用的移动或联通充值卡在页面上进行充值', 1),
(10, 1, '如何办理聊天的业务呢？', 1, 0, '您好，请您登陆后，进入【我】点击【豆币账户】或【写信包月】选择需要的服务，进入充值界面。我们提供银行卡，充值卡，支付宝，汇款转账等方式充值。请根据页面提示操作。', 1),
(11, 1, '和异性聊天，豆币是如何扣除的？', 1, 0, '您好，豆币是按人数收费的，即花费20豆币可以和一位女用户终身免费聊天。', 1),
(12, 1, '可以用两张50元的充值卡充值100元的业务吗？', 1, 0, '您好，不可以，我们网站不支持合并充值，请您根据服务选择相应面额充值卡进行充值。', 1),
(13, 1, '充值卡充值失败怎么办?', 1, 0, '请确认您的充值卡是全国通用的移动或者联通充值卡，如果提示您卡密已失效还未获得服务，请拨打易宝客服电话400-150-0800撤销订单，重新充值。', 1),
(14, 1, '红娘服务是什么？', 1, 0, '为了帮助女用户找到符合自己要求的异性，提供了红娘服务。红娘服务内容包括：优先将红娘会员推荐给优质男性用户，获得更多交流机会；红娘将帮助申请红娘服务的用户向符合其征友要求的异性询问交友意向；实时监控询问总数。', 1),
(15, 1, '如何申请红娘服务？', 1, 0, '女性用户，进入【我】—【设置中心】模块，点击【红娘设置】直接按提示申请即可。', 1),
(16, 1, '如何取消红娘服务？', 1, 0, '进入【我】—【设置中心】模块，点击【有缘设置】退订服务即可取消该功能。', 1),
(17, 1, '自动续费是什么，如何办理？', 1, 0, '自动续费是主动签约服务,支付时选择自动续费,服务到期/豆币余额不足时，将自动续费,自动续费同时赠送服务到期提醒/豆币余额提醒服务，到期前/豆币不足100时会给您发短信和站内信提醒。', 1),
(18, 1, '收到心仪女生的回复，怎样才能给她写信？', 1, 0, '使用豆币和包月写信服务，可以给对方写信，请先购买豆币或升级成为写信包月会员。', 1),
(19, 1, '购买的充值卡不是你们上面显示那些位数是怎么回事？', 1, 0, '您好，全国通用移动充值卡序列号是17位密码是18位，全国通用联通充值卡序列号15位，密码19位，如果您的位数不对，可能是地方卡，我们不支持地方充值卡充值。', 1),
(20, 1, '如何确认我充值是否成功及服务期限？', 1, 0, '您好，每次充值管理员会发出充值成功与否的信息，请您注意查看您的信箱。如果您没有看到信息在您充值那个服务的页面会显示您充值后的信息及服务时间，豆币余额。', 1),
(21, 1, '银行卡支付时，卡号和身份证需要是同一个人吗？', 1, 0, '是的，银行卡充值卡号和身份证姓名必须一致，否则支付不会成功。', 1),
(22, 1, '手机号需要和开户时候预留的手机号码一致吗', 1, 0, '建议最好和银行预留手机号码一致，如果忘记号码，请咨询银行修改。', 1),
(24, 1, '以前注册手机号码不用了能否将账号更改为现在手机号码？', 2, 0, '您好，账号已经注册不能更改，但是不影响您的正常使用，请您牢记您的账号密码。', 1),
(25, 1, '如何修改密码？', 2, 0, '触屏版用户进入【我】—【设置中心】—【账号管理】，点击【修改密码】', 1),
(26, 1, '如何上传相片？', 3, 0, '您好，请您点击【我】-进入我的相册中点击上传相片，选择您要上传的照片直接上传即可，上传之后，我们的客服人员会对您的照片进行审核，审核通过后会在相册中看到照片。', 1),
(27, 1, '我的照片显示待审核状态怎么回事？', 3, 0, '您好，我们是一个正规的交友网站，上传的照片都是需要审核的，确保您的照片文明合理，五官清晰，24小时之后就会通过审核，所以请您耐心等待。', 1),
(28, 1, '什么情况下照片只能显示在相册，而不能作为头像？', 3, 0, '您好，当您上传的照片过明或者过暗，只能看到头部不能看到一点肩部，头部在图片中过小以至看不清楚五官，五官被遮挡一部分，戴墨镜或者抽烟的都不能作为形象照，只能显示在您的相册中。', 1),
(29, 1, '如何更换头像？', 3, 0, '您好，请您进入【我】-【我的相册】-查看相册，确定您要更换头像的照片，点击照片下的设形象照即可。', 1),
(30, 1, '我的照片合格，但是没有通过审核，我要申诉', 3, 0, '请您点击“没有解决，进入人工咨询”，输入详细情况，我们的工作人员会在一个工作日内回复您，请登陆信箱中查看管理员来信。', 1),
(31, 1, '我怎么看不到我上传的照片了，什么情况下照片会被删除？', 3, 0, '您好，当您上传的照片是色情的，非本人，裸露，闪图，带有联系方式的，年龄不符，看不到五官，合影，侧脸严重的都会被删除，所以建议您上传文明合理，五官清晰的个人照片。', 1),
(32, 1, '如何删除已经上传的照片？', 3, 0, '您好，请您进入【我】-【我的相册】-查看相册，点击照片下面的删除，确定即可。', 1),
(33, 1, '话费领取了怎么还没有到账？', 4, 0, '您好，话费领取之后，48小时后可查询到账话费', 1),
(34, 1, '如何增加异性来信？', 5, 0, '您好，您可以多向异性用户打招呼，或者完善您的资料，提高您的诚信度，在空间-诚信里边验证您的手机号和身份证号（确保安全）这样会增加女会员对您的信任度。或者您可以在服务中办理爱情直通车，您的信息会优先被女会员搜索到，增多来信。', 1),
(35, 1, '为什么提示系统禁言，并且发不了信？', 5, 0, '您好，你的信息包含本站的非法词汇，所以禁言48小时，请您耐心等待禁言时间过后，账号就能够正常使用了,谢谢！', 1),
(36, 1, '有人违反了相关规定，我要揭发TA怎么做？', 6, 0, '您好.，针对用户的投诉请您在对方空间最下方点击“举报”并说明理由，会有专人审核处理。', 1),
(37, 1, '如何才能索要到对方联系方式？', 7, 0, ' 您好，建议您在和对方聊天过程中向对方索要联系方式，或者将您的联系方式发送给对方即可！', 1),
(38, 1, '用户之间匹配度是怎么产生的？', 7, 0, '您好，匹配度不是随机的产生的，是按一定的算法计算出来的。主要是按自已与对方的资料及征友要求来计算的，如果较低说明有一方还是有些条件不适合的（但也仅供参考）。 ', 1),
(39, 1, '为什么我的网页无法转跳?', 7, 0, '您好，建议您清空手机缓存尝试。', 1),
(40, 1, '为什么访问我空间的人都说没看过?', 7, 0, '您好.当用户访问了用户列表，该列表中的所有用户即显示为被看过。', 1),
(41, 1, '性别错误如何修改？', 7, 0, '您好，我们为严肃的婚恋网站，不能随意更改性别。如要更改性别需要在注销账号中进行更改。每月限使用1次修改性别功能。', 1),
(42, 1, '怎么才能修改征友要求？', 7, 0, '您好，方法为点击资料中的征友要求进行修改即可。', 1),
(43, 1, '怎样加黑对方？', 7, 0, '您好，进入对方空间，点加黑。', 1),
(44, 1, '其他联系客服方式？', 7, 0, '除了客服电话外您也可以用其它反馈方式进行答疑在线答疑将问题提出第二天会有专人作答（在线答疑回复时间：9:00--18:00(周一至周五)', 1),
(45, 1, '我填写联系方式对方是否看的到？', 7, 0, '对个人隐私有着严格的保密措施，对方浏览空间时是看不到的。请您放心。', 1),
(46, 1, '手机号码验证流程？', 7, 0, '您好，点击诚信-手机号码验证---提交要验证的手机号码---按页面提示使用正确方法发送短信', 1),
(47, 1, '为什么上传3张本人照片还不添加诚信等级？', 7, 0, '您好，只有成功上传三张照片并通过审核设为形象照后，等级才会得到增加。', 1),
(48, 1, '如何查找对方是否在线?', 7, 0, '您好，您办理高级会员后就可查看对方是否在线。高级会员办理流程为“服务”里“高级会员”', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_hf`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_hf` (
  `id` int(11) NOT NULL,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0',
  `media_id` varchar(255) NOT NULL,
  `picurl` text,
  `sex` int(2) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=293 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_hf`
--

INSERT INTO `ims_jy_ppp_hf` (`id`, `weid`, `displayorder`, `name`, `description`, `enabled`, `parentid`, `type`, `media_id`, `picurl`, `sex`) VALUES
(1, 1, 0, '在干嘛？', '', 1, 0, 3, 'audios/1/2016/08/mxT72u77kTCI6ZRG23UcB26tw9bWkw.mp3', NULL, 1),
(2, 1, 0, '你是哪里的', '', 1, 0, 3, 'audios/1/2016/08/dpcufCGGGfDDXzC6gGVUPIDGILdU2T.mp3', NULL, 1),
(3, 1, 0, '帅哥，你好', '', 1, 0, 3, 'audios/1/2016/08/tl2I0mBOL6wWX4I6XT63J0I3x3Uyl4.mp3', NULL, 1),
(4, 1, 0, '在吗？', '', 1, 0, 3, '', NULL, 1),
(5, 1, 0, '有空吗帅哥？出来嗨啊！', '', 1, 0, 3, '', NULL, 1),
(6, 1, 0, '你喜欢什么样的女孩？', '', 1, 0, 3, 'audios/1/2016/08/MPqqTF1fPqNlTPDqrqiLdrPIDrP4P6.mp3', NULL, 1),
(7, 1, 0, '在吗，在就回我一下？', '', 1, 0, 3, 'audios/1/2016/08/rTaYdhQxOyoHdhLtzhlhTHxLh6OQp6.mp3', NULL, 1),
(8, 1, 0, '你是做什么的？', '', 1, 0, 3, 'audios/1/2016/08/Ny8H4h4tweZyCnhEREeRx2CRRzeDLN.mp3', NULL, 1),
(9, 1, 0, '能介绍下你的情况吗？', '', 1, 0, 3, '', NULL, 1),
(10, 1, 0, '你喜欢远动吗', '', 1, 0, 3, 'audios/1/2016/08/E6SFJNuIJtaa89gNAeUAJwYYn8YNJ8.mp3', NULL, 1),
(11, 1, 0, '你好，问你一个问题', '', 1, 0, 3, 'audios/1/2016/08/cy6kK53kdfYkCn6Nx3c3KK3kxK6553.mp3', NULL, 1),
(12, 1, 0, '你晚上喜欢出去玩吗', '', 1, 0, 3, 'audios/1/2016/08/JtSRt0UH30RTV3D33H3b2Sd0Uh0DXH.mp3', NULL, 1),
(13, 1, 0, '你有锻炼的习惯', '', 1, 0, 3, 'audios/1/2016/08/Jx7X0Zt5s8iO11eoViK7E28TO7G7oG.mp3', NULL, 1),
(14, 1, 0, '帅哥你来这里多久了啊', '', 1, 0, 3, 'audios/1/2016/08/lTTOJEyAxfKjWYK1yEQzykYv6e4jjp.mp3', NULL, 1),
(15, 1, 0, '我不经常上这里', '', 1, 0, 3, 'audios/1/2016/08/g1vqQz11Qpo5031o336X50OdL0LSDd.mp3', NULL, 1),
(16, 1, 0, '你喜欢比较开放的女生吗', '', 1, 0, 3, 'audios/1/2016/08/C8ssLJFMSmnySBWs3LM4SefmmPCyge.mp3', NULL, 1),
(17, 1, 0, '第一次见面？', '', 1, 0, 3, 'audios/1/2016/08/l5562c20Psm7qmMyRmsSmC6zmjjWwZ.mp3', NULL, 1),
(18, 1, 0, 'SM', '', 1, 0, 3, 'audios/1/2016/08/JDysgFSgIfNZv7Kg3FkgGd0hvffFZ3.mp3', NULL, 1),
(19, 1, 0, '你觉得你是好男人吗 ', '', 1, 0, 3, 'audios/1/2016/08/v6Q4hNc2i3e7JuvH3WnV76DhNiIL1Q.mp3', NULL, 1),
(20, 1, 0, '你爱唱歌吗推荐几首好听的歌？', '', 1, 0, 3, 'audios/1/2016/08/Dlz8MlXra287E1B8EEP072FpPB27Fx.mp3', NULL, 1),
(21, 1, 0, '你身高多少', '', 1, 0, 0, '', NULL, 0),
(22, 1, 0, '有时间的话我们聊一下吧？', '', 1, 0, 3, 'audios/1/2016/08/n565i9r4GLte614G55ep4G59zgEjT6.mp3', NULL, 1),
(23, 1, 0, '你会经常出差吗', '', 1, 0, 3, 'audios/1/2016/08/lJaoIrKoKZiy18Z28rzi8on8o881oI.mp3', NULL, 1),
(25, 1, 0, '你最喜欢看电影？', '', 1, 0, 3, 'audios/1/2016/08/AMTwW3MMOHc3WPM2L7kpbb8MZ9z329.mp3', NULL, 1),
(26, 1, 0, '长发还是短怎么样', '', 1, 0, 3, 'audios/1/2016/08/c84kv3e47kvN4MGmokGr8Lr3EeknmG.mp3', NULL, 1),
(27, 1, 0, '你养宠物吗？', '', 1, 0, 3, 'audios/1/2016/08/glu5GL7zc9LZyLgDtzoq8UWQdAD289.mp3', NULL, 1),
(28, 1, 0, '帅哥，请问你一个问题啊', '', 1, 4, 2, 'audios/1/2016/08/MB88pTOg3gR8d5p8mpu82NqpQnM00X.mp3', NULL, 0),
(29, 1, 0, '介意不是处女吗', '', 1, 4, 2, 'audios/1/2016/08/MB88pTOg3gR8d5p8mpu82NqpQnM00X.mp3', NULL, 0),
(30, 1, 0, '我在酒吧', '', 1, 5, 1, '', 'images/1/2016/08/ePq90bCqqdpCYyp6Hgd99Xx5ygp3HP.jpg', 0),
(79, 1, 0, '在吗在就回我', '', 1, 18, 2, 'audios/1/2016/08/rTaYdhQxOyoHdhLtzhlhTHxLh6OQp6.mp3', NULL, 0),
(31, 1, 0, '哎好无聊啊你是本地的吗', '', 1, 3, 2, 'audios/1/2016/08/xn5wDByyRRh7MnFr1rLn1byXDbYKLL.mp3', NULL, 0),
(32, 1, 0, '具体是那个位置呢', '', 1, 3, 0, '', NULL, 0),
(33, 1, 0, '你平时无聊的时候都喜欢干嘛', '', 1, 3, 1, 'audios/1/2016/08/XfF7SypMYT2dYS6cf2zFY866U7Yt7d.mp3', '', 0),
(34, 1, 0, '在吗？？', '', 1, 7, 2, 'audios/1/2016/09/R5EbBhhpggZhzcBAce6z17e7GL779b.mp3', NULL, 0),
(35, 1, 0, '我好无聊啊', '', 1, 7, 0, '', NULL, 0),
(36, 1, 0, '无聊', '', 1, 7, 1, '', 'images/1/2016/08/T8WEwAW3ZwaX4aWz8IRI248xIRzXWu.jpg', 0),
(37, 1, 0, '你喜欢比较开放的女人吗', '', 1, 6, 2, 'audios/1/2016/08/C8ssLJFMSmnySBWs3LM4SefmmPCyge.mp3', NULL, 0),
(38, 1, 0, '开放', '', 1, 6, 1, '', 'images/1/2016/08/m3NrLzSr3BnUuBRn2z2XNCb99U3HLU.jpg', 0),
(41, 1, 0, '我现在一个人在家无聊呢', '', 1, 6, 0, '', NULL, 0),
(42, 1, 0, '哥哥，你在干嘛呢', '', 1, 6, 0, '', NULL, 0),
(43, 1, 0, '在干嘛', '', 1, 1, 2, 'audios/1/2016/08/mxT72u77kTCI6ZRG23UcB26tw9bWkw.mp3', NULL, 0),
(44, 1, 0, '哥哥能陪我吗', '', 1, 1, 1, '', 'images/1/2016/08/AqZ6vm9qerLILt6OomAEc0t00Rcai3.jpg', 0),
(45, 1, 0, '一个人，好无聊啊，哥哥能陪我聊聊吗', '', 1, 1, 0, '', NULL, 0),
(46, 1, 0, '哥哥，你是哪里人呀', '', 1, 1, 0, '', NULL, 0),
(47, 1, 0, '你会打球吗？', '', 1, 2, 2, 'audios/1/2016/08/XfF7SypMYT2dYS6cf2zFY866U7Yt7d.mp3', NULL, 0),
(48, 1, 0, '听说会打球的男生那个都比较大', '', 1, 2, 0, '', NULL, 0),
(49, 1, 0, '大胸', '', 1, 2, 1, '', 'images/1/2016/08/OoILloFf59PlEHrmOHMSlm92m2v218.jpg', 0),
(50, 1, 0, '照片', '', 1, 3, 1, '', 'images/1/2016/08/HWKX24XYQw6508m4X8Y4W4lprmrYxX.jpg', 0),
(51, 1, 0, '听说介意这个的男人都有直男癌，你是吗', '', 1, 4, 0, '', NULL, 0),
(52, 1, 0, '有空吗帅哥？出来嗨啊', '', 1, 5, 0, '', NULL, 0),
(53, 1, 0, '帅哥，你在哪呢，怎么还没来啊', '', 1, 5, 0, '', NULL, 0),
(54, 1, 0, '你是做什么的', '', 1, 8, 2, 'audios/1/2016/08/Ny8H4h4tweZyCnhEREeRx2CRRzeDLN.mp3', NULL, 0),
(55, 1, 0, '帅哥，能详细的介绍一下你的职业情况吗', '', 1, 8, 0, '', NULL, 0),
(56, 1, 0, '我年纪比较大了，家里人有点急，所以想找个靠谱的对象', '', 1, 8, 0, '', NULL, 0),
(57, 1, 0, '不如，咋们挑个合适的时间见面吧', '', 1, 8, 0, '', NULL, 0),
(58, 1, 0, '你喜欢运动？', '', 1, 10, 2, 'audios/1/2016/08/bq8lu3qsrju8yb9QyL6P0bQYUySR49.mp3', NULL, 0),
(59, 1, 0, '抠B', '', 1, 10, 1, '', 'images/1/2016/08/UGyzszPBP7D0w4J720uzBkLYOlW1jD.jpg', 0),
(60, 1, 0, '呢，刚刚运动了一下累死我了', '', 1, 10, 0, '', NULL, 0),
(61, 1, 0, '想让哥哥你帮帮我呢', '', 1, 10, 0, '', NULL, 0),
(62, 1, 0, '那个方面和谐程度', '', 1, 11, 2, 'audios/1/2016/08/JDysgFSgIfNZv7Kg3FkgGd0hvffFZ3.mp3', NULL, 0),
(63, 1, 0, '妹妹觉得那个方面很重要呢', '', 1, 11, 1, '', 'images/1/2016/08/bBiMgGh3m2bVmH3Q8A882WqWHm8w3W.jpg', 0),
(64, 1, 0, '所以偷偷的问一下帅哥，下面的家伙有大不大啊', '', 1, 11, 0, '', NULL, 0),
(65, 1, 0, '你请问你晚上一般去哪玩', '', 1, 12, 2, 'audios/1/2016/08/JtSRt0UH30RTV3D33H3b2Sd0Uh0DXH.mp3', NULL, 0),
(66, 1, 0, '你请问你晚上一般去哪玩？', '', 1, 12, 0, '', NULL, 0),
(67, 1, 0, '有没有经常去夜总会之类的地方啊', '', 1, 12, 1, '', '', 0),
(69, 1, 0, '锻炼', '', 1, 13, 2, 'audios/1/2016/08/Jx7X0Zt5s8iO11eoViK7E28TO7G7oG.mp3', NULL, 0),
(70, 1, 0, 'DL', '', 1, 13, 1, '', 'images/1/2016/08/BggGkt1spe392lHTJN9fp1ss5ktpfg.jpg', 0),
(71, 1, 0, '听说爱锻炼的男孩子做那事的能持久一些呢', '', 1, 13, 0, '', NULL, 0),
(72, 1, 0, '有女朋友了吗', '', 1, 14, 2, 'audios/1/2016/08/lTTOJEyAxfKjWYK1yEQzykYv6e4jjp.mp3', NULL, 0),
(73, 1, 0, '你交过多少女朋友啦', '', 1, 14, 0, '', NULL, 0),
(74, 1, 0, '我目前一个人在这里，想找个真心好的哥哥对我', '', 1, 14, 0, '', NULL, 0),
(75, 1, 0, '老公夜班', '', 1, 0, 3, '', NULL, 1),
(76, 1, 0, '老公又去加班了，一个人好寂寞啊', '', 1, 75, 0, '', NULL, 0),
(77, 1, 0, '手淫', '', 1, 75, 1, '', 'images/1/2016/08/NdID9fX8JipPfCZ9cPB7d55bo858F9.jpg', 0),
(78, 1, 0, '帅哥你在哪里，能不能来我家玩玩', '', 1, 75, 0, '', NULL, 0),
(80, 1, 0, '帅哥看过的那方面的片子多吗', '', 1, 18, 0, '', NULL, 0),
(81, 1, 0, '我喜欢看口味重一点的，比如SM，好刺激的', '', 1, 18, 0, '', NULL, 0),
(82, 1, 0, '帅哥，怎么不理我拉', '', 1, 18, 0, '', NULL, 0),
(83, 1, 0, '帅哥，我能问你一个问题吗', '', 1, 23, 0, '', NULL, 0),
(84, 1, 0, '出差语音', '', 1, 23, 2, 'audios/1/2016/08/lJaoIrKoKZiy18Z28rzi8on8o881oI.mp3', NULL, 0),
(85, 1, 0, '经常出差的话，我一个人在家里会很寂寞的', '', 1, 23, 0, '', NULL, 0),
(86, 1, 0, '你不会忍心把我一个人扔在家里的对吧', '', 1, 23, 0, '', NULL, 0),
(87, 1, 0, '有时间聊', '', 1, 22, 2, 'audios/1/2016/08/n565i9r4GLte614G55ep4G59zgEjT6.mp3', NULL, 0),
(88, 1, 0, '寂寞', '', 1, 22, 1, '', 'images/1/2016/08/n62vM2kK646C23693622636tn29YPV.jpg', 0),
(89, 1, 0, '一个人在家好无聊啊', '', 1, 22, 0, '', NULL, 0),
(90, 1, 0, '开放语音', '', 1, 16, 2, 'audios/1/2016/08/C8ssLJFMSmnySBWs3LM4SefmmPCyge.mp3', NULL, 0),
(91, 1, 0, '图片0', '', 1, 16, 1, '', 'images/1/2016/08/wlbACcJj5cOqWEEAllqtYMeB944Ywz.jpg', 0),
(92, 1, 0, '我平时不爱穿内裤，你不会介意吧', '', 1, 16, 0, '', NULL, 0),
(93, 1, 0, '我喜欢下面大的男生呢', '', 1, 2, 0, '', NULL, 0),
(94, 1, 0, '老公出差了，能陪我聊会天吗', '', 1, 7, 0, '', NULL, 0),
(95, 1, 0, '语音第一次见面你会带我喝酒', '', 1, 9, 2, 'audios/1/2016/08/l5562c20Psm7qmMyRmsSmC6zmjjWwZ.mp3', NULL, 0),
(96, 1, 0, '照片1', '', 1, 9, 1, '', 'images/1/2016/08/CZO7C6CRO8nG7kVj7W607kr576y6Vf.jpg', 0),
(97, 1, 0, '我刚刚发了一张我的照片你也发一张你的照片好不', '', 1, 9, 0, '', NULL, 0),
(98, 1, 0, '帅哥你在干嘛呢', '', 1, 9, 0, '', NULL, 0),
(99, 1, 0, '你一般能做多久啊', '', 1, 13, 0, '', NULL, 0),
(100, 1, 0, '帅哥你在吗', '', 1, 15, 0, '', NULL, 0),
(101, 1, 0, '不经常上这里', '', 1, 15, 2, 'audios/1/2016/08/g1vqQz11Qpo5031o336X50OdL0LSDd.mp3', NULL, 0),
(102, 1, 0, '帅哥，是不是经常一个人啊', '', 1, 15, 0, '', NULL, 0),
(103, 1, 0, '生气的频率高吗', '', 1, 17, 2, 'audios/1/2016/08/c84kv3e47kvN4MGmokGr8Lr3EeknmG.mp3', NULL, 0),
(104, 1, 0, '今天老公喝醉了又打我了', '', 1, 17, 0, '', NULL, 0),
(105, 1, 0, '5555555', '', 1, 17, 0, '', NULL, 0),
(106, 1, 0, '帅哥你在哪里啊', '', 1, 17, 0, '', NULL, 0),
(107, 1, 0, '你是好男人吗', '', 1, 19, 2, 'audios/1/2016/08/v6Q4hNc2i3e7JuvH3WnV76DhNiIL1Q.mp3', NULL, 0),
(108, 1, 0, '你会打你以后的老婆吗', '', 1, 19, 0, '', NULL, 0),
(109, 1, 0, '你会帮忙做家务吗', '', 1, 19, 0, '', NULL, 0),
(110, 1, 0, '语音', '', 1, 20, 2, 'audios/1/2016/08/Dlz8MlXra287E1B8EEP072FpPB27Fx.mp3', NULL, 0),
(111, 1, 0, '哥哥能不能唱几句给妹妹听啊', '', 1, 20, 0, '', NULL, 0),
(112, 1, 0, '哥哥最爱听那首歌啊', '', 1, 20, 0, '', NULL, 0),
(113, 1, 0, '宠物吗', '', 1, 27, 2, 'audios/1/2016/08/glu5GL7zc9LZyLgDtzoq8UWQdAD289.mp3', NULL, 0),
(114, 1, 0, '听说养宠物的人特别有爱心哦', '', 1, 27, 0, '', NULL, 0),
(115, 1, 0, '哥哥喜欢养猫还是养狗呀', '', 1, 27, 0, '', NULL, 0),
(116, 1, 0, '喜欢看电影吗', '', 1, 25, 2, 'audios/1/2016/08/gA3MmsEdwPArddHMyiCEm8Iz2ZAD8b.mp3', NULL, 0),
(117, 1, 0, '你喜欢看什么类型的电影呀', '', 1, 25, 0, '', NULL, 0),
(118, 1, 0, '妹妹喜欢看日本SM类的电影呢', '', 1, 25, 0, '', NULL, 0),
(119, 1, 0, '感觉好刺激啊想找哥哥尝试一下', '', 1, 25, 0, '', NULL, 0),
(120, 1, 0, '长发还是短发', '', 1, 26, 2, 'audios/1/2016/08/IoQ4oOB8LoyQy8r1rqN9Ozpl8VKL4l.mp3', NULL, 0),
(121, 1, 0, '哥哥对身材有什么要求吗', '', 1, 26, 1, '', '', 0),
(122, 1, 0, '111', '', 1, 26, 1, '', 'images/1/2016/08/d4eoyl8j9Lb2yYBb1O2B8I1283C81Y.jpg', 0),
(123, 1, 0, '哥哥你的相片呢', '', 1, 26, 0, '', NULL, 0),
(124, 1, 0, '电影2', '', 1, 0, 3, '', NULL, 1),
(125, 1, 0, '在干嘛喜欢看电影吗', '', 1, 124, 2, 'audios/1/2016/08/ynHlLntRh2NmHkLetHGLt61hr2LRWN.mp3', NULL, 0),
(126, 1, 0, '妹妹平时比较爱看口味重一点的电影', '', 1, 124, 0, '', NULL, 0),
(127, 1, 0, '32123', '', 1, 124, 1, '', 'images/1/2016/08/YYV4G3Y5a7AfAGKtfQtaaiIZKoi5oA.jpg', 0),
(128, 1, 0, '这个电影哥哥看过吗好像和哥哥一起看呀', '', 1, 124, 0, '', NULL, 0),
(129, 1, 0, '一个人在家呢', '', 1, 3, 0, '', NULL, 0),
(130, 1, 0, '在吗', '', 1, 0, 3, '', NULL, 1),
(131, 1, 0, '在吗，美女，现在有时间吗', '', 1, 130, 0, '', NULL, 0),
(132, 1, 0, '美女，你喜欢什么类型的男生呢', '', 1, 130, 0, '', NULL, 0),
(133, 1, 0, '美女是做什么工作的呀', '', 1, 130, 0, '', NULL, 0),
(134, 1, 0, '美女你好', '', 1, 0, 3, '', NULL, 1),
(135, 1, 0, '请问，美女芳名啊', '', 1, 134, 0, '', NULL, 0),
(136, 1, 0, '美女家是哪里的呀', '', 1, 134, 0, '', NULL, 0),
(137, 1, 0, '美女会介意男朋友的收入比自己低吗', '', 1, 134, 0, '', NULL, 0),
(138, 1, 0, '美女，今天在哪玩的', '', 1, 0, 3, '', NULL, 2),
(139, 1, 0, '美女，今天在哪玩的啊', '', 1, 138, 0, '', NULL, 0),
(140, 1, 0, '玩的开心吗', '', 1, 138, 0, '', NULL, 0),
(141, 1, 0, '美女微信多少可以加微信聊吗', '', 1, 138, 0, '', NULL, 0),
(142, 1, 0, '你是真心的还是诚意的', '', 1, 0, 3, '', NULL, 2),
(143, 1, 0, '妹妹是哪的啊，是真心找男友的吗', '', 1, 142, 0, '', NULL, 0),
(144, 1, 0, '妹妹之前有谈过恋爱吗', '', 1, 142, 0, '', NULL, 0),
(145, 1, 0, '我谈过两次，妹妹不会介意吧', '', 1, 142, 0, '', NULL, 0),
(146, 1, 0, '你好，冒昧的问你一个问题', '', 1, 0, 3, '', NULL, 2),
(147, 1, 0, '你好，冒昧的问你一个问题，可以吗', '', 1, 146, 0, '', NULL, 0),
(148, 1, 0, '你会介意自己未来的男朋友有婚史吗', '', 1, 146, 0, '', NULL, 0),
(149, 1, 0, '我之前有过一次失败的感情经历。。', '', 1, 146, 0, '', NULL, 0),
(150, 1, 0, '不经常在这里', '', 1, 0, 3, '', NULL, 1),
(151, 1, 0, '美女我不经常上这里可以加你微信聊吗', '', 1, 150, 0, '', NULL, 0),
(152, 1, 0, '你的QQ是多少，也顺便加一下吧', '', 1, 150, 0, '', NULL, 0),
(153, 1, 0, '日本片', '', 1, 0, 3, '', NULL, 1),
(154, 1, 0, '哥哥，在吗？', '', 1, 1, 0, '', NULL, 0),
(155, 1, 0, '哥哥，在干嘛呢', '', 1, 153, 0, '', NULL, 0),
(156, 1, 0, '哥哥平时爱不爱看日本的动作片呀', '', 1, 153, 0, '', NULL, 0),
(157, 1, 0, '丝袜', '', 1, 153, 1, '', 'images/1/2016/09/xw2Ir02p4NeweF3b4H5ThzbsotB2o2.jpg', 0),
(158, 1, 0, '妹妹现在一个人在家，好想看片子啊', '', 1, 153, 0, '', NULL, 0),
(159, 1, 0, '哥哥能推荐个网站吗', '', 1, 153, 0, '', NULL, 0),
(160, 1, 0, '帅哥~？', '', 1, 5, 0, '', NULL, 0),
(161, 1, 0, '帅哥，你咋不说话呀', '', 1, 4, 0, '', NULL, 0),
(162, 1, 0, '帅哥说话呀', '', 1, 9, 0, '', NULL, 0),
(163, 1, 0, '帅哥怎么不回人家呀，真是的，急死人家了', '', 1, 11, 0, '', NULL, 0),
(164, 1, 0, '帅哥，你会是我心中的白马王子把', '', 1, 14, 0, '', NULL, 0),
(165, 1, 0, '帅哥你咋不理人家啦！？', '', 1, 12, 0, '', NULL, 0),
(166, 1, 0, '帅哥，是来这里找女朋友的吗还是只是找那方面的朋友啊', '', 1, 15, 0, '', NULL, 0),
(167, 1, 0, '哥哥，我老公要好几天才能回家呢，来玩玩嘛', '', 1, 75, 0, '', NULL, 0),
(168, 1, 0, '怎么不理人家啊，是不是不喜欢跟妹妹聊天啊55555', '', 1, 16, 0, '', NULL, 0),
(169, 1, 0, '丝袜女', '', 1, 0, 3, '', NULL, 1),
(170, 1, 0, '丝袜1', '', 1, 169, 1, '', 'images/1/2016/09/n0V9AGW9gM8zw1EW1EaPP4sW9wweWp.jpg', 0),
(171, 1, 0, '哥哥喜欢穿丝袜的女生吗', '', 1, 169, 0, '', NULL, 0),
(172, 1, 0, '妹妹很喜欢穿黑色的丝袜呢', '', 1, 169, 0, '', NULL, 0),
(173, 1, 0, '朋友都说我腿比较长穿丝袜好看一点', '', 1, 169, 0, '', NULL, 0),
(174, 1, 0, '对了，哥哥身高多少呀', '', 1, 169, 0, '', NULL, 0),
(175, 1, 0, '哥哥你快说呀，我还现在还有事呢', '', 1, 150, 0, '', NULL, 0),
(176, 1, 0, '草榴', '', 1, 0, 3, '', NULL, 1),
(177, 1, 0, '哥哥知不知道什么网站可以看那方面的电影啊', '', 1, 176, 0, '', NULL, 0),
(178, 1, 0, '前男友以前送了一个草榴账号给妹妹，可是后来忘记账号了', '', 1, 176, 0, '', NULL, 0),
(179, 1, 0, '现在突然好想看，急急急！', '', 1, 176, 0, '', NULL, 0),
(180, 1, 0, '哥哥多推荐几个呗', '', 1, 176, 0, '', NULL, 0),
(181, 1, 0, '家乡是本地？', '', 1, 0, 3, '', NULL, 1),
(182, 1, 0, '你好，请问你的家乡是哪里的啊', '', 1, 181, 0, '', NULL, 0),
(183, 1, 0, '妹妹年纪有点大了，想找个本地的结婚', '', 1, 181, 0, '', NULL, 0),
(184, 1, 0, '真的拖不起了，你是真心来找女友的吧', '', 1, 181, 0, '', NULL, 0),
(185, 1, 0, '看片', '', 1, 0, 3, '', NULL, 1),
(186, 1, 0, '哥哥你好，(*^__^*) 嘻嘻……', '', 1, 185, 0, '', NULL, 0),
(187, 1, 0, '表情', '', 1, 185, 1, '', 'images/1/2016/09/mZU1eMuu6SlmS5SUusZU5ueU1m6EmZ.jpg', 0),
(188, 1, 0, '妹妹正在一个人在家看片呢', '', 1, 185, 0, '', NULL, 0),
(189, 1, 0, '想哥哥来陪妹妹一起看，⁄(⁄ ⁄•⁄ω⁄•⁄ ⁄)⁄嘿嘿', '', 1, 185, 0, '', NULL, 0),
(190, 1, 0, '渣男', '', 1, 0, 3, '', NULL, 1),
(191, 1, 0, '你好，请问你今年多大啊', '', 1, 190, 0, '', NULL, 0),
(192, 1, 0, '我以前是在厂里上班的，工作时间太长了，没时间找男朋友', '', 1, 190, 0, '', NULL, 0),
(193, 1, 0, '过了几年，家里人逼得紧，就把工作辞了，想找个靠谱的男朋友', '', 1, 190, 0, '', NULL, 0),
(194, 1, 0, '你呢，你是为什么来这里啊，可以聊聊吗', '', 1, 190, 0, '', NULL, 0),
(195, 1, 0, '真心的吗', '', 1, 0, 3, '', NULL, 1),
(196, 1, 0, '哥哥，我想问你一个问题，你有处女癖吗', '', 1, 195, 0, '', NULL, 0),
(197, 1, 0, '我以前在这个上面交过一个男朋友，但是后来他跟我爱爱的时候发现我不是处女就跟我分手了', '', 1, 195, 0, '', NULL, 0),
(198, 1, 0, '我真的很爱他，他居然因为这个小事跟我分手，这到底是为什么？', '', 1, 195, 0, '', NULL, 0),
(199, 1, 0, '所以想问一下哥哥，是不是你们男的都很在意女朋友是不是处？', '', 1, 195, 0, '', NULL, 0),
(200, 1, 0, '最近的电影', '', 1, 0, 3, '', NULL, 1),
(201, 1, 0, '豆瓣电影', '', 1, 200, 1, '', 'images/1/2016/09/alGvVPqSg9P9Gg9NH6o6zqsChFhicL.jpg', 0),
(202, 1, 0, '最近有什么好看的电影啊', '', 1, 200, 0, '', NULL, 0),
(203, 1, 0, '哥哥推荐个呗，想找个人一起看', '', 1, 153, 0, '', NULL, 0),
(204, 1, 0, '哥哥推荐个呗，想找个帅哥一起看呢', '', 1, 200, 0, '', NULL, 0),
(205, 1, 0, '近期上映', '', 1, 200, 1, '', 'images/1/2016/09/pJSdB3FfMM1Un47MD17t970jbj09ML.jpg', 0),
(206, 1, 0, '很急的要QQ', '', 1, 0, 3, '', NULL, 1),
(207, 1, 0, '帅哥，你是第一次来这吗，以前从没见过你呢', '', 1, 206, 0, '', NULL, 0),
(208, 1, 0, 'JPG', '', 1, 206, 1, '', 'images/1/2016/09/p95c50fyHzCP5hC0P91u15bS0H5Yu0.jpg', 0),
(209, 1, 0, '一个人在家真寂寞呀', '', 1, 206, 0, '', NULL, 0),
(210, 1, 0, '要QQ和微信', '', 1, 206, 2, 'audios/1/2016/09/A3JReR3NAi1PHDfp1R3qzPP3JiEdg3.mp3', NULL, 0),
(211, 1, 0, '帅哥你怎么不说话', '', 1, 206, 0, '', NULL, 0),
(212, 1, 0, '急急急急', '', 1, 206, 0, '', NULL, 0),
(213, 1, 0, '在这找到对象没', '', 1, 0, 3, '', NULL, 1),
(214, 1, 0, '你有女朋友了吗2', '', 1, 213, 2, 'audios/1/2016/09/uYP7l771SYja7Y7v6PXXhPj61ygvaK.mp3', NULL, 0),
(215, 1, 0, '我一个好闺蜜推荐我来这的，说这里的男生很靠谱', '', 1, 213, 0, '', NULL, 0),
(216, 1, 0, '她', '', 1, 213, 1, '', 'images/1/2016/09/tSX1XPupz9IT9da90XyWppst0d0s0J.jpg', 0),
(217, 1, 0, '这个是她，已经找到男朋友了呢', '', 1, 213, 0, '', NULL, 0),
(218, 1, 0, '我也想快点找个，急急急', '', 1, 213, 0, '', NULL, 0),
(219, 1, 0, '刚分手', '', 1, 0, 3, '', NULL, 1),
(220, 1, 0, '心情不好语音', '', 1, 219, 2, 'audios/1/2016/09/Viu36I5WS5BWLd65w5u5Z5iDnW3YY5.mp3', NULL, 0),
(221, 1, 0, '图片111', '', 1, 219, 1, '', 'images/1/2016/09/kle4R4R8Ee36EEvSvHgEra446l24gs.jpg', 0),
(222, 1, 0, '哥哥，你在哪，可以到我家里来安慰我吗', '', 1, 219, 0, '', NULL, 0),
(223, 1, 0, '没人陪我一起，好伤心555555', '', 1, 219, 0, '', NULL, 0),
(224, 1, 0, '看笑话', '', 1, 0, 3, '', NULL, 1),
(225, 1, 0, '帅哥，平时爱看相声吗', '', 1, 224, 0, '', NULL, 0),
(226, 1, 0, '笑点高吗', '', 1, 224, 2, 'audios/1/2016/09/Zt48Tq8YOOqc7HnwNYCCYcg9Yctzm5.mp3', NULL, 0),
(227, 1, 0, '刚刚看了一个很搞笑的视频乐死我了，哈哈哈', '', 1, 224, 0, '', NULL, 0),
(228, 1, 0, '帅哥，你能不能讲个笑话给我听呢', '', 1, 224, 0, '', NULL, 0),
(229, 1, 0, '不开心的时候做什么', '', 1, 0, 3, '', NULL, 1),
(230, 1, 0, '帅哥，你在吗？？？', '', 1, 229, 0, '', NULL, 0),
(231, 1, 0, '今天晚上想做什么不开心的时候你会怎么办呢', '', 1, 229, 2, 'audios/1/2016/09/nqkPPpq7XtiP7kIQ0kj07jjPPz3Iks.mp3', NULL, 0),
(232, 1, 0, '刚刚去阳台的时候发现内衣被人偷了，好桑心', '', 1, 229, 0, '', NULL, 0),
(233, 1, 0, '帅哥，你咋不理我呢，鹅鹅鹅', '', 1, 229, 0, '', NULL, 0),
(234, 1, 0, '打字好累', '', 1, 0, 3, '', NULL, 1),
(235, 1, 0, '帅哥，注册这里多久了呀，是刚来吗', '', 1, 234, 0, '', NULL, 0),
(236, 1, 0, '打字好累啊你微信或者QQ多少我加你语言聊', '', 1, 234, 2, 'audios/1/2016/09/Pbog8RnoRZ8ORs72DrXBZ7b22O2dNV.mp3', NULL, 0),
(237, 1, 0, '哦哦哦', '', 1, 234, 1, '', 'images/1/2016/09/N3ql1dG3AdqD5dzGFqqAL8zzz8t3B5.jpg', 0),
(238, 1, 0, '帅哥，你咋不回我呢，不回我我找别人拉', '', 1, 234, 0, '', NULL, 0),
(239, 1, 0, '在啊', '', 1, 0, 3, '', NULL, 1),
(240, 1, 0, '帅哥，帅哥在不在', '', 1, 239, 2, 'audios/1/2016/09/OEQfSj1kDFC5fsjd1BZfjsCFSFWQq1.mp3', NULL, 0),
(241, 1, 0, '帅哥，能看一下你的相片吗', '', 1, 239, 0, '', NULL, 0),
(242, 1, 0, 'bmp', '', 1, 239, 1, '', 'images/1/2016/09/taOx5yX7s5v571h15Us41X9VMNx754.jpg', 0),
(243, 1, 0, '帅哥在忙什么呢，怎么老是不理我啊', '', 1, 239, 0, '', NULL, 0),
(244, 1, 0, '家里人注册', '', 1, 0, 3, '', NULL, 1),
(245, 1, 0, '帅哥你是来这里相亲的吗', '', 1, 244, 0, '', NULL, 0),
(246, 1, 0, '家里人帮我注册了这里让我主动点找男朋友方便的话我们聊聊', '', 1, 244, 2, 'audios/1/2016/09/k5bf2B5bEe5Fd5pREEfrLN0QrdNFp5.mp3', NULL, 0),
(247, 1, 0, '朋友都说这里不错呢，我好多闺蜜都是在这找的男朋友', '', 1, 244, 0, '', NULL, 0),
(248, 1, 0, 'png', '', 1, 244, 1, '', 'images/1/2016/09/etsR0OC0fbgeMhcKdiaTdF0tjKObii.jpg', 0),
(249, 1, 0, '哥哥，你相片能给我瞅瞅吗', '', 1, 244, 0, '', NULL, 0),
(250, 1, 0, '离我这近吗', '', 1, 0, 3, '', NULL, 1),
(251, 1, 0, '哥哥，你好，请问哥哥贵姓啊', '', 1, 250, 0, '', NULL, 0),
(252, 1, 0, '你是哪里的离我这里近吗', '', 1, 250, 2, 'audios/1/2016/09/zRkNTkthzN9nkKTn5dRQn33ty9RZna.mp3', NULL, 0),
(253, 1, 0, '有空的话，约个时间见见面好吗', '', 1, 250, 0, '', NULL, 0),
(254, 1, 0, '平时加班多吗', '', 1, 0, 3, '', NULL, 1),
(255, 1, 0, '哥哥，请问你是做什么工作的呀', '', 1, 254, 0, '', NULL, 0),
(256, 1, 0, '你平时加班多吗', '', 1, 254, 2, 'audios/1/2016/09/WfSSo7krEsz7qvkOOs740FvKHpVVEJ.mp3', NULL, 0),
(257, 1, 0, '如果加班多的话我一个人在家应该会很寂寞吧', '', 1, 254, 0, '', NULL, 0),
(258, 1, 0, '人呢，咋不回我啊', '', 1, 254, 0, '', NULL, 0),
(259, 1, 0, '讲点有趣的', '', 1, 0, 3, '', NULL, 1),
(260, 1, 0, '哥哥，你在忙啥呢', '', 1, 259, 0, '', NULL, 0),
(261, 1, 0, '说说你有什么爱好吧，讲点有趣的聊聊', '', 1, 259, 2, 'audios/1/2016/09/dg6Ap15GZcz5DQkzQOgAHAzFZ7uAp6.mp3', NULL, 0),
(262, 1, 0, '哥哥人呢，怎么不理妹妹啦', '', 1, 259, 0, '', NULL, 0),
(263, 1, 0, '说你 的口味', '', 1, 0, 3, '', NULL, 1),
(264, 1, 0, '哥哥平时爱看片看的多吗', '', 1, 263, 0, '', NULL, 0),
(265, 1, 0, '你能告诉我你的口味吗', '', 1, 263, 2, 'audios/1/2016/09/Ar0rRq0P5fZdcu915UCgG970gUcI85.mp3', NULL, 0),
(266, 1, 0, '妹妹刚刚看了一部，看的内裤都湿了', '', 1, 263, 1, '', 'images/1/2016/08/bBiMgGh3m2bVmH3Q8A882WqWHm8w3W.jpg', 0),
(267, 1, 0, '妹妹刚刚看了一部，看的内裤都湿了呢', '', 1, 263, 0, '', NULL, 0),
(268, 1, 0, '上网有什么爱好', '', 1, 0, 3, '', NULL, 1),
(269, 1, 0, '找个合适的好吗，平时喜欢上网你有什么爱好啊', '', 1, 268, 2, 'audios/1/2016/09/WyzXS4afsf27BVfsJB3HZV2f0j31V1.mp3', NULL, 0),
(270, 1, 0, '000', '', 1, 268, 1, '', 'images/1/2016/09/hDLFDRpf6MF6FF3LM30ERDMHFLbGD8.jpg', 0),
(271, 1, 0, '哥哥有没有经常看这样的片子啊', '', 1, 268, 0, '', NULL, 0),
(272, 1, 0, '红包看毛片', '', 1, 0, 3, '', NULL, 1),
(273, 1, 0, '文件夹', '', 1, 272, 1, '', 'images/1/2016/09/NdevVep7BD9I9E68Idez8Fv8qZVEQq.jpg', 0),
(274, 1, 0, '哥哥想要看片片吗，我有好多片片哦', '', 1, 272, 0, '', NULL, 0),
(275, 1, 0, '给红包就给哥哥看哦，(*^__^*) 嘻嘻……', '', 1, 272, 0, '', NULL, 0),
(276, 1, 0, '全是新出来的片子哦', '', 1, 272, 0, '', NULL, 0),
(277, 1, 0, '树花凛', '', 1, 0, 3, '', NULL, 1),
(278, 1, 0, 'gtj-026', '', 1, 277, 1, '', 'images/1/2016/09/SB6ta7TBbcmm5ZEBgHz6DdEbynJeDH.jpg', 0),
(279, 1, 0, '树花凛最新的片子，哥哥想看不', '', 1, 277, 0, '', NULL, 0),
(280, 1, 0, '妹妹朋友刚刚特地从日本带回来的', '', 1, 277, 0, '', NULL, 0),
(281, 1, 0, '想看的话哥哥给个红包意思一下哦', '', 1, 277, 0, '', NULL, 0),
(282, 1, 0, '闪爱', '', 1, 0, 3, '', NULL, 1),
(283, 1, 0, '你们男人呀，都是群打招呼。', '', 1, 282, 0, '', NULL, 0),
(284, 1, 0, '就不能专一点么？', '', 1, 282, 0, '', NULL, 0),
(285, 1, 0, '留个联系方式吧。', '', 1, 282, 0, '', NULL, 0),
(286, 1, 0, '我最近刚分手，你要是有诚意，我可以接受见面哟。', '', 1, 282, 0, '', NULL, 0),
(287, 1, 0, '闪爱01', '', 1, 0, 3, '', NULL, 1),
(288, 1, 0, '帅哥，看上我啦？', '', 1, 287, 0, '', NULL, 0),
(289, 1, 0, '难得主动打招呼，居然不领情', '', 1, 287, 0, '', NULL, 0),
(290, 1, 0, '你微信多少，我加你', '', 1, 287, 0, '', NULL, 0),
(291, 1, 0, '还在吗？', '', 1, 287, 0, '', NULL, 0),
(292, 1, 0, '在的话一起去玩么？', '', 1, 287, 0, '', NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_hf2`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_hf2` (
  `id` int(11) NOT NULL,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '0为文本，1为图片，2为语音，3为组合',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '批次ID,0为第一级',
  `media_id` varchar(255) NOT NULL,
  `picurl` text,
  `sex` int(2) NOT NULL DEFAULT '0' COMMENT '0为不限，1为男，2为女',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_hf2_send`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_hf2_send` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '0',
  `sendid` int(10) NOT NULL DEFAULT '0',
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_idcard`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_idcard` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `idcard` varchar(20) NOT NULL,
  `realname` varchar(100) NOT NULL,
  `sex` int(2) NOT NULL COMMENT '1为男,2为女',
  `brith` int(10) NOT NULL,
  `province` int(10) NOT NULL,
  `city` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_idcard`
--

INSERT INTO `ims_jy_ppp_idcard` (`id`, `weid`, `idcard`, `realname`, `sex`, `brith`, `province`, `city`, `mid`, `createtime`) VALUES
(1, 1, '440582198510312320', '陈琳琳', 2, 499536000, 44, 4405, 93, 1481609388);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_kefu`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_kefu` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT 'text' COMMENT '客服接口消息类型',
  `content` text,
  `desc` text,
  `url` text,
  `picurl` text,
  `status` int(10) DEFAULT '0' COMMENT '0为成功,其他为错误代码',
  `createtime` int(10) NOT NULL,
  `sendid` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_kefu`
--

INSERT INTO `ims_jy_ppp_kefu` (`id`, `weid`, `mid`, `type`, `content`, `desc`, `url`, `picurl`, `status`, `createtime`, `sendid`) VALUES
(12, 1, 90, 'news', '叶枫，附近的''我会很洒脱''给您发了一封表白信', '', NULL, '', 0, 1481590413, 62),
(10, 1, 90, 'news', '叶枫，附近的''灯火阑珊处''给您发了一封表白信', '', NULL, '', 0, 1481590404, 56),
(11, 1, 90, 'news', '叶枫，附近的''可爱一如往常''给您发了一封表白信', '', NULL, '', 0, 1481590411, 76),
(9, 1, 90, 'news', '叶枫，附近的''ゞ初心№忘╰→EXO''给您发了一封表白信', '', NULL, '', 0, 1481590375, 59),
(13, 1, 91, 'news', '兰色姿恋厂商，附近的''你是年少的欢喜''给您发了一封表白信', '', NULL, '', 0, 1481590665, 78),
(14, 1, 90, 'news', '你收到37封表白信，请点击查看', '', NULL, '', 0, 1481592894, 0),
(15, 1, 91, 'news', '你收到41封表白信，请点击查看', '', NULL, '', 0, 1481592894, 0),
(16, 1, 90, 'news', '叶枫，附近的''梦清幽''给您发了一封表白信', '', NULL, '', 0, 1481592935, 14),
(17, 1, 90, 'news', '叶枫，附近的''长发如海藻''给您发了一封表白信', '', NULL, '', 0, 1481597231, 8),
(18, 1, 91, 'news', '兰色姿恋厂商，附近的''长发如海藻''给您发了一封表白信', '', NULL, '', 0, 1481597231, 8),
(19, 1, 92, 'news', '✨Admin✨，附近的''一身污味少女''给您发了一封表白信', '', NULL, '', 0, 1481597300, 83),
(20, 1, 92, 'news', '你收到48封表白信，请点击查看', '', NULL, '', 0, 1481609098, 0),
(21, 1, 94, 'news', '苹果篮球，附近的''重唱ensemble''给您发了一封表白信', '', NULL, '', 0, 1481610097, 73),
(22, 1, 94, 'news', '苹果篮球，附近的''代风轻吻你''给您发了一封表白信', '', NULL, '', 0, 1481610178, 87),
(23, 1, 94, 'news', '苹果篮球，附近的''筱楊''给您发了一封表白信', '', NULL, '', 0, 1481610272, 19),
(24, 1, 94, 'news', '苹果篮球，附近的''大雁''给您发了一封表白信', '', NULL, '', 0, 1481610284, 11),
(25, 1, 94, 'news', '苹果篮球，附近的''蜘足''给您发了一封表白信', '', NULL, '', 0, 1481610311, 12),
(26, 1, 94, 'news', '苹果篮球，附近的''Laundry 爱我别走''给您发了一封表白信', '', NULL, '', 0, 1481610553, 69),
(27, 1, 94, 'news', '苹果篮球，附近的''我会很洒脱''给您发了一封表白信', '', NULL, '', 0, 1481611252, 62),
(28, 1, 94, 'news', '苹果篮球，附近的''爱我就该放开我''给您发了一封表白信', '', NULL, '', 0, 1481611308, 49),
(29, 1, 94, 'news', '你收到77封表白信，请点击查看', '', NULL, '', 0, 1481617208, 0),
(30, 1, 95, 'news', '半杯咖啡₂₀₁₆，附近的''淤青''给您发了一封表白信', '', NULL, '', 0, 1481617287, 79),
(31, 1, 94, 'news', '苹果篮球，附近的''我们床上聊''给您发了一封表白信', '', NULL, '', 0, 1481617451, 34),
(32, 1, 95, 'news', '半杯咖啡₂₀₁₆，附近的''单纯的曾经''给您发了一封表白信', '', NULL, '', 0, 1481617451, 80),
(33, 1, 95, 'news', '半杯咖啡₂₀₁₆，附近的''一身污味少女''给您发了一封表白信', '', NULL, '', 0, 1481617468, 83),
(34, 1, 95, 'news', '半杯咖啡₂₀₁₆，附近的''超短裙''给您发了一封表白信', '', NULL, '', 45015, 1481618007, 68),
(35, 1, 95, 'news', '半杯咖啡₂₀₁₆，附近的''顺其自然''给您发了一封表白信', '', NULL, '', 45015, 1481618200, 60),
(36, 1, 95, 'news', '半杯咖啡₂₀₁₆，附近的''猫儿帽''给您发了一封表白信', '', NULL, '', 45015, 1481619369, 40),
(37, 1, 95, 'news', '半杯咖啡₂₀₁₆，附近的''眉眼如画、''给您发了一封表白信', '', NULL, '', 45015, 1481620179, 20),
(38, 1, 95, 'news', '半杯咖啡₂₀₁₆，附近的''ㄨ听♂小姐''给您发了一封表白信', '', NULL, '', 45015, 1481622521, 18),
(39, 1, 96, 'news', '古，附近的''痴怨''给您发了一封表白信', '', NULL, '', 0, 1481626805, 84),
(40, 1, 96, 'news', '古，附近的''机器猫''给您发了一封表白信', '', NULL, '', 0, 1481626873, 35),
(41, 1, 96, 'news', '古，附近的''怪她多情''给您发了一封表白信', '', NULL, '', 0, 1481626930, 45),
(42, 1, 96, 'news', '你收到45封表白信，请点击查看', '', NULL, '', 40003, 1481793404, 0),
(43, 1, 97, 'news', '叶枫，附近的''单纯的曾经''给您发了一封表白信', '', NULL, '', 0, 1481795489, 80),
(44, 1, 97, 'news', '叶枫，附近的''你是年少的欢喜''给您发了一封表白信', '', NULL, '', 0, 1481795953, 78),
(45, 1, 97, 'news', '叶枫，附近的''''给您发了一封表白信', '', NULL, '', 0, 1481796185, 56),
(46, 1, 97, 'news', '叶枫，附近的''''给您发了一封表白信', '', NULL, '', 0, 1481796437, 39);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_login_log`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_login_log` (
  `id` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_login_log`
--

INSERT INTO `ims_jy_ppp_login_log` (`id`, `weid`, `mid`, `createtime`) VALUES
(1, 1, 1, 1481587876),
(2, 1, 88, 1481588137),
(3, 1, 89, 1481589797),
(4, 1, 90, 1481590270),
(5, 1, 91, 1481590618),
(6, 1, 92, 1481597231),
(7, 1, 93, 1481609111),
(8, 1, 94, 1481610088),
(9, 1, 95, 1481617208),
(10, 1, 96, 1481626731),
(11, 1, 97, 1481795382);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_mailui`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_mailui` (
  `id` int(11) NOT NULL,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT 'ForLogoImage',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_mailui`
--

INSERT INTO `ims_jy_ppp_mailui` (`id`, `weid`, `displayorder`, `name`, `thumb`, `description`, `enabled`) VALUES
(1, 1, 1, '我的风景', 'images/1/2016/12/VvZtnOWrce77wuTz7cL7CZEu7VcL17.jpg', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_match`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_match` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `age` int(10) DEFAULT '0' COMMENT '0为不限,1为18-25,2为26-35,3为36-45,4为46-55,5为55以上',
  `height` int(10) DEFAULT '0' COMMENT '0为不限,1为160以下,2为161-165,3为166-170,4为170以上',
  `education` int(10) DEFAULT '0' COMMENT '0为不限,1为高中,中专及以上,2为大专及以上,3为本科及以上',
  `income` int(10) DEFAULT '0' COMMENT '0为不限,1为2000元以上,2为5000元以上,3为10000元以上',
  `province` int(10) NOT NULL,
  `blank` int(10) NOT NULL COMMENT '未填写的字段个数',
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_member`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_member` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `nicheng` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  `sex` int(2) NOT NULL COMMENT '1为男,2为女',
  `status` int(2) NOT NULL COMMENT '封号与否',
  `brith` int(10) NOT NULL,
  `province` int(10) NOT NULL,
  `city` int(10) NOT NULL,
  `credit` int(10) DEFAULT '0' COMMENT '金币',
  `baoyue` int(10) DEFAULT NULL COMMENT '包月过期时间',
  `shouxin` int(10) DEFAULT NULL COMMENT '收信宝过期时间',
  `type` int(2) NOT NULL COMMENT '3为工作人员虚拟用户,,1为微信,0为账户',
  `mobile_auth` int(2) DEFAULT '0' COMMENT '1为认证,0为未认证',
  `card_auth` int(2) DEFAULT '0' COMMENT '1为认证,0为未认证',
  `createtime` int(10) NOT NULL,
  `qrcode_id` int(10) DEFAULT '0',
  `parentid` int(10) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_member`
--

INSERT INTO `ims_jy_ppp_member` (`id`, `weid`, `uid`, `from_user`, `nicheng`, `avatar`, `mobile`, `pwd`, `beizhu`, `sex`, `status`, `brith`, `province`, `city`, `credit`, `baoyue`, `shouxin`, `type`, `mobile_auth`, `card_auth`, `createtime`, `qrcode_id`, `parentid`) VALUES
(90, 1, 1, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '叶枫', 'http://wx.qlogo.cn/mmopen/U6SFRE9VypFddsSWibOdRgTsjfXbYppPZRC0AMAt04gia6nw4BWicR5LmXibJ3z9ddEwQicecEs40xQtIWxN2PviaGcCIvbfVrrCxd/132', '', '', '', 1, 1, 662659200, 44, 4401, 0, NULL, NULL, 1, 0, 0, 1481590270, 0, 0),
(105, 1, 0, '', '花开花落', 'images/jy_ppp/xuni/3/213sadfsfsdwerqwe.jpg', '10000000008', '123456', '阳光明媚，温暖如初，你还没来我怎敢老去。', 2, 1, 639409181, 52, 5201, 0, NULL, NULL, 3, 1, 1, 1481796258, 0, 0),
(104, 1, 0, '', '梦中的花', 'images/jy_ppp/xuni/9/4a66d0160924ab18fbcd824033fae6cd7a890be9.jpg', '10000000007', '123456', '一帘红雨桃花谢，十里清阴柳影斜。', 2, 1, 682581395, 51, 5101, 0, NULL, NULL, 3, 1, 1, 1481796258, 0, 0),
(103, 1, 0, '', '相濡以沫', 'images/jy_ppp/xuni/4/3fe971cf3bc79f3d92abb0cfbaa1cd11708b29df.jpg', '10000000006', '123456', '晚安，这两字比任何的一句甜言蜜语都温馨。', 2, 1, 764059121, 35, 3501, 0, NULL, NULL, 3, 1, 1, 1481796258, 0, 0),
(102, 1, 0, '', '爱是一种信仰', 'images/jy_ppp/xuni/2/asdeq2weqwzzx4354.jpg', '10000000005', '123456', '我们就像天使的一半翅膀，只有相拥着才能够飞翔', 2, 1, 734025902, 53, 5301, 0, NULL, NULL, 3, 1, 1, 1481796258, 0, 0),
(101, 1, 0, '', '我的心事', 'images/jy_ppp/xuni/7/1c5f9f2f0708283842db68b0b899a9014d08f164.jpg', '10000000004', '123456', '雪花需要太阳光的融化、感情需要两个人的升华', 2, 1, 780859045, 13, 1301, 0, NULL, NULL, 3, 1, 1, 1481796258, 0, 0),
(100, 1, 0, '', '找个对我好', 'images/jy_ppp/xuni/6/2cec872bd40735faea973b0b9e510fb30e240814.jpg', '10000000003', '123456', '与你的记忆，开在下一个花季。', 2, 1, 764472045, 82, 8201, 0, NULL, NULL, 3, 1, 1, 1481796258, 0, 0),
(99, 1, 0, '', 'EXO°青春无悔', 'images/jy_ppp/xuni/10/14d7912397dda1441dcec6bcb4b7d0a20df486fd.png', '10000000002', '123456', '我愿像一颗流星，划过天际，只为许你一个愿望，燃烧自己。', 2, 1, 710533761, 21, 2101, 0, NULL, NULL, 3, 1, 1, 1481796258, 0, 0),
(98, 1, 0, '', '〆花环少女', 'images/jy_ppp/xuni/8/11f790529822720ec125828e7dcb0a46f31fabdf.jpg', '10000000001', '123456', '黎明前的曙光，是说明黑暗已经走远。', 2, 1, 687027259, 62, 6201, 0, NULL, NULL, 3, 1, 1, 1481796258, 0, 0),
(91, 1, 2, 'ozJkmt1L_xp_V4NTo0W6qdlQwAkU', '兰色姿恋厂商', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7ABicEI4Y0ODlyVs00IL9pU4677wURNYncFWf3TfvbPI2ibrwAjHXxzcuEicvBibYeJ72fmesI1ARWiaM34GVRPbA25ONf8TosMJ4M/0', '', '', '', 1, 1, 662659200, 44, 4401, 0, NULL, NULL, 1, 0, 0, 1481590618, 0, 0),
(92, 1, 14, 'ozJkmtzgkhi8NlDtvO4fFAfIsgRU', '✨Admin✨', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDu6ia3vRlKrFh0k4x3ZZNo3Vrq9Uksib7bAl358hs0hQJptOticAIfy1YJATk6ZOLESQpZdNRdOzibDQ/0', '', '', '', 1, 1, 662659200, 34, 3401, 0, NULL, NULL, 1, 0, 0, 1481597231, 0, 0),
(93, 1, 0, 'ozJkmt5WVyGSfs-fmn3S6lTRKa44', '温妮babyface', 'http://wx.qlogo.cn/mmopen/U6SFRE9VypGQmto7HmTbbhCV5EfdyxWOHttRibVFwGjALcV9rYJm9u1fuFMMiaia1N0ArSF80iaxC8JyYxXMlhFUqX8icxgQzNjQ0/0', '18565511400', '123456', '', 2, 0, 662659200, 44, 4401, 0, NULL, NULL, 1, 0, 0, 1481609111, 0, 0),
(94, 1, 15, 'ozJkmt5WVyGSfs-fmn3S6lTRKa44', '苹果篮球', 'images/1/2016/12/K2YEE0ZEzLCLq29KlzLkWdlEwRYM0a.jpeg', '13728022157', '123456', '', 1, 1, 662659200, 44, 4401, 0, NULL, NULL, 1, 0, 0, 1481610086, 0, 0),
(95, 1, 16, 'ozJkmt2i0qj5wOdVi4A3myPcMuSk', '半杯咖啡₂₀₁₆', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJM4iaC1UYVibXamwy3Liaj8JzWgkYvWe6R6qCregd4L7jaEGf1y3vFQfmCPibqgBKOhAiccEGr3SdVZKA/0', '', '', '', 1, 1, 662659200, 32, 3204, 0, NULL, NULL, 1, 0, 0, 1481617208, 0, 0),
(96, 1, 17, 'ozJkmt-hPB7SLQ6zLlP7_Fmb22zg', '古', 'http://wx.qlogo.cn/mmopen/U6SFRE9VypFddsSWibOdRgZLrg3eyichsSOrJs7qq2TIL144HROibWyNvHhibibwJYmM4der9p0pt3fNb91rRAKKHOA4ypBR2304E/0', '', '', '', 1, 1, 662659200, 62, 6229, 0, NULL, NULL, 1, 0, 0, 1481626731, 0, 0),
(97, 1, 18, 'o8cSQwGR4ZP_WVDr_cri6fTFvZPg', '叶枫', 'http://wx.qlogo.cn/mmopen/H0btX6VrC7DK9O9MghZd6tteY23zLM4cZ6ss7BsCenLXXILcOcWArrqNae3Wia7CRhriaGKQH03tIf5mWD64ho6KBDsiazJzTMb/0', '', '', '', 1, 1, 662659200, 44, 4401, 0, NULL, NULL, 1, 0, 0, 1481795379, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_mianrao`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_mianrao` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `zhaohu` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝异性发来的招呼类信件',
  `thumb` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝无头像的异性信件',
  `province` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝异省的异性信件',
  `age` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝不符合征友条件年龄的异性信件',
  `mobile` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝未验证手机的异性信件',
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_mobile`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_mobile` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_msg`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_msg` (
  `id` int(11) NOT NULL,
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
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_nickname`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_nickname` (
  `id` int(11) NOT NULL,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_pay_log`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_pay_log` (
  `id` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `from_user` varchar(250) DEFAULT NULL COMMENT '付款的from_user,为空时代表自己付的款',
  `fee` int(10) NOT NULL,
  `log` int(10) NOT NULL COMMENT '1为购买豆币,2为购买包月服务,3为购买收信宝',
  `status` int(10) NOT NULL COMMENT '付款状态',
  `plid` bigint(11) unsigned DEFAULT NULL COMMENT 'core_paylog表的id',
  `paytime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_pay_log`
--

INSERT INTO `ims_jy_ppp_pay_log` (`id`, `weid`, `mid`, `from_user`, `fee`, `log`, `status`, `plid`, `paytime`, `createtime`) VALUES
(1, 1, 94, NULL, 100, 2, 0, NULL, 0, 1481610110),
(2, 1, 94, NULL, 50, 2, 0, NULL, 0, 1481610131),
(3, 1, 94, NULL, 200, 1, 0, NULL, 0, 1481610172),
(4, 1, 90, NULL, 200, 1, 0, NULL, 0, 1481610578),
(5, 1, 94, NULL, 50, 2, 0, NULL, 0, 1481617283),
(6, 1, 97, NULL, 200, 1, 0, NULL, 0, 1481796417),
(7, 1, 97, NULL, 200, 1, 0, NULL, 0, 1481796423);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_price`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_price` (
  `id` int(11) NOT NULL,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `fee` int(10) NOT NULL,
  `credit` int(10) NOT NULL,
  `baoyue` int(10) NOT NULL,
  `shouxin` int(10) NOT NULL,
  `log` int(10) NOT NULL COMMENT '1为购买豆币,2为购买包月服务,3为购买收信宝',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  `huafei` int(10) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_price`
--

INSERT INTO `ims_jy_ppp_price` (`id`, `weid`, `displayorder`, `fee`, `credit`, `baoyue`, `shouxin`, `log`, `description`, `enabled`, `huafei`) VALUES
(1, 1, 0, 200, 2000, 0, 0, 1, '', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_report`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_report` (
  `id` int(11) NOT NULL,
  `weid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `reportid` int(11) NOT NULL,
  `report` text,
  `status` int(2) DEFAULT '0' COMMENT '0为审核中,1审核过',
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_rule`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_rule` (
  `id` int(11) NOT NULL,
  `rulename` varchar(255) NOT NULL,
  `desc` text,
  `ruleid` int(11) NOT NULL,
  `uniacid` int(11) unsigned NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_safe`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_safe` (
  `id` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '批次ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `description` text COMMENT '描述',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  `paixu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_safe`
--

INSERT INTO `ims_jy_ppp_safe` (`id`, `weid`, `name`, `parentid`, `displayorder`, `description`, `enabled`, `paixu`) VALUES
(46, 1, '赴异地约会陷入传销窝', 6, 0, '&lt;p&gt;刘先生离异多年，偶然机会注册了某婚恋网并结识了异地女孩C。C通过聊天了解到刘先生寻偶心情较急迫，便邀请刘先生来到其所在城市约会。当刘先生抵达C所在城市后发现其从事传销行业，并强迫刘先生加入。后经客服向警方求助，刘先生脱离危险并对C进行刑事拘留。&lt;/p&gt;\r\n&lt;p&gt;提示：请不要轻易单独去其他城市约见陌生异性。&lt;/p&gt;', 1, 0),
(44, 1, '假冒客服电话', 6, 0, '&lt;p&gt;近来有不法分子用虚假电话号码冒充客服行骗，请认准官方唯一客服电话&lt;/p&gt;\r\n&lt;p&gt;客服人员不会以任何借口索要用户充值卡/银行卡密码！官方将严肃追究该类行骗者应承担的责任.&lt;/p&gt;', 1, 0),
(45, 1, '帮充话费遇到骗子', 6, 0, '&lt;p&gt;王先生在某婚恋网结识了年龄女孩M。经聊天，王先生对M有了初步了解，这时M提出要求王先生帮其充值手机费。M先生为&ldquo;挣面子&rdquo;和表达诚意，便购买了充值卡，向M提供的手机号进行了充值。事后王先生醒悟，怀疑对方可能在行骗并向客服进行了求助。&lt;/p&gt;\r\n&lt;p&gt;提示：请不要帮异性充值话费，这是最常见骗术之一&lt;/p&gt;', 1, 0),
(42, 1, '举报须知', 5, 0, '&lt;p&gt;请您本着诚实、守信的原则,对举报行为负责,同时您将受到保护.如有虚假或恶意投诉,将受到网站严肃处理,后果严重者承担相应法律责任.&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n&lt;p&gt;站方免责声明&lt;/p&gt;\r\n&lt;p&gt;官方会尽力维护网络交友平台的严肃性,但仍难确保每位用户资料的真实性及其交友动机的正当性,特别提醒广大用户在交友过程中注意人身财产安全&lt;/p&gt;', 1, 0),
(43, 1, '投诉举报入口说明', 5, 0, '点击对方空间页下方的【举报】链接', 1, 0),
(39, 1, '封号', 4, 0, '违反有关规定并予以警告过的用户仍屡此违反规定,则封锁其账号.', 1, 0),
(40, 1, '报警', 4, 0, '情节严重,超出站方能力范围则向公安机关举报. ', 1, 0),
(41, 1, '黑名单公告', 4, 0, '&lt;p&gt;经核实，以下被加入黑名单的账号存在违反有关规定的行为，特此予以公告。&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n&lt;p&gt;今生 女 27岁 广西&lt;/p&gt;\r\n&lt;p&gt;来世 女 35岁 上海&lt;/p&gt;', 1, 0),
(37, 1, '交往提高警惕', 30, 0, '&lt;p&gt;交往过程中,对方出现以下任何行为,请您提高警惕&lt;/p&gt;\r\n&lt;p&gt;1.首次见面或交往时间不长索取钱财或提出性要求&lt;/p&gt;\r\n&lt;p&gt;2.个人信息自相矛盾,包括年龄、兴趣、外貌、婚姻状况、职业等&lt;/p&gt;\r\n&lt;p&gt;3.本人外表与网站形象照明显不符&lt;/p&gt;\r\n&lt;p&gt;4.在网络上建立了深入发展的亲密关系,却拒绝进行电话交谈或见面&lt;/p&gt;', 1, 0),
(38, 1, '警告', 4, 0, '违反有关规定且情节较轻的用户,予以警告.', 1, 0),
(36, 1, '时刻保持警觉', 29, 0, '&lt;p&gt;时刻保持警觉:&lt;/p&gt;\r\n&lt;p&gt;在约会过程中要保持警觉,如果感觉到或发生让自己害怕或危险的事情,要保持冷静,及时离开.必要时可请求他人帮助或报警以保障人身安全.&lt;/p&gt;', 1, 0),
(34, 1, '确认真实身份', 29, 0, '&lt;p&gt;确认真实身份:&lt;/p&gt;\r\n&lt;p&gt;当双方见面后最好先确认真实身份,可出示身份证或其他有效证件,保证交友安全.&lt;/p&gt;', 1, 0),
(35, 1, '控制约会时间', 29, 0, '&lt;p&gt;控制约会时间:&lt;/p&gt;\r\n&lt;p&gt;如果您是新手,则请格外牢记忠告,即使企盼这次约会已经很长时间,而且做好了精心准备,并且约会非常美满,我们还是请您不要忘记早些回家,让家人放心.&lt;/p&gt;', 1, 0),
(31, 1, '地址信息要保密', 28, 0, '&lt;p&gt;地址信息要保密:&lt;/p&gt;\r\n&lt;p&gt;骗子为了不浪费时间和金钱,往往发信直接索要您的家庭住址或工作地点等详细信息,方便日后骗取钱财.若您不提供,骗子可能会马上放弃行骗,转移目标&lt;/p&gt;', 1, 0),
(32, 1, '沟通工具不泄露', 28, 0, '&lt;p&gt;沟通工具不泄露:&lt;/p&gt;\r\n&lt;p&gt;电话号及QQ号属于私人沟通工具.骗子获取联系方式后,会拨打骚扰电话或发送垃圾广告信息.望用户在与对方深入了解后再告知此类信息.&lt;/p&gt;', 1, 0),
(33, 1, '如何选择约会地点', 29, 0, '&lt;p&gt;如何选择约会地点:&lt;/p&gt;\r\n&lt;p&gt;选择公共场所约会,如肯德基、麦当劳、公共餐厅等.并告知自己的朋友或家人,不要去对方的家里或者陌生的KTV,酒吧等.&lt;/p&gt;', 1, 0),
(28, 1, '初期联系，隐私内容不透露', 3, 0, '', 1, 0),
(29, 1, '约会见面，防人之心不可无', 3, 0, '', 1, 0),
(30, 1, '交往期间，日久接触见人心', 3, 0, '', 1, 0),
(27, 1, '事例四:提供性服务', 14, 0, '&lt;p&gt;提供性服务:对方初次来信便透漏QQ、手机号,宣传提供性服务,骗取钱财.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 有些女用户上传虚假漂亮照片,直接给男性发送私信,包含&quot;兼职一夜情&quot;、&quot;新鲜妹妹上门服务&quot;等内容,并留有联系方式.当男性与其取得联系后提供违法性服务.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;为了你的人身和财物安全,请用户朋友们杜绝与这类人员联系,以免被骗财骗色或者产生其他不良后果.&lt;/p&gt;', 1, 0),
(26, 1, '事例三:代孕广告', 14, 0, '&lt;p&gt;代孕广告:骗子以代孕为由,发送代孕信息,骗取钱财.若发现此类信息请及时举报,以净化网站交友环境.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 台湾年轻美貌的少妇因为丈夫没有生育能力,在网上求代孕,并称愿意给代孕者50万,19岁的贵州男子小张竟信以为真,结果50万没赚到,倒是被骗了28800元的所谓&quot;代孕手续费&quot;.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;网友要懂得甄别真假,不要抱着贪小便宜的心理,轻信各种所谓的&quot;代孕&quot;信息,上当受骗.&lt;/p&gt;', 1, 0),
(25, 1, '事例二:异地传销', 14, 0, '&lt;p&gt;异地传销:对方以约会为由,要求您去其所在地区见面,对方很可能从事传销行业,并会丛恿你一同进行传销,害人害己 .&lt;/p&gt;\r\n&lt;p&gt;案例分析: 徐女士在网上认识A先生,沟通一段时间后,男方便要求徐女士到异地看他,徐女士欣然接受并前往.哪知到了异地才知男方是某传销行业的下线,与徐女士接触是进行有目的的传销.徐女士惊慌逃脱后向警方报案.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;异地网友见面需谨慎,去之前需对目的地进行一番了解,并一路保持电话畅通,若感觉情况不对,应及时离开或选择报警.&lt;/p&gt;', 1, 0),
(24, 1, '事例一:中奖圈套', 14, 0, '&lt;p&gt;中奖圈套:骗子会以站方的名义发送中奖消息.请不要轻信信件中公布的&ldquo;领奖&rdquo;网站.官方不会授权其他单位发布任何形式的中奖通知.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 骗子多以中奖通知的形式发送如下虚假信息:&quot;您|已|获|得|免|费|苹|果|手|机|一|部,请|邮|寄|邮|费|至****.&quot;因邮寄费用不是很高,多数被骗用户便自认倒霉不再追究.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;该网发布的中奖信息均为管理员名称及管理员统一头像发送,以区别于会员间的往来信件.&lt;/p&gt;', 1, 0),
(23, 1, '事例二:地址信息泄露', 13, 0, '&lt;p&gt;地址信息泄露:沟通中泄露自己的家庭住址、公司地址等信息,可能造成人身财产安全损失.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 陈女士在网站认识某男子,在多次交流中曾透露其单位地址.一天陈女士在单位门口见到一男士等她还自称是网上认识的,但陈女士并未想与此人见面.陈女士觉得自己的人身安全受到了威胁,自此陈女士在网上交友都不再透漏地址信息.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;提供信息时需谨慎,为保证人身财产安全,请与对方进一步了解后再告知个人信息.&lt;/p&gt;', 1, 0),
(22, 1, '事例一:沟通工具泄露', 13, 0, '&lt;p&gt;沟通工具泄露：骗子会在沟通过程中获取你的手机号或QQ号码,随后会给你拨打骚扰电话或发送垃圾广告信息.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 北京某男在网上交友过程中,有一女生主动发信提供手机号,并要求对方与之交换联系方式.几天后,男用户收到某婚介公司的电话,声称可以为其提供线下婚姻介绍服务,并不断对其进行电话骚扰.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;建议你与对方有一定了解后再提供联系方式,避免受到骚扰电话和垃圾信息的打扰.&lt;/p&gt;', 1, 0),
(21, 1, '事例二:利用感情骗钱财', 12, 0, '&lt;p&gt;利用感情骗钱财:骗子在和你深入了解,获得你的信任后,以各种方法骗取你的个人信息、银行卡号、密码等.以骗取巨额钱财.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 方女士网上认识A先生,在3个月交往期间,A先生假意骗方女士出钱投资开店,并劝说投资越多回报越多.在A先生的花言巧语下,方女士先后3次投资近十万元.之后,该男子就杳无音讯了.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;交友时需小心谨慎,建议在双方感情稳定后再告知一些私人信息或与之有钱财往来,以防人财两空.&lt;/p&gt;', 1, 0),
(20, 1, '事例一:以性需求为目的', 12, 0, '&lt;p&gt;以性需求为目的:骗子在与你深入了解后,便会提出发生性关系等要求.以感情为谎骗财骗色.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 女孩小张哭着到派出所报警,称前一天晚上与一名男网友见面开房,早晨醒来发现网友不辞而别,自己衣衫不整,手机钱包都不见了.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;女性用户交友时需提高警惕,对方提出的要求需仔细斟酌,以免给自己带来伤害.&lt;/p&gt;', 1, 0),
(19, 1, '事例五:高额声讯电话', 11, 0, '&lt;p&gt;高额声讯电话:骗子在沟通过程中,主动或被动提供电话号码声称是自己的电话,但其实是高额收费的声讯电话.请勿随便轻信拨打！&lt;/p&gt;\r\n&lt;p&gt;案例分析: 安徽的王先生在网上认识了一个美女网友,两人聊的很是投机.美女多次要求给她打电话陪她聊天.事后王先生发现他的电话账单中莫名其妙多出了300元,当王先生意识到是高额声讯电话诈骗时,该女网友也消失得无影无踪了.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;遇到网友提供的电话号码需要仔细查看,必要时通过搜索引擎进行查询&lt;/p&gt;', 1, 0),
(18, 1, '事例四:借款诈骗', 11, 0, '&lt;p&gt;借款诈骗:对方在与你进一步了解后,会以家庭困难、异地被骗等各种理由诉说自己的苦境,请求你给其汇款、转账等.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 王先生和刘女士在网上认识有2个月了,一日王先生与刘女士哭诉家中父亲有病住院,需支付高额手术费,自己却没钱医治.刘女士怜悯心起便答应汇款相助,哪知自此以后这个所谓的王先生杳无音讯.刘女士只好报警.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;请勿相信任何未曾见面即要求汇款或充值的理由,即便见面后,涉及到金钱往来的事情,也需格外小心.&lt;/p&gt;', 1, 0),
(17, 1, '事例三:酒托饭托', 11, 0, '&lt;p&gt;酒托饭托:对方会与你约会见面,随后将你带至不知名的KTV、饭店或其他娱乐场所,与不良商家勾结欺骗,巨额敲诈.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 李先生是辽宁人,在网上与女网友聊天,觉得甚是投缘.对方主动提约会见面.见面后女方带领其去某KTV,但结账时,李先生傻眼了,他没想到唱个歌,点了点东西竟然要1800多元钱,只得硬着头皮付了钱.&lt;/p&gt;\r\n&lt;p&gt;建议&lt;/p&gt;\r\n&lt;p&gt;用户在交友时需谨慎,如不慎被骗到KTV、咖啡厅,结帐时发现帐单价格过高,可借去洗手间等为由拨打电话报警.&lt;/p&gt;', 1, 0),
(16, 1, '事例二:骗电话费', 11, 0, '&lt;p&gt;骗电话费:对方会与您进行沟通,取得你的信任后,便会要你帮助充值手机话费,请不要上当！&lt;/p&gt;\r\n&lt;p&gt;案例分析: 刘先生在网上认识美女C,并与之深入沟通后,美女C多次声称自己手机欠费,撒娇要刘先生给其购买充值卡或充话费,当刘先生提出见面时,对方又婉言拒绝.最终刘先生意识到美女C就是骗他钱财时也只能认栽.&lt;/p&gt;\r\n&lt;p&gt;提醒：&lt;/p&gt;\r\n&lt;p&gt;遇到非常热情,联系时间很短就主动要求确立情侣关系的人需要提高警惕.不要轻易为他人支付电话费,以免上当受骗&lt;/p&gt;', 1, 0),
(14, 1, '其他骗术', 2, 0, '', 1, 0),
(15, 1, '事例一:骗路费', 11, 0, '&lt;p&gt;骗路费：对方会以赴异地与您见面为由,要求您提供其路费花销（火车票/飞机票）,以骗取钱财.&lt;/p&gt;\r\n&lt;p&gt;案例分析:&lt;/p&gt;\r\n&lt;p&gt;朱女士在网上认识了某男,俩人深入了解后,决定约会见面.过了一天,男方来电声称路上钱丢了,要求朱女士汇款救济,朱女士照做后,男方又声称没收到,要求再汇一次,朱女士也照做了.然而过了两天此男士都没再联系过.当朱女士再拨打其电话时已找不到此人,方知自己被骗.&lt;/p&gt;\r\n&lt;p&gt;建议:&lt;/p&gt;\r\n&lt;p&gt;请勿相信任何未曾见面即要求汇款或转账的理由,涉及到金钱往来的事情,需格外小心.&nbsp;&lt;/p&gt;', 1, 0),
(12, 1, '情感诈骗', 2, 0, '', 1, 0),
(13, 1, '隐私泄露', 2, 0, '', 1, 0),
(11, 1, '经济诈骗', 2, 0, '', 1, 0),
(10, 1, '花篮托', 1, 0, '&lt;p&gt;此类行骗人员多为30-50岁之间声称事业有成的男性，他们通常不会留下自己的任何联系方式，只是在一开始便索要对方的电话号码，通过电话急切的与对方建立亲密关系，使用各种亲昵的方式骗取对方信任，接着就会以公司开业、店面开张为由，要求对方送花篮。&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n&lt;p&gt;防花篮托指南：&lt;/p&gt;\r\n&lt;p&gt;1、衣着西装革履（比较光鲜），年龄在40几岁的男性用户在一开始便索要联系电话时，需要提高谨慎；&lt;/p&gt;\r\n&lt;p&gt;2、在电话联系的过程中，对方一旦提出自己的公司开业、店面开张，并且要求汇款时，务必提高警惕，断绝与此人的联系！&lt;/p&gt;', 1, 0),
(9, 1, '钱财诈骗', 1, 0, '&lt;p&gt;女性通常会找各种理由让对方为其买充值卡、汇钱、寄路费等，甚至以&lsquo;考验对方的真诚度&rsquo;为借口，要求对方充值汇款。&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n&lt;p&gt;防钱财欺诈指南：&lt;/p&gt;\r\n&lt;p&gt;交流过程中，对方一旦提及钱财相关的语句即需提高谨慎。&lt;/p&gt;', 1, 0),
(8, 1, '代孕', 1, 0, '&lt;p&gt;此类行骗人员会假借各种理由寻找健康男士要求代孕，并承诺给予高额的回报来诱惑男用户上当。她们通常会持续发送带有联系方式的信件，但是在网站上不与对方进行下一步的沟通，当用户加了她们留在网站上的qq时，会发现其qq的资料里写着代孕相关的信息来进一步行骗。&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n&lt;p&gt;防代孕指南：&lt;/p&gt;\r\n&lt;p&gt;1、当女性用户上来就给你发联系方式，并且没有进一步沟通时，男性用户需要提高警惕；&lt;/p&gt;\r\n&lt;p&gt;2、当怀疑其存在代孕行为倾向时，即考虑停止通过其他联系方式与其取得进一步的联系。&lt;/p&gt;', 1, 0),
(1, 1, '行骗类型', 0, 0, '', 1, 1),
(2, 1, '警惕诈骗', 0, 0, '', 1, 1),
(3, 1, '防骗指南', 0, 0, '', 1, 0),
(4, 1, '处罚方式', 0, 0, '', 1, 1),
(5, 1, '投诉举报', 0, 0, '', 1, 0),
(6, 1, '热点问题', 0, 0, '', 1, 0),
(7, 1, '酒托', 1, 0, '&lt;p&gt;双方聊天时会索要对方联系方式，持续坚持双方见面了解，并且找各种理由约对方到指定地点见面，被指定地点提供的饮料酒水或食品价格通常会比较昂贵，对方会非常热情的点单，大部分是高级酒水、果盘（她们可以从中获利），消费完后，会找各种借口先行离开，由对方结账。&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n&lt;p&gt;防酒托指南：&lt;/p&gt;\r\n&lt;p&gt;1、女性在沟通过程中积极主动的索要你的联系方式，在没有深入了解的情况下即提出见面了解时，男性朋友需提高警惕；&lt;/p&gt;\r\n&lt;p&gt;2、首次见面由自己确定见面的地点，或者尽量选择人多的公共场合见面，如KFC、麦当劳等；&lt;/p&gt;\r\n&lt;p&gt;3、如不慎被骗，在发现后需冷静对待，及时打电话报警。&lt;/p&gt;', 1, 0),
(47, 1, '陷入热恋人财两空', 6, 0, '&lt;p&gt;郑女士30岁，从事金融行业，单身待嫁。近日郑女士在某婚恋网认识了同城男士Z，几日聊天后觉得相见恨晚，Z提出见面后郑女士欣然同意。双方首次约会后均表示满意，迅速确立了恋爱关系，当晚用餐后，Z和郑女士便在某快捷酒店开房留宿。数日后，Z以生意周转为借口多次向郑女士借钱，郑女士没有提防，将数万元积蓄都交付给Z。交往一月后，Z以各种理由搪塞郑女士，不再与其见面，并更换电话号码，郑女士意识到可能上当，并在客服协助下报警。&lt;/p&gt;\r\n&lt;p&gt;提示：骗子往往在取得异性信任后骗财骗色，请不要轻信陌生人！&lt;/p&gt;', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_setting`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_setting` (
  `id` int(11) unsigned NOT NULL,
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
  `dw_yunpaykey` varchar(255) NOT NULL,
  `dw_yunpay` varchar(255) NOT NULL,
  `partner` varchar(255) NOT NULL,
  `seller_email` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_setting`
--

INSERT INTO `ims_jy_ppp_setting` (`id`, `weid`, `aname`, `sharetitle`, `sharedesc`, `sharelogo`, `copyright`, `copyrighturl`, `zhuce_bg`, `zhuce_text`, `adminthumb`, `sms_type`, `sms_sign`, `sms_product`, `sms_username`, `sms_pwd`, `address`, `province`, `city`, `chat`, `idcard`, `doubi`, `unit`, `jiange`, `shangxian`, `tel`, `kftime`, `rule`, `createtime`, `thumb`, `kjmsg_num`, `kjmsg_jiange`, `moni`, `bd_ak`, `indexui`, `unzhuce`, `kjmsg_jiange2`, `user_addr`, `youhuo_pay`, `mail_float`, `sql_style`, `huafei`, `huafei_thumb`, `stat_style`, `kjmsg_jiange3`, `kjmsg_jiange4`, `cz_send_style`, `dw_style`, `cz_style`, `chat_style`, `czdh_style`, `mail_style`, `detail_style`, `chatui_style`, `tgy_sale`, `tgy_parent`, `tgy_kl_num`, `tgy_kl_per`, `tgy_min`, `dw_yunpaykey`, `dw_yunpay`, `partner`, `seller_email`) VALUES
(1, 1, '爱赞婚恋', '爱赞婚恋-同城帅哥美女快速约会，快来寻找属于你的缘分吧！ ', '3000万单身男女在线寻找另一伴', 'http://www.apwei.cn/attachment/images/1/2016/12/L8tR8WBMx2ycVVcLRh2rExhpWRjb8b.jpg', '爱赞婚恋版权', '', 'http://www.apwei.cn/attachment/images/1/2016/12/a5qegISqe3GGV2FbIcNG2FnCGR03eG.jpg', '1亿9836万美女帅哥在这里等你哦~', 'http://www.apwei.cn/addons/jy_ppp/images/adminthumb.png', 2, '', '', '', '', 0, 11, 0, 20, 60, '豆币', '豆', 30, 12, '18565188982', '9:00-21:00 周一至周五', '&lt;p&gt;本网站是一个严肃纯净的婚恋交友软件，用户（以下也称&ldquo;会员&rdquo;）在此注册为征友会员并在之后进行的征友活动中应遵守以下会员注册条款：&lt;br /&gt;&lt;br /&gt;1、注册条款的接受&lt;br /&gt;一旦会员注册即表示会员已经阅读并且同意该协议，并接受所有的注册条款。&lt;br /&gt;&lt;br /&gt;2、会员注册条件&lt;br /&gt;1) 申请注册成为会员应同时满足下列全部条件：在注册之日以及此后使用交友服务期间必须以恋爱或者婚姻为目的；在注册之日以及此后使用交友服务期间必须是单身状态，包括未婚、离异或是丧偶；在注册之日必须年满18周岁以上。&lt;br /&gt;2) 为更好的享有提供的服务，会员应：提供本人真实、正确、最新及完整的资料； 随时更新登记资料，保持其真实性及有效性；提供真实有效的联系人手机号码；征友过程中，务必保持征友帐号的唯一性。&lt;br /&gt;3) 若会员提供任何错误、不实或不完整的资料，或被怀疑资料为错误、不实或不完整及违反会员注册条款的，或被怀疑其会员资料、言行等有悖于&ldquo;严肃纯净的婚恋交友&rdquo;主题的，官方将有权修改会员的注册昵称、独白等，或暂停或终止该会员的帐号，或暂停或终止提供全部或部分服务。&lt;br /&gt;&lt;br /&gt;3、会员账号名称安全&lt;br /&gt;任何注册和使用的账号名称，不得有下列情形：&lt;br /&gt;（一）违反宪法或法律法规规定的；&lt;br /&gt;（二）危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；&lt;br /&gt;（三）损害国家荣誉和利益的，损害公共利益的；&lt;br /&gt;（四）煽动民族仇恨、民族歧视，破坏民族团结的；&lt;br /&gt;（五）破坏国家宗教政策，宣扬邪教和封建迷信的；&lt;br /&gt;（六）散布谣言，扰乱社会秩序，破坏社会稳定的；&lt;br /&gt;（七）散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；&lt;br /&gt;（八）侮辱或者诽谤他人，侵害他人合法权益的；&lt;br /&gt;（九）含有法律、行政法规禁止的其他内容的。&lt;br /&gt;会员以虚假信息骗取账号名称注册，或其账号头像、简介等注册信息存在违法和不良信息的，官方有权采取通知限期改正、暂停使用、注销登记等措施。&lt;br /&gt;对冒用关联机构或社会名人注册账号名称的会员，官方有权注销其账号。&lt;br /&gt;&lt;br /&gt;4、服务说明&lt;br /&gt;1) 在提供网络服务时，可能会对部分网络服务收取一定的费用，在此情况下，会在相关页面上做明确的提示。如会员拒绝支付该等费用，则不能使用相关的网络服务。付费业务将在本注册条款的基础上另行规定服务条款，以规范付费业务的内容和双方的权利义务，会员应认真阅读，如会员购买付费业务，则视为接受付费业务的服务条款。&lt;br /&gt;2) 无论是付费业务还是免费提供服务，上述服务均有有效期，有效期结束后服务将自动终止，且有效期不可中断或延期。除非本注册条款另有规定，所有付费业务均不退费。&lt;br /&gt;3) 对于利用服务进行非法活动，或其言行（无论线上或者线下的）背离严肃交友目的的，官方将严肃处理，包括将其列入黑名单、将其被投诉的情形公之于众、删除会员帐号等处罚措施。&lt;br /&gt;4) 官方权向其会员发送广告信，或为组织线下活动等目的，向其会员发送电子邮件、短信或电话通知。由于手机网络的特殊性，官方有权获取会员的手机信息，如手机号码或会员的基站位置等。&lt;br /&gt;5) 为提高会员的交友的成功率和效率的目的，官方有权将会员的交友信息在合作网站上进行展示或其他类似行为。&lt;br /&gt;&lt;br /&gt;5、免责条款&lt;br /&gt;1) 不保证其提供的服务一定能满足会员的要求和期望，也不保证服务不会中断，对服务的及时性、安全性、准确性都不作保证。&lt;br /&gt;2) 对于会员通过提供的服务传送的内容，官方会尽合理努力按照国家有关规定严格审查，但无法完全控制经由网站服务传送的内容，不保证内容的正确性、完整性或品质。因此会员在使用服务时，可能会接触到令人不快、不适当或令人厌恶的内容。在任何情况下，官方均不为会员经由网站服务以张贴、发送电子邮件或其它方式传送的任何内容负责。但官方有权依法停止传输任何前述内容并采取相应行动，包括但不限于暂停会员使用网站服务的全部或部分，保存有关记录，并根据国家法律法规、相关政策在必要时向有关机关报告并配合有关机关的行动。&lt;br /&gt;3) 对于网站提供的各种广告信息、链接、资讯等，官方会对广告内容进行初步审核，但是难以确保对方产品真实性、合法性或可靠性，由于产品购买导致的相关责任主要由广告商承担；敬告用户理性看待，如需购买或者交易，请谨慎考虑。并且，对于会员经由服务与广告商进行联系或商业往来，完全属于会员和广告商之间的行为，与官方无关。对于前述商业往来所产生的任何损害或损失，官方不承担任何责任。&lt;br /&gt;4) 对于用户上传的照片、资料、证件等，官方已采用相关措施并已尽合理努力进行审核，但不保证其内容的正确性、合法性或可靠性，相关责任由上传上述内容的会员负责。&lt;br /&gt;5) 会员以自己的独立判断从事与交友相关的行为，并独立承担可能产生的不利后果和责任，官方不承担任何法律责任。&lt;br /&gt;6)依据有关法律法规的规定或依据行政机关、司法机关、检察机关的要求，向其提供会员的基本信息或站内聊天信息，上述行为侵犯会员隐私权的，官方不承担任何法律责任。&lt;br /&gt;7)作为交友平台，帮助用户寻找心仪伴侣是我们的服务内容。官方推出的有缘小助手、红娘服务、收信宝等服务，全都是在用户同意并主动授权的情况下帮助授权用户寻找异性的功能性服务。不能保证用户通过此类服务授权由系统自动发出或接收到的信息完全满足用户交友需求。&lt;br /&gt;有缘小助手，为了提高用户处理私信的能力，看到更多符合自己要求的异性来信，提供了有缘小助手服务。在用户主动授权设置有缘小助手的情况下，有缘小助手会帮助用户过滤掉信箱中异性发来的招呼类信件，此类过滤掉的私信只是设为已读，仍然存于授权用户的信箱中。过滤的同时给符合授权用户征友要求的异性发送系统自动做出的信件回复。回复内容由官方根据用户交友互动中最常用的词语拟定，并由系统随机选取后发送。&lt;br /&gt;红娘服务，为了帮助女用户找到符合自己要求的异性，提供了红娘服务。红娘服务内容包括：优先将红娘会员推荐给优质男性用户，获得更多交流机会；红娘将帮助申请红娘服务的用户向符合其征友要求的异性询问交友意向；实时监控询问总数。&lt;br /&gt;收信宝，为了帮助男用户找到符合自己要求的异性，提供了收信宝服务。收信宝服务内容包括：优先将收信宝用户展示给女用户，通过替男用户打招呼的方式向符合男用户征友要求的女用户介绍男用户，从而增加男用户收信。 &lt;br /&gt;以上三种服务用户可以自行取消。&lt;br /&gt;8) 为了促进用户互动，产品上的组件应用或小游戏都带有触发招呼的功能。用户在玩此功能的组件或小游戏的同时会给符合自己征友要求的异性发去问候招呼。不能保证用户通过此类组件或小游戏发出或接受到的信息完全满足用户的交友需求。&lt;br /&gt;&lt;br /&gt;6、会员应遵守以下法律法规：&lt;br /&gt;1) 提醒会员在使用服务时，遵守《中华人民共和国合同法》、《中华人民共和国著作权法》、《全国人民代表大会常务委员会关于维护互联网安全的决定》、《中华人民共和国保守国家秘密法》、《中华人民共和国电信条例》、《中华人民共和国计算机信息系统安全保护条例》、《中华人民共和国计算机信息网络国际联网管理暂行规定》及其实施办法、《计算机信息系统国际联网保密管理规定》、《互联网信息服务管理办法》、《计算机信息网络国际联网安全保护管理办法》、《互联网电子公告服务管理规定》、《互联网用户账号名称管理规定》等相关中国法律法规的规定。&lt;br /&gt;2) 在任何情况下，如果官方有理由认为会员使用服务过程中的任何行为，包括但不限于会员的任何言论和其它行为违反或可能违反上述法律和法规的任何规定，可在任何时候不经任何事先通知终止向该会员提供服务。&lt;br /&gt;&lt;br /&gt;7、禁止会员从事下列行为:&lt;br /&gt;1)发布信息或者利用服务时在网页上或者利用服务制作、复制、发布、传播以下信息：反对宪法所确定的基本原则的；危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；损害国家荣誉和利益的；煽动民族仇恨、民族歧视、破坏民族团结的；破坏国家宗教政策，宣扬邪教和封建迷信的；散布谣言，扰乱社会秩序，破坏社会稳定的；散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；侮辱或者诽谤他人，侵害他人合法权利的；含有虚假、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它有悖道德、令人反感的内容；含有中国法律、法规、规章、条例以及任何具有法律效力的规范所限制或禁止的其它内容的。&lt;br /&gt;2) 使用服务的过程中，以任何方式危害未成年人的利益的。&lt;br /&gt;3) 冒充任何人或机构，包含但不限于冒充工作人员、版主、主持人，或以虚伪不实的方式陈述或谎称与任何人或机构有关的。&lt;br /&gt;4) 将侵犯任何人的肖像权、名誉权、隐私权、专利权、商标权、著作权、商业秘密或其它专属权利的内容上载、张贴、发送电子邮件或以其它方式传送的。&lt;br /&gt;5) 将病毒或其它计算机代码、档案和程序，加以上载、张贴、发送电子邮件或以其它方式传送的。&lt;br /&gt;6) 跟踪或以其它方式骚扰其他会员的。&lt;br /&gt;7) 未经合法授权而截获、篡改、收集、储存或删除他人个人信息、电子邮件或其它数据资料，或将获知的此类资料用于任何非法或不正当目的。&lt;br /&gt;8) 以任何方式干扰服务的。&lt;br /&gt;&lt;br /&gt;8、关于会员在婚恋的上传或张贴的内容&lt;br /&gt;1) 会员上传或张贴的内容（包括照片、文字、交友成功会员的成功故事等），视为会员授予官方免费、非独家的使用权，有权为展示、传播及推广前述张贴内容的目的，对上述内容进行复制、修改、出版等。该使用权持续至会员书面通知官方不得继续使用，且以实际收到该等书面通知时止。官方合作伙伴使用或在现场活动中使用，官方将事先征得会员的同意，但官方使用不受此限。&lt;br /&gt;2) 因会员进行上述上传或张贴，而导致任何第三方提出侵权或索赔要求的，会员承担全部责任。&lt;br /&gt;3) 任何第三方对于会员在公开使用区域张贴的内容进行复制、修改、编辑、传播等行为的，该行为产生的法律后果和责任均由行为人承担，与官方无关。&lt;br /&gt;&lt;br /&gt;9、会员注册条款的变更和修改&lt;br /&gt;有权随时对本注册条款进行变更和修改。一旦发生注册条款的变动，将在页面上提示修改的内容，或将最新版本的会员注册条款以邮件的形式发送给会员。会员如果不同意会员注册条款的修改，可以主动取消会员资格（如注销账号），如对部分服务支付了额外的费用，可以申请将费用全额或部分退回。如果会员继续使用会员帐号，则视为会员已经接受会员注册条款的修改。&lt;/p&gt;', 1481794712, 0, 10, 60, 1, '', 1, 1, 80, 0, 1, 1, 0, 1, 'http://www.apwei.cn/attachment/images/1/2016/12/FRQMU5rOnNH1QT377R1hPmTQPQ1MQ3.png', 1, 60, 80, 0, 1, 1, 0, 0, 1, 1, 0, 50, 5, 10, 10, 50, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_shouxin_log`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_shouxin_log` (
  `id` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `logid` int(10) NOT NULL COMMENT '充值记录id',
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_tezheng`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tezheng` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `tezheng` varchar(200) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_tezheng`
--

INSERT INTO `ims_jy_ppp_tezheng` (`id`, `weid`, `mid`, `tezheng`, `createtime`) VALUES
(94, 1, 105, '好强', 1481796258),
(93, 1, 104, '闷骚', 1481796258),
(92, 1, 103, '稳重', 1481796258),
(91, 1, 102, '随和', 1481796258),
(90, 1, 101, '勇敢', 1481796258),
(89, 1, 100, '勇敢', 1481796258),
(88, 1, 99, '自我', 1481796258),
(87, 1, 98, '宅', 1481796258);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_tgy_rule`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tgy_rule` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `content` text,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_tgy_rule`
--

INSERT INTO `ims_jy_ppp_tgy_rule` (`id`, `weid`, `content`, `createtime`) VALUES
(1, 1, '&lt;p&gt;&lt;span style=&quot;color: rgb(163, 163, 163); font-family: &#39;Microsoft YaHei&#39;, Helvitica, Verdana, Arial, san-serif; font-size: 12px; line-height: 17.1429px; background-color: rgb(255, 255, 255);&quot;&gt;如果是某推广员直接推广给用户，用户进行了充值，则他自己可以领取直接销售的抽佣，如果他有上级的推广员，则他的上级可以领取上级抽佣&lt;/span&gt;&lt;/p&gt;', 1481587816);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_thumb`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_thumb` (
  `id` int(11) NOT NULL,
  `weid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `type` int(2) DEFAULT '0' COMMENT '0为审核中,1为头像,2为非头像,3为不通过,4为删除',
  `thumb` longtext,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=346 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_thumb`
--

INSERT INTO `ims_jy_ppp_thumb` (`id`, `weid`, `mid`, `type`, `thumb`, `createtime`) VALUES
(303, 1, 90, 1, 'http://wx.qlogo.cn/mmopen/U6SFRE9VypFddsSWibOdRgTsjfXbYppPZRC0AMAt04gia6nw4BWicR5LmXibJ3z9ddEwQicecEs40xQtIWxN2PviaGcCIvbfVrrCxd/132', 1481590270),
(345, 1, 105, 1, 'images/jy_ppp/xuni/3/r43qwqawede43.jpg', 1481796258),
(344, 1, 105, 1, 'images/jy_ppp/xuni/3/q234fsdfwer23423q12.jpg', 1481796258),
(343, 1, 105, 1, 'images/jy_ppp/xuni/3/fhsdjfhsdfsdf213.jpg', 1481796258),
(342, 1, 105, 1, 'images/jy_ppp/xuni/3/213sadfsfsdwerqwe.jpg', 1481796258),
(341, 1, 104, 1, 'images/jy_ppp/xuni/9/63f40ad162d9f2d3e5424698afec8a136327cc72.jpg', 1481796258),
(340, 1, 104, 1, 'images/jy_ppp/xuni/9/57c2d5628535e5ddf37ec7a870c6a7efce1b6272.jpg', 1481796258),
(339, 1, 104, 1, 'images/jy_ppp/xuni/9/4a66d0160924ab18fbcd824033fae6cd7a890be9.jpg', 1481796258),
(338, 1, 103, 1, 'images/jy_ppp/xuni/4/5dcc962bd40735faa044dd3e9e510fb30d2408d1.jpg', 1481796258),
(337, 1, 103, 1, 'images/jy_ppp/xuni/4/563809fa513d2697cf819bda55fbb2fb4216d838.jpg', 1481796258),
(336, 1, 103, 1, 'images/jy_ppp/xuni/4/40295366d0160924e991319cd40735fae4cd34d1.jpg', 1481796258),
(335, 1, 103, 1, 'images/jy_ppp/xuni/4/3fe971cf3bc79f3d92abb0cfbaa1cd11708b29df.jpg', 1481796258),
(334, 1, 102, 1, 'images/jy_ppp/xuni/2/sdfwe45r34534zx.jpg', 1481796258),
(333, 1, 102, 1, 'images/jy_ppp/xuni/2/ksahdfakspqwe123asdzxf.jpg', 1481796258),
(332, 1, 102, 1, 'images/jy_ppp/xuni/2/kkkosfsfrwerwerwerzxcz999.jpg', 1481796258),
(331, 1, 102, 1, 'images/jy_ppp/xuni/2/jxdsdas45fgdfgq.jpg', 1481796258),
(330, 1, 102, 1, 'images/jy_ppp/xuni/2/fg564523423sdfsd.jpg', 1481796258),
(329, 1, 102, 1, 'images/jy_ppp/xuni/2/asdeq2weqwzzx4354.jpg', 1481796258),
(328, 1, 101, 1, 'images/jy_ppp/xuni/7/9a64ac345982b2b763168d6031adcbef77099bad.jpg', 1481796258),
(327, 1, 101, 1, 'images/jy_ppp/xuni/7/8faf8d5494eef01fe4a55179e0fe9925bd317dfd.jpg', 1481796258),
(326, 1, 101, 1, 'images/jy_ppp/xuni/7/5c29c83d70cf3bc79bcc7948d100baa1cc112a61.jpg', 1481796258),
(325, 1, 101, 1, 'images/jy_ppp/xuni/7/1e3f94cad1c8a78637ddfeaa6709c93d71cf50bb.jpg', 1481796258),
(324, 1, 101, 1, 'images/jy_ppp/xuni/7/1c5f9f2f0708283842db68b0b899a9014d08f164.jpg', 1481796258),
(323, 1, 100, 1, 'images/jy_ppp/xuni/6/ff04e736afc37931290ff39bebc4b74542a91114.jpg', 1481796258),
(322, 1, 100, 1, 'images/jy_ppp/xuni/6/fb2d9d1001e93901874af88c7bec54e737d19628.jpg', 1481796258),
(321, 1, 100, 1, 'images/jy_ppp/xuni/6/d62e91cb39dbb6fd573c90940924ab18962b3714.jpg', 1481796258),
(320, 1, 100, 1, 'images/jy_ppp/xuni/6/55ef1ef41bd5ad6edd9e115881cb39dbb7fd3c14.jpg', 1481796258),
(319, 1, 100, 1, 'images/jy_ppp/xuni/6/342a8c82d158ccbfbff4c08819d8bc3eb0354128.jpg', 1481796258),
(318, 1, 100, 1, 'images/jy_ppp/xuni/6/2cec872bd40735faea973b0b9e510fb30e240814.jpg', 1481796258),
(317, 1, 99, 1, 'images/jy_ppp/xuni/10/8fdda144ad345982004d4f9c0af431adcaef84fd.png', 1481796258),
(316, 1, 99, 1, 'images/jy_ppp/xuni/10/892397dda144ad34e8782d89d6a20cf430ad85fd.png', 1481796258),
(315, 1, 99, 1, 'images/jy_ppp/xuni/10/7d380cd7912397dd0ebe320a5f82b2b7d1a287fd.png', 1481796258),
(314, 1, 99, 1, 'images/jy_ppp/xuni/10/14d7912397dda1441dcec6bcb4b7d0a20df486fd.png', 1481796258),
(313, 1, 98, 1, 'images/jy_ppp/xuni/8/5e2309f790529822bed859b7d1ca7bcb0b46d4df.jpg', 1481796258),
(312, 1, 98, 1, 'images/jy_ppp/xuni/8/38a4462309f7905253f4274a0af3d7ca7acbd5df.jpg', 1481796258),
(311, 1, 98, 1, 'images/jy_ppp/xuni/8/11f790529822720ec125828e7dcb0a46f31fabdf.jpg', 1481796258),
(304, 1, 91, 1, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7ABicEI4Y0ODlyVs00IL9pU4677wURNYncFWf3TfvbPI2ibrwAjHXxzcuEicvBibYeJ72fmesI1ARWiaM34GVRPbA25ONf8TosMJ4M/0', 1481590618),
(305, 1, 92, 1, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDu6ia3vRlKrFh0k4x3ZZNo3Vrq9Uksib7bAl358hs0hQJptOticAIfy1YJATk6ZOLESQpZdNRdOzibDQ/0', 1481597231),
(306, 1, 93, 1, 'http://wx.qlogo.cn/mmopen/U6SFRE9VypGQmto7HmTbbhCV5EfdyxWOHttRibVFwGjALcV9rYJm9u1fuFMMiaia1N0ArSF80iaxC8JyYxXMlhFUqX8icxgQzNjQ0/0', 1481609111),
(307, 1, 94, 1, 'images/1/2016/12/K2YEE0ZEzLCLq29KlzLkWdlEwRYM0a.jpeg', 1481610399),
(308, 1, 95, 1, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJM4iaC1UYVibXamwy3Liaj8JzWgkYvWe6R6qCregd4L7jaEGf1y3vFQfmCPibqgBKOhAiccEGr3SdVZKA/0', 1481617208),
(309, 1, 96, 1, 'http://wx.qlogo.cn/mmopen/U6SFRE9VypFddsSWibOdRgZLrg3eyichsSOrJs7qq2TIL144HROibWyNvHhibibwJYmM4der9p0pt3fNb91rRAKKHOA4ypBR2304E/0', 1481626731),
(310, 1, 97, 1, 'http://wx.qlogo.cn/mmopen/H0btX6VrC7DK9O9MghZd6tteY23zLM4cZ6ss7BsCenLXXILcOcWArrqNae3Wia7CRhriaGKQH03tIf5mWD64ho6KBDsiazJzTMb/0', 1481795379);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_tixianrecord`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tixianrecord` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `from_user` varchar(30) NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `tgyid` int(10) NOT NULL DEFAULT '0',
  `fee` decimal(10,2) DEFAULT '0.00',
  `realname` varchar(200) NOT NULL,
  `alipay` varchar(200) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_tuiguang`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tuiguang` (
  `id` int(10) unsigned NOT NULL,
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
  `qrcode` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_tuiguang_xinxi`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_tuiguang_xinxi` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  `yuedu` tinyint(1) DEFAULT '1' COMMENT '0为未读,1为已读',
  `yuedutime` int(10) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_visit`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_visit` (
  `id` int(11) unsigned NOT NULL,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `visitid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_xinxi`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xinxi` (
  `id` int(11) unsigned NOT NULL,
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
  `leixing` int(10) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=415 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_xinxi`
--

INSERT INTO `ims_jy_ppp_xinxi` (`id`, `weid`, `mid`, `sendid`, `content`, `zhaohuid`, `huifuid`, `type`, `yuedu`, `yuedutime`, `createtime`, `picurl`, `media_id`, `leixing`) VALUES
(192, 1, 90, 93, 'hello,您好！很高兴认识你，可以交个朋友么？', 0, 0, 0, 1, 1481617518, 1481609225, NULL, '', 0),
(193, 1, 93, 0, '恭喜你,您已进行实名认证-身份证认证。祝您尽快找到您的有缘人!', 0, 0, 3, 1, 1481609955, 1481609388, NULL, '', 0),
(409, 1, 97, 56, '哥哥，你好，请问哥哥贵姓啊', 0, 0, 2, 0, 0, 1481796123, '', '', 0),
(410, 1, 97, 78, '帅哥，你会是我心中的白马王子把', 0, 0, 2, 0, 0, 1481795982, '', '', 0),
(411, 1, 97, 80, '帅哥，你咋不回我呢，不回我我找别人拉', 0, 0, 2, 0, 0, 1481796040, '', '', 0),
(412, 1, 97, 56, '您有一条新的语音消息！', 0, 0, 2, 0, 0, 1481796193, '', 'http://www.apwei.cn/attachment/audios/1/2016/09/zRkNTkthzN9nkKTn5dRQn33ty9RZna.mp3', 2),
(413, 1, 97, 56, '有空的话，约个时间见见面好吗', 0, 0, 2, 0, 0, 1481796268, '', '', 0),
(414, 1, 97, 39, '您有一条新的语音消息！', 0, 0, 2, 0, 0, 1481796421, '', 'http://www.apwei.cn/attachment/audios/1/2016/08/bq8lu3qsrju8yb9QyL6P0bQYUySR49.mp3', 2);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_xinxi_temp`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xinxi_temp` (
  `id` int(11) unsigned NOT NULL,
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
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=457 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_xinxi_temp`
--

INSERT INTO `ims_jy_ppp_xinxi_temp` (`id`, `weid`, `mid`, `sendid`, `content`, `zhaohuid`, `huifuid`, `type`, `leixing`, `media_id`, `picurl`, `yuedu`, `yuedutime`, `createtime`) VALUES
(66, 1, 89, 74, '你交过多少女朋友啦', 0, 0, 2, 0, '', NULL, 0, 0, 1481590197),
(67, 1, 89, 74, '我目前一个人在这里，想找个真心好的哥哥对我', 0, 0, 2, 0, '', NULL, 0, 0, 1481590262),
(68, 1, 89, 74, '帅哥，你会是我心中的白马王子把', 0, 0, 2, 0, '', NULL, 0, 0, 1481590340),
(15, 1, 89, 79, '老公又去加班了，一个人好寂寞啊', 0, 0, 2, 0, '', NULL, 0, 0, 1481590227),
(16, 1, 89, 79, '您有一张新的图片消息！', 0, 0, 2, 1, '', 'http://www.sktdi.com/attachment/images/1/2016/08/NdID9fX8JipPfCZ9cPB7d55bo858F9.jpg', 0, 0, 1481590302),
(17, 1, 89, 79, '帅哥你在哪里，能不能来我家玩玩', 0, 0, 2, 0, '', NULL, 0, 0, 1481590371),
(18, 1, 89, 79, '哥哥，我老公要好几天才能回家呢，来玩玩嘛', 0, 0, 2, 0, '', NULL, 0, 0, 1481590431),
(19, 1, 89, 63, '您有一条新的语音消息！', 0, 0, 2, 2, 'http://www.sktdi.com/attachment/audios/1/2016/08/gA3MmsEdwPArddHMyiCEm8Iz2ZAD8b.mp3', NULL, 0, 0, 1481590570),
(20, 1, 89, 63, '你喜欢看什么类型的电影呀', 0, 0, 2, 0, '', NULL, 0, 0, 1481590646),
(21, 1, 89, 63, '妹妹喜欢看日本SM类的电影呢', 0, 0, 2, 0, '', NULL, 0, 0, 1481590726),
(22, 1, 89, 63, '感觉好刺激啊想找哥哥尝试一下', 0, 0, 2, 0, '', NULL, 0, 0, 1481590790),
(23, 1, 89, 55, '你好，请问你的家乡是哪里的啊', 0, 0, 2, 0, '', NULL, 0, 0, 1481590938),
(24, 1, 89, 55, '妹妹年纪有点大了，想找个本地的结婚', 0, 0, 2, 0, '', NULL, 0, 0, 1481590999),
(25, 1, 89, 55, '真的拖不起了，你是真心来找女友的吧', 0, 0, 2, 0, '', NULL, 0, 0, 1481591062),
(26, 1, 89, 45, '您有一条新的语音消息！', 0, 0, 2, 2, 'http://www.sktdi.com/attachment/audios/1/2016/08/Ny8H4h4tweZyCnhEREeRx2CRRzeDLN.mp3', NULL, 0, 0, 1481591195),
(27, 1, 89, 45, '帅哥，能详细的介绍一下你的职业情况吗', 0, 0, 2, 0, '', NULL, 0, 0, 1481591258),
(28, 1, 89, 45, '我年纪比较大了，家里人有点急，所以想找个靠谱的对象', 0, 0, 2, 0, '', NULL, 0, 0, 1481591320),
(29, 1, 89, 45, '不如，咋们挑个合适的时间见面吧', 0, 0, 2, 0, '', NULL, 0, 0, 1481591397),
(30, 1, 89, 38, '您有一条新的语音消息！', 0, 0, 2, 2, 'http://www.sktdi.com/attachment/audios/1/2016/08/Jx7X0Zt5s8iO11eoViK7E28TO7G7oG.mp3', NULL, 0, 0, 1481591530),
(31, 1, 89, 38, '您有一张新的图片消息！', 0, 0, 2, 1, '', 'http://www.sktdi.com/attachment/images/1/2016/08/BggGkt1spe392lHTJN9fp1ss5ktpfg.jpg', 0, 0, 1481591592),
(32, 1, 89, 38, '听说爱锻炼的男孩子做那事的能持久一些呢', 0, 0, 2, 0, '', NULL, 0, 0, 1481591668),
(33, 1, 89, 38, '你一般能做多久啊', 0, 0, 2, 0, '', NULL, 0, 0, 1481591730),
(34, 1, 89, 26, '哥哥，在干嘛呢', 0, 0, 2, 0, '', NULL, 0, 0, 1481591867),
(35, 1, 89, 26, '哥哥平时爱不爱看日本的动作片呀', 0, 0, 2, 0, '', NULL, 0, 0, 1481591927),
(36, 1, 89, 26, '您有一张新的图片消息！', 0, 0, 2, 1, '', 'http://www.sktdi.com/attachment/images/1/2016/09/xw2Ir02p4NeweF3b4H5ThzbsotB2o2.jpg', 0, 0, 1481592000),
(37, 1, 89, 26, '妹妹现在一个人在家，好想看片子啊', 0, 0, 2, 0, '', NULL, 0, 0, 1481592062),
(38, 1, 89, 26, '哥哥能推荐个网站吗', 0, 0, 2, 0, '', NULL, 0, 0, 1481592126),
(39, 1, 89, 26, '哥哥推荐个呗，想找个人一起看', 0, 0, 2, 0, '', NULL, 0, 0, 1481592191),
(40, 1, 89, 25, '你好，请问你的家乡是哪里的啊', 0, 0, 2, 0, '', NULL, 0, 0, 1481592321),
(41, 1, 89, 25, '妹妹年纪有点大了，想找个本地的结婚', 0, 0, 2, 0, '', NULL, 0, 0, 1481592401),
(42, 1, 89, 25, '真的拖不起了，你是真心来找女友的吧', 0, 0, 2, 0, '', NULL, 0, 0, 1481592470),
(43, 1, 89, 23, '您有一张新的图片消息！', 0, 0, 2, 1, '', 'http://www.sktdi.com/attachment/images/1/2016/09/n0V9AGW9gM8zw1EW1EaPP4sW9wweWp.jpg', 0, 0, 1481592607),
(44, 1, 89, 23, '哥哥喜欢穿丝袜的女生吗', 0, 0, 2, 0, '', NULL, 0, 0, 1481592677),
(45, 1, 89, 23, '妹妹很喜欢穿黑色的丝袜呢', 0, 0, 2, 0, '', NULL, 0, 0, 1481592750),
(46, 1, 89, 23, '朋友都说我腿比较长穿丝袜好看一点', 0, 0, 2, 0, '', NULL, 0, 0, 1481592814),
(47, 1, 89, 23, '对了，哥哥身高多少呀', 0, 0, 2, 0, '', NULL, 0, 0, 1481592883),
(48, 1, 89, 6, '你们男人呀，都是群打招呼。', 0, 0, 2, 0, '', NULL, 0, 0, 1481593012),
(49, 1, 89, 6, '就不能专一点么？', 0, 0, 2, 0, '', NULL, 0, 0, 1481593088),
(50, 1, 89, 6, '留个联系方式吧。', 0, 0, 2, 0, '', NULL, 0, 0, 1481593157),
(51, 1, 89, 6, '我最近刚分手，你要是有诚意，我可以接受见面哟。', 0, 0, 2, 0, '', NULL, 0, 0, 1481593220),
(60, 1, 89, 76, '帅哥你在哪里啊', 0, 0, 2, 0, '', NULL, 0, 0, 1481590197),
(63, 1, 89, 79, '您有一张新的图片消息！', 0, 0, 2, 1, '', 'http://www.sktdi.com/attachment/images/1/2016/08/d4eoyl8j9Lb2yYBb1O2B8I1283C81Y.jpg', 0, 0, 1481590201),
(64, 1, 89, 79, '哥哥你的相片呢', 0, 0, 2, 0, '', NULL, 0, 0, 1481590279),
(447, 1, 97, 16, '你不会忍心把我一个人扔在家里的对吧', 0, 0, 2, 0, '', NULL, 0, 0, 1481798186),
(446, 1, 97, 16, '经常出差的话，我一个人在家里会很寂寞的', 0, 0, 2, 0, '', NULL, 0, 0, 1481798121),
(444, 1, 97, 16, '帅哥，我能问你一个问题吗', 0, 0, 2, 0, '', NULL, 0, 0, 1481797969),
(445, 1, 97, 16, '您有一条新的语音消息！', 0, 0, 2, 2, 'http://www.apwei.cn/attachment/audios/1/2016/08/lJaoIrKoKZiy18Z28rzi8on8o881oI.mp3', NULL, 0, 0, 1481798049),
(443, 1, 97, 17, '没人陪我一起，好伤心555555', 0, 0, 2, 0, '', NULL, 0, 0, 1481797833),
(442, 1, 97, 17, '哥哥，你在哪，可以到我家里来安慰我吗', 0, 0, 2, 0, '', NULL, 0, 0, 1481797760),
(441, 1, 97, 17, '您有一张新的图片消息！', 0, 0, 2, 1, '', 'http://www.apwei.cn/attachment/images/1/2016/09/kle4R4R8Ee36EEvSvHgEra446l24gs.jpg', 0, 0, 1481797692),
(440, 1, 97, 17, '您有一条新的语音消息！', 0, 0, 2, 2, 'http://www.apwei.cn/attachment/audios/1/2016/09/Viu36I5WS5BWLd65w5u5Z5iDnW3YY5.mp3', NULL, 0, 0, 1481797620),
(438, 1, 97, 26, '哥哥能不能唱几句给妹妹听啊', 0, 0, 2, 0, '', NULL, 0, 0, 1481797419),
(439, 1, 97, 26, '哥哥最爱听那首歌啊', 0, 0, 2, 0, '', NULL, 0, 0, 1481797487),
(436, 1, 97, 31, '一个人在家好无聊啊', 0, 0, 2, 0, '', NULL, 0, 0, 1481797213),
(437, 1, 97, 26, '您有一条新的语音消息！', 0, 0, 2, 2, 'http://www.apwei.cn/attachment/audios/1/2016/08/Dlz8MlXra287E1B8EEP072FpPB27Fx.mp3', NULL, 0, 0, 1481797358),
(435, 1, 97, 31, '您有一张新的图片消息！', 0, 0, 2, 1, '', 'http://www.apwei.cn/attachment/images/1/2016/08/n62vM2kK646C23693622636tn29YPV.jpg', 0, 0, 1481797153),
(434, 1, 97, 31, '您有一条新的语音消息！', 0, 0, 2, 2, 'http://www.apwei.cn/attachment/audios/1/2016/08/n565i9r4GLte614G55ep4G59zgEjT6.mp3', NULL, 0, 0, 1481797074),
(433, 1, 97, 37, '美女是做什么工作的呀', 0, 0, 2, 0, '', NULL, 0, 0, 1481796933),
(431, 1, 97, 37, '在吗，美女，现在有时间吗', 0, 0, 2, 0, '', NULL, 0, 0, 1481796783),
(432, 1, 97, 37, '美女，你喜欢什么类型的男生呢', 0, 0, 2, 0, '', NULL, 0, 0, 1481796854),
(430, 1, 97, 39, '想让哥哥你帮帮我呢', 0, 0, 2, 0, '', NULL, 0, 0, 1481796640),
(429, 1, 97, 39, '呢，刚刚运动了一下累死我了', 0, 0, 2, 0, '', NULL, 0, 0, 1481796561),
(428, 1, 97, 39, '您有一张新的图片消息！', 0, 0, 2, 1, '', 'http://www.apwei.cn/attachment/images/1/2016/08/UGyzszPBP7D0w4J720uzBkLYOlW1jD.jpg', 0, 0, 1481796496),
(448, 1, 97, 12, '帅哥，看上我啦？', 0, 0, 2, 0, '', NULL, 0, 0, 1481798322),
(449, 1, 97, 12, '难得主动打招呼，居然不领情', 0, 0, 2, 0, '', NULL, 0, 0, 1481798382),
(450, 1, 97, 12, '你微信多少，我加你', 0, 0, 2, 0, '', NULL, 0, 0, 1481798445),
(451, 1, 97, 12, '还在吗？', 0, 0, 2, 0, '', NULL, 0, 0, 1481798512),
(452, 1, 97, 12, '在的话一起去玩么？', 0, 0, 2, 0, '', NULL, 0, 0, 1481798587);

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_xunithumb`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xunithumb` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `sex` int(2) NOT NULL COMMENT '1为男,2为女',
  `avatar` int(2) NOT NULL DEFAULT '0' COMMENT '1为头像,0为普通',
  `thumb` text
) ENGINE=MyISAM AUTO_INCREMENT=827 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_xunithumb`
--

INSERT INTO `ims_jy_ppp_xunithumb` (`id`, `mid`, `sex`, `avatar`, `thumb`) VALUES
(418, 10, 2, 0, 'images/jy_ppp/xuni/10/14d7912397dda1441dcec6bcb4b7d0a20df486fd.png'),
(419, 10, 2, 0, 'images/jy_ppp/xuni/10/7d380cd7912397dd0ebe320a5f82b2b7d1a287fd.png'),
(420, 10, 2, 0, 'images/jy_ppp/xuni/10/892397dda144ad34e8782d89d6a20cf430ad85fd.png'),
(421, 10, 2, 0, 'images/jy_ppp/xuni/10/8fdda144ad345982004d4f9c0af431adcaef84fd.png'),
(556, 2, 2, 0, 'images/jy_ppp/xuni/2/asdeq2weqwzzx4354.jpg'),
(557, 2, 2, 0, 'images/jy_ppp/xuni/2/fg564523423sdfsd.jpg'),
(558, 2, 2, 0, 'images/jy_ppp/xuni/2/jxdsdas45fgdfgq.jpg'),
(559, 2, 2, 0, 'images/jy_ppp/xuni/2/kkkosfsfrwerwerwerzxcz999.jpg'),
(560, 2, 2, 0, 'images/jy_ppp/xuni/2/ksahdfakspqwe123asdzxf.jpg'),
(561, 2, 2, 0, 'images/jy_ppp/xuni/2/sdfwe45r34534zx.jpg'),
(593, 3, 2, 0, 'images/jy_ppp/xuni/3/213sadfsfsdwerqwe.jpg'),
(594, 3, 2, 0, 'images/jy_ppp/xuni/3/fhsdjfhsdfsdf213.jpg'),
(595, 3, 2, 0, 'images/jy_ppp/xuni/3/q234fsdfwer23423q12.jpg'),
(596, 3, 2, 0, 'images/jy_ppp/xuni/3/r43qwqawede43.jpg'),
(624, 4, 2, 0, 'images/jy_ppp/xuni/4/3fe971cf3bc79f3d92abb0cfbaa1cd11708b29df.jpg'),
(625, 4, 2, 0, 'images/jy_ppp/xuni/4/40295366d0160924e991319cd40735fae4cd34d1.jpg'),
(626, 4, 2, 0, 'images/jy_ppp/xuni/4/563809fa513d2697cf819bda55fbb2fb4216d838.jpg'),
(627, 4, 2, 0, 'images/jy_ppp/xuni/4/5dcc962bd40735faa044dd3e9e510fb30d2408d1.jpg'),
(686, 6, 2, 0, 'images/jy_ppp/xuni/6/2cec872bd40735faea973b0b9e510fb30e240814.jpg'),
(687, 6, 2, 0, 'images/jy_ppp/xuni/6/342a8c82d158ccbfbff4c08819d8bc3eb0354128.jpg'),
(688, 6, 2, 0, 'images/jy_ppp/xuni/6/55ef1ef41bd5ad6edd9e115881cb39dbb7fd3c14.jpg'),
(689, 6, 2, 0, 'images/jy_ppp/xuni/6/d62e91cb39dbb6fd573c90940924ab18962b3714.jpg'),
(690, 6, 2, 0, 'images/jy_ppp/xuni/6/fb2d9d1001e93901874af88c7bec54e737d19628.jpg'),
(691, 6, 2, 0, 'images/jy_ppp/xuni/6/ff04e736afc37931290ff39bebc4b74542a91114.jpg'),
(719, 7, 2, 0, 'images/jy_ppp/xuni/7/1c5f9f2f0708283842db68b0b899a9014d08f164.jpg'),
(720, 7, 2, 0, 'images/jy_ppp/xuni/7/1e3f94cad1c8a78637ddfeaa6709c93d71cf50bb.jpg'),
(721, 7, 2, 0, 'images/jy_ppp/xuni/7/5c29c83d70cf3bc79bcc7948d100baa1cc112a61.jpg'),
(722, 7, 2, 0, 'images/jy_ppp/xuni/7/8faf8d5494eef01fe4a55179e0fe9925bd317dfd.jpg'),
(723, 7, 2, 0, 'images/jy_ppp/xuni/7/9a64ac345982b2b763168d6031adcbef77099bad.jpg'),
(765, 8, 2, 0, 'images/jy_ppp/xuni/8/11f790529822720ec125828e7dcb0a46f31fabdf.jpg'),
(766, 8, 2, 0, 'images/jy_ppp/xuni/8/38a4462309f7905253f4274a0af3d7ca7acbd5df.jpg'),
(767, 8, 2, 0, 'images/jy_ppp/xuni/8/5e2309f790529822bed859b7d1ca7bcb0b46d4df.jpg'),
(797, 9, 2, 0, 'images/jy_ppp/xuni/9/4a66d0160924ab18fbcd824033fae6cd7a890be9.jpg'),
(798, 9, 2, 0, 'images/jy_ppp/xuni/9/57c2d5628535e5ddf37ec7a870c6a7efce1b6272.jpg'),
(799, 9, 2, 0, 'images/jy_ppp/xuni/9/63f40ad162d9f2d3e5424698afec8a136327cc72.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_xuni_member`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xuni_member` (
  `id` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `dyid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_xuni_pay`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_xuni_pay` (
  `id` int(11) NOT NULL,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_yongjin`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_yongjin` (
  `id` int(11) unsigned NOT NULL,
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
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_jy_ppp_zhaohu`
--

CREATE TABLE IF NOT EXISTS `ims_jy_ppp_zhaohu` (
  `id` int(11) NOT NULL,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '批次ID,0为第一级',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists'
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_jy_ppp_zhaohu`
--

INSERT INTO `ims_jy_ppp_zhaohu` (`id`, `weid`, `displayorder`, `name`, `parentid`, `description`, `enabled`) VALUES
(1, 1, 0, '可以接受比你年龄小很多的女生吗？', 0, '', 1),
(2, 1, 0, '接受', 1, '我接受比我年龄小很多的女生，我觉得你很合适。', 1),
(3, 1, 0, '需要考虑', 1, '我需要考虑年龄比我小比较多的女生，我觉得你很合适。', 1),
(4, 1, 0, '不接受', 1, '我不接受年龄比我小比较多的女生，我觉得你很合适。', 1),
(5, 1, 0, '你喜欢女生穿什么样的内衣？', 0, '', 1),
(6, 1, 0, '黑色蕾丝', 5, '我喜欢女生穿着黑色蕾丝材质的内衣，会很性感~', 1),
(7, 1, 0, '白色蕾丝', 5, '我喜欢女生穿着白色蕾丝材质的内衣，会很有趣~', 1),
(8, 1, 0, '卡通色彩', 5, '我喜欢女生穿着卡通色彩的内衣，会很有趣~', 1),
(9, 1, 0, '其他', 5, '我喜欢女生穿着其他材质的内衣，会很有趣~', 1),
(10, 1, 0, '你喜欢看哪个国家（地区）的A片？', 0, '', 1),
(11, 1, 0, '岛国', 10, '岛国', 1),
(12, 1, 0, '欧美', 10, '欧美', 1),
(13, 1, 0, '香港', 10, '香港', 1),
(14, 1, 0, '国内', 10, '国内', 1),
(15, 1, 0, '会不会觉得女生胸太大了不好看，影响美感？', 0, '', 1),
(16, 1, 0, '完全不影响', 15, '女生胸太大了完全不影响美感，你是哪种？', 1),
(17, 1, 0, '有点影响', 15, '女生胸太大了有点影响美感，你是哪种？', 1),
(18, 1, 0, '很影响', 15, '女生胸太大了很影响美感，你是哪种？', 1),
(19, 1, 0, '对方的身材和相貌你更在乎哪个？', 0, '', 1),
(20, 1, 0, '身材', 19, '我还是比较看重身材的哈~', 1),
(21, 1, 0, '样貌', 19, '我还是比较看重样貌的哈~', 1),
(22, 1, 0, '都', 19, '我身材和样貌都是很在意的哈~', 1),
(23, 1, 0, '爱爱喜欢开灯还是关灯？', 0, '', 1),
(24, 1, 0, '开灯', 23, '开灯', 1),
(25, 1, 0, '关灯', 23, '关灯', 1),
(26, 1, 0, '黑丝袜和白丝袜你更喜欢女生穿哪个?', 0, '', 1),
(27, 1, 0, '黑丝袜', 26, '我觉得女生穿黑丝袜会比较好看，你平时会穿吗？', 1),
(28, 1, 0, '网袜', 26, '你觉得女生穿网袜会比较好看，你平时会穿吗？', 1),
(29, 1, 0, '白丝袜', 26, '我觉得女生穿白丝袜比较好看，你平时会穿吗？', 1),
(30, 1, 0, '其他', 26, '我觉得女生穿其他会比较好看，你平时会穿吗？', 1),
(31, 1, 0, '你最想尝试的爱爱场所？', 0, '', 1),
(32, 1, 0, '旅馆', 31, '旅馆', 1),
(33, 1, 0, '车', 31, '车', 1),
(34, 1, 0, '户外', 31, '户外', 1),
(35, 1, 0, '公司', 31, '公司', 1),
(36, 1, 0, '你看过日本的女明星演的电影多吗？', 0, '', 1),
(37, 1, 0, '比较多', 36, '我看过的日本女明星的电影比较多，你会介意？', 1),
(38, 1, 0, '不太多', 36, '我看过的日本女明星的电影不太多，你会介意？', 1),
(39, 1, 0, '没看过', 36, '我看过的日本女明星的电影没看过，你会介意？', 1),
(40, 1, 0, '你认为一周性爱的频率怎么比较好？', 0, '', 1),
(41, 1, 0, '1次', 40, '我觉得一周性爱一次比较合适，你觉得呢？', 1),
(42, 1, 0, '3次', 40, '我觉得一周性爱三次比较合适，你觉得呢？', 1),
(43, 1, 0, '7次', 40, '我觉得一周性爱七次比较合适，你觉得呢？', 1),
(44, 1, 0, '不一定', 40, '我觉得一周性爱次数可不能确定哦，你觉得呢？', 1),
(45, 1, 0, '你认为第一次约会最理想的场所在哪？', 0, '', 1),
(46, 1, 0, '公园', 45, '我希望第一次可以在公园约会，那里比较可以深入理解对方。', 1),
(47, 1, 0, '咖啡馆', 45, '我希望第一次可以在咖啡馆约会，那里比较可以深入理解对方。', 1),
(48, 1, 0, '电影院', 45, '我希望第一次可以在电影院约会，那里比较可以深入理解对方。', 1),
(49, 1, 0, '如家', 45, '我希望第一次可以在如家约会，那里比较可以深入理解对方。', 1),
(50, 1, 0, '可以接受比你年龄大一点点的女生吗？', 0, '', 1),
(51, 1, 0, '接受', 50, '我接受年龄比我大一点的女生，我觉得你很合适。', 1),
(52, 1, 0, '需要考虑', 50, '我需要考虑年龄比我大一点的女生，我觉得你很合适。', 1),
(53, 1, 0, '不接受', 50, '我不接受年龄比我大一点的女生，我觉得你很合适。', 1),
(54, 1, 0, '你觉得第一次约会可不可以去喝酒？', 0, '', 1),
(55, 1, 0, '可以', 54, '第一次约会的时候可以喝酒，红酒还是很不错的！', 1),
(56, 1, 0, '你会跟另一半坦白你的性经历么？', 0, '', 1),
(57, 1, 0, '完全可以说', 56, '完全可以说', 1),
(58, 1, 0, '会有所保留', 56, '会有所保留', 1),
(59, 1, 0, '不喜欢提', 56, '不喜欢提', 1),
(60, 1, 0, '你觉得带我回家的时候你爸妈会喜欢我吗？', 0, '', 1),
(61, 1, 0, '很喜欢', 60, '我觉得我如果带你回家我的父母对你很喜欢。', 1),
(62, 1, 0, '比较喜欢', 60, '我觉的我如果带你回家喔的父母对你比较喜欢~', 1),
(63, 1, 0, '一般般', 60, '我觉得我如果带你回家喔的父母对你一般般', 1),
(64, 1, 0, '约会时你希望女伴的穿着是什么路线？', 0, '', 1),
(65, 1, 0, '性感火辣', 64, '我希望咱们第一次见面时对方穿的性感火辣，比较符合我的口味~', 1),
(66, 1, 0, '稳重得体', 64, '我希望咱们第一次见面时对方穿的稳重得体，比较符合我的口味~', 1),
(67, 1, 0, '可爱俏皮', 64, '我希望咱们第一次见面时对方穿的可爱俏皮，比较符合我的口味~', 1),
(68, 1, 0, '你可以理解女生约会之前必须洗头这件事吗？', 0, '', 1),
(69, 1, 0, '可以理解', 68, '女生约会之前必须洗头这件事我可以理解，你出门前会洗头吗？要多久？', 1),
(70, 1, 0, '有点理解', 68, '女生约会前都会洗头这件事我有点理解，你出门钱会洗头吗？要多久？', 1),
(71, 1, 0, '不能理解', 68, '女生约会前都会洗头这件事我不能理解，你出门钱会洗头吗？要多久？', 1),
(72, 1, 0, '你觉得一个人最性感的时候是？', 0, '', 1),
(73, 1, 0, '刚洗完澡', 72, '刚洗完澡', 1),
(74, 1, 0, '运动出汗', 72, '运动出汗', 1),
(75, 1, 0, '穿性感衣服', 72, '穿性感衣服', 1),
(76, 1, 0, '认真做事', 72, '认真做事', 1),
(77, 1, 0, '你觉得泷泽萝拉和范冰冰谁计较漂亮？', 0, '', 1),
(78, 1, 0, '范冰冰', 77, '我觉得范冰冰很漂亮，你也很漂亮~', 1),
(79, 1, 0, '两个都', 77, '我觉得两个都很漂亮，你也很漂亮~', 1),
(80, 1, 0, '泷泽萝拉', 77, '我觉得泷泽萝拉很漂亮，你也很漂亮~', 1),
(81, 1, 0, '你觉着一下哪种脱单途径希望更大？', 0, '', 1),
(82, 1, 0, '相亲', 81, '相亲', 1),
(83, 1, 0, '社交网络', 81, '社交网络', 1),
(84, 1, 0, '朋友介绍', 81, '朋友介绍', 1),
(85, 1, 0, '其他', 81, '其他', 1),
(86, 1, 0, '确定交往后发现性生活不和谐怎么办？', 0, '', 1),
(87, 1, 0, '严重就分手', 86, '严重就分手', 1),
(88, 1, 0, '看其他条件', 86, '看其他条件', 1),
(89, 1, 0, '尽量解决', 86, '尽量解决', 1),
(90, 1, 0, '不太介意', 86, '不太介意', 1),
(91, 1, 0, '听不太懂', 86, '听不太懂', 1),
(92, 1, 0, '如果我们在不同城市，你会愿意我来找你吗？', 0, '', 1),
(93, 1, 0, '十分愿意', 92, '我会十分愿意让你来找我，我可以来找你吗？', 1),
(94, 1, 0, '比较愿意', 92, '我会愿意让你来找我，我可以来找你吗？', 1),
(95, 1, 0, '不太愿意', 92, '我不太愿意让你来找我，我可以来找你吗？', 1),
(96, 1, 0, '会不会觉得女生穿高跟鞋很好看？', 0, '', 1),
(97, 1, 0, '很好看', 96, '我觉得女生穿高跟鞋会很好看，你平时喜欢穿吗？', 1),
(98, 1, 0, '一般般', 96, '我觉得女生穿高跟鞋会一般般，你平时喜欢穿吗？', 1),
(99, 1, 0, '不好看', 96, '我觉得女生穿高跟鞋会不好看，你平时喜欢穿吗？', 1),
(100, 1, 0, '如果去旅行我走累了，你愿意背我走吗？', 0, '', 1),
(101, 1, 0, '很愿意', 100, '旅行的时候如果你走累了，我很愿意背着你走。', 1),
(102, 1, 0, '愿意', 100, '旅行的时候如果你走累了，我愿意背着你走。', 1),
(103, 1, 0, '可以考虑', 100, '旅行的时候如果你走累了，我可以考虑背着你走。', 1),
(104, 1, 0, '不能', 100, '旅行的时候如果你走累了，我不能背着你走。', 1),
(105, 1, 0, '你觉得你可以把我抱起来吗？', 0, '', 1),
(106, 1, 0, '很轻松', 105, '我估计把你抱起来很轻松，你喜欢是公主抱还是新娘抱？', 1),
(107, 1, 0, '有可能', 105, '我估计把你抱起来有可能，你喜欢是公主还是新娘抱？', 1),
(108, 1, 0, '有难度', 105, '我估计把你抱起来有难度，你喜欢是公主抱还是新娘抱？', 1),
(109, 1, 0, '有没有被人欺骗过感情？', 0, '', 1),
(110, 1, 0, '有过', 109, '有过', 1),
(111, 1, 0, '没有过', 109, '没有过', 1),
(112, 1, 0, '你觉得你的哪个部位最敏感？', 0, '', 1),
(113, 1, 0, '五官', 112, '我的五官比较敏感，不能轻易碰哦~你有哪些敏感部位呀？', 1),
(114, 1, 0, '胸部', 112, '我的胸部比较敏感，不能轻易碰哦~你有哪些敏感部位呀？', 1),
(115, 1, 0, '腿部', 112, '我的腿部比较敏感，不能轻易碰哦~你有哪些敏感部位呀？', 1),
(116, 1, 0, '其他', 112, '我的其他比较敏感，不能轻易碰哦~你有哪些敏感部位呀？', 1),
(117, 1, 0, '可以接受女朋友夏天的时候穿热裤出门吗？', 0, '', 1),
(118, 1, 0, '完全接受', 117, '我完全接受女朋友穿着比较短的裤子出门，你平时穿吗？', 1),
(119, 1, 0, '需要考虑', 117, '我需要考虑女朋友穿的比较短的裤子出门，你平时喜欢吗？', 1),
(120, 1, 0, '不能接受', 117, '我不能接受女朋友穿着比较短的裤子出门，你平时喜欢穿吗？', 1),
(121, 1, 0, '你觉得第一次约会的时间应该是？', 0, '', 1),
(122, 1, 0, '早上', 121, '我希望咱们第一次约会是在早上，这样可以更好的了解对方', 1),
(123, 1, 0, '下午', 121, '我希望咱们第一次约会是在下午，这样可以更好的了解对方～', 1),
(124, 1, 0, '晚上', 121, '我希望咱们第一次约会是在晚上，这样可以更好的了解对方', 1),
(125, 1, 0, '半夜', 121, '我希望咱们第一次约会是在半夜，这样可以更好的了解对方', 1),
(126, 1, 0, '你觉得约会几次后才适合和女生发生“亲密行为”？', 0, '', 1),
(127, 1, 0, '一次', 126, '我认为在第一次次约会后才适合和女生发生“亲密关系”，你觉得那？', 1),
(128, 1, 0, '三次', 126, '我认为在第三次次约会后才适合和女生发生“亲密关系”，你觉得那？', 1),
(129, 1, 0, '十次', 126, '我认为在十次次约会后才适合和女生发生“亲密关系”，你觉得那？', 1),
(130, 1, 0, '看情况', 54, '第一次约会的时候看情况喝酒，红酒还是很不错的哟~', 1),
(131, 1, 0, '不可以', 54, '第一次约会的时候不可以喝酒，不过红酒还是不错的喔', 1),
(132, 1, 0, '可以接受在C罩杯以下的女孩子吗？', 0, '', 1),
(133, 1, 0, '完全接受', 132, '我对于C罩杯的女孩子完全接受，你是哪一种？', 1),
(134, 1, 0, '需要考虑', 132, '我对于c罩杯的女孩子需要考虑，你是哪一种？', 1),
(135, 1, 0, '不能接受', 132, '我对于c罩杯的女孩子不能接受，你是哪一种？', 1),
(136, 1, 0, '第一次约会在酒吧好不好', 0, '', 1),
(137, 1, 0, '当然可以', 136, '第一次约会当然可以去酒吧，我怕你喝醉喔。', 1),
(138, 1, 0, '需要考虑', 136, '第一次约会需要考虑去酒吧，我怕你喝醉喔。', 1),
(139, 1, 0, '不可以', 136, '第一次约会不考虑去酒吧，我怕你喝醉喔。', 1),
(140, 1, 0, '如果要带我去旅行，你会带我去那个地方？', 0, '', 1),
(141, 1, 0, '我的家乡', 140, '我想要带女生去我家乡旅行，这样可以增进两个人的感情', 1),
(142, 1, 0, '海边', 140, '我想要带女生去海边旅行，这样可以增进两个人的感情～', 1),
(143, 1, 0, '国外', 140, '我想要带女生去国外旅行，这样可以增进两个人的感情～', 1),
(144, 1, 0, '高原', 140, '我想要带女生去高原旅行，这样可以增进两个人的感情～', 1),
(145, 1, 0, '你觉得泷泽萝拉和范冰冰谁比较漂亮？', 0, '', 1),
(146, 1, 0, '范冰冰', 145, '我觉得范冰冰很漂亮，你也很漂亮～', 1),
(147, 1, 0, '两个都', 145, '我觉得两个都很漂亮，你也很漂亮～', 1),
(148, 1, 0, '泷泽萝拉', 145, '我觉得泷泽萝拉很漂亮，你也很漂亮～', 1),
(149, 1, 0, '你觉得女生约会时应不应该化妆？', 0, '', 1),
(150, 1, 0, '必须要', 149, '我觉得女生约会必需要化妆，但是你不化妆也很漂亮', 1),
(151, 1, 0, '有时可以', 149, '我觉得女生约会有时可以化妆，但是你不化妆也很漂亮～', 1),
(152, 1, 0, '不需要', 149, '我觉得女生约会不需要化妆，但是你不化妆也很漂亮～', 1),
(153, 1, 0, '约会时你希望女伴的穿着是什么路线？', 0, '', 1),
(154, 1, 0, '性感火辣', 153, '我希望咱们第一次见面时对方穿的性感火辣，比较符合我的口味～', 1),
(155, 1, 0, '稳重得体', 153, '我希望咱们第一次见面时对方穿的稳重得体，比较符合我的口味～', 1),
(156, 1, 0, '可爱俏皮', 153, '我希望咱们第一次面对对方穿的可爱俏皮，比较符合我的口味～', 1),
(162, 1, 0, '你觉得我头发扎起来好看还是放下来？', 0, '', 1),
(163, 1, 0, '扎起来', 162, '我觉得你扎起来很好看，我很喜欢', 1),
(164, 1, 0, '放下来', 162, '我觉得你放下来很好看，我很喜欢', 1),
(165, 1, 0, '两种都', 162, '我觉得你两种都很好看，我很喜欢', 1),
(166, 1, 0, '比较喜欢哪种风格的女生？', 0, '', 1),
(167, 1, 0, '可爱甜美', 166, '我比较喜欢可爱甜美的女生，我觉得你很符合～', 1),
(168, 1, 0, '成熟抚媚', 166, '我比较喜欢成熟抚媚的女生，我觉得你很符合～', 1),
(169, 1, 0, '性感火辣', 166, '我比较喜欢性感火辣的女生，我觉得你很符合～', 1),
(170, 1, 0, '如果我希望你在大街上马上吻我，你会愿意吗？', 0, '', 1),
(171, 1, 0, '很愿意', 170, '我很愿意在大街上吻你，你会有什么反应？', 1),
(172, 1, 0, '如果去旅行我走累了，你愿意背我走吗？', 0, '', 1),
(173, 1, 0, '很愿意', 172, '旅行的时候如果你走累了，我很愿意背着你走。', 1),
(174, 1, 0, '愿意', 172, '旅行的时候如果你走累了，我愿意背着你走。', 1),
(175, 1, 0, '可以考虑', 172, '旅行的时候如果你走累了，我可以考虑背着你走。', 1),
(176, 1, 0, '不能', 172, '旅行的时候如果你走累了，我不能背着你走。', 1),
(177, 1, 0, '第一次约会去灯光比较暗的电影院你觉得怎么样？', 0, '', 1),
(178, 1, 0, '很不错', 177, '我觉得第一次约会去灯光比较暗的电影院很不错，你会不会害怕？', 1),
(179, 1, 0, '没感觉', 177, '我觉得第一次约会去灯光比较暗的电影院没感觉，你会不会害怕？', 1),
(180, 1, 0, '不太好', 177, '我觉得第一次约会去灯光比较暗的电影院不太好，你会不会害怕？', 1),
(181, 1, 0, '第一次约会可以接受的亲密程度是？', 0, '', 1),
(182, 1, 0, '牵手', 181, '第一次约会如果女生同意的话，我可以接受的亲密程度时牵手，你可以吗？', 1),
(183, 1, 0, '接吻', 181, '第一次约会如果女生同意的话，我可以接受的亲密程度时接吻，你可以吗？', 1),
(184, 1, 0, '拥抱', 181, '第一次约会如果女生同意的话，我可以接受的亲密程度时拥抱，你可以吗？', 1),
(185, 1, 0, '其他', 181, '第一次约会如果女生同意的话，我可以接受的亲密程度时其他，你可以吗？', 1),
(186, 1, 0, '如果约会时我穿了小护士装，你的反应会是什么？', 0, '', 1),
(187, 1, 0, '非常兴奋', 186, '看到约会对象穿小护士装，我会觉得非常兴奋你都喜欢穿什么？', 1),
(188, 1, 0, '都可以吧', 186, '看到约会对象穿小护士装，我会觉得都可以，你都喜欢穿什么？', 1),
(189, 1, 0, '不太开心', 186, '看到约会对象穿小护士装，我会觉得不太开心，你都喜欢穿什么？', 1),
(190, 1, 0, '你会带女生去哪种地方共度良宵？', 0, '', 1),
(191, 1, 0, '高档酒店', 190, '如果女生愿意，我会带女生去高档酒店共度良宵，你觉得可以吗？', 1),
(192, 1, 0, '快捷酒店', 190, '如果女生愿意，我会带女生去快捷酒店共度良宵，你觉得可以吗？', 1),
(193, 1, 0, '自己家', 190, '如果女生愿意，我会带女生去自己家共度良宵，你觉得可以吗？', 1),
(194, 1, 0, '约会时候你觉得谈论什么话题比较好？', 0, '', 1),
(195, 1, 0, '情感经历', 194, '我觉得约会的时候两个人谈谈情感经历比较有意思', 1),
(196, 1, 0, '约会经历', 194, '我觉得约会的时候两个人谈谈约会经历比较有意思', 1),
(197, 1, 0, '生活趣事', 194, '我觉得约会的时候两个人谈谈生活趣事比较有意思', 1),
(198, 1, 0, '其他', 194, '我觉得约会的时候两个人谈谈其他比较有意思', 1),
(200, 1, 0, '你觉得那里最有魅力能电到我阿？', 0, '', 1),
(201, 1, 0, '眼睛', 200, '我觉得我眼睛比较有魅力，呵呵，不如我们先认识下吧~', 1),
(202, 1, 0, '鼻梁', 200, '我觉得我鼻梁比较有魅力，呵呵，不如我们先认识下吧~', 1),
(203, 1, 0, '手', 200, '我觉得我手比较有魅力，呵呵，不如我们先认识下吧~', 1),
(204, 1, 0, '笑容', 200, '我觉得我笑容比较有魅力，呵呵，不如我们先认识下吧~', 1),
(205, 1, 0, '嘴唇', 200, '我觉得我嘴唇比较有魅力，呵呵，不如我们先认识下吧~', 1),
(206, 1, 0, '胸部', 200, '我觉得我胸部比较有魅力，呵呵，不如我们先认识下吧~', 1),
(207, 1, 0, '可以接受女朋友把第一次留到新婚之夜的想法吗？', 0, '', 1),
(208, 1, 0, '完全接受', 207, '我完全接受女生吧第一次留在新婚之夜的想法', 1),
(209, 1, 0, '需要考虑', 207, '我需要考虑女生吧第一次留在新婚之夜的想法', 1),
(210, 1, 0, '不能接受', 207, '我不能接受女生吧第一次留在新婚之夜的想法', 1),
(213, 1, 0, '你会喜欢爱撒娇的女生吗？', 0, '', 1),
(214, 1, 0, '很喜欢', 213, '我很喜欢爱撒娇的女生，你是什么类型的？', 1),
(215, 1, 0, '可以接受', 213, '我可以接受爱撒娇的女生，你是什么类型的？', 1),
(216, 1, 0, '不喜欢', 213, '我不喜欢爱撒娇的女生，你是什么类型的？', 1),
(219, 1, 0, '现在是在租房还是有自己的房子？我去会不会不方便？', 0, '', 1),
(220, 1, 0, '单独租房', 219, '我现在是单独租房，很欢迎你来！', 1),
(221, 1, 0, '住自己房子', 219, '我现在是住自己房子，很欢迎你来！', 1),
(222, 1, 0, '合租', 219, '我现在是和别人合租房子，很欢迎你来！', 1),
(223, 1, 0, '以前有过几次感情经历？', 0, '', 1),
(224, 1, 0, '零次', 223, '我以前有过零次感情经历，但是这次我想要一段认真的感情。', 1),
(225, 1, 0, '不到三次', 223, '我以前有过不到三次情经历，但是这次我想要一段认真的感情。', 1),
(226, 1, 0, '不到五次', 223, '我以前有过不到五次经历，但是这次我想要一段认真的感情。', 1),
(227, 1, 0, '五次以上', 223, '我以前有过五次以上经历，但是这次我想要一段认真的感情。', 1),
(228, 1, 0, '比较愿意', 170, '我比较愿意在大街上吻你，你会有什么反应？', 1),
(229, 1, 0, '不太愿意', 170, '我不太愿意在大街上吻你，你会有什么反应？', 1),
(230, 1, 0, '你是快捷酒店的会员吗？', 0, '', 1),
(231, 1, 0, '普通会员', 230, '我目前是普通会员，可以认识一下你吗？', 1),
(232, 1, 0, '白金会员', 230, '我目前是白金会员，可以认识一下你吗？', 1),
(233, 1, 0, '非会员', 230, '我目前是非会员，可以认识一下你吗？', 1),
(234, 1, 0, '你愿意和我先这里交个朋友吗？', 0, '', 1),
(235, 1, 0, '当然愿意', 234, '我当然愿意和你交朋友', 1),
(236, 1, 0, '可以接受', 234, '我可以接受和你交朋友~', 1),
(237, 1, 0, '不太愿意', 234, '我不太愿意和你交朋友！', 1),
(238, 1, 0, '约会时你觉得天气最好是？', 0, '', 1),
(239, 1, 0, '晴空万里', 238, '第一次约会时希望的天空晴空万里，这样很有情调！', 1),
(240, 1, 0, '阴雨绵绵', 238, '第一次约会时希望的天空阴雨绵绵，这样很有情调！', 1),
(241, 1, 0, '月黑风高', 238, '第一次约会时希望的天空月黑风高，这样很有情调！', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `color` varchar(255) NOT NULL,
  `background` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `format_type` tinyint(3) unsigned NOT NULL,
  `format` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `fields` varchar(1000) NOT NULL,
  `snpos` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `business` text NOT NULL,
  `discount_type` tinyint(3) unsigned NOT NULL,
  `discount` varchar(3000) NOT NULL,
  `grant` varchar(3000) NOT NULL,
  `grant_rate` varchar(20) NOT NULL,
  `offset_rate` int(10) unsigned NOT NULL,
  `offset_max` int(10) NOT NULL,
  `nums_status` tinyint(3) unsigned NOT NULL,
  `nums_text` varchar(15) NOT NULL,
  `nums` varchar(1000) NOT NULL,
  `times_status` tinyint(3) unsigned NOT NULL,
  `times_text` varchar(15) NOT NULL,
  `times` varchar(1000) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `recommend_status` tinyint(3) unsigned NOT NULL,
  `sign_status` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_care`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_care` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit2` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `granttime` int(10) unsigned NOT NULL,
  `days` int(10) unsigned NOT NULL,
  `time` tinyint(3) unsigned NOT NULL,
  `show_in_card` tinyint(3) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  `sms_notice` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_credit_set`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_credit_set` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `sign` varchar(1000) NOT NULL,
  `share` varchar(500) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_members`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_members` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `openid` varchar(50) NOT NULL,
  `cid` int(10) NOT NULL,
  `cardsn` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_notices`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_notices` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_notices_unread`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_notices_unread` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_recommend`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_recommend` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_record` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `tag` varchar(10) NOT NULL,
  `note` varchar(255) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `addtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_sign_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_sign_record` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `is_grant` tinyint(3) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_cash_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `return_cash` decimal(10,2) unsigned NOT NULL,
  `final_cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_chats_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_credits_recharge`
--

CREATE TABLE IF NOT EXISTS `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `backtype` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_mc_credits_recharge`
--

INSERT INTO `ims_mc_credits_recharge` (`id`, `uniacid`, `uid`, `openid`, `tid`, `transid`, `fee`, `type`, `tag`, `status`, `createtime`, `backtype`) VALUES
(1, 1, 1, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '20161101113038229051', '', '100', 'credit', '0', 0, 1477971025, 2),
(2, 1, 1, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '20161101120889013698', '4007682001201611018358377917', '1', 'credit', '0', 1, 1477973308, 2),
(3, 1, 1, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '20161101183106448838', '4007682001201611018401036167', '25', 'credit', '0', 1, 1477996274, 2);

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_credits_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_credits_record` (
  `id` int(11) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_mc_credits_record`
--

INSERT INTO `ims_mc_credits_record` (`id`, `uid`, `uniacid`, `credittype`, `num`, `operator`, `module`, `clerk_id`, `store_id`, `clerk_type`, `createtime`, `remark`) VALUES
(1, 1, 1, 'credit2', '1.00', 1, '', 0, 0, 1, 1477973334, '用户通过微信充值1.00,充值成功,本次操作共增加余额1.00元'),
(2, 1, 1, 'credit2', '25.00', 1, '', 0, 0, 1, 1477996297, '用户通过微信充值25.00,充值成功,本次操作共增加余额25.00元');

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_fans_groups`
--

CREATE TABLE IF NOT EXISTS `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_mc_fans_groups`
--

INSERT INTO `ims_mc_fans_groups` (`id`, `uniacid`, `acid`, `groups`) VALUES
(1, 1, 1, 'a:1:{i:2;a:3:{s:2:"id";i:2;s:4:"name";s:9:"星标组";s:5:"count";i:0;}}');

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_fans_tag_mapping`
--

CREATE TABLE IF NOT EXISTS `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_groups`
--

CREATE TABLE IF NOT EXISTS `ims_mc_groups` (
  `groupid` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_mc_groups`
--

INSERT INTO `ims_mc_groups` (`groupid`, `uniacid`, `title`, `credit`, `isdefault`) VALUES
(1, 1, '默认会员组', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_handsel`
--

CREATE TABLE IF NOT EXISTS `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_mapping_fans`
--

CREATE TABLE IF NOT EXISTS `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(30) NOT NULL,
  `salt` char(8) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL,
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_mc_mapping_fans`
--

INSERT INTO `ims_mc_mapping_fans` (`fanid`, `acid`, `uniacid`, `uid`, `openid`, `nickname`, `groupid`, `salt`, `follow`, `followtime`, `unfollowtime`, `tag`, `updatetime`, `unionid`) VALUES
(1, 1, 1, 1, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '叶枫', '', 'fwT0JmLG', 1, 1481590250, 0, 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210NEVWUkxGbEQ1Nk40OEI4Z2ZOeWFMdyI7czo4OiJuaWNrbmFtZSI7czo2OiLlj7bmnqsiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuW5v+W3niI7czo4OiJwcm92aW5jZSI7czo2OiLlub/kuJwiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMwOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1U2U0ZSRTlWeXBGZGRzU1dpYk9kUmdUc2pmWGJZcHBQWlJDMEFNQXQwNGdpYTZudzRCV2ljUjVMbVhpYkozejlkZEV3UWljZWNFczQweFF0SVd4TjJQdmlhR2NDSXZiZlZyckN4ZC8wIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNDgxNTkwMjUwO3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9fQ==', 1481645146, ''),
(2, 1, 1, 2, 'ozJkmt1L_xp_V4NTo0W6qdlQwAkU', '兰色姿恋厂商', '', 'UaaV0yDI', 1, 1472013470, 0, 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210MUxfeHBfVjROVG8wVzZxZGxRd0FrVSI7czo4OiJuaWNrbmFtZSI7czoxODoi5YWw6Imy5ae/5oGL5Y6C5ZWGIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLlub/lt54iO3M6ODoicHJvdmluY2UiO3M6Njoi5bm/5LicIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjE0MDoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9RM2F1SGd6d3pNN0FCaWNFSTRZME9EbHlWczAwSUw5cFU0Njc3d1VSTlluY0ZXZjNUZnZiUEkyaWJyd0FqSFh4emN1RWljdkJpYlllSjcyZm1lc0kxQVJXaWFNMzRHVlJQYkEyNU9OZjhUb3NNSjRNLzAiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE0NzIwMTM0NzA7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e319', 1481645146, ''),
(3, 1, 1, 3, 'ozJkmt28vASmJko3t61qFDLP8xj8', '超越', '', 'NXbXmejh', 1, 1477999320, 0, 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210Mjh2QVNtSmtvM3Q2MXFGRExQOHhqOCI7czo4OiJuaWNrbmFtZSI7czo2OiLotoXotooiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuazieW3niI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMxOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzRoMFV2NFhPTXZOZDVlaWFGMGljUXNSYjFpYk5jMTBkY3VKZ1d5enBpYzl0a3lObmR2NFRGbkJXREdXMXJWM0ZRYnJiNDhlWTlXS2E0U0tpYXlhVEdxeHBTVEVIRFZsTUE1aWM3aWEvMCI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTQ3Nzk5OTMyMDtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fX0=', 1481645146, ''),
(4, 1, 1, 4, 'ozJkmt_E3nI0NpX60pXW9y3TYsko', '360创享会客服', '', 'g41QYGf5', 0, 1478005773, 1478005813, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210X0UzbkkwTnBYNjBwWFc5eTNUWXNrbyI7czo4OiJuaWNrbmFtZSI7czoxODoiMzYw5Yib5Lqr5Lya5a6i5pyNIjtzOjM6InNleCI7aToyO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLmnJ3pmLMiO3M6ODoicHJvdmluY2UiO3M6Njoi5YyX5LqsIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEyNzoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9IZFAxb01JNEZsYmRwNmFxVmh6U2YwT1lXZXVyNnBZamNmNmVkZjlybDk1dG5YUndXcWlidWI4Y3dndTg0QTlQaE5SRWg0SE9JdXZMWDRQbjg5ZGpRdWNaM05WMllqM3QxLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTQ3ODAwNTc3MztzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEyNzoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9IZFAxb01JNEZsYmRwNmFxVmh6U2YwT1lXZXVyNnBZamNmNmVkZjlybDk1dG5YUndXcWlidWI4Y3dndTg0QTlQaE5SRWg0SE9JdXZMWDRQbjg5ZGpRdWNaM05WMllqM3QxLzEzMiI7fQ==', NULL, ''),
(5, 1, 1, 5, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', '紫悦', '', 'B5OV7NCr', 1, 1465886790, 0, 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210OXhWTkl5X1BqczNKVzlPS3hGcW1vVSI7czo4OiJuaWNrbmFtZSI7czozNjoi57Sr5oKm8J+Muue+jueJmeS7qivovazlj5Hova/ku7bwn4y6IjtzOjM6InNleCI7aToyO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLopb/lrokiO3M6ODoicHJvdmluY2UiO3M6Njoi6ZmV6KW/IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzMjoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi8ySHJReWliWHY0dTNUN3FTbUdVd1JGR0JtN0l4bTFHeXc1R1JNdENxV2ljNHhMZGljVnQ1SzRDMGlhbjllRlhwNkdib1FzS3d4aWE2bmlicmlhaWJjZTF6Rm5YMHFJRkVtZ3p5dXJqRi8wIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNDY1ODg2NzkwO3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9fQ==', 1481645146, ''),
(6, 1, 1, 6, 'ozJkmt5PuG4UrEDWNl1INZk6VS94', '', '', 'KfjnNHGO', 1, 1478266147, 0, 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210NVB1RzRVckVEV05sMUlOWms2VlM5NCI7czo4OiJuaWNrbmFtZSI7czoxMDoi8J+Si+WMl+mjjiI7czozOiJzZXgiO2k6MTtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX0NOIjtzOjQ6ImNpdHkiO3M6MDoiIjtzOjg6InByb3ZpbmNlIjtzOjA6IiI7czo3OiJjb3VudHJ5IjtzOjk6IuWuiemBk+WwlCI7czoxMDoiaGVhZGltZ3VybCI7czoxMjc6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vMDVLTjFsV1k0dGN1eXRteGZxVWIwYzZPcnAyR3JFZVBudEJrRWU3Y0RudjUydWFsRjNMeVE1Nng2ZGdrcWRhczMyTDMxaGlib1JpY1MxbVBhYlc2WVIzTlFtYmlhWjRXY3hwLzAiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE0NzgyNjYxNDc7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e319', 1481645146, ''),
(10, 1, 1, 10, 'ozJkmty4PPYjrOUZ2O-TQNTViycI', 'Ta', '', 'G9mrai9p', 0, 1478776066, 1478775473, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210eTRQUFlqck9VWjJPLVRRTlRWaXljSSI7czo4OiJuaWNrbmFtZSI7czoyOiJUYSI7czozOiJzZXgiO2k6MjtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX1RXIjtzOjQ6ImNpdHkiO3M6MDoiIjtzOjg6InByb3ZpbmNlIjtzOjk6IuWNoeWNouWdjiI7czo3OiJjb3VudHJ5IjtzOjk6IuiPsuW+i+WuviI7czoxMDoiaGVhZGltZ3VybCI7czoxMjk6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vRmtBVVlCSHhkTFpXWTNHMk1rQ3pkSVhIajdsdWljQm1DSk85WkZROE15RVBRTWtXOHJLbFdET0RsU3B4bGliaWFmWjhxblhQNXR2TjhUUXRiRlZPMm13TkYyd2FiaDRWTzZNLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTQ3ODc3NjA2NjtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEyOToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9Ga0FVWUJIeGRMWldZM0cyTWtDemRJWEhqN2x1aWNCbUNKTzlaRlE4TXlFUFFNa1c4cktsV0RPRGxTcHhsaWJpYWZaOHFuWFA1dHZOOFRRdGJGVk8ybXdORjJ3YWJoNFZPNk0vMTMyIjt9', NULL, ''),
(7, 1, 1, 7, 'ozJkmt3TT-nyCQu1RxFSc68TTqqA', '韩锦锋招商智狼团', '', 'yW27v9yw', 0, 1463747820, 1481465081, 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210M1RULW55Q1F1MVJ4RlNjNjhUVHFxQSI7czo4OiJuaWNrbmFtZSI7czoyNzoi6Z+p6ZSm6ZSL7oiJ5oub5ZWG5pm654u85ZuiIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLlub/lt54iO3M6ODoicHJvdmluY2UiO3M6Njoi5bm/5LicIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEyNzoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9VNlNGUkU5VnlwSFZxdTdCY3NYOUVGdHhlM3NsUDRzM0VEeDBBUjlUNDNVaWFIRUxpYUJ0QU5vMk9ZdTBBRUlwZTBid1hpYk82VldvSEtoQ3RQWVdyVm41QjhTdXZUWG1ybGwvMCI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTQ2Mzc0NzgyMDtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fX0=', 1478953279, ''),
(8, 1, 1, 8, 'ozJkmt3F4OfFyMBm8YIo_XpodmSA', '造梦先生_奢侈品复刻店', '', 'u4M3gO91', 0, 1478502736, 1478502167, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210M0Y0T2ZGeU1CbThZSW9fWHBvZG1TQSI7czo4OiJuaWNrbmFtZSI7czozMToi6YCg5qKm5YWI55SfX+WlouS+iOWTgeWkjeWIu+W6lyI7czozOiJzZXgiO2k6MDtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX0NOIjtzOjQ6ImNpdHkiO3M6MDoiIjtzOjg6InByb3ZpbmNlIjtzOjY6IuW3tOm7jiI7czo3OiJjb3VudHJ5IjtzOjY6IuazleWbvSI7czoxMDoiaGVhZGltZ3VybCI7czoxMjg6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vNGgwVXY0WE9Ndk9sajRtdThRbEpOUWFKc3NyaFdDOWpjUUl0ZExXd1k3SVJnNXVpYmVoWTJCdkFpYWZVN1BFblJ6MnFjb1dLTENNYnhGYnlYMEhLbFdrQWxRVDJwZ3l0RG8vMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNDc4NTAyNzM2O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTI4OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzRoMFV2NFhPTXZPbGo0bXU4UWxKTlFhSnNzcmhXQzlqY1FJdGRMV3dZN0lSZzV1aWJlaFkyQnZBaWFmVTdQRW5SejJxY29XS0xDTWJ4RmJ5WDBIS2xXa0FsUVQycGd5dERvLzEzMiI7fQ==', NULL, ''),
(9, 1, 1, 9, 'ozJkmt4Q-NeLELYkCz0-05Wxr4qQ', '慌慌', '', 'Pkguswzk', 0, 1478582033, 1481465081, 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210NFEtTmVMRUxZa0N6MC0wNVd4cjRxUSI7czo4OiJuaWNrbmFtZSI7czo2OiLmhYzmhYwiO3M6Mzoic2V4IjtpOjI7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuihoemYsyI7czo4OiJwcm92aW5jZSI7czo2OiLmuZbljZciO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMyOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzRoMFV2NFhPTXZOZDVlaWFGMGljUXNSU1dHaWFEa05pYndJd3lFdjgwUmNSZ256OUd2c1g0dGhMaWNZTmJxZkNuQTMwczRES2JvOGljMWxBbVNtMHJpYU5Pcm9sdGVzWGliaFNzUDdhLzAiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE0Nzg1ODIwMzM7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e319', 1478953279, ''),
(11, 1, 1, 11, 'ozJkmt0xYzh2USIJ2cZZpnKQFhO4', 'who pa who', '', 'pGQ2qQ4t', 1, 1478844401, 0, 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210MHhZemgyVVNJSjJjWlpwbktRRmhPNCI7czo4OiJuaWNrbmFtZSI7czoxMDoid2hvIHBhIHdobyI7czozOiJzZXgiO2k6MjtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX0NOIjtzOjQ6ImNpdHkiO3M6Njoi5bi45beeIjtzOjg6InByb3ZpbmNlIjtzOjY6Iuaxn+iLjyI7czo3OiJjb3VudHJ5IjtzOjY6IuS4reWbvSI7czoxMDoiaGVhZGltZ3VybCI7czoxMjc6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vSGRQMW9NSTRGbGJkcDZhcVZoelNmOWZmTVFnTGszekZFQzY4TG9DcW1JVERxaWFGSGdzcmtQWng3dTg3dTM1ZllwaGlhYzNKVXozRkU0ZHMzVWlhN3BwVExyMzJKd003a3FDLzAiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE0Nzg4NDQ0MDE7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e319', 1481645146, ''),
(13, 1, 1, 13, 'ozJkmt2LKzV0vuYBRR8keJyIrH10', '刘洋', '', 'ecGgHiAo', 0, 1479027229, 1479027281, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210MkxLelYwdnVZQlJSOGtlSnlJckgxMCI7czo4OiJuaWNrbmFtZSI7czo2OiLliJjmtIsiO3M6Mzoic2V4IjtpOjI7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuS4sOWPsCI7czo4OiJwcm92aW5jZSI7czo2OiLljJfkuqwiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTE2OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzRoMFV2NFhPTXZNekZFd1FQeXo0RENPcEFTWlc0YVdMY1NRemxLRlQwZmNyanYxalE0V2tEQ2ZGUmxFdDFNdjBJQ3pJOXVQRDExQVRoWlNaV3VDTE1nLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTQ3OTAyNzIyOTtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjExNjoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi80aDBVdjRYT012TXpGRXdRUHl6NERDT3BBU1pXNGFXTGNTUXpsS0ZUMGZjcmp2MWpRNFdrRENmRlJsRXQxTXYwSUN6STl1UEQxMUFUaFpTWld1Q0xNZy8xMzIiO30=', NULL, ''),
(12, 1, 1, 12, 'ozJkmt6H4BOlCnatwfU43jgfnXuM', '盈通进口汽贸66460', '', 'Kf3K7a7P', 1, 1465654396, 0, 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210Nkg0Qk9sQ25hdHdmVTQzamdmblh1TSI7czo4OiJuaWNrbmFtZSI7czoyMzoi55uI6YCa6L+b5Y+j5rG96LS4NjY0NjAiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjk6Iua5vuS7lOWMuiI7czo4OiJwcm92aW5jZSI7czo2OiLpppnmuK8iO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTI3OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzJIclF5aWJYdjR1M1Q3cVNtR1V3UkZOdGVDclFoemJUREc2S2pmdmNyNVNraEdrZmliNFNma1hvYVFZNkcwWFhXSlJyT3VXRmU5Z1E1bW5KZ2Fsd1IyUE5iek9sNjNEaWN2VC8wIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNDY1NjU0Mzk2O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9fQ==', 1481645146, ''),
(14, 1, 1, 14, 'ozJkmtzgkhi8NlDtvO4fFAfIsgRU', '✨Admin✨', '', 'H5R45Jka', 1, 1481597072, 0, 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210emdraGk4TmxEdHZPNGZGQWZJc2dSVSI7czo4OiJuaWNrbmFtZSI7czoxMToi4pyoQWRtaW7inKgiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWQiOiCpSI7czo4OiJwcm92aW5jZSI7czo2OiLlronlvr0iO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTE4OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL2FqTlZkcUhaTExEdTZpYTN2UmxLckZoMGs0eDNaWk5vM1ZycTlVa3NpYjdiQWwzNThoczBoUUpwdE90aWNBSWZ5MVlKQVRrNlpPTEVTUXBaZE5SZE96aWJEUS8wIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNDgxNTk3MDcyO3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9fQ==', 1481645146, ''),
(15, 1, 1, 15, 'ozJkmt5WVyGSfs-fmn3S6lTRKa44', '温妮babyface', '', 'W4jTS6wO', 1, 1481609061, 0, 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210NVdWeUdTZnMtZm1uM1M2bFRSS2E0NCI7czo4OiJuaWNrbmFtZSI7czoxNDoi5rip5aauYmFieWZhY2UiO3M6Mzoic2V4IjtpOjI7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuW5v+W3niI7czo4OiJwcm92aW5jZSI7czo2OiLlub/kuJwiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTI5OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1U2U0ZSRTlWeXBHUW10bzdIbVRiYmhDVjVFZmR5eFdPSHR0UmliVkZ3R2pBTGNWOXJZSm05dTFmdUZNTWlhaWExTjBBclNGODBpYXhDOEp5WXhYTWxoRlVxWDhpY3hnUXpOalEwLzAiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE0ODE2MDkwNjE7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e319', 1481645146, ''),
(16, 1, 1, 16, 'ozJkmt2i0qj5wOdVi4A3myPcMuSk', '半杯咖啡₂₀₁₆', '', 'E7f47kvf', 0, 1481617146, 1481617475, 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210MmkwcWo1d09kVmk0QTNteVBjTXVTayI7czo4OiJuaWNrbmFtZSI7czoyNzoi5Y2K5p2v5ZKW5ZWh7omP4oKC4oKA4oKB4oKGIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLmt67lrokiO3M6ODoicHJvdmluY2UiO3M6Njoi5rGf6IuPIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNDgxNjE3MTQ2O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTIwOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1BpYWp4U3FCUmFFSk00aWFDMVVZVmliWGFtd3kzTGlhajhKeldna1l2V2U2UjZxQ3JlZ2Q0TDdqYUVHZjF5M3ZGUWZtQ1BpYnFnQktPaEFpY2NFR3IzU2RWWktBLzAiO30=', 1481617207, ''),
(17, 1, 1, 17, 'ozJkmt-hPB7SLQ6zLlP7_Fmb22zg', '古', '', 'OAn1A9z8', 1, 1481626643, 0, 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib3pKa210LWhQQjdTTFE2ekxsUDdfRm1iMjJ6ZyI7czo4OiJuaWNrbmFtZSI7czo3OiLlj6Twn5CyIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czowOiIiO3M6ODoicHJvdmluY2UiO3M6Njoi55SY6IKDIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEyOToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9VNlNGUkU5VnlwRmRkc1NXaWJPZFJnWkxyZzNleWljaHNTT3JKczdxcTJUSUwxNDRIUk9pYld5TnZIaGliaWJ3SlltTTRkZXI5cDBwdDNmTmI5MXJSQUtLSE9BNHlwQlIyMzA0RS8wIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNDgxNjI2NjQzO3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9fQ==', 1481645146, ''),
(18, 1, 1, 18, 'o8cSQwGR4ZP_WVDr_cri6fTFvZPg', '叶枫', '', 'a27V14cr', 1, 1481795461, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoibzhjU1F3R1I0WlBfV1ZEcl9jcmk2ZlRGdlpQZyI7czo4OiJuaWNrbmFtZSI7czo2OiLlj7bmnqsiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuW5v+W3niI7czo4OiJwcm92aW5jZSI7czo2OiLlub/kuJwiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTI5OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL0gwYnRYNlZyQzdESzlPOU1naFpkNnR0ZVkyM3pMTTRjWjZzczdCc0NlbkxYWElMY09jV0FycnFOYWUzV2lhN0NSaHJpYUdLUUgwM3RJZjVtV0Q2NGhvNktCRHNpYXpKelRNYi8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE0ODE3OTU0NjE7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMjk6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vSDBidFg2VnJDN0RLOU85TWdoWmQ2dHRlWTIzekxNNGNaNnNzN0JzQ2VuTFhYSUxjT2NXQXJycU5hZTNXaWE3Q1JocmlhR0tRSDAzdElmNW1XRDY0aG82S0JEc2lhekp6VE1iLzEzMiI7fQ==', 1481795378, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_mapping_ucenter`
--

CREATE TABLE IF NOT EXISTS `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_mass_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `cron_id` int(10) unsigned NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `finalsendtime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_members`
--

CREATE TABLE IF NOT EXISTS `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `credit3` decimal(10,2) unsigned NOT NULL,
  `credit4` decimal(10,2) unsigned NOT NULL,
  `credit5` decimal(10,2) unsigned NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_mc_members`
--

INSERT INTO `ims_mc_members` (`uid`, `uniacid`, `mobile`, `email`, `password`, `salt`, `groupid`, `credit1`, `credit2`, `credit3`, `credit4`, `credit5`, `credit6`, `createtime`, `realname`, `nickname`, `avatar`, `qq`, `vip`, `gender`, `birthyear`, `birthmonth`, `birthday`, `constellation`, `zodiac`, `telephone`, `idcard`, `studentid`, `grade`, `address`, `zipcode`, `nationality`, `resideprovince`, `residecity`, `residedist`, `graduateschool`, `company`, `education`, `occupation`, `position`, `revenue`, `affectivestatus`, `lookingfor`, `bloodtype`, `height`, `weight`, `alipay`, `msn`, `taobao`, `site`, `bio`, `interest`) VALUES
(1, 1, '', 'f0a67646d87df1708f1b53c557c1f47c@we7.cc', '57d1560ddbe76624e8eab24c0cab228c', 'CZQXOoWQ', 1, '0.00', '26.00', '0.00', '0.00', '0.00', '0.00', 1481620176, '', '叶枫', 'http://wx.qlogo.cn/mmopen/U6SFRE9VypFddsSWibOdRgTsjfXbYppPZRC0AMAt04gia6nw4BWicR5LmXibJ3z9ddEwQicecEs40xQtIWxN2PviaGcCIvbfVrrCxd/0', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '广东省', '广州市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 1, '', '082572efbdda6720140956500b4298b8@we7.cc', 'd014dcb97e323b4aa1f71135d5adb326', 'RrFI6Q6G', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1481590617, '', '兰色姿恋厂商', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7ABicEI4Y0ODlyVs00IL9pU4677wURNYncFWf3TfvbPI2ibrwAjHXxzcuEicvBibYeJ72fmesI1ARWiaM34GVRPbA25ONf8TosMJ4M/0', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '广东省', '广州市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 1, '', 'd8e5e0449bee622beb158aa95abd28af@we7.cc', 'b44636109b3e6b6dac34af48337b6ba8', 'VWsmuu99', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1477999287, '', '超越', 'http://wx.qlogo.cn/mmopen/4h0Uv4XOMvNd5eiaF0icQsRb1ibNc10dcuJgWyzpic9tkyNndv4TFnBWDGW1rV3FQbrb48eY9WKa4SKiayaTGqxpSTEHDVlMA5ic7ia/132', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '福建省', '泉州市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 1, '', '626569b3d66f7d2431dd582d4babbced@we7.cc', 'df279883087321613e122086428bfbee', 'A6QhVh5X', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1478005769, '', '360创享会客服', 'http://wx.qlogo.cn/mmopen/HdP1oMI4Flbdp6aqVhzSf0OYWeur6pYjcf6edf9rl95tnXRwWqibub8cwgu84A9PhNREh4HOIuvLX4Pn89djQucZ3NV2Yj3t1/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 1, '', '3a59e31f6df0b41705d4945d95608673@we7.cc', 'c37c1b7b58db6c4c7789b26f9df48703', 'xTtKx5FT', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1478066714, '', '紫悦', 'http://wx.qlogo.cn/mmopen/2HrQyibXv4u3T7qSmGUwRFGBm7Ixm1Gyw5GRMtCqWic4xLdicVt5K4C0ian9eFXp6GboQsKwxia6nibriaibce1zFnX0qIFEmgzyurjF/132', '', 0, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '陕西省', '西安市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 1, '', 'b64279969d0fdceb2bcb1f350a8a8da4@we7.cc', '6eac079ecbfadb2b5837d3d22c65401a', 'VddJ8UAd', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1478265518, '', '北风', 'http://wx.qlogo.cn/mmopen/05KN1lWY4tcuytmxfqUb0c6Orp2GrEePntBkEe7cDnv52ualF3LyQ2xBCkkRKorTQl1TnEuNIULBVsIia8K0iaEnhxz54k7F0H/132', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '安道尔', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 1, '', 'f3735249788f79a10e93279c9c8422f7@we7.cc', '8def079be25093823f6784753f57054e', 'U3q2YsEU', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1478416647, '', '韩锦锋招商智狼团', 'http://wx.qlogo.cn/mmopen/U6SFRE9VypHVqu7BcsX9EFtxe3slP4s3EDx0AR9T43UiaHELiaBtANo2OYu0AEIpe0bwXibO6VWoHKhCtPYWrVn5B8SuvTXmrll/132', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '广东省', '广州市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 1, '', 'c293338ca3427014b8c514b03159adce@we7.cc', '1bc67132939ae2c4de24e495a333715f', 'dG1W3E49', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1478502104, '', '造梦先生_奢侈品复刻店', 'http://wx.qlogo.cn/mmopen/4h0Uv4XOMvOlj4mu8QlJNQaJssrhWC9jcQItdLWwY7IRg5uibehY2BvAiafU7PEnRz2qcoWKLCMbxFbyX0HKlWkAlQT2pgytDo/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 1, '', '944fbd9b7ccd9043f98883ed97e80116@we7.cc', 'fbf0bd8c91797a0d9767872c8ce7f508', 'U4B4OdkB', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1478581400, '', '慌慌', 'http://wx.qlogo.cn/mmopen/4h0Uv4XOMvNd5eiaF0icQsRSWGiaDkNibwIwyEv80RcRgnz9GvsX4thLicYNbqfCnA30s4DKbo8ic1lAmSm0riaNOroltesXibhSsP7a/132', '', 0, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '湖南省', '衡阳市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 1, '', '1d25acc8114bac743b63f0fa794cbec7@we7.cc', 'a73e7f9bd68f9a350dded8ffbb1970fb', 'o9H9N6Rl', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1478775430, '', 'Ta', 'http://wx.qlogo.cn/mmopen/FkAUYBHxdLZWY3G2MkCzdIXHj7luicBmCJO9ZFQ8MyEPQMkW8rKlWDODlSpxlibiafZ8qnXP5tvN8TQtbFVO2mwNF2wabh4VO6M/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 1, '', '461d4fd3457e86fb1afb7ff21801aab8@we7.cc', '2ce9fe23bf03b6cf880d118a75f80a0a', 'UEpsJt05', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1478843765, '', 'who pa who', 'http://wx.qlogo.cn/mmopen/HdP1oMI4Flbdp6aqVhzSf9ffMQgLk3zFEC68LoCqmITDqiaFHgsrkPZx7u87u35fYphiac3JUz3FE4ds3Uia7ppTLr32JwM7kqC/132', '', 0, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '江苏省', '常州市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 1, '', '1560e618a9c16a928890e5821d644d04@we7.cc', '3b555f940726b7112f6a8cf77eb7c3e3', 'C3Fq4p6c', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1478885117, '', '盈通进口汽贸672959', 'http://wx.qlogo.cn/mmopen/U6SFRE9VypFddsSWibOdRgab8NweiaJ7gMpTmIVC9ymENQ68q57AYHdbenHBRyuQquBFUe33zMK9oYK5RGxsFSu2TCuTnsiaibEo/132', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '香港省', '湾仔区市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 1, '', 'a89c533133753c8e37e0a6fc9ac8af69@we7.cc', '1f1b8ce0e4a84f8736c658e35c427941', 'zKOHaATa', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1479027229, '', '刘洋', 'http://wx.qlogo.cn/mmopen/4h0Uv4XOMvMzFEwQPyz4DCOpASZW4aWLcSQzlKFT0fcrjv1jQ4WkDCfFRlEt1Mv0ICzI9uPD11AThZSZWuCLMg/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 1, '', '51ff4a6845192817ad536d8401c3b063@we7.cc', '647e78f6fac5a16af22205271f462add', 'eJ302302', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1481597230, '', '✨Admin✨', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDu6ia3vRlKrFh0k4x3ZZNo3Vrq9Uksib7bAl358hs0hQJptOticAIfy1YJATk6ZOLESQpZdNRdOzibDQ/0', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '安徽省', '合肥市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 1, '', 'a6385ef3da1a9d9f2b8454d171417c3a@we7.cc', 'a8c8ff48a15b92b1fae76d96be0c4c36', 'GJOhTVjJ', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1481609110, '', '温妮babyface', 'http://wx.qlogo.cn/mmopen/U6SFRE9VypGQmto7HmTbbhCV5EfdyxWOHttRibVFwGjALcV9rYJm9u1fuFMMiaia1N0ArSF80iaxC8JyYxXMlhFUqX8icxgQzNjQ0/0', '', 0, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '广东省', '广州市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 1, '', '25e9fa329feb134b964522eb37ce8a50@we7.cc', '5fc2a8f081008e7d7e716cc2bca589e7', 'up88zTkE', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1481617207, '', '半杯咖啡₂₀₁₆', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJM4iaC1UYVibXamwy3Liaj8JzWgkYvWe6R6qCregd4L7jaEGf1y3vFQfmCPibqgBKOhAiccEGr3SdVZKA/0', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '江苏省', '淮安市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 1, '', 'e8d85d67ad75a1ce5fb9ff0013acd122@we7.cc', 'fef7187df7508e15329e5afdb217b1a0', 'pFBZ31V8', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1481626730, '', '古', 'http://wx.qlogo.cn/mmopen/U6SFRE9VypFddsSWibOdRgZLrg3eyichsSOrJs7qq2TIL144HROibWyNvHhibibwJYmM4der9p0pt3fNb91rRAKKHOA4ypBR2304E/0', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '甘肃省', '市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 1, '', 'a946f9904de8afe006fdb2e508f4c353@we7.cc', 'bca3c62baa258fc563360976678f8a80', 'x7MXX3qP', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1481795378, '', '叶枫', 'http://wx.qlogo.cn/mmopen/H0btX6VrC7DK9O9MghZd6tteY23zLM4cZ6ss7BsCenLXXILcOcWArrqNae3Wia7CRhriaGKQH03tIf5mWD64ho6KBDsiazJzTMb/132', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '广东省', '广州市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_member_address`
--

CREATE TABLE IF NOT EXISTS `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_member_fields`
--

CREATE TABLE IF NOT EXISTS `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_mc_member_fields`
--

INSERT INTO `ims_mc_member_fields` (`id`, `uniacid`, `fieldid`, `title`, `available`, `displayorder`) VALUES
(1, 1, 1, '真实姓名', 1, 0),
(2, 1, 2, '昵称', 1, 1),
(3, 1, 3, '头像', 1, 1),
(4, 1, 4, 'QQ号', 1, 0),
(5, 1, 5, '手机号码', 1, 0),
(6, 1, 6, 'VIP级别', 1, 0),
(7, 1, 7, '性别', 1, 0),
(8, 1, 8, '出生生日', 1, 0),
(9, 1, 9, '星座', 1, 0),
(10, 1, 10, '生肖', 1, 0),
(11, 1, 11, '固定电话', 1, 0),
(12, 1, 12, '证件号码', 1, 0),
(13, 1, 13, '学号', 1, 0),
(14, 1, 14, '班级', 1, 0),
(15, 1, 15, '邮寄地址', 1, 0),
(16, 1, 16, '邮编', 1, 0),
(17, 1, 17, '国籍', 1, 0),
(18, 1, 18, '居住地址', 1, 0),
(19, 1, 19, '毕业学校', 1, 0),
(20, 1, 20, '公司', 1, 0),
(21, 1, 21, '学历', 1, 0),
(22, 1, 22, '职业', 1, 0),
(23, 1, 23, '职位', 1, 0),
(24, 1, 24, '年收入', 1, 0),
(25, 1, 25, '情感状态', 1, 0),
(26, 1, 26, ' 交友目的', 1, 0),
(27, 1, 27, '血型', 1, 0),
(28, 1, 28, '身高', 1, 0),
(29, 1, 29, '体重', 1, 0),
(30, 1, 30, '支付宝帐号', 1, 0),
(31, 1, 31, 'MSN', 1, 0),
(32, 1, 32, '电子邮箱', 1, 0),
(33, 1, 33, '阿里旺旺', 1, 0),
(34, 1, 34, '主页', 1, 0),
(35, 1, 35, '自我介绍', 1, 0),
(36, 1, 36, '兴趣爱好', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_oauth_fans`
--

CREATE TABLE IF NOT EXISTS `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_menu_event`
--

CREATE TABLE IF NOT EXISTS `ims_menu_event` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mobilenumber`
--

CREATE TABLE IF NOT EXISTS `ims_mobilenumber` (
  `id` int(11) NOT NULL,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules`
--

CREATE TABLE IF NOT EXISTS `ims_modules` (
  `mid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL,
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) NOT NULL,
  `handles` varchar(500) NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `iscard` tinyint(3) unsigned NOT NULL,
  `permissions` varchar(5000) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_modules`
--

INSERT INTO `ims_modules` (`mid`, `name`, `type`, `title`, `version`, `ability`, `description`, `author`, `url`, `settings`, `subscribes`, `handles`, `isrulefields`, `issystem`, `target`, `iscard`, `permissions`) VALUES
(1, 'basic', 'system', '基本文字回复', '1.0', '和您进行简单对话', '一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, ''),
(2, 'news', 'system', '基本混合图文回复', '1.0', '为你提供生动的图文资讯', '一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, ''),
(3, 'music', 'system', '基本音乐回复', '1.0', '提供语音、音乐等音频类回复', '在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, ''),
(4, 'userapi', 'system', '自定义接口回复', '1.1', '更方便的第三方接口设置', '自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, ''),
(5, 'recharge', 'system', '会员中心充值模块', '1.0', '提供会员充值功能', '', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 0, 1, 0, 0, ''),
(6, 'custom', 'system', '多客服转接', '1.0.0', '用来接入腾讯的多客服系统', '', 'WeEngine Team', 'http://bbs.we7.cc', 0, 'a:0:{}', 'a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:5:"video";i:3;s:8:"location";i:4;s:4:"link";i:5;s:4:"text";}', 1, 1, 0, 0, ''),
(7, 'images', 'system', '基本图片回复', '1.0', '提供图片回复', '在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, ''),
(8, 'video', 'system', '基本视频回复', '1.0', '提供图片回复', '在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, ''),
(9, 'voice', 'system', '基本语音回复', '1.0', '提供语音回复', '在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, ''),
(10, 'chats', 'system', '发送客服消息', '1.0', '公众号可以在粉丝最后发送消息的48小时内无限制发送消息', '', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 0, 1, 0, 0, ''),
(11, 'wxcard', 'system', '微信卡券回复', '1.0', '微信卡券回复', '微信卡券回复', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, ''),
(12, 'paycenter', 'system', '收银台', '1.0', '收银台', '收银台', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, ''),
(13, 'jy_ppp', 'business', '想约你', '6.3', '想约你', '想约你', '叶枫 qq 215681445', 'http://www.ncwxyx.com', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 1, 0, 0, 0, 'a:0:{}');

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_bindings`
--

CREATE TABLE IF NOT EXISTS `ims_modules_bindings` (
  `eid` int(11) NOT NULL,
  `module` varchar(30) NOT NULL,
  `entry` varchar(10) NOT NULL,
  `call` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `do` varchar(30) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_modules_bindings`
--

INSERT INTO `ims_modules_bindings` (`eid`, `module`, `entry`, `call`, `title`, `do`, `state`, `direct`, `url`, `icon`, `displayorder`) VALUES
(1, 'jy_ppp', 'cover', '', '缘分首页', 'index', '', 0, '', '', 0),
(2, 'jy_ppp', 'cover', '', '个人中心', 'geren', '', 0, '', '', 0),
(3, 'jy_ppp', 'cover', '', '信箱', 'mail', '', 0, '', '', 0),
(4, 'jy_ppp', 'cover', '', '附近', 'luck', '', 0, '', '', 0),
(5, 'jy_ppp', 'cover', '', '推广员中心', 'tgycenter', '', 0, '', '', 0),
(6, 'jy_ppp', 'cover', '', '店员中心', 'dycenter', '', 0, '', '', 0),
(7, 'jy_ppp', 'cover', '', '安全中心', 'safe', '', 0, '', '', 0),
(8, 'jy_ppp', 'cover', '', '帮助中心', 'help', '', 0, '', '', 0),
(9, 'jy_ppp', 'menu', '', '基本设置', 'setting', '', 0, '', '', 0),
(10, 'jy_ppp', 'menu', '', '帮助中心', 'help', '', 0, '', '', 0),
(11, 'jy_ppp', 'menu', '', '安全中心', 'safe', '', 0, '', '', 0),
(12, 'jy_ppp', 'menu', '', '虚拟用户相册', 'xunithumb', '', 0, '', '', 0),
(13, 'jy_ppp', 'menu', '', '真实打招呼', 'zhaohu', '', 0, '', '', 0),
(14, 'jy_ppp', 'menu', '', '分配虚拟用户', 'fenpei', '', 0, '', '', 0),
(15, 'jy_ppp', 'menu', '', '添加虚拟用户', 'xuni', '', 0, '', '', 0),
(16, 'jy_ppp', 'menu', '', '昵称库管理', 'nickname', '', 0, '', '', 0),
(17, 'jy_ppp', 'menu', '', '虚拟充值记录', 'xuni_pay', '', 0, '', '', 0),
(18, 'jy_ppp', 'menu', '', '统计分析', 'stat', '', 0, '', '', 0),
(19, 'jy_ppp', 'menu', '', '财务报表', 'caiwu', '', 0, '', '', 0),
(20, 'jy_ppp', 'menu', '', '店员设置', 'dianyuan', '', 0, '', '', 0),
(21, 'jy_ppp', 'menu', '', '消息中心', 'xinxi', '', 0, '', '', 0),
(22, 'jy_ppp', 'menu', '', '消息库', 'msg', '', 0, '', '', 0),
(23, 'jy_ppp', 'menu', '', '二次回复库', 'hf2', '', 0, '', '', 0),
(24, 'jy_ppp', 'menu', '', '虚拟打呼', 'hf', '', 0, '', '', 0),
(25, 'jy_ppp', 'menu', '', '用户管理', 'member', '', 0, '', '', 0),
(26, 'jy_ppp', 'menu', '', '信封图片', 'mailui', '', 0, '', '', 0),
(27, 'jy_ppp', 'menu', '', '相册审核', 'thumb', '', 0, '', '', 0),
(28, 'jy_ppp', 'menu', '', '反馈管理', 'feedback', '', 0, '', '', 0),
(29, 'jy_ppp', 'menu', '', '渠道管理', 'qrcode', '', 0, '', '', 0),
(30, 'jy_ppp', 'menu', '', '价格设置', 'price', '', 0, '', '', 0),
(31, 'jy_ppp', 'menu', '', '推广员管理', 'tuiguang', '', 0, '', '', 0),
(32, 'jy_ppp', 'menu', '', '推广员消息', 'send', '', 0, '', '', 0),
(33, 'jy_ppp', 'menu', '', '推广员报表', 'tgstat', '', 0, '', '', 0),
(34, 'jy_ppp', 'menu', '', '提现管理', 'tixian', '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_recycle`
--

CREATE TABLE IF NOT EXISTS `ims_modules_recycle` (
  `id` int(10) NOT NULL,
  `modulename` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_music_reply`
--

CREATE TABLE IF NOT EXISTS `ims_music_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_news_reply`
--

CREATE TABLE IF NOT EXISTS `ims_news_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_news_reply`
--

INSERT INTO `ims_news_reply` (`id`, `rid`, `parent_id`, `title`, `author`, `description`, `thumb`, `content`, `url`, `displayorder`, `incontent`, `createtime`) VALUES
(1, 12, 0, '您附近有658名好友在线，快点去打招呼吧......', '', '', 'images/1/2016/12/huTUkMJf2l9JCj9jc97lck9CkcARcC.jpg', '', './index.php?i=1&c=entry&eid=1', 0, 1, 1481794490),
(2, 12, 1, '妹妹我今年22岁，有约的哥哥......', '', '', 'images/1/2016/12/oJHM6Z230F3eMHP343d88j3432434L.jpg', '', '', 0, 1, 1481794490),
(3, 12, 1, '缘分是一种可遇不可求的东西......', '', '', 'images/1/2016/12/L8tR8WBMx2ycVVcLRh2rExhpWRjb8b.jpg', '', './index.php?i=1&c=entry&eid=1', 0, 1, 1481794490),
(4, 12, 1, '东南西北中，我的那个他你在......', '', '', 'images/1/2016/12/OiT0892DQ2QdjDTgYI0d6yyg9ftyFn.jpg', '', './index.php?i=1&c=entry&eid=1', 0, 1, 1481794490),
(5, 12, 1, '求爱求爱，求老天爷掉下来一......', '', '', 'images/1/2016/12/xaPnuAun4uzA9q9n98ONNaAD8B98ap.png', '', '', 0, 1, 1481794490),
(6, 12, 1, '新的生活新的开始，期待......', '', '', 'images/1/2016/12/eCbio288EB5Ac5oeVAma7A55hr28um.jpg', '', '', 0, 1, 1481794490);

-- --------------------------------------------------------

--
-- 表的结构 `ims_paycenter_order`
--

CREATE TABLE IF NOT EXISTS `ims_paycenter_order` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `uniontid` varchar(40) NOT NULL,
  `transaction_id` varchar(40) NOT NULL,
  `type` varchar(10) NOT NULL,
  `trade_type` varchar(10) NOT NULL,
  `body` varchar(255) NOT NULL,
  `fee` varchar(15) NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `auth_code` varchar(30) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `follow` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `credit_status` tinyint(3) unsigned NOT NULL,
  `paytime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_profile_fields`
--

CREATE TABLE IF NOT EXISTS `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_profile_fields`
--

INSERT INTO `ims_profile_fields` (`id`, `field`, `available`, `title`, `description`, `displayorder`, `required`, `unchangeable`, `showinregister`, `field_length`) VALUES
(1, 'realname', 1, '真实姓名', '', 0, 1, 1, 1, 0),
(2, 'nickname', 1, '昵称', '', 1, 1, 0, 1, 0),
(3, 'avatar', 1, '头像', '', 1, 0, 0, 0, 0),
(4, 'qq', 1, 'QQ号', '', 0, 0, 0, 1, 0),
(5, 'mobile', 1, '手机号码', '', 0, 0, 0, 0, 0),
(6, 'vip', 1, 'VIP级别', '', 0, 0, 0, 0, 0),
(7, 'gender', 1, '性别', '', 0, 0, 0, 0, 0),
(8, 'birthyear', 1, '出生生日', '', 0, 0, 0, 0, 0),
(9, 'constellation', 1, '星座', '', 0, 0, 0, 0, 0),
(10, 'zodiac', 1, '生肖', '', 0, 0, 0, 0, 0),
(11, 'telephone', 1, '固定电话', '', 0, 0, 0, 0, 0),
(12, 'idcard', 1, '证件号码', '', 0, 0, 0, 0, 0),
(13, 'studentid', 1, '学号', '', 0, 0, 0, 0, 0),
(14, 'grade', 1, '班级', '', 0, 0, 0, 0, 0),
(15, 'address', 1, '邮寄地址', '', 0, 0, 0, 0, 0),
(16, 'zipcode', 1, '邮编', '', 0, 0, 0, 0, 0),
(17, 'nationality', 1, '国籍', '', 0, 0, 0, 0, 0),
(18, 'resideprovince', 1, '居住地址', '', 0, 0, 0, 0, 0),
(19, 'graduateschool', 1, '毕业学校', '', 0, 0, 0, 0, 0),
(20, 'company', 1, '公司', '', 0, 0, 0, 0, 0),
(21, 'education', 1, '学历', '', 0, 0, 0, 0, 0),
(22, 'occupation', 1, '职业', '', 0, 0, 0, 0, 0),
(23, 'position', 1, '职位', '', 0, 0, 0, 0, 0),
(24, 'revenue', 1, '年收入', '', 0, 0, 0, 0, 0),
(25, 'affectivestatus', 1, '情感状态', '', 0, 0, 0, 0, 0),
(26, 'lookingfor', 1, ' 交友目的', '', 0, 0, 0, 0, 0),
(27, 'bloodtype', 1, '血型', '', 0, 0, 0, 0, 0),
(28, 'height', 1, '身高', '', 0, 0, 0, 0, 0),
(29, 'weight', 1, '体重', '', 0, 0, 0, 0, 0),
(30, 'alipay', 1, '支付宝帐号', '', 0, 0, 0, 0, 0),
(31, 'msn', 1, 'MSN', '', 0, 0, 0, 0, 0),
(32, 'email', 1, '电子邮箱', '', 0, 0, 0, 0, 0),
(33, 'taobao', 1, '阿里旺旺', '', 0, 0, 0, 0, 0),
(34, 'site', 1, '主页', '', 0, 0, 0, 0, 0),
(35, 'bio', 1, '自我介绍', '', 0, 0, 0, 0, 0),
(36, 'interest', 1, '兴趣爱好', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_qrcode`
--

CREATE TABLE IF NOT EXISTS `ims_qrcode` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `url` varchar(256) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_qrcode`
--

INSERT INTO `ims_qrcode` (`id`, `uniacid`, `acid`, `type`, `extra`, `qrcid`, `scene_str`, `name`, `keyword`, `model`, `ticket`, `url`, `expire`, `subnum`, `createtime`, `status`) VALUES
(1, 1, 1, 'scene', 0, 0, 'aa', '约爱系统', '约爱', 2, 'gQFt8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMEFPT0l4Y3A4Q1QxMDAwME0wN2MAAgRmNU9YAwQAAAAA', 'http://weixin.qq.com/q/020AOOIxcp8CT10000M07c', 0, 0, 1481586118, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_qrcode_stat`
--

CREATE TABLE IF NOT EXISTS `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `qrcid` bigint(20) unsigned NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_qrcode_stat`
--

INSERT INTO `ims_qrcode_stat` (`id`, `uniacid`, `acid`, `qid`, `openid`, `type`, `qrcid`, `scene_str`, `name`, `createtime`) VALUES
(1, 1, 1, 1, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 2, 0, 'aa', '约爱系统', 1481587462),
(2, 1, 1, 1, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 2, 0, 'aa', '约爱系统', 1481587462),
(3, 1, 1, 1, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 1, 0, 'aa', '约爱系统', 1481587479),
(4, 1, 1, 1, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 1, 0, 'aa', '约爱系统', 1481589169),
(5, 1, 1, 1, 'ozJkmtzgkhi8NlDtvO4fFAfIsgRU', 1, 0, 'aa', '约爱系统', 1481597212),
(6, 1, 1, 1, 'ozJkmt5WVyGSfs-fmn3S6lTRKa44', 1, 0, 'aa', '约爱系统', 1481609102),
(7, 1, 1, 1, 'ozJkmt-hPB7SLQ6zLlP7_Fmb22zg', 1, 0, 'aa', '约爱系统', 1481626719);

-- --------------------------------------------------------

--
-- 表的结构 `ims_rule`
--

CREATE TABLE IF NOT EXISTS `ims_rule` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_rule`
--

INSERT INTO `ims_rule` (`id`, `uniacid`, `name`, `module`, `displayorder`, `status`) VALUES
(1, 0, '城市天气', 'userapi', 255, 1),
(2, 0, '百度百科', 'userapi', 255, 1),
(3, 0, '即时翻译', 'userapi', 255, 1),
(4, 0, '今日老黄历', 'userapi', 255, 1),
(5, 0, '看新闻', 'userapi', 255, 1),
(6, 0, '快递查询', 'userapi', 255, 1),
(7, 1, '会员主页', 'cover', 0, 1),
(8, 1, '微擎团队入口设置', 'cover', 0, 1),
(9, 1, '青年会自助充值', 'cover', 0, 1),
(10, 1, '约爱首页', 'cover', 0, 1),
(11, 1, '导航', 'basic', 0, 1),
(12, 1, '关注', 'news', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_rule_keyword`
--

CREATE TABLE IF NOT EXISTS `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_rule_keyword`
--

INSERT INTO `ims_rule_keyword` (`id`, `rid`, `uniacid`, `module`, `content`, `type`, `displayorder`, `status`) VALUES
(1, 1, 0, 'userapi', '^.+天气$', 3, 255, 1),
(2, 2, 0, 'userapi', '^百科.+$', 3, 255, 1),
(3, 2, 0, 'userapi', '^定义.+$', 3, 255, 1),
(4, 3, 0, 'userapi', '^@.+$', 3, 255, 1),
(5, 4, 0, 'userapi', '日历', 1, 255, 1),
(6, 4, 0, 'userapi', '万年历', 1, 255, 1),
(7, 4, 0, 'userapi', '黄历', 1, 255, 1),
(8, 4, 0, 'userapi', '几号', 1, 255, 1),
(9, 5, 0, 'userapi', '新闻', 1, 255, 1),
(10, 6, 0, 'userapi', '^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$', 3, 255, 1),
(17, 7, 1, 'cover', '会员中心', 1, 0, 1),
(12, 8, 1, 'cover', '首页', 1, 0, 1),
(18, 9, 1, 'cover', '青年会', 1, 0, 1),
(21, 10, 1, 'cover', '约爱', 1, 0, 1),
(20, 11, 1, 'basic', '导航', 1, 0, 1),
(23, 12, 1, 'news', '关注', 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_article`
--

CREATE TABLE IF NOT EXISTS `ims_site_article` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL,
  `ccate` int(10) unsigned NOT NULL,
  `template` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_category`
--

CREATE TABLE IF NOT EXISTS `ims_site_category` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_multi`
--

CREATE TABLE IF NOT EXISTS `ims_site_multi` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_site_multi`
--

INSERT INTO `ims_site_multi` (`id`, `uniacid`, `title`, `styleid`, `site_info`, `status`, `bindhost`) VALUES
(1, 1, '微擎团队', 1, '', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_nav`
--

CREATE TABLE IF NOT EXISTS `ims_site_nav` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `css` varchar(1000) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `categoryid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_page`
--

CREATE TABLE IF NOT EXISTS `ims_site_page` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodnum` int(10) unsigned NOT NULL,
  `multipage` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_site_page`
--

INSERT INTO `ims_site_page` (`id`, `uniacid`, `multiid`, `title`, `description`, `params`, `html`, `type`, `status`, `createtime`, `goodnum`, `multipage`) VALUES
(1, 1, 0, '快捷菜单', '', '{"navStyle":"2","bgColor":"#f4f4f4","menus":[{"title":"\\u4f1a\\u5458\\u5361","url":".\\/index.php?c=mc&a=bond&do=card&i=1","submenus":[],"icon":{"name":"fa fa-credit-card","color":"#969696"},"image":"","hoverimage":"","hovericon":[]},{"title":"\\u5151\\u6362","url":".\\/index.php?c=activity&a=coupon&do=display&&i=1","submenus":[],"icon":{"name":"fa fa-money","color":"#969696"},"image":"","hoverimage":"","hovericon":[]},{"title":"\\u4ed8\\u6b3e","url":"\\" data-target=\\"#scan\\" data-toggle=\\"modal\\" href=\\"javascript:void();","submenus":[],"icon":{"name":"fa fa-qrcode","color":"#969696"},"image":"","hoverimage":"","hovericon":""},{"title":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","url":".\\/index.php?i=1&c=mc&","submenus":[],"icon":{"name":"fa fa-user","color":"#969696"},"image":"","hoverimage":"","hovericon":[]}],"extend":[],"position":{"homepage":true,"usercenter":true,"page":true,"article":true},"ignoreModules":[]}', '<div style="background-color: rgb(244, 244, 244);" class="js-quickmenu nav-menu-app has-nav-0  has-nav-4"   ><ul class="nav-group clearfix"><li class="nav-group-item " ><a href="./index.php?c=mc&a=bond&do=card&i=1" style="background-position: center 2px;" ><i style="color: rgb(150, 150, 150);"  class="fa fa-credit-card"  js-onclass-name="" js-onclass-color="" ></i><span style="color: rgb(150, 150, 150);" class=""  js-onclass-color="">会员卡</span></a></li><li class="nav-group-item " ><a href="./index.php?c=activity&a=coupon&do=display&&i=1" style="background-position: center 2px;" ><i style="color: rgb(150, 150, 150);"  class="fa fa-money"  js-onclass-name="" js-onclass-color="" ></i><span style="color: rgb(150, 150, 150);" class=""  js-onclass-color="">兑换</span></a></li><li class="nav-group-item " ><a href="" data-target="#scan" data-toggle="modal" href="javascript:void();" style="background-position: center 2px;" ><i style="color: rgb(150, 150, 150);"  class="fa fa-qrcode"  js-onclass-name="" js-onclass-color="" ></i><span style="color: rgb(150, 150, 150);" class=""  js-onclass-color="">付款</span></a></li><li class="nav-group-item " ><a href="./index.php?i=1&c=mc&" style="background-position: center 2px;" ><i style="color: rgb(150, 150, 150);"  class="fa fa-user"  js-onclass-name="" js-onclass-color="" ></i><span style="color: rgb(150, 150, 150);" class=""  js-onclass-color="">个人中心</span></a></li></ul></div>', 4, 1, 1440242655, 0, ''),
(2, 1, 0, '微页面标题', '', '[{"property":[{"id":"header","name":"\\u5fae\\u9875\\u9762\\u6807\\u9898","params":{"title":"\\u5fae\\u9875\\u9762\\u6807\\u9898","description":"","pageHeight":568,"thumb":"","bgColor":"","bottom_menu":false,"baseStyle":{"backgroundColor":"rgba(0,0,0,0)","color":"#000","opacity":0,"paddingTop":0,"lineHeight":2,"fontSize":14,"textAlign":"left","lock":false},"borderStyle":{"borderWidth":0,"borderRadius":2,"borderStyle":"solid","borderColor":"rgba(0,0,0,1)","transform":0},"shadowStyle":{"shadowSize":0,"shadowBlur":0,"shadowColor":"rgba(0,0,0,0.5)","shadowDirection":1},"positionStyle":{"top":259,"left":40,"width":240,"height":50},"animationStyle":{"animationName":"noEffect","animationDuration":1,"animationTimingFunction":"ease","animationDelay":0.6,"animationFillMode":"both"},"pageLength":1},"issystem":1,"index":0,"displayorder":0,"baseStyle":"background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:left;","borderStyle":"border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);","transform":"transform: rotateZ(0deg);","shadowStyle":"box-shadow: 0px 0px 0px rgba(0,0,0,0.5);","animationStyle":"animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;","positionStyle":"position:absolute; top: 259px; left: 40px; width: 240px; height: 50px;"}],"active":true}]', '<div style="height:568px"><div class="panes"><div class="pane"></div></div></div>', 1, 1, 1477967933, 0, '[""]'),
(3, 1, 0, '青年会自助充值', '自助充值', '[{"property":[{"id":"header","name":"\\u5fae\\u9875\\u9762\\u6807\\u9898","params":{"title":"\\u9752\\u5e74\\u4f1a\\u81ea\\u52a9\\u5145\\u503c","description":"\\u81ea\\u52a9\\u5145\\u503c","pageHeight":568,"thumb":"http:\\/\\/www.sktdi.com\\/attachment\\/images\\/1\\/2016\\/11\\/Rr5sJa8A3sbvbF22Qj2ab5S2g25S5A.png","bgColor":"","bottom_menu":false,"baseStyle":{"backgroundColor":"rgba(0,0,0,0)","color":"#000","opacity":0,"paddingTop":0,"lineHeight":2,"fontSize":14,"textAlign":"left","lock":false},"borderStyle":{"borderWidth":0,"borderRadius":2,"borderStyle":"solid","borderColor":"rgba(0,0,0,1)","transform":0},"shadowStyle":{"shadowSize":0,"shadowBlur":0,"shadowColor":"rgba(0,0,0,0.5)","shadowDirection":1},"positionStyle":{"top":259,"left":38,"width":240,"height":50},"animationStyle":{"animationName":"noEffect","animationDuration":1,"animationTimingFunction":"ease","animationDelay":0.6,"animationFillMode":"both"},"pageLength":1,"keyword":"\\u9752\\u5e74\\u4f1a","content":""},"issystem":1,"index":0,"displayorder":0,"baseStyle":"background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:left;","borderStyle":"border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);","transform":"transform: rotateZ(0deg);","shadowStyle":"box-shadow: 0px 0px 0px rgba(0,0,0,0.5);","animationStyle":"animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;","positionStyle":"position:absolute; top: 259px; left: 38px; width: 240px; height: 50px;"},{"id":"pureLink","name":"\\u94fe\\u63a5","params":{"items":[{"id":"1","type":"text","title":"\\u70b9\\u51fb\\u5145\\u503c","url":"http:\\/\\/url.cn\\/413qCbX","color":"#fff","editcolor":"danger","discolor":"#d9534f","active":1},{"id":"2","type":"text","title":"\\u70b9\\u5f00\\u94fe\\u63a5","url":"","color":"#fff","editcolor":"warning","discolor":"#ec971f","active":0},{"id":"3","type":"text","title":"\\u9a6c\\u4e0a\\u8d2d\\u4e70","url":"","color":"#fff","editcolor":"success","discolor":"#449d44","active":0},{"id":"4","type":"text","title":"\\u5173\\u6ce8\\u6211\\u4eec","url":"","color":"#000","editcolor":"default","discolor":"#fff","active":0},{"id":"5","type":"img","title":"\\u81ea\\u5b9a\\u4e49","url":"","imgurl":"","editcolor":"primary","discolor":"","active":0}],"baseStyle":{"backgroundColor":"#d9534f","color":"#fff","opacity":0,"paddingTop":0,"lineHeight":"33px","fontSize":"14","textAlign":"center","lock":false},"borderStyle":{"borderWidth":1,"borderRadius":4,"borderStyle":"solid","borderColor":"#ADADAD","transform":0},"shadowStyle":{"shadowSize":0,"shadowBlur":0,"shadowColor":"rgba(0,0,0,0.5)","shadowDirection":1},"animationStyle":{"animationName":"noEffect","animationDuration":1,"animationTimingFunction":"ease","animationDelay":0.6,"animationFillMode":"both"},"positionStyle":{"top":181,"left":-2,"width":321,"height":43},"content":""},"issystem":0,"index":3,"displayorder":1,"baseStyle":"background-color:#d9534f;color:#fff;opacity:1;padding-top:0px;line-height:33px;font-size:14px;font-size:14px;text-align:center;","borderStyle":"border-width:1px;border-radius:4px;border-style:solid;border-color:#ADADAD;","transform":"transform: rotateZ(0deg);","shadowStyle":"box-shadow: 0px 0px 0px rgba(0,0,0,0.5);","positionStyle":"position:absolute;top:181px;left:-2px;width:321px;height:43px;","animationStyle":"animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;"},{"id":"adImg","name":"\\u5e7b\\u706f\\u7247","params":{"listStyle":"1","sizeType":1,"items":[{"id":"1","imgurl":"http:\\/\\/www.sktdi.com\\/attachment\\/images\\/1\\/2016\\/11\\/Rr5sJa8A3sbvbF22Qj2ab5S2g25S5A.png","title":"","url":"","isactive":true}],"baseStyle":{"backgroundColor":"rgba(0,0,0,0)","color":"#000","opacity":0,"paddingTop":0,"lineHeight":2,"fontSize":14,"textAlign":"left","lock":false},"borderStyle":{"borderWidth":0,"borderRadius":2,"borderStyle":"solid","borderColor":"rgba(0,0,0,1)","transform":0},"shadowStyle":{"shadowSize":0,"shadowBlur":0,"shadowColor":"rgba(0,0,0,0.5)","shadowDirection":1},"animationStyle":{"animationName":"noEffect","animationDuration":1,"animationTimingFunction":"ease","animationDelay":0.6,"animationFillMode":"both"},"positionStyle":{"top":4,"left":-1,"width":320,"height":149}},"issystem":0,"index":6,"displayorder":2,"baseStyle":"background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:left;","borderStyle":"border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);","transform":"transform: rotateZ(0deg);","shadowStyle":"box-shadow: 0px 0px 0px rgba(0,0,0,0.5);","positionStyle":"position:absolute;top:4px;left:-1px;width:320px;height:149px;","animationStyle":"animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;"}],"active":true}]', '<div style="height:568px"><div class="panes"><div class="pane"><div type="purelink" style="position:absolute; top: 181px; left: -2px; width: 321px; height: 43px;transform:translate3d(0px, 0px, 0px)"><div style="transform: rotateZ(0deg);width:100%;height:100%"><div class="app-pureLink" style="width:100%;height:100%;background-color:#d9534f;color:#fff;opacity:1;padding-top:0px;line-height:33px;font-size:14px;font-size:14px;text-align:center;border-width:1px;border-radius:4px;border-style:solid;border-color:#ADADAD;box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;"><div style="width:100%;height:100%" class="ng-scope"><div class="app-pureLink-basic animated" style="width:100%;height:100%"><a class="element-link" href="http://url.cn/413qCbX"><div class="element-box" style="line-height: 33px; color: rgb(255, 255, 255);">点击充值</div></a></div></div></div><div we7-drag="" we7-resize="" we7-rotate=""> </div></div></div><div type="adimg" style="position:absolute;top:4px;left:-1px;width:320px;height:149px;transform:translate3d(0px, 0px, 0px)"><link href="../app/resource/components/swiper/swiper.min.css" rel="stylesheet"><div style="transform: rotateZ(0deg);"><div class="app-adImg" style="background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:left;border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;"><div class="inner"><div class="swiper-container swiper-container-horizontal"><div class="swiper-wrapper"><div class="swiper-slide swiper-slide-active" style="width: 100%"><a href="" style="display:block; width:100%; text-align:center"><img title="" style="display:block; height:auto; max-width:100%;  margin:0 auto" src="http://www.sktdi.com/attachment/images/1/2016/11/Rr5sJa8A3sbvbF22Qj2ab5S2g25S5A.png"></a></div></div><div class="swiper-pagination swiper-pagination-clickable"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span></div><div class="swiper-button-next hidden"></div><div class="swiper-button-prev hidden"></div></div></div></div><div we7-drag=""></div></div></div></div></div></div>', 1, 1, 1477970611, 0, '["<div type=\\"purelink\\" style=\\"position:absolute; top: 181px; left: -2px; width: 321px; height: 43px;transform:translate3d(0px, 0px, 0px)\\"><div style=\\"transform: rotateZ(0deg);width:100%;height:100%\\"><div class=\\"app-pureLink\\" style=\\"width:100%;height:100%;background-color:#d9534f;color:#fff;opacity:1;padding-top:0px;line-height:33px;font-size:14px;font-size:14px;text-align:center;border-width:1px;border-radius:4px;border-style:solid;border-color:#ADADAD;box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\\"><div style=\\"width:100%;height:100%\\" class=\\"ng-scope\\"><div class=\\"app-pureLink-basic animated\\" style=\\"width:100%;height:100%\\"><a class=\\"element-link\\" href=\\"http://url.cn/413qCbX\\"><div class=\\"element-box\\" style=\\"line-height: 33px; color: rgb(255, 255, 255);\\">点击充值</div></a></div></div></div><div we7-drag=\\"\\" we7-resize=\\"\\" we7-rotate=\\"\\"> </div></div></div><div type=\\"adimg\\" style=\\"position:absolute;top:4px;left:-1px;width:320px;height:149px;transform:translate3d(0px, 0px, 0px)\\"><link href=\\"../app/resource/components/swiper/swiper.min.css\\" rel=\\"stylesheet\\"><div style=\\"transform: rotateZ(0deg);\\"><div class=\\"app-adImg\\" style=\\"background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:left;border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\\"><div class=\\"inner\\"><div class=\\"swiper-container swiper-container-horizontal\\"><div class=\\"swiper-wrapper\\"><div class=\\"swiper-slide swiper-slide-active\\" style=\\"width: 100%\\"><a href=\\"\\" style=\\"display:block; width:100%; text-align:center\\"><img title=\\"\\" style=\\"display:block; height:auto; max-width:100%;  margin:0 auto\\" src=\\"http://www.sktdi.com/attachment/images/1/2016/11/Rr5sJa8A3sbvbF22Qj2ab5S2g25S5A.png\\"></a></div></div><div class=\\"swiper-pagination swiper-pagination-clickable\\"><span class=\\"swiper-pagination-bullet swiper-pagination-bullet-active\\"></span></div><div class=\\"swiper-button-next hidden\\"></div><div class=\\"swiper-button-prev hidden\\"></div></div></div></div><div we7-drag=\\"\\"></div></div></div>"]'),
(4, 1, 0, '会员主页', '', '[{"id":"UCheader","name":"会员主页","params":{"title":"会员主页","cover":"","bgImage":"","pageLength":1,"keyword":"会员中心","contact":"18565188982"},"originParams":{"title":"会员主页","cover":"","bgImage":""},"issystem":1,"index":0,"displayorder":0}]', '<div class="js-design-page" style="background-color:;height:45px;"></div>', 3, 1, 1477970383, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_slide`
--

CREATE TABLE IF NOT EXISTS `ims_site_slide` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_styles`
--

CREATE TABLE IF NOT EXISTS `ims_site_styles` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_site_styles`
--

INSERT INTO `ims_site_styles` (`id`, `uniacid`, `templateid`, `name`) VALUES
(1, 1, 1, '微站默认模板_gC5C');

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_styles_vars`
--

CREATE TABLE IF NOT EXISTS `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_templates`
--

CREATE TABLE IF NOT EXISTS `ims_site_templates` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_site_templates`
--

INSERT INTO `ims_site_templates` (`id`, `name`, `title`, `version`, `description`, `author`, `url`, `type`, `sections`) VALUES
(1, 'default', '微站默认模板', '', '由微擎提供默认微站模板套系', '微擎团队', 'http://we7.cc', '1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_fans`
--

CREATE TABLE IF NOT EXISTS `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_stat_fans`
--

INSERT INTO `ims_stat_fans` (`id`, `uniacid`, `new`, `cancel`, `cumulate`, `date`) VALUES
(1, 1, 1, 3, 2274, '20161031'),
(2, 1, 1, 4, 2276, '20161030'),
(3, 1, 0, 1, 2279, '20161029'),
(4, 1, 0, 3, 2280, '20161028'),
(5, 1, 2, 6, 2283, '20161027'),
(6, 1, 1, 4, 2287, '20161026'),
(7, 1, 1, 1, 2290, '20161025'),
(8, 1, 2, 7, 2269, '20161101'),
(9, 1, 0, 8, 2261, '20161102'),
(10, 1, 0, 1, 2260, '20161103'),
(11, 1, 1, 3, 2258, '20161104'),
(12, 1, 0, 4, 2254, '20161105'),
(13, 1, 0, 2, 2252, '20161106'),
(14, 1, 1, 4, 2249, '20161107'),
(15, 1, 1, 2, 2248, '20161108'),
(16, 1, 0, 5, 2243, '20161109'),
(17, 1, 1, 2, 2242, '20161110'),
(18, 1, 1, 0, 2243, '20161111'),
(19, 1, 0, 1, 0, '20161112'),
(20, 1, 1, 2, 0, '20161113'),
(21, 1, 1, 1, 2212, '20161210'),
(22, 1, 0, 4, 2212, '20161209'),
(23, 1, 1, 3, 2216, '20161208'),
(24, 1, 4, 3, 2218, '20161207'),
(25, 1, 0, 1, 2217, '20161206'),
(26, 1, 1, 3, 2218, '20161205'),
(27, 1, 1, 2, 2220, '20161204'),
(28, 1, 0, 0, 2212, '20161211'),
(29, 1, 0, 0, 2212, '20161212'),
(30, 1, 7, 6, 0, '20161213'),
(31, 1, 1, 1, 0, '20161215');

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_keyword`
--

CREATE TABLE IF NOT EXISTS `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_stat_keyword`
--

INSERT INTO `ims_stat_keyword` (`id`, `uniacid`, `rid`, `kid`, `hit`, `lastupdate`, `createtime`) VALUES
(1, 1, '9', 13, 1, 1477968597, 1477929600),
(2, 1, '7', 17, 3, 1477999370, 1477929600),
(3, 1, '9', 18, 1, 1478060275, 1478016000),
(4, 1, '10', 19, 2, 1481587479, 1481558400),
(5, 1, '10', 19, 2, 1481587479, 1481558400),
(6, 1, '11', 20, 10, 1481638735, 1481558400),
(7, 1, '12', 23, 6, 1481796406, 1481731200);

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_msg_history`
--

CREATE TABLE IF NOT EXISTS `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=276 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_stat_msg_history`
--

INSERT INTO `ims_stat_msg_history` (`id`, `uniacid`, `rid`, `kid`, `from_user`, `module`, `message`, `type`, `createtime`) VALUES
(1, 1, 9, 13, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'cover', 'a:4:{s:7:"content";s:9:"青年会";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1477968597),
(2, 1, 7, 17, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'cover', 'a:4:{s:7:"content";s:12:"会员中心";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1477970456),
(3, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:103:"http://www.sktdi.com/app/index.php?i=1&c=entry&m=recharge&do=pay&wxref=mp.weixin.qq.com#wechat_redirect";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1477970516),
(4, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:103:"http://www.sktdi.com/app/index.php?i=1&c=entry&m=recharge&do=pay&wxref=mp.weixin.qq.com#wechat_redirect";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1477970550),
(5, 1, 0, 0, 'ozJkmt0mbBksG054GNzn7fgdB_UE', '', '', 'event', 1477972890),
(6, 1, 0, 0, 'ozJkmt0mbBksG054GNzn7fgdB_UE', '', '', 'unsubscrib', 1477972902),
(7, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:343:"http://www.sktdi.com/payment/wechat/pay.php?i=1&auth=9096ff7840440da0f510c8177200648b102e43d6&ps=eyJ0aWQiOiIyIiwidW5pb250aWQiOiIyMDE2MTEwMTEyMDgzNjAwMDAwNTE0MjI3NDg5IiwidXNlciI6Im96SmttdDRFVlJMRmxENTZONDhCOGdmTnlhTHciLCJmZWUiOiIxLjAwIiwidGl0bGUiOiIlRTQlQkMlOUElRTUlOTElOTglRTQlQkQlOTklRTklQTIlOUQlRTUlODUlODUlRTUlODAlQkMifQ==&payopenid=&done=1";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1477973481),
(8, 1, 0, 0, 'ozJkmtxMfDdQHp3JV5-L8ieNnasM', 'default', 'a:3:{s:10:"location_x";s:9:"30.244345";s:10:"location_y";s:10:"103.618156";s:9:"precision";s:11:"1500.000000";}', 'trace', 1477973502),
(9, 1, 0, 0, 'ozJkmtxMfDdQHp3JV5-L8ieNnasM', '', '', 'event', 1477973505),
(10, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347488";s:10:"location_y";s:10:"113.286690";s:9:"precision";s:9:"65.000000";}', 'trace', 1477973977),
(11, 1, 0, 0, 'ozJkmtxMfDdQHp3JV5-L8ieNnasM', 'default', 'a:3:{s:10:"location_x";s:9:"30.248552";s:10:"location_y";s:10:"103.540062";s:9:"precision";s:10:"110.000000";}', 'trace', 1477975341),
(12, 1, 0, 0, 'ozJkmtwETOGPtnDp881J5bNjRMAU', '', '', 'event', 1477988579),
(13, 1, 0, 0, 'ozJkmtwETOGPtnDp881J5bNjRMAU', 'default', 'a:3:{s:10:"location_x";s:9:"30.845005";s:10:"location_y";s:10:"104.151985";s:9:"precision";s:10:"120.000000";}', 'trace', 1477988577),
(14, 1, 0, 0, 'ozJkmtwETOGPtnDp881J5bNjRMAU', '', '', 'event', 1477988584),
(15, 1, 0, 0, 'ozJkmtwETOGPtnDp881J5bNjRMAU', '', '', 'event', 1477988588),
(16, 1, 0, 0, 'ozJkmtwETOGPtnDp881J5bNjRMAU', '', '', 'event', 1477988592),
(17, 1, 0, 0, 'ozJkmtwETOGPtnDp881J5bNjRMAU', '', '', 'event', 1477988598),
(18, 1, 0, 0, 'ozJkmtwETOGPtnDp881J5bNjRMAU', 'default', 'a:3:{s:10:"location_x";s:9:"30.845005";s:10:"location_y";s:10:"104.151985";s:9:"precision";s:10:"120.000000";}', 'trace', 1477988609),
(19, 1, 0, 0, 'ozJkmtwETOGPtnDp881J5bNjRMAU', '', '', 'event', 1477988611),
(20, 1, 0, 0, 'ozJkmtwETOGPtnDp881J5bNjRMAU', 'default', 'a:3:{s:10:"location_x";s:9:"30.845005";s:10:"location_y";s:10:"104.151985";s:9:"precision";s:10:"120.000000";}', 'trace', 1477988638),
(21, 1, 0, 0, 'ozJkmtwETOGPtnDp881J5bNjRMAU', '', '', 'event', 1477988643),
(22, 1, 0, 0, 'ozJkmtwETOGPtnDp881J5bNjRMAU', '', '', 'unsubscrib', 1477988700),
(23, 1, 0, 0, 'ozJkmt0S_DfB5u-tPP5gSYlwknnY', '', '', 'event', 1477990162),
(24, 1, 0, 0, 'ozJkmt0S_DfB5u-tPP5gSYlwknnY', '', '', 'event', 1477990183),
(25, 1, 0, 0, 'ozJkmt0S_DfB5u-tPP5gSYlwknnY', '', '', 'event', 1477990186),
(26, 1, 0, 0, 'ozJkmt0S_DfB5u-tPP5gSYlwknnY', '', '', 'event', 1477990189),
(27, 1, 0, 0, 'ozJkmt0S_DfB5u-tPP5gSYlwknnY', '', '', 'unsubscrib', 1477990195),
(28, 1, 7, 17, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'cover', 'a:4:{s:7:"content";s:12:"会员中心";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1477995753),
(29, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347307";s:10:"location_y";s:10:"113.286842";s:9:"precision";s:9:"30.000000";}', 'trace', 1477995999),
(30, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347441";s:10:"location_y";s:10:"113.287064";s:9:"precision";s:9:"10.000000";}', 'trace', 1477996052),
(31, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347227";s:10:"location_y";s:10:"113.287445";s:9:"precision";s:9:"10.000000";}', 'trace', 1477996249),
(32, 1, 0, 0, 'ozJkmt28vASmJko3t61qFDLP8xj8', '', 'a:2:{s:5:"scene";N;s:6:"ticket";N;}', 'subscribe', 1477999320),
(33, 1, 0, 0, 'ozJkmt28vASmJko3t61qFDLP8xj8', '', '', 'event', 1477999344),
(34, 1, 0, 0, 'ozJkmt28vASmJko3t61qFDLP8xj8', 'default', 'a:3:{s:10:"location_x";s:9:"24.765648";s:10:"location_y";s:10:"118.468636";s:9:"precision";s:10:"120.000000";}', 'trace', 1477999401),
(35, 1, 7, 17, 'ozJkmt28vASmJko3t61qFDLP8xj8', 'cover', 'a:4:{s:7:"content";s:12:"会员中心";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1477999404),
(36, 1, 0, 0, 'ozJkmt28vASmJko3t61qFDLP8xj8', 'default', 'a:3:{s:10:"location_x";s:9:"24.765648";s:10:"location_y";s:10:"118.468636";s:9:"precision";s:10:"120.000000";}', 'trace', 1477999442),
(37, 1, 0, 0, 'ozJkmt-EqnIHlRuFFuGaCsZJVbGA', '', '', 'unsubscrib', 1478003872),
(38, 1, 0, 0, 'ozJkmt_E3nI0NpX60pXW9y3TYsko', '', 'a:2:{s:5:"scene";N;s:6:"ticket";N;}', 'subscribe', 1478005773),
(39, 1, 0, 0, 'ozJkmt_E3nI0NpX60pXW9y3TYsko', '', '', 'event', 1478005777),
(40, 1, 0, 0, 'ozJkmt_E3nI0NpX60pXW9y3TYsko', '', 'a:2:{s:5:"scene";N;s:6:"ticket";N;}', 'subscribe', 1478005773),
(41, 1, 0, 0, 'ozJkmt_E3nI0NpX60pXW9y3TYsko', '', '', 'event', 1478005782),
(42, 1, 0, 0, 'ozJkmt_E3nI0NpX60pXW9y3TYsko', '', '', 'event', 1478005788),
(43, 1, 0, 0, 'ozJkmt_E3nI0NpX60pXW9y3TYsko', '', '', 'unsubscrib', 1478005819),
(44, 1, 0, 0, 'ozJkmt1IY2cnogs4HQylbxa2fBB8', '', '', 'event', 1478007513),
(45, 1, 0, 0, 'ozJkmt1IY2cnogs4HQylbxa2fBB8', '', '', 'event', 1478007527),
(46, 1, 0, 0, 'ozJkmt1IY2cnogs4HQylbxa2fBB8', '', '', 'event', 1478007533),
(47, 1, 0, 0, 'ozJkmt1IY2cnogs4HQylbxa2fBB8', '', '', 'event', 1478007552),
(48, 1, 0, 0, 'ozJkmt1IY2cnogs4HQylbxa2fBB8', '', '', 'unsubscrib', 1478007566),
(49, 1, 0, 0, 'ozJkmt-xAd4HWuaIqELIPD7bva_I', 'default', 'a:3:{s:10:"location_x";s:9:"22.733170";s:10:"location_y";s:10:"113.900337";s:9:"precision";s:9:"40.000000";}', 'trace', 1478008561),
(50, 1, 0, 0, 'ozJkmt-xAd4HWuaIqELIPD7bva_I', '', '', 'event', 1478008561),
(51, 1, 0, 0, 'ozJkmt-xAd4HWuaIqELIPD7bva_I', '', '', 'event', 1478008568),
(52, 1, 0, 0, 'ozJkmt-xAd4HWuaIqELIPD7bva_I', '', '', 'event', 1478008578),
(53, 1, 0, 0, 'ozJkmtzZ03vabK8oWEgOYZ-vnXzE', '', '', 'event', 1478010232),
(54, 1, 0, 0, 'ozJkmtzZ03vabK8oWEgOYZ-vnXzE', '', '', 'unsubscrib', 1478010270),
(55, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:21:"http://www.bwzqd.com/";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478018746),
(56, 1, 0, 0, 'ozJkmt3F2A3iW5VesB3Tgw-sUROk', '', '', 'unsubscrib', 1478043680),
(57, 1, 0, 0, 'ozJkmtyy8gzreRI93jp4Ba2zkT-A', '', '', 'unsubscrib', 1478046188),
(58, 1, 0, 0, 'ozJkmt9-AOg2uQ-bLzdjei78N1os', 'default', 'a:3:{s:10:"location_x";s:9:"39.323605";s:10:"location_y";s:10:"112.416557";s:9:"precision";s:9:"70.000000";}', 'trace', 1478054018),
(59, 1, 0, 0, 'ozJkmt9-AOg2uQ-bLzdjei78N1os', '', '', 'unsubscrib', 1478054021),
(60, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'http://mmbiz.qpic.cn/mmbiz_jpg/oz1Mt3icb5pDAlreaKTVeUtD0UeceSwMfWSVJoYasCZcC8AlaEkg1U0KrttVkibva4sc4B2ywdVIk6CxxMqGartA/0', 'image', 1478058210),
(61, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347511";s:10:"location_y";s:10:"113.286766";s:9:"precision";s:10:"100.000000";}', 'trace', 1478058349),
(62, 1, 9, 18, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'cover', 'a:4:{s:7:"content";s:9:"青年会";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478060275),
(63, 1, 0, 0, 'ozJkmt28vASmJko3t61qFDLP8xj8', '', '', 'event', 1478061507),
(64, 1, 0, 0, 'ozJkmt28vASmJko3t61qFDLP8xj8', '', '', 'event', 1478061523),
(65, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:20:"http://w1.sktdi.com ";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478063232),
(66, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:29:"http://w1.sktdi.com/check.php";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478063465),
(67, 1, 0, 0, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', 'default', 'a:3:{s:10:"location_x";s:9:"34.214451";s:10:"location_y";s:10:"108.939568";s:9:"precision";s:9:"30.000000";}', 'trace', 1478066724),
(68, 1, 0, 0, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', '', '', 'event', 1478066725),
(69, 1, 0, 0, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', '', '', 'event', 1478066736),
(70, 1, 0, 0, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', 'default', 'a:3:{s:10:"location_x";s:9:"34.214451";s:10:"location_y";s:10:"108.939568";s:9:"precision";s:9:"30.000000";}', 'trace', 1478066753),
(71, 1, 0, 0, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', '', '', 'event', 1478066754),
(72, 1, 0, 0, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', '', 'a:4:{s:7:"content";s:3:"？";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478066764),
(73, 1, 0, 0, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', 'default', 'a:3:{s:10:"location_x";s:9:"34.214401";s:10:"location_y";s:10:"108.939606";s:9:"precision";s:9:"25.000000";}', 'trace', 1478066776),
(74, 1, 0, 0, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', '', '', 'event', 1478066776),
(75, 1, 0, 0, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', '', '', 'event', 1478066780),
(76, 1, 0, 0, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', '', '', 'event', 1478066784),
(77, 1, 0, 0, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', 'default', 'a:3:{s:10:"location_x";s:9:"34.214401";s:10:"location_y";s:10:"108.939606";s:9:"precision";s:9:"25.000000";}', 'trace', 1478066793),
(78, 1, 0, 0, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', 'default', 'a:3:{s:10:"location_x";s:9:"34.214401";s:10:"location_y";s:10:"108.939606";s:9:"precision";s:9:"25.000000";}', 'trace', 1478066951),
(79, 1, 0, 0, 'ozJkmt9xVNIy_Pjs3JW9OKxFqmoU', '', '', 'event', 1478066953),
(80, 1, 0, 0, 'ozJkmtzTEjbexzwmWwXcrHvAHh9g', '', '', 'unsubscrib', 1478072146),
(81, 1, 0, 0, 'ozJkmt1zFv9V6e1L8CDTdbWdW_fg', '', '', 'event', 1478088203),
(82, 1, 0, 0, 'ozJkmt1zFv9V6e1L8CDTdbWdW_fg', '', '', 'event', 1478088209),
(83, 1, 0, 0, 'ozJkmt1zFv9V6e1L8CDTdbWdW_fg', '', '', 'event', 1478088233),
(84, 1, 0, 0, 'ozJkmt1zFv9V6e1L8CDTdbWdW_fg', '', '', 'event', 1478088237),
(85, 1, 0, 0, 'ozJkmt1zFv9V6e1L8CDTdbWdW_fg', '', '', 'unsubscrib', 1478088245),
(86, 1, 0, 0, 'ozJkmtwhdqRShuVg9L3vIvjVevS0', '', '', 'unsubscrib', 1478089353),
(87, 1, 0, 0, 'ozJkmt5ZMDxRiSgRaEfnuUyNNv1A', '', '', 'unsubscrib', 1478089792),
(88, 1, 0, 0, 'ozJkmtzM3HLeoz4clX2B9BagZzFU', '', '', 'unsubscrib', 1478089901),
(89, 1, 0, 0, 'ozJkmt_rs3FYKF1GGKc-4DcLxpQk', '', '', 'event', 1478094588),
(90, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', '', 'event', 1478141990),
(91, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', '', 'event', 1478142000),
(92, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:16:"tuijiele.com.cn ";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478147655),
(93, 1, 0, 0, 'ozJkmtyFeHgvDUOyHD3uxXtR6ySw', '', '', 'unsubscrib', 1478171168),
(94, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347473";s:10:"location_y";s:10:"113.286758";s:9:"precision";s:9:"65.000000";}', 'trace', 1478176692),
(95, 1, 0, 0, 'ozJkmtwyILWR9ED2z5wc4I0iYJW4', '', '', 'unsubscrib', 1478232257),
(96, 1, 0, 0, 'ozJkmt6kTYYprJFWGBjw_D3dFEb4', '', '', 'event', 1478249942),
(97, 1, 0, 0, 'ozJkmt2oct9Bwth_oKZfM9DlxOFw', '', '', 'unsubscrib', 1478250108),
(98, 1, 0, 0, 'ozJkmt72f2Xs3pownMDWPZ-OBXs0', '', '', 'unsubscrib', 1478251468),
(99, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347456";s:10:"location_y";s:10:"113.286766";s:9:"precision";s:9:"65.000000";}', 'trace', 1478256813),
(100, 1, 0, 0, 'ozJkmt5PuG4UrEDWNl1INZk6VS94', '', 'a:2:{s:5:"scene";N;s:6:"ticket";N;}', 'subscribe', 1478266147),
(101, 1, 0, 0, 'ozJkmt5PuG4UrEDWNl1INZk6VS94', '', '', 'event', 1478266150),
(102, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347544";s:10:"location_y";s:10:"113.286812";s:9:"precision";s:9:"65.000000";}', 'trace', 1478267655),
(103, 1, 0, 0, 'ozJkmt4k3soznKFRnWIaOgxE0nKU', '', '', 'event', 1478278767),
(104, 1, 0, 0, 'ozJkmt_6KAz_ZeThZNXekT2m2fzg', '', '', 'unsubscrib', 1478310250),
(105, 1, 0, 0, 'ozJkmtxdZTWBOGT1MbMye6UxW8V0', '', '', 'unsubscrib', 1478312467),
(106, 1, 0, 0, 'ozJkmtzQb2TCezPol9pxUJZ5xm0A', '', '', 'unsubscrib', 1478332833),
(107, 1, 0, 0, 'ozJkmt7UX8fUPv4i_oPrmRgAYo2k', '', '', 'unsubscrib', 1478354088),
(108, 1, 0, 0, 'ozJkmt7HH4qS2nGdhmcQgnoTZzJU', 'default', 'a:3:{s:10:"location_x";s:9:"36.000568";s:10:"location_y";s:10:"106.287399";s:9:"precision";s:9:"70.000000";}', 'trace', 1478368305),
(109, 1, 0, 0, 'ozJkmt7HH4qS2nGdhmcQgnoTZzJU', 'default', 'a:3:{s:10:"location_x";s:9:"36.000568";s:10:"location_y";s:10:"106.287399";s:9:"precision";s:9:"70.000000";}', 'trace', 1478368342),
(110, 1, 0, 0, 'ozJkmt7HH4qS2nGdhmcQgnoTZzJU', 'default', 'a:3:{s:10:"location_x";s:9:"36.000237";s:10:"location_y";s:10:"106.287003";s:9:"precision";s:9:"70.000000";}', 'trace', 1478368986),
(111, 1, 0, 0, 'ozJkmt7HH4qS2nGdhmcQgnoTZzJU', 'default', 'a:3:{s:10:"location_x";s:9:"36.000237";s:10:"location_y";s:10:"106.287003";s:9:"precision";s:9:"70.000000";}', 'trace', 1478368994),
(112, 1, 0, 0, 'ozJkmt5vifoiKK6QBWaZvXVr9pS0', '', '', 'unsubscrib', 1478405793),
(113, 1, 0, 0, 'ozJkmt9Ie_WGsdv4QKDnC5QYhzwA', '', '', 'event', 1478406976),
(114, 1, 0, 0, 'ozJkmt9Ie_WGsdv4QKDnC5QYhzwA', '', '', 'event', 1478406999),
(115, 1, 0, 0, 'ozJkmt9Ie_WGsdv4QKDnC5QYhzwA', '', '', 'unsubscrib', 1478407780),
(116, 1, 0, 0, 'ozJkmt5kSjhPJXHFiNmcty8JM4U4', '', '', 'event', 1478413348),
(117, 1, 0, 0, 'ozJkmt5kSjhPJXHFiNmcty8JM4U4', '', '', 'event', 1478413366),
(118, 1, 0, 0, 'ozJkmt5kSjhPJXHFiNmcty8JM4U4', '', '', 'event', 1478413376),
(119, 1, 0, 0, 'ozJkmt5kSjhPJXHFiNmcty8JM4U4', '', '', 'event', 1478413402),
(120, 1, 0, 0, 'ozJkmt5kSjhPJXHFiNmcty8JM4U4', '', '', 'event', 1478413410),
(121, 1, 0, 0, 'ozJkmt3TT-nyCQu1RxFSc68TTqqA', '', 'a:4:{s:7:"content";s:13:"周末愉快~";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478417278),
(122, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:13:"wx1.sktdi.com";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478417760),
(123, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:13:"w1.sktdi.com ";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478417793),
(124, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347509";s:10:"location_y";s:10:"113.286781";s:9:"precision";s:9:"65.000000";}', 'trace', 1478417894),
(125, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:20:"http://www.vx188.cn/";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478420505),
(126, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347494";s:10:"location_y";s:10:"113.286804";s:9:"precision";s:9:"65.000000";}', 'trace', 1478420770),
(127, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347488";s:10:"location_y";s:10:"113.286819";s:9:"precision";s:9:"50.000000";}', 'trace', 1478420969),
(128, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:22:"http://hm3000.com/demo";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478421008),
(129, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:22:"http://www.zainan8.com";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478421532),
(130, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347504";s:10:"location_y";s:10:"113.286781";s:9:"precision";s:9:"65.000000";}', 'trace', 1478430644),
(131, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347536";s:10:"location_y";s:10:"113.286804";s:9:"precision";s:9:"65.000000";}', 'trace', 1478436098),
(132, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', '', 'event', 1478436100),
(133, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:28:"http://www.ubotj.com/demo10/";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478437401),
(134, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347567";s:10:"location_y";s:10:"113.286743";s:9:"precision";s:9:"65.000000";}', 'trace', 1478439027),
(135, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347498";s:10:"location_y";s:10:"113.286736";s:9:"precision";s:9:"65.000000";}', 'trace', 1478439108),
(136, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347612";s:10:"location_y";s:10:"113.286842";s:9:"precision";s:9:"65.000000";}', 'trace', 1478442103),
(137, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:14:"www.510gw.com/";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478445898),
(138, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:47:"www.510gw.com/index.php?s=/Home/User/union.html";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478445940),
(139, 1, 0, 0, 'ozJkmt1SIpGw51EDfUKwNidanG_0', 'default', 'a:3:{s:10:"location_x";s:9:"26.849379";s:10:"location_y";s:10:"119.416504";s:9:"precision";s:9:"90.000000";}', 'trace', 1478451647),
(140, 1, 0, 0, 'ozJkmt9mBwDs2IbRyPfqPRFInj0Q', '', '', 'event', 1478478519),
(141, 1, 0, 0, 'ozJkmt9mBwDs2IbRyPfqPRFInj0Q', '', '', 'unsubscrib', 1478478534),
(142, 1, 0, 0, 'ozJkmt5JINNJ0kVphaYjEGfhxajI', '', '', 'event', 1478482040),
(143, 1, 0, 0, 'ozJkmt5JINNJ0kVphaYjEGfhxajI', 'default', 'a:3:{s:10:"location_x";s:9:"35.570210";s:10:"location_y";s:10:"115.490654";s:9:"precision";s:9:"40.000000";}', 'trace', 1478482064),
(144, 1, 0, 0, 'ozJkmt5JINNJ0kVphaYjEGfhxajI', '', '', 'event', 1478482067),
(145, 1, 0, 0, 'ozJkmt5JINNJ0kVphaYjEGfhxajI', 'default', 'a:3:{s:10:"location_x";s:9:"35.570210";s:10:"location_y";s:10:"115.490654";s:9:"precision";s:9:"40.000000";}', 'trace', 1478482079),
(146, 1, 0, 0, 'ozJkmt5JINNJ0kVphaYjEGfhxajI', '', '', 'event', 1478482080),
(147, 1, 0, 0, 'ozJkmt5JINNJ0kVphaYjEGfhxajI', '', '', 'unsubscrib', 1478482103),
(148, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:64:"http://www.wyb99.com/app/index.php?i=2&c=entry&do=index&m=qw_cca";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478486827),
(149, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347393";s:10:"location_y";s:10:"113.286774";s:9:"precision";s:9:"65.000000";}', 'trace', 1478486932),
(150, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:75:"http://www.wyb99.com/app/index.php?i=2&c=entry&do=cover&m=junsion_promotion";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478486980),
(151, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347536";s:10:"location_y";s:10:"113.286819";s:9:"precision";s:9:"65.000000";}', 'trace', 1478486983),
(152, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:75:"http://www.wyb99.com/app/index.php?i=2&c=entry&do=cover&m=junsion_promotion";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478487225),
(153, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347591";s:10:"location_y";s:10:"113.286804";s:9:"precision";s:9:"65.000000";}', 'trace', 1478487462),
(154, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', '', 'event', 1478487463),
(155, 1, 0, 0, 'ozJkmt9eiGVbDfbF2lU9Kfx2Z-4g', '', '', 'event', 1478498828),
(156, 1, 0, 0, 'ozJkmt9eiGVbDfbF2lU9Kfx2Z-4g', '', '', 'event', 1478498863),
(157, 1, 0, 0, 'ozJkmt9eiGVbDfbF2lU9Kfx2Z-4g', '', '', 'event', 1478498870),
(158, 1, 0, 0, 'ozJkmt3F4OfFyMBm8YIo_XpodmSA', '', 'a:2:{s:5:"scene";N;s:6:"ticket";N;}', 'subscribe', 1478502736),
(159, 1, 0, 0, 'ozJkmt3F4OfFyMBm8YIo_XpodmSA', 'default', 'a:3:{s:10:"location_x";s:9:"24.479338";s:10:"location_y";s:10:"118.117523";s:9:"precision";s:11:"1110.000000";}', 'trace', 1478502740),
(160, 1, 0, 0, 'ozJkmt3F4OfFyMBm8YIo_XpodmSA', '', '', 'event', 1478502743),
(161, 1, 0, 0, 'ozJkmt3F4OfFyMBm8YIo_XpodmSA', 'default', 'a:3:{s:10:"location_x";s:9:"24.479338";s:10:"location_y";s:10:"118.117523";s:9:"precision";s:11:"1110.000000";}', 'trace', 1478502782),
(162, 1, 0, 0, 'ozJkmt3F4OfFyMBm8YIo_XpodmSA', '', '', 'event', 1478502783),
(163, 1, 0, 0, 'ozJkmt3F4OfFyMBm8YIo_XpodmSA', '', '', 'event', 1478502785),
(164, 1, 0, 0, 'ozJkmt3F4OfFyMBm8YIo_XpodmSA', '', '', 'unsubscrib', 1478502800),
(165, 1, 0, 0, 'ozJkmt0BQXAqzvwypwVGIFt0AvhU', '', '', 'unsubscrib', 1478519342),
(166, 1, 0, 0, 'ozJkmt8LYT47xA9IPEGvWSGuDHVk', '', '', 'event', 1478525301),
(167, 1, 0, 0, 'ozJkmt8tmLDkOiyoFr4v_QocUpMo', '', '', 'unsubscrib', 1478563491),
(168, 1, 0, 0, 'ozJkmt4Q-NeLELYkCz0-05Wxr4qQ', '', 'a:2:{s:5:"scene";N;s:6:"ticket";N;}', 'subscribe', 1478582033),
(169, 1, 0, 0, 'ozJkmt3y8ohmvmZE0Y5H-lN2PoTY', '', '', 'event', 1478601964),
(170, 1, 0, 0, 'ozJkmt1gBJmZL-VKTDO7Nt2gr0hk', '', '', 'unsubscrib', 1478620330),
(171, 1, 0, 0, 'ozJkmt8uGzvAJzP06ZRANVnKDaZM', '', '', 'unsubscrib', 1478653328),
(172, 1, 0, 0, 'ozJkmt57xPab757X5z0ysTqRvZm0', '', '', 'unsubscrib', 1478666607),
(173, 1, 0, 0, 'ozJkmt2vhpBU3iGHlRwbq13XzXRY', '', '', 'unsubscrib', 1478674154),
(174, 1, 0, 0, 'ozJkmt4Q-NeLELYkCz0-05Wxr4qQ', 'default', 'a:3:{s:10:"location_x";s:9:"27.817877";s:10:"location_y";s:10:"113.096451";s:9:"precision";s:9:"40.000000";}', 'trace', 1478696277),
(175, 1, 0, 0, 'ozJkmt4Q-NeLELYkCz0-05Wxr4qQ', '', '', 'event', 1478696296),
(176, 1, 0, 0, 'ozJkmt4Q-NeLELYkCz0-05Wxr4qQ', 'default', 'a:3:{s:10:"location_x";s:9:"27.817860";s:10:"location_y";s:10:"113.096436";s:9:"precision";s:9:"40.000000";}', 'trace', 1478696438),
(177, 1, 0, 0, 'ozJkmt4Q-NeLELYkCz0-05Wxr4qQ', '', '', 'event', 1478696439),
(178, 1, 0, 0, 'ozJkmt4Q-NeLELYkCz0-05Wxr4qQ', 'default', 'a:3:{s:10:"location_x";s:9:"27.817860";s:10:"location_y";s:10:"113.096436";s:9:"precision";s:9:"40.000000";}', 'trace', 1478696481),
(179, 1, 0, 0, 'ozJkmtxFX1QjoyCCTL5znFmj4ti8', '', '', 'event', 1478700416),
(180, 1, 0, 0, 'ozJkmtxFX1QjoyCCTL5znFmj4ti8', '', '', 'event', 1478700425),
(181, 1, 0, 0, 'ozJkmtxFX1QjoyCCTL5znFmj4ti8', 'default', 'a:3:{s:10:"location_x";s:9:"30.193657";s:10:"location_y";s:10:"120.295860";s:9:"precision";s:9:"30.000000";}', 'trace', 1478700428),
(182, 1, 0, 0, 'ozJkmtxFX1QjoyCCTL5znFmj4ti8', '', '', 'unsubscrib', 1478700432),
(183, 1, 0, 0, 'ozJkmt4TSp23b9yEr7EL8ljB1D9o', '', '', 'unsubscrib', 1478704003),
(184, 1, 0, 0, 'ozJkmt4n0yVHco-2Zuc_KmIVNXLY', '', '', 'unsubscrib', 1478748803),
(185, 1, 0, 0, 'ozJkmty4PPYjrOUZ2O-TQNTViycI', '', 'a:2:{s:5:"scene";N;s:6:"ticket";N;}', 'subscribe', 1478776066),
(186, 1, 0, 0, 'ozJkmty4PPYjrOUZ2O-TQNTViycI', '', '', 'event', 1478776073),
(187, 1, 0, 0, 'ozJkmty4PPYjrOUZ2O-TQNTViycI', '', '', 'event', 1478776088),
(188, 1, 0, 0, 'ozJkmty4PPYjrOUZ2O-TQNTViycI', '', '', 'unsubscrib', 1478776108),
(189, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'http://mmbiz.qpic.cn/mmbiz_jpg/oz1Mt3icb5pB37UymV4DBuFP8Jq0pLicBpic1x8ThictEcZHrKSI6WPoPicAjf9Qjhmla6ET2KtggqbwWdUGqJKfOeQ/0', 'image', 1478786954),
(190, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347492";s:10:"location_y";s:10:"113.286880";s:9:"precision";s:9:"65.000000";}', 'trace', 1478792800),
(191, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347431";s:10:"location_y";s:10:"113.286751";s:9:"precision";s:9:"65.000000";}', 'trace', 1478833754),
(192, 1, 0, 0, 'ozJkmt0xYzh2USIJ2cZZpnKQFhO4', '', 'a:2:{s:5:"scene";N;s:6:"ticket";N;}', 'subscribe', 1478844401),
(193, 1, 0, 0, 'ozJkmt34SJ9mgESUR1eNVJhAl_5I', 'default', 'a:3:{s:10:"location_x";s:9:"34.268101";s:10:"location_y";s:10:"109.029755";s:9:"precision";s:9:"65.000000";}', 'trace', 1478866051),
(194, 1, 0, 0, 'ozJkmt34SJ9mgESUR1eNVJhAl_5I', '', '', 'event', 1478866053),
(195, 1, 0, 0, 'ozJkmt34SJ9mgESUR1eNVJhAl_5I', '', '', 'event', 1478866067),
(196, 1, 0, 0, 'ozJkmt34SJ9mgESUR1eNVJhAl_5I', '', '', 'event', 1478866069),
(197, 1, 0, 0, 'ozJkmt34SJ9mgESUR1eNVJhAl_5I', '', '', 'event', 1478866071),
(198, 1, 0, 0, 'ozJkmt34SJ9mgESUR1eNVJhAl_5I', 'default', 'a:3:{s:10:"location_x";s:9:"34.268051";s:10:"location_y";s:10:"109.029739";s:9:"precision";s:9:"65.000000";}', 'trace', 1478866287),
(199, 1, 0, 0, 'ozJkmt34SJ9mgESUR1eNVJhAl_5I', '', '', 'event', 1478866288),
(200, 1, 0, 0, 'ozJkmt34SJ9mgESUR1eNVJhAl_5I', '', '', 'event', 1478866295),
(201, 1, 0, 0, 'ozJkmt7-h4UdCpcYuFebLY1bWDoA', '', '', 'event', 1478875952),
(202, 1, 0, 0, 'ozJkmtxrT4Du7WKCqSxmm7WyEQJI', '', '', 'event', 1478876692),
(203, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:18:"http://sztrico.com";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478876951),
(204, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:4:{s:7:"content";s:25:"http://hfleather.cn/i.php";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478876974),
(205, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', '', 'event', 1478882307),
(206, 1, 0, 0, 'ozJkmt6H4BOlCnatwfU43jgfnXuM', 'default', 'a:3:{s:10:"location_x";s:9:"23.236099";s:10:"location_y";s:10:"113.264877";s:9:"precision";s:10:"150.000000";}', 'trace', 1478885715),
(207, 1, 0, 0, 'ozJkmt6H4BOlCnatwfU43jgfnXuM', '', '', 'event', 1478885718),
(208, 1, 0, 0, 'ozJkmt6H4BOlCnatwfU43jgfnXuM', 'default', 'a:3:{s:10:"location_x";s:9:"23.236099";s:10:"location_y";s:10:"113.264877";s:9:"precision";s:10:"150.000000";}', 'trace', 1478885730),
(209, 1, 0, 0, 'ozJkmt6H4BOlCnatwfU43jgfnXuM', '', '', 'event', 1478885731),
(210, 1, 0, 0, 'ozJkmt6H4BOlCnatwfU43jgfnXuM', 'default', 'a:3:{s:10:"location_x";s:9:"23.236259";s:10:"location_y";s:10:"113.264732";s:9:"precision";s:10:"150.000000";}', 'trace', 1478885744),
(211, 1, 0, 0, 'ozJkmt6H4BOlCnatwfU43jgfnXuM', '', 'a:4:{s:7:"content";s:12:"/::~/::~/::~";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1478885754),
(212, 1, 0, 0, 'ozJkmt6H4BOlCnatwfU43jgfnXuM', 'default', 'a:3:{s:10:"location_x";s:9:"23.236282";s:10:"location_y";s:10:"113.264717";s:9:"precision";s:10:"150.000000";}', 'trace', 1478890527),
(213, 1, 0, 0, 'ozJkmt6H4BOlCnatwfU43jgfnXuM', '', '', 'event', 1478890528),
(214, 1, 0, 0, 'ozJkmt6H4BOlCnatwfU43jgfnXuM', 'default', 'a:3:{s:10:"location_x";s:9:"23.236282";s:10:"location_y";s:10:"113.264717";s:9:"precision";s:10:"150.000000";}', 'trace', 1478890535),
(215, 1, 0, 0, 'ozJkmt7-h4UdCpcYuFebLY1bWDoA', '', '', 'event', 1478945090),
(216, 1, 0, 0, 'ozJkmt7-h4UdCpcYuFebLY1bWDoA', '', '', 'event', 1478945111),
(217, 1, 0, 0, 'ozJkmt7-h4UdCpcYuFebLY1bWDoA', '', '', 'unsubscrib', 1478945152),
(218, 1, 0, 0, 'ozJkmt34SJ9mgESUR1eNVJhAl_5I', 'default', 'a:3:{s:10:"location_x";s:9:"34.268387";s:10:"location_y";s:10:"109.029442";s:9:"precision";s:10:"100.000000";}', 'trace', 1478959915),
(219, 1, 0, 0, 'ozJkmt34SJ9mgESUR1eNVJhAl_5I', '', '', 'event', 1478959916),
(220, 1, 0, 0, 'ozJkmt34SJ9mgESUR1eNVJhAl_5I', '', '', 'event', 1478959927),
(221, 1, 0, 0, 'ozJkmt9-GWMIm1sN09udXl7WCMqQ', '', '', 'unsubscrib', 1478981387),
(222, 1, 0, 0, 'ozJkmt2LKzV0vuYBRR8keJyIrH10', '', 'a:2:{s:5:"scene";N;s:6:"ticket";N;}', 'subscribe', 1479027229),
(223, 1, 0, 0, 'ozJkmt2LKzV0vuYBRR8keJyIrH10', 'default', 'a:3:{s:10:"location_x";s:9:"33.546017";s:10:"location_y";s:10:"114.607590";s:9:"precision";s:9:"90.000000";}', 'trace', 1479027246),
(224, 1, 0, 0, 'ozJkmt2LKzV0vuYBRR8keJyIrH10', '', '', 'event', 1479027248),
(225, 1, 0, 0, 'ozJkmt2LKzV0vuYBRR8keJyIrH10', 'default', 'a:3:{s:10:"location_x";s:9:"33.546017";s:10:"location_y";s:10:"114.607590";s:9:"precision";s:9:"90.000000";}', 'trace', 1479027260),
(226, 1, 0, 0, 'ozJkmt2LKzV0vuYBRR8keJyIrH10', '', '', 'event', 1479027261),
(227, 1, 0, 0, 'ozJkmt2LKzV0vuYBRR8keJyIrH10', '', '', 'event', 1479027264),
(228, 1, 0, 0, 'ozJkmt2LKzV0vuYBRR8keJyIrH10', 'default', 'a:3:{s:10:"location_x";s:9:"33.546017";s:10:"location_y";s:10:"114.607590";s:9:"precision";s:9:"90.000000";}', 'trace', 1479027269),
(229, 1, 0, 0, 'ozJkmt2LKzV0vuYBRR8keJyIrH10', '', '', 'event', 1479027270),
(230, 1, 0, 0, 'ozJkmt2LKzV0vuYBRR8keJyIrH10', 'default', 'a:3:{s:10:"location_x";s:9:"33.546017";s:10:"location_y";s:10:"114.607590";s:9:"precision";s:9:"90.000000";}', 'trace', 1479027277),
(231, 1, 0, 0, 'ozJkmt2LKzV0vuYBRR8keJyIrH10', '', '', 'unsubscrib', 1479027281),
(232, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', '', 'event', 1479042616),
(233, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', '', 'event', 1479042616),
(234, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', '', 'event', 1479042626),
(235, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', '', 'event', 1479042629),
(236, 1, 10, 19, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'cover', 'a:2:{s:5:"scene";s:2:"aa";s:6:"ticket";s:96:"gQFt8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMEFPT0l4Y3A4Q1QxMDAwME0wN2MAAgRmNU9YAwQAAAAA";}', 'qr', 1481587447),
(237, 1, 10, 19, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'cover', 'a:2:{s:5:"scene";s:2:"aa";s:6:"ticket";s:96:"gQFt8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMEFPT0l4Y3A4Q1QxMDAwME0wN2MAAgRmNU9YAwQAAAAA";}', 'qr', 1481587447),
(238, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347595";s:10:"location_y";s:10:"113.286850";s:9:"precision";s:9:"65.000000";}', 'trace', 1481587449),
(239, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', '', 'unsubscrib', 1481587458),
(240, 1, 10, 19, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'cover', 'a:2:{s:5:"scene";s:2:"aa";s:6:"ticket";s:96:"gQFt8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMEFPT0l4Y3A4Q1QxMDAwME0wN2MAAgRmNU9YAwQAAAAA";}', 'subscribe', 1481587464),
(241, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'default', 'a:3:{s:10:"location_x";s:9:"23.347490";s:10:"location_y";s:10:"113.286781";s:9:"precision";s:9:"65.000000";}', 'trace', 1481587468),
(242, 1, 11, 20, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'basic', '', 'event', 1481587900),
(243, 1, 10, 21, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'cover', 'a:4:{s:7:"content";s:6:"约爱";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1481588394),
(244, 1, 11, 20, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'basic', '', 'event', 1481588675),
(245, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', '', 'unsubscrib', 1481588717),
(246, 1, 10, 21, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'cover', 'a:2:{s:5:"scene";s:2:"aa";s:6:"ticket";s:96:"gQFt8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMEFPT0l4Y3A4Q1QxMDAwME0wN2MAAgRmNU9YAwQAAAAA";}', 'subscribe', 1481589127),
(247, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', '', 'unsubscrib', 1481590189),
(248, 1, 0, 0, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', '', 'a:2:{s:5:"scene";N;s:6:"ticket";N;}', 'subscribe', 1481590250),
(249, 1, 10, 21, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'cover', 'a:4:{s:7:"content";s:6:"约爱";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1481590263),
(250, 1, 10, 21, 'ozJkmt1L_xp_V4NTo0W6qdlQwAkU', 'cover', 'a:4:{s:7:"content";s:6:"约爱";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1481590600),
(251, 1, 10, 21, 'ozJkmtzgkhi8NlDtvO4fFAfIsgRU', 'cover', 'a:2:{s:5:"scene";s:2:"aa";s:6:"ticket";s:96:"gQFt8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMEFPT0l4Y3A4Q1QxMDAwME0wN2MAAgRmNU9YAwQAAAAA";}', 'subscribe', 1481597072),
(252, 1, 11, 20, 'ozJkmtzgkhi8NlDtvO4fFAfIsgRU', 'basic', '', 'event', 1481597075),
(253, 1, 11, 20, 'ozJkmtzgkhi8NlDtvO4fFAfIsgRU', 'basic', '', 'event', 1481597178),
(254, 1, 10, 21, 'ozJkmt5WVyGSfs-fmn3S6lTRKa44', 'cover', 'a:2:{s:5:"scene";s:2:"aa";s:6:"ticket";s:96:"gQFt8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMEFPT0l4Y3A4Q1QxMDAwME0wN2MAAgRmNU9YAwQAAAAA";}', 'subscribe', 1481609061),
(255, 1, 11, 20, 'ozJkmt5WVyGSfs-fmn3S6lTRKa44', 'basic', '', 'event', 1481609600),
(256, 1, 11, 20, 'ozJkmt5WVyGSfs-fmn3S6lTRKa44', 'basic', '', 'event', 1481610218),
(257, 1, 0, 0, 'ozJkmt2i0qj5wOdVi4A3myPcMuSk', '', 'a:2:{s:5:"scene";N;s:6:"ticket";N;}', 'subscribe', 1481617147),
(258, 1, 10, 21, 'ozJkmt2i0qj5wOdVi4A3myPcMuSk', 'cover', 'a:4:{s:7:"content";s:6:"约爱";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1481617153),
(259, 1, 11, 20, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'basic', '', 'event', 1481617222),
(260, 1, 10, 21, 'ozJkmt4EVRLFlD56N48B8gfNyaLw', 'cover', 'a:4:{s:7:"content";s:6:"约爱";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1481617399),
(261, 1, 0, 0, 'ozJkmt2i0qj5wOdVi4A3myPcMuSk', '', '', 'unsubscrib', 1481617431),
(262, 1, 11, 20, 'ozJkmt5WVyGSfs-fmn3S6lTRKa44', 'basic', '', 'event', 1481619332),
(263, 1, 11, 20, 'ozJkmt5WVyGSfs-fmn3S6lTRKa44', 'basic', '', 'event', 1481619367),
(264, 1, 0, 0, 'ozJkmt2P-1qjjZWuk4FkdgCo8a9Q', '', '', 'unsubscrib', 1481620328),
(265, 1, 10, 21, 'ozJkmt-hPB7SLQ6zLlP7_Fmb22zg', 'cover', 'a:2:{s:5:"scene";s:2:"aa";s:6:"ticket";s:96:"gQFt8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMEFPT0l4Y3A4Q1QxMDAwME0wN2MAAgRmNU9YAwQAAAAA";}', 'subscribe', 1481626643),
(266, 1, 0, 0, 'ozJkmt6xBuBWmm7vSYbmBSMl4ttU', '', '', 'unsubscrib', 1481627242),
(267, 1, 11, 20, 'ozJkmt6H4BOlCnatwfU43jgfnXuM', 'basic', '', 'event', 1481638679),
(268, 1, 0, 0, 'ozJkmt6H4BOlCnatwfU43jgfnXuM', '', 'a:4:{s:7:"content";s:9:"操你妈";s:8:"original";N;s:11:"redirection";b:0;s:6:"source";N;}', 'text', 1481638696),
(269, 1, 12, 23, 'o8cSQwGR4ZP_WVDr_cri6fTFvZPg', 'news', '', 'event', 1481795377),
(270, 1, 12, 23, 'o8cSQwGR4ZP_WVDr_cri6fTFvZPg', 'news', '', 'event', 1481795412),
(271, 1, 12, 23, 'o8cSQwGR4ZP_WVDr_cri6fTFvZPg', 'news', '', 'event', 1481795416),
(272, 1, 12, 23, 'o8cSQwGR4ZP_WVDr_cri6fTFvZPg', 'news', '', 'event', 1481795421),
(273, 1, 0, 0, 'o8cSQwGR4ZP_WVDr_cri6fTFvZPg', '', '', 'unsubscrib', 1481795453),
(274, 1, 12, 23, 'o8cSQwGR4ZP_WVDr_cri6fTFvZPg', 'news', 'a:2:{s:5:"scene";N;s:6:"ticket";N;}', 'subscribe', 1481795461),
(275, 1, 12, 23, 'o8cSQwGR4ZP_WVDr_cri6fTFvZPg', 'news', '', 'event', 1481796406);

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_rule`
--

CREATE TABLE IF NOT EXISTS `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_stat_rule`
--

INSERT INTO `ims_stat_rule` (`id`, `uniacid`, `rid`, `hit`, `lastupdate`, `createtime`) VALUES
(1, 1, 9, 1, 1477968597, 1477929600),
(2, 1, 7, 3, 1477999370, 1477929600),
(3, 1, 0, 1, 1477970516, 1477929600),
(4, 1, 0, 1, 1477970550, 1477929600),
(5, 1, 0, 1, 1477972890, 1477929600),
(6, 1, 0, 1, 1477973481, 1477929600),
(7, 1, 0, 1, 1477973502, 1477929600),
(8, 1, 0, 1, 1477973505, 1477929600),
(9, 1, 0, 1, 1477973977, 1477929600),
(10, 1, 0, 1, 1477975341, 1477929600),
(11, 1, 0, 1, 1477988579, 1477929600),
(12, 1, 0, 1, 1477988577, 1477929600),
(13, 1, 0, 1, 1477988584, 1477929600),
(14, 1, 0, 1, 1477988588, 1477929600),
(15, 1, 0, 1, 1477988592, 1477929600),
(16, 1, 0, 1, 1477988598, 1477929600),
(17, 1, 0, 1, 1477988609, 1477929600),
(18, 1, 0, 1, 1477988611, 1477929600),
(19, 1, 0, 1, 1477988638, 1477929600),
(20, 1, 0, 1, 1477988643, 1477929600),
(21, 1, 0, 1, 1477990162, 1477929600),
(22, 1, 0, 1, 1477990183, 1477929600),
(23, 1, 0, 1, 1477990186, 1477929600),
(24, 1, 0, 1, 1477990189, 1477929600),
(25, 1, 0, 1, 1477995999, 1477929600),
(26, 1, 0, 1, 1477996052, 1477929600),
(27, 1, 0, 1, 1477996249, 1477929600),
(28, 1, 0, 1, 1477999320, 1477929600),
(29, 1, 0, 1, 1477999344, 1477929600),
(30, 1, 0, 1, 1477999401, 1477929600),
(31, 1, 0, 1, 1477999442, 1477929600),
(32, 1, 0, 1, 1478005773, 1477929600),
(33, 1, 0, 1, 1478005777, 1477929600),
(34, 1, 0, 1, 1478005773, 1477929600),
(35, 1, 0, 1, 1478005782, 1477929600),
(36, 1, 0, 1, 1478005788, 1477929600),
(37, 1, 0, 1, 1478007513, 1477929600),
(38, 1, 0, 1, 1478007527, 1477929600),
(39, 1, 0, 1, 1478007533, 1477929600),
(40, 1, 0, 1, 1478007552, 1477929600),
(41, 1, 0, 1, 1478008561, 1477929600),
(42, 1, 0, 1, 1478008561, 1477929600),
(43, 1, 0, 1, 1478008568, 1477929600),
(44, 1, 0, 1, 1478008578, 1477929600),
(45, 1, 0, 1, 1478010232, 1477929600),
(46, 1, 0, 1, 1478018746, 1478016000),
(47, 1, 0, 1, 1478054018, 1478016000),
(48, 1, 0, 1, 1478058210, 1478016000),
(49, 1, 0, 1, 1478058349, 1478016000),
(50, 1, 9, 1, 1478060275, 1478016000),
(51, 1, 0, 1, 1478061507, 1478016000),
(52, 1, 0, 1, 1478061523, 1478016000),
(53, 1, 0, 1, 1478063232, 1478016000),
(54, 1, 0, 1, 1478063465, 1478016000),
(55, 1, 0, 1, 1478066724, 1478016000),
(56, 1, 0, 1, 1478066725, 1478016000),
(57, 1, 0, 1, 1478066736, 1478016000),
(58, 1, 0, 1, 1478066753, 1478016000),
(59, 1, 0, 1, 1478066754, 1478016000),
(60, 1, 0, 1, 1478066764, 1478016000),
(61, 1, 0, 1, 1478066776, 1478016000),
(62, 1, 0, 1, 1478066776, 1478016000),
(63, 1, 0, 1, 1478066780, 1478016000),
(64, 1, 0, 1, 1478066784, 1478016000),
(65, 1, 0, 1, 1478066793, 1478016000),
(66, 1, 0, 1, 1478066951, 1478016000),
(67, 1, 0, 1, 1478066953, 1478016000),
(68, 1, 0, 1, 1478088203, 1478016000),
(69, 1, 0, 1, 1478088209, 1478016000),
(70, 1, 0, 1, 1478088233, 1478016000),
(71, 1, 0, 1, 1478088237, 1478016000),
(72, 1, 0, 1, 1478094588, 1478016000),
(73, 1, 0, 1, 1478141990, 1478102400),
(74, 1, 0, 1, 1478142000, 1478102400),
(75, 1, 0, 1, 1478147655, 1478102400),
(76, 1, 0, 1, 1478176692, 1478102400),
(77, 1, 0, 1, 1478249942, 1478188800),
(78, 1, 0, 1, 1478256813, 1478188800),
(79, 1, 0, 1, 1478266147, 1478188800),
(80, 1, 0, 1, 1478266150, 1478188800),
(81, 1, 0, 1, 1478267655, 1478188800),
(82, 1, 0, 1, 1478278767, 1478275200),
(83, 1, 0, 1, 1478368305, 1478361600),
(84, 1, 0, 1, 1478368342, 1478361600),
(85, 1, 0, 1, 1478368986, 1478361600),
(86, 1, 0, 1, 1478368994, 1478361600),
(87, 1, 0, 1, 1478406976, 1478361600),
(88, 1, 0, 1, 1478406999, 1478361600),
(89, 1, 0, 1, 1478413348, 1478361600),
(90, 1, 0, 1, 1478413366, 1478361600),
(91, 1, 0, 1, 1478413376, 1478361600),
(92, 1, 0, 1, 1478413402, 1478361600),
(93, 1, 0, 1, 1478413410, 1478361600),
(94, 1, 0, 1, 1478417278, 1478361600),
(95, 1, 0, 1, 1478417760, 1478361600),
(96, 1, 0, 1, 1478417793, 1478361600),
(97, 1, 0, 1, 1478417894, 1478361600),
(98, 1, 0, 1, 1478420505, 1478361600),
(99, 1, 0, 1, 1478420770, 1478361600),
(100, 1, 0, 1, 1478420969, 1478361600),
(101, 1, 0, 1, 1478421008, 1478361600),
(102, 1, 0, 1, 1478421532, 1478361600),
(103, 1, 0, 1, 1478430644, 1478361600),
(104, 1, 0, 1, 1478436098, 1478361600),
(105, 1, 0, 1, 1478436100, 1478361600),
(106, 1, 0, 1, 1478437401, 1478361600),
(107, 1, 0, 1, 1478439027, 1478361600),
(108, 1, 0, 1, 1478439108, 1478361600),
(109, 1, 0, 1, 1478442103, 1478361600),
(110, 1, 0, 1, 1478445898, 1478361600),
(111, 1, 0, 1, 1478445940, 1478361600),
(112, 1, 0, 1, 1478451647, 1478448000),
(113, 1, 0, 1, 1478478519, 1478448000),
(114, 1, 0, 1, 1478482040, 1478448000),
(115, 1, 0, 1, 1478482064, 1478448000),
(116, 1, 0, 1, 1478482067, 1478448000),
(117, 1, 0, 1, 1478482079, 1478448000),
(118, 1, 0, 1, 1478482080, 1478448000),
(119, 1, 0, 1, 1478486827, 1478448000),
(120, 1, 0, 1, 1478486932, 1478448000),
(121, 1, 0, 1, 1478486980, 1478448000),
(122, 1, 0, 1, 1478486983, 1478448000),
(123, 1, 0, 1, 1478487225, 1478448000),
(124, 1, 0, 1, 1478487462, 1478448000),
(125, 1, 0, 1, 1478487463, 1478448000),
(126, 1, 0, 1, 1478498828, 1478448000),
(127, 1, 0, 1, 1478498863, 1478448000),
(128, 1, 0, 1, 1478498870, 1478448000),
(129, 1, 0, 1, 1478502736, 1478448000),
(130, 1, 0, 1, 1478502740, 1478448000),
(131, 1, 0, 1, 1478502743, 1478448000),
(132, 1, 0, 1, 1478502782, 1478448000),
(133, 1, 0, 1, 1478502783, 1478448000),
(134, 1, 0, 1, 1478502785, 1478448000),
(135, 1, 0, 1, 1478525301, 1478448000),
(136, 1, 0, 1, 1478582033, 1478534400),
(137, 1, 0, 1, 1478601964, 1478534400),
(138, 1, 0, 1, 1478696277, 1478620800),
(139, 1, 0, 1, 1478696296, 1478620800),
(140, 1, 0, 1, 1478696438, 1478620800),
(141, 1, 0, 1, 1478696439, 1478620800),
(142, 1, 0, 1, 1478696481, 1478620800),
(143, 1, 0, 1, 1478700416, 1478620800),
(144, 1, 0, 1, 1478700425, 1478620800),
(145, 1, 0, 1, 1478700428, 1478620800),
(146, 1, 0, 1, 1478776066, 1478707200),
(147, 1, 0, 1, 1478776073, 1478707200),
(148, 1, 0, 1, 1478776088, 1478707200),
(149, 1, 0, 1, 1478786954, 1478707200),
(150, 1, 0, 1, 1478792800, 1478707200),
(151, 1, 0, 1, 1478833754, 1478793600),
(152, 1, 0, 1, 1478844401, 1478793600),
(153, 1, 0, 1, 1478866051, 1478793600),
(154, 1, 0, 1, 1478866053, 1478793600),
(155, 1, 0, 1, 1478866067, 1478793600),
(156, 1, 0, 1, 1478866069, 1478793600),
(157, 1, 0, 1, 1478866071, 1478793600),
(158, 1, 0, 1, 1478866287, 1478793600),
(159, 1, 0, 1, 1478866288, 1478793600),
(160, 1, 0, 1, 1478866295, 1478793600),
(161, 1, 0, 1, 1478875952, 1478793600),
(162, 1, 0, 1, 1478876692, 1478793600),
(163, 1, 0, 1, 1478876951, 1478793600),
(164, 1, 0, 1, 1478876974, 1478793600),
(165, 1, 0, 1, 1478882307, 1478880000),
(166, 1, 0, 1, 1478885715, 1478880000),
(167, 1, 0, 1, 1478885718, 1478880000),
(168, 1, 0, 1, 1478885730, 1478880000),
(169, 1, 0, 1, 1478885731, 1478880000),
(170, 1, 0, 1, 1478885744, 1478880000),
(171, 1, 0, 1, 1478885754, 1478880000),
(172, 1, 0, 1, 1478890527, 1478880000),
(173, 1, 0, 1, 1478890528, 1478880000),
(174, 1, 0, 1, 1478890535, 1478880000),
(175, 1, 0, 1, 1478945090, 1478880000),
(176, 1, 0, 1, 1478945111, 1478880000),
(177, 1, 0, 1, 1478959915, 1478880000),
(178, 1, 0, 1, 1478959916, 1478880000),
(179, 1, 0, 1, 1478959927, 1478880000),
(180, 1, 0, 1, 1479027229, 1478966400),
(181, 1, 0, 1, 1479027246, 1478966400),
(182, 1, 0, 1, 1479027248, 1478966400),
(183, 1, 0, 1, 1479027260, 1478966400),
(184, 1, 0, 1, 1479027261, 1478966400),
(185, 1, 0, 1, 1479027264, 1478966400),
(186, 1, 0, 1, 1479027269, 1478966400),
(187, 1, 0, 1, 1479027270, 1478966400),
(188, 1, 0, 1, 1479027277, 1478966400),
(189, 1, 0, 1, 1479042616, 1478966400),
(190, 1, 0, 1, 1479042616, 1478966400),
(191, 1, 0, 1, 1479042626, 1478966400),
(192, 1, 0, 1, 1479042629, 1478966400),
(193, 1, 10, 11, 1481626719, 1481558400),
(194, 1, 10, 11, 1481626719, 1481558400),
(195, 1, 0, 1, 1481587449, 1481558400),
(196, 1, 0, 1, 1481587468, 1481558400),
(197, 1, 11, 10, 1481638735, 1481558400),
(198, 1, 0, 1, 1481590250, 1481558400),
(199, 1, 0, 1, 1481617147, 1481558400),
(200, 1, 0, 1, 1481638696, 1481558400),
(201, 1, 12, 6, 1481796406, 1481731200);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_uni_account`
--

INSERT INTO `ims_uni_account` (`uniacid`, `groupid`, `name`, `description`, `default_acid`, `rank`) VALUES
(1, 0, '爱赞婚恋', '爱赞婚恋一个朝气蓬勃的团队', 1, 5);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_group`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_menus`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `menuid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_uni_account_menus`
--

INSERT INTO `ims_uni_account_menus` (`id`, `uniacid`, `menuid`, `type`, `title`, `sex`, `group_id`, `client_platform_type`, `area`, `data`, `status`, `createtime`, `isdeleted`) VALUES
(2, 1, 0, 2, '默认', 0, -1, 0, '', 'YToyOntzOjY6ImJ1dHRvbiI7YTozOntpOjA7YTozOntzOjQ6Im5hbWUiO3M6MTA6IvCfkpjpppbpobUiO3M6NDoidHlwZSI7czo0OiJ2aWV3IjtzOjM6InVybCI7czo1MToiaHR0cDovL3d3dy5hcHdlaS5jbi9hcHAvaW5kZXgucGhwP2k9MSZjPWVudHJ5JmVpZD0xIjt9aToxO2E6Mzp7czo0OiJuYW1lIjtzOjEzOiLwn4+D57qm5ZCM5Z+OIjtzOjQ6InR5cGUiO3M6NDoidmlldyI7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly93d3cuYXB3ZWkuY24vYXBwL2luZGV4LnBocD9pPTEmYz1lbnRyeSZlaWQ9NCI7fWk6MjthOjI6e3M6NDoibmFtZSI7czoxMDoi8J+OiOabtOWkmiI7czoxMDoic3ViX2J1dHRvbiI7YTo1OntpOjA7YTozOntzOjQ6Im5hbWUiO3M6MTI6IuS4quS6uuS4reW/gyI7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6MzoidXJsIjtzOjUxOiJodHRwOi8vd3d3LmFwd2VpLmNuL2FwcC9pbmRleC5waHA/aT0xJmM9ZW50cnkmZWlkPTIiO31pOjE7YTozOntzOjQ6Im5hbWUiO3M6MTY6IvCfkozmiJHnmoTkv6HnrrEiO3M6NDoidHlwZSI7czo0OiJ2aWV3IjtzOjM6InVybCI7czo1MToiaHR0cDovL3d3dy5hcHdlaS5jbi9hcHAvaW5kZXgucGhwP2k9MSZjPWVudHJ5JmVpZD0zIjt9aToyO2E6Mzp7czo0OiJuYW1lIjtzOjEyOiLluK7liqnkuK3lv4MiO3M6NDoidHlwZSI7czo0OiJ2aWV3IjtzOjM6InVybCI7czo1MToiaHR0cDovL3d3dy5hcHdlaS5jbi9hcHAvaW5kZXgucGhwP2k9MSZjPWVudHJ5JmVpZD04Ijt9aTozO2E6Mzp7czo0OiJuYW1lIjtzOjEyOiLlronlhajkuK3lv4MiO3M6NDoidHlwZSI7czo0OiJ2aWV3IjtzOjM6InVybCI7czo1MToiaHR0cDovL3d3dy5hcHdlaS5jbi9hcHAvaW5kZXgucGhwP2k9MSZjPWVudHJ5JmVpZD03Ijt9aTo0O2E6Mzp7czo0OiJuYW1lIjtzOjEyOiLmjqjlub/kuK3lv4MiO3M6NDoidHlwZSI7czo0OiJ2aWV3IjtzOjM6InVybCI7czo1MToiaHR0cDovL3d3dy5hcHdlaS5jbi9hcHAvaW5kZXgucGhwP2k9MSZjPWVudHJ5JmVpZD01Ijt9fX19czo5OiJtYXRjaHJ1bGUiO2E6MTp7czo3OiJncm91cGlkIjtOO319', 0, 1481792738, 1),
(3, 1, 0, 1, '', 0, -1, 0, '', 'YTozOntzOjY6ImJ1dHRvbiI7YTozOntpOjA7YTo0OntzOjQ6InR5cGUiO3M6NDoidmlldyI7czo0OiJuYW1lIjtzOjEwOiLwn5KY6aaW6aG1IjtzOjM6InVybCI7czo1MToiaHR0cDovL3d3dy5hcHdlaS5jbi9hcHAvaW5kZXgucGhwP2k9MSZjPWVudHJ5JmVpZD0xIjtzOjEwOiJzdWJfYnV0dG9uIjthOjA6e319aToxO2E6NDp7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6NDoibmFtZSI7czoxMzoi8J+Pg+e6puWQjOWfjiI7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly93d3cuYXB3ZWkuY24vYXBwL2luZGV4LnBocD9pPTEmYz1lbnRyeSZlaWQ9NCI7czoxMDoic3ViX2J1dHRvbiI7YTowOnt9fWk6MjthOjI6e3M6NDoibmFtZSI7czoxMDoi8J+OiOabtOWkmiI7czoxMDoic3ViX2J1dHRvbiI7YTo1OntpOjA7YTo0OntzOjQ6InR5cGUiO3M6NDoidmlldyI7czo0OiJuYW1lIjtzOjEyOiLkuKrkurrkuK3lv4MiO3M6MzoidXJsIjtzOjUxOiJodHRwOi8vd3d3LmFwd2VpLmNuL2FwcC9pbmRleC5waHA/aT0xJmM9ZW50cnkmZWlkPTIiO3M6MTA6InN1Yl9idXR0b24iO2E6MDp7fX1pOjE7YTo0OntzOjQ6InR5cGUiO3M6NDoidmlldyI7czo0OiJuYW1lIjtzOjE2OiLwn5KM5oiR55qE5L+h566xIjtzOjM6InVybCI7czo1MToiaHR0cDovL3d3dy5hcHdlaS5jbi9hcHAvaW5kZXgucGhwP2k9MSZjPWVudHJ5JmVpZD0zIjtzOjEwOiJzdWJfYnV0dG9uIjthOjA6e319aToyO2E6NDp7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6NDoibmFtZSI7czoxMjoi5biu5Yqp5Lit5b+DIjtzOjM6InVybCI7czo1MToiaHR0cDovL3d3dy5hcHdlaS5jbi9hcHAvaW5kZXgucGhwP2k9MSZjPWVudHJ5JmVpZD04IjtzOjEwOiJzdWJfYnV0dG9uIjthOjA6e319aTozO2E6NDp7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6NDoibmFtZSI7czoxMjoi5a6J5YWo5Lit5b+DIjtzOjM6InVybCI7czo1MToiaHR0cDovL3d3dy5hcHdlaS5jbi9hcHAvaW5kZXgucGhwP2k9MSZjPWVudHJ5JmVpZD03IjtzOjEwOiJzdWJfYnV0dG9uIjthOjA6e319aTo0O2E6NDp7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6NDoibmFtZSI7czoxMjoi5o6o5bm/5Lit5b+DIjtzOjM6InVybCI7czo1MToiaHR0cDovL3d3dy5hcHdlaS5jbi9hcHAvaW5kZXgucGhwP2k9MSZjPWVudHJ5JmVpZD01IjtzOjEwOiJzdWJfYnV0dG9uIjthOjA6e319fX19czo0OiJ0eXBlIjtpOjE7czo5OiJtYXRjaHJ1bGUiO2E6MDp7fX0=', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_modules`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_uni_account_modules`
--

INSERT INTO `ims_uni_account_modules` (`id`, `uniacid`, `module`, `enabled`, `settings`) VALUES
(1, 1, 'basic', 1, ''),
(2, 1, 'news', 1, ''),
(3, 1, 'music', 1, ''),
(4, 1, 'userapi', 1, ''),
(5, 1, 'recharge', 1, ''),
(6, 1, 'jy_ppp', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_users`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_group`
--

CREATE TABLE IF NOT EXISTS `ims_uni_group` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `modules` varchar(15000) NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_uni_group`
--

INSERT INTO `ims_uni_group` (`id`, `name`, `modules`, `templates`, `uniacid`) VALUES
(1, '体验套餐服务', 'N;', 'N;', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_settings`
--

CREATE TABLE IF NOT EXISTS `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL,
  `oauth` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  `uc` varchar(500) NOT NULL,
  `notify` varchar(2000) NOT NULL,
  `creditnames` varchar(500) NOT NULL,
  `creditbehaviors` varchar(500) NOT NULL,
  `welcome` varchar(60) NOT NULL,
  `default` varchar(60) NOT NULL,
  `default_message` varchar(2000) NOT NULL,
  `shortcuts` varchar(5000) NOT NULL,
  `payment` varchar(2000) NOT NULL,
  `stat` varchar(300) NOT NULL,
  `default_site` int(10) unsigned DEFAULT NULL,
  `sync` tinyint(3) unsigned NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `tplnotice` varchar(1000) NOT NULL,
  `grouplevel` tinyint(3) unsigned NOT NULL,
  `mcplugin` varchar(500) NOT NULL,
  `exchange_enable` tinyint(3) unsigned NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  `menuset` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_uni_settings`
--

INSERT INTO `ims_uni_settings` (`uniacid`, `passport`, `oauth`, `jsauth_acid`, `uc`, `notify`, `creditnames`, `creditbehaviors`, `welcome`, `default`, `default_message`, `shortcuts`, `payment`, `stat`, `default_site`, `sync`, `recharge`, `tplnotice`, `grouplevel`, `mcplugin`, `exchange_enable`, `coupon_type`, `menuset`) VALUES
(1, 'a:3:{s:8:"focusreg";i:0;s:4:"item";s:5:"email";s:4:"type";s:8:"password";}', 'a:2:{s:4:"host";s:19:"http://www.apwei.cn";s:7:"account";i:1;}', 1, 'a:1:{s:6:"status";i:0;}', 'a:1:{s:3:"sms";a:2:{s:7:"balance";i:0;s:9:"signature";s:0:"";}}', 'a:5:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}s:7:"credit3";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit4";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit5";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '关注', '关注', '', 'a:1:{s:6:"jy_ppp";a:2:{s:4:"name";s:6:"jy_ppp";s:4:"link";s:44:"./index.php?c=home&a=welcome&do=ext&m=jy_ppp";}}', 'a:8:{s:6:"credit";a:1:{s:6:"switch";b:0;}s:6:"alipay";a:4:{s:6:"switch";b:0;s:7:"account";s:0:"";s:7:"partner";s:0:"";s:6:"secret";s:0:"";}s:6:"wechat";a:11:{s:6:"switch";s:1:"1";s:7:"account";s:1:"1";s:7:"signkey";s:32:"wa430430430430430430430430430430";s:7:"partner";s:0:"";s:3:"key";s:0:"";s:7:"version";s:1:"2";s:5:"mchid";s:10:"1337334001";s:6:"apikey";s:32:"wa430430430430430430430430430430";s:7:"service";s:1:"0";s:6:"borrow";s:1:"0";s:10:"sub_mch_id";s:0:"";}s:8:"delivery";a:1:{s:6:"switch";b:0;}s:18:"wechat_facilitator";a:3:{s:5:"mchid";i:0;s:7:"signkey";s:0:"";s:6:"switch";b:0;}s:8:"unionpay";a:3:{s:6:"switch";b:0;s:11:"signcertpwd";s:0:"";s:5:"merid";s:0:"";}s:8:"baifubao";a:3:{s:6:"switch";b:0;s:7:"signkey";s:0:"";s:5:"mchid";s:0:"";}s:4:"line";a:2:{s:6:"switch";b:0;s:7:"message";s:0:"";}}', '', 1, 1, '', '', 0, '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_verifycode`
--

CREATE TABLE IF NOT EXISTS `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_userapi_cache`
--

CREATE TABLE IF NOT EXISTS `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_userapi_reply`
--

CREATE TABLE IF NOT EXISTS `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_userapi_reply`
--

INSERT INTO `ims_userapi_reply` (`id`, `rid`, `description`, `apiurl`, `token`, `default_text`, `cachetime`) VALUES
(1, 1, '"城市名+天气", 如: "北京天气"', 'weather.php', '', '', 0),
(2, 2, '"百科+查询内容" 或 "定义+查询内容", 如: "百科姚明", "定义自行车"', 'baike.php', '', '', 0),
(3, 3, '"@查询内容(中文或英文)"', 'translate.php', '', '', 0),
(4, 4, '"日历", "万年历", "黄历"或"几号"', 'calendar.php', '', '', 0),
(5, 5, '"新闻"', 'news.php', '', '', 0),
(6, 6, '"快递+单号", 如: "申通1200041125"', 'express.php', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_users`
--

CREATE TABLE IF NOT EXISTS `ims_users` (
  `uid` int(10) unsigned NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) unsigned NOT NULL,
  `joinip` varchar(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_users`
--

INSERT INTO `ims_users` (`uid`, `groupid`, `username`, `password`, `salt`, `type`, `status`, `joindate`, `joinip`, `lastvisit`, `lastip`, `remark`, `starttime`, `endtime`) VALUES
(1, 0, 'admin', 'af05ff37602c042986c182d55164b40f730566c6', '2bf87eef', 0, 0, 1477965941, '', 1481790852, '116.21.62.2', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_failed_login`
--

CREATE TABLE IF NOT EXISTS `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_group`
--

CREATE TABLE IF NOT EXISTS `ims_users_group` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_users_group`
--

INSERT INTO `ims_users_group` (`id`, `name`, `package`, `maxaccount`, `maxsubaccount`, `timelimit`) VALUES
(1, '体验用户组', 'a:1:{i:0;i:1;}', 1, 1, 0),
(2, '白金用户组', 'a:1:{i:0;i:1;}', 2, 2, 0),
(3, '黄金用户组', 'a:1:{i:0;i:1;}', 3, 3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_invitation`
--

CREATE TABLE IF NOT EXISTS `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_permission`
--

CREATE TABLE IF NOT EXISTS `ims_users_permission` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(30) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_profile`
--

CREATE TABLE IF NOT EXISTS `ims_users_profile` (
  `id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `workerid` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_video_reply`
--

CREATE TABLE IF NOT EXISTS `ims_video_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_voice_reply`
--

CREATE TABLE IF NOT EXISTS `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wechat_attachment`
--

CREATE TABLE IF NOT EXISTS `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wechat_news`
--

CREATE TABLE IF NOT EXISTS `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `thumb_media_id` varchar(60) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_source_url` varchar(200) NOT NULL,
  `show_cover_pic` tinyint(3) unsigned NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wxcard_reply`
--

CREATE TABLE IF NOT EXISTS `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ims_account`
--
ALTER TABLE `ims_account`
  ADD PRIMARY KEY (`acid`),
  ADD KEY `idx_uniacid` (`uniacid`);

--
-- Indexes for table `ims_account_wechats`
--
ALTER TABLE `ims_account_wechats`
  ADD PRIMARY KEY (`acid`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `ims_activity_clerks`
--
ALTER TABLE `ims_activity_clerks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `password` (`password`),
  ADD KEY `openid` (`openid`);

--
-- Indexes for table `ims_activity_clerk_menu`
--
ALTER TABLE `ims_activity_clerk_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_activity_coupon_allocation`
--
ALTER TABLE `ims_activity_coupon_allocation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`,`couponid`,`groupid`);

--
-- Indexes for table `ims_activity_coupon_modules`
--
ALTER TABLE `ims_activity_coupon_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `couponid` (`couponid`);

--
-- Indexes for table `ims_activity_exchange`
--
ALTER TABLE `ims_activity_exchange`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extra` (`extra`(333));

--
-- Indexes for table `ims_activity_exchange_trades`
--
ALTER TABLE `ims_activity_exchange_trades`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `uniacid` (`uniacid`,`uid`,`exid`);

--
-- Indexes for table `ims_activity_exchange_trades_shipping`
--
ALTER TABLE `ims_activity_exchange_trades_shipping`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_activity_modules`
--
ALTER TABLE `ims_activity_modules`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `module` (`module`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_activity_modules_record`
--
ALTER TABLE `ims_activity_modules_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_activity_stores`
--
ALTER TABLE `ims_activity_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `ims_article_category`
--
ALTER TABLE `ims_article_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ims_article_news`
--
ALTER TABLE `ims_article_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `cateid` (`cateid`);

--
-- Indexes for table `ims_article_notice`
--
ALTER TABLE `ims_article_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `cateid` (`cateid`);

--
-- Indexes for table `ims_article_unread_notice`
--
ALTER TABLE `ims_article_unread_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `notice_id` (`notice_id`);

--
-- Indexes for table `ims_basic_reply`
--
ALTER TABLE `ims_basic_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_business`
--
ALTER TABLE `ims_business`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lat_lng` (`lng`,`lat`);

--
-- Indexes for table `ims_core_attachment`
--
ALTER TABLE `ims_core_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_core_cache`
--
ALTER TABLE `ims_core_cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `ims_core_cron`
--
ALTER TABLE `ims_core_cron`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createtime` (`createtime`),
  ADD KEY `nextruntime` (`nextruntime`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `cloudid` (`cloudid`);

--
-- Indexes for table `ims_core_cron_record`
--
ALTER TABLE `ims_core_cron_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `tid` (`tid`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `ims_core_menu`
--
ALTER TABLE `ims_core_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_core_paylog`
--
ALTER TABLE `ims_core_paylog`
  ADD PRIMARY KEY (`plid`),
  ADD KEY `idx_openid` (`openid`),
  ADD KEY `idx_tid` (`tid`),
  ADD KEY `idx_uniacid` (`uniacid`),
  ADD KEY `uniontid` (`uniontid`);

--
-- Indexes for table `ims_core_performance`
--
ALTER TABLE `ims_core_performance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_core_queue`
--
ALTER TABLE `ims_core_queue`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `uniacid` (`uniacid`,`acid`),
  ADD KEY `module` (`module`),
  ADD KEY `dateline` (`dateline`);

--
-- Indexes for table `ims_core_resource`
--
ALTER TABLE `ims_core_resource`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `acid` (`uniacid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ims_core_sendsms_log`
--
ALTER TABLE `ims_core_sendsms_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_core_sessions`
--
ALTER TABLE `ims_core_sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `ims_core_settings`
--
ALTER TABLE `ims_core_settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `ims_coupon`
--
ALTER TABLE `ims_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`,`acid`);

--
-- Indexes for table `ims_coupon_activity`
--
ALTER TABLE `ims_coupon_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_coupon_groups`
--
ALTER TABLE `ims_coupon_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_coupon_location`
--
ALTER TABLE `ims_coupon_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`,`acid`);

--
-- Indexes for table `ims_coupon_modules`
--
ALTER TABLE `ims_coupon_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`,`acid`),
  ADD KEY `couponid` (`couponid`);

--
-- Indexes for table `ims_coupon_record`
--
ALTER TABLE `ims_coupon_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`,`acid`),
  ADD KEY `card_id` (`card_id`),
  ADD KEY `hash` (`hash`);

--
-- Indexes for table `ims_coupon_store`
--
ALTER TABLE `ims_coupon_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `couponid` (`couponid`);

--
-- Indexes for table `ims_cover_reply`
--
ALTER TABLE `ims_cover_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_custom_reply`
--
ALTER TABLE `ims_custom_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_images_reply`
--
ALTER TABLE `ims_images_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_jy_ppp_aihao`
--
ALTER TABLE `ims_jy_ppp_aihao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_attent`
--
ALTER TABLE `ims_jy_ppp_attent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`),
  ADD KEY `attentid` (`attentid`);

--
-- Indexes for table `ims_jy_ppp_baoyue_log`
--
ALTER TABLE `ims_jy_ppp_baoyue_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_basic`
--
ALTER TABLE `ims_jy_ppp_basic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_black`
--
ALTER TABLE `ims_jy_ppp_black`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`),
  ADD KEY `blackid` (`blackid`);

--
-- Indexes for table `ims_jy_ppp_chat_doubi`
--
ALTER TABLE `ims_jy_ppp_chat_doubi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_code`
--
ALTER TABLE `ims_jy_ppp_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_credit_log`
--
ALTER TABLE `ims_jy_ppp_credit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_desc`
--
ALTER TABLE `ims_jy_ppp_desc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_dianyuan`
--
ALTER TABLE `ims_jy_ppp_dianyuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_feedback`
--
ALTER TABLE `ims_jy_ppp_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_help`
--
ALTER TABLE `ims_jy_ppp_help`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_hf`
--
ALTER TABLE `ims_jy_ppp_hf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_hf2`
--
ALTER TABLE `ims_jy_ppp_hf2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_hf2_send`
--
ALTER TABLE `ims_jy_ppp_hf2_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`),
  ADD KEY `sendid` (`sendid`);

--
-- Indexes for table `ims_jy_ppp_idcard`
--
ALTER TABLE `ims_jy_ppp_idcard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_kefu`
--
ALTER TABLE `ims_jy_ppp_kefu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_login_log`
--
ALTER TABLE `ims_jy_ppp_login_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_mailui`
--
ALTER TABLE `ims_jy_ppp_mailui`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_match`
--
ALTER TABLE `ims_jy_ppp_match`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_member`
--
ALTER TABLE `ims_jy_ppp_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `province` (`province`),
  ADD KEY `sex` (`sex`),
  ADD KEY `mobile` (`mobile`);

--
-- Indexes for table `ims_jy_ppp_mianrao`
--
ALTER TABLE `ims_jy_ppp_mianrao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_mobile`
--
ALTER TABLE `ims_jy_ppp_mobile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_msg`
--
ALTER TABLE `ims_jy_ppp_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_nickname`
--
ALTER TABLE `ims_jy_ppp_nickname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_pay_log`
--
ALTER TABLE `ims_jy_ppp_pay_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_price`
--
ALTER TABLE `ims_jy_ppp_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_report`
--
ALTER TABLE `ims_jy_ppp_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_rule`
--
ALTER TABLE `ims_jy_ppp_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_safe`
--
ALTER TABLE `ims_jy_ppp_safe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_setting`
--
ALTER TABLE `ims_jy_ppp_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_shouxin_log`
--
ALTER TABLE `ims_jy_ppp_shouxin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_tezheng`
--
ALTER TABLE `ims_jy_ppp_tezheng`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_tgy_rule`
--
ALTER TABLE `ims_jy_ppp_tgy_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_thumb`
--
ALTER TABLE `ims_jy_ppp_thumb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_tixianrecord`
--
ALTER TABLE `ims_jy_ppp_tixianrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_tuiguang`
--
ALTER TABLE `ims_jy_ppp_tuiguang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_tuiguang_xinxi`
--
ALTER TABLE `ims_jy_ppp_tuiguang_xinxi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_visit`
--
ALTER TABLE `ims_jy_ppp_visit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ims_jy_ppp_xinxi`
--
ALTER TABLE `ims_jy_ppp_xinxi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`),
  ADD KEY `sendid` (`sendid`);

--
-- Indexes for table `ims_jy_ppp_xinxi_temp`
--
ALTER TABLE `ims_jy_ppp_xinxi_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`),
  ADD KEY `sendid` (`sendid`);

--
-- Indexes for table `ims_jy_ppp_xunithumb`
--
ALTER TABLE `ims_jy_ppp_xunithumb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_xuni_member`
--
ALTER TABLE `ims_jy_ppp_xuni_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_xuni_pay`
--
ALTER TABLE `ims_jy_ppp_xuni_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_yongjin`
--
ALTER TABLE `ims_jy_ppp_yongjin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_jy_ppp_zhaohu`
--
ALTER TABLE `ims_jy_ppp_zhaohu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_mc_card`
--
ALTER TABLE `ims_mc_card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_mc_card_care`
--
ALTER TABLE `ims_mc_card_care`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_mc_card_credit_set`
--
ALTER TABLE `ims_mc_card_credit_set`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_mc_card_members`
--
ALTER TABLE `ims_mc_card_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_mc_card_notices`
--
ALTER TABLE `ims_mc_card_notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_mc_card_notices_unread`
--
ALTER TABLE `ims_mc_card_notices_unread`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `notice_id` (`notice_id`);

--
-- Indexes for table `ims_mc_card_recommend`
--
ALTER TABLE `ims_mc_card_recommend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_mc_card_record`
--
ALTER TABLE `ims_mc_card_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `addtime` (`addtime`);

--
-- Indexes for table `ims_mc_card_sign_record`
--
ALTER TABLE `ims_mc_card_sign_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_mc_cash_record`
--
ALTER TABLE `ims_mc_cash_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_mc_chats_record`
--
ALTER TABLE `ims_mc_chats_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`,`acid`),
  ADD KEY `openid` (`openid`),
  ADD KEY `createtime` (`createtime`);

--
-- Indexes for table `ims_mc_credits_recharge`
--
ALTER TABLE `ims_mc_credits_recharge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  ADD KEY `idx_tid` (`tid`);

--
-- Indexes for table `ims_mc_credits_record`
--
ALTER TABLE `ims_mc_credits_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_mc_fans_groups`
--
ALTER TABLE `ims_mc_fans_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_mc_fans_tag_mapping`
--
ALTER TABLE `ims_mc_fans_tag_mapping`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mapping` (`fanid`,`tagid`),
  ADD KEY `fanid_index` (`fanid`),
  ADD KEY `tagid_index` (`tagid`);

--
-- Indexes for table `ims_mc_groups`
--
ALTER TABLE `ims_mc_groups`
  ADD PRIMARY KEY (`groupid`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_mc_handsel`
--
ALTER TABLE `ims_mc_handsel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`touid`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_mc_mapping_fans`
--
ALTER TABLE `ims_mc_mapping_fans`
  ADD PRIMARY KEY (`fanid`),
  ADD UNIQUE KEY `openid` (`openid`),
  ADD KEY `acid` (`acid`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `nickname` (`nickname`),
  ADD KEY `updatetime` (`updatetime`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_mc_mapping_ucenter`
--
ALTER TABLE `ims_mc_mapping_ucenter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_mc_mass_record`
--
ALTER TABLE `ims_mc_mass_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`,`acid`);

--
-- Indexes for table `ims_mc_members`
--
ALTER TABLE `ims_mc_members`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_mc_member_address`
--
ALTER TABLE `ims_mc_member_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uinacid` (`uniacid`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `ims_mc_member_fields`
--
ALTER TABLE `ims_mc_member_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uniacid` (`uniacid`),
  ADD KEY `idx_fieldid` (`fieldid`);

--
-- Indexes for table `ims_mc_oauth_fans`
--
ALTER TABLE `ims_mc_oauth_fans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`);

--
-- Indexes for table `ims_menu_event`
--
ALTER TABLE `ims_menu_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `picmd5` (`picmd5`);

--
-- Indexes for table `ims_mobilenumber`
--
ALTER TABLE `ims_mobilenumber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_modules`
--
ALTER TABLE `ims_modules`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `ims_modules_bindings`
--
ALTER TABLE `ims_modules_bindings`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `idx_module` (`module`);

--
-- Indexes for table `ims_modules_recycle`
--
ALTER TABLE `ims_modules_recycle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modulename` (`modulename`);

--
-- Indexes for table `ims_music_reply`
--
ALTER TABLE `ims_music_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_news_reply`
--
ALTER TABLE `ims_news_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_paycenter_order`
--
ALTER TABLE `ims_paycenter_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_profile_fields`
--
ALTER TABLE `ims_profile_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_qrcode`
--
ALTER TABLE `ims_qrcode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_qrcid` (`qrcid`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `ticket` (`ticket`);

--
-- Indexes for table `ims_qrcode_stat`
--
ALTER TABLE `ims_qrcode_stat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_rule`
--
ALTER TABLE `ims_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_rule_keyword`
--
ALTER TABLE `ims_rule_keyword`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_content` (`content`),
  ADD KEY `idx_rid` (`rid`),
  ADD KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`);

--
-- Indexes for table `ims_site_article`
--
ALTER TABLE `ims_site_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_iscommend` (`iscommend`),
  ADD KEY `idx_ishot` (`ishot`);

--
-- Indexes for table `ims_site_category`
--
ALTER TABLE `ims_site_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_site_multi`
--
ALTER TABLE `ims_site_multi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `bindhost` (`bindhost`);

--
-- Indexes for table `ims_site_nav`
--
ALTER TABLE `ims_site_nav`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `multiid` (`multiid`);

--
-- Indexes for table `ims_site_page`
--
ALTER TABLE `ims_site_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `multiid` (`multiid`);

--
-- Indexes for table `ims_site_slide`
--
ALTER TABLE `ims_site_slide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `multiid` (`multiid`);

--
-- Indexes for table `ims_site_styles`
--
ALTER TABLE `ims_site_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_site_styles_vars`
--
ALTER TABLE `ims_site_styles_vars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_site_templates`
--
ALTER TABLE `ims_site_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_stat_fans`
--
ALTER TABLE `ims_stat_fans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`,`date`);

--
-- Indexes for table `ims_stat_keyword`
--
ALTER TABLE `ims_stat_keyword`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_createtime` (`createtime`);

--
-- Indexes for table `ims_stat_msg_history`
--
ALTER TABLE `ims_stat_msg_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_createtime` (`createtime`);

--
-- Indexes for table `ims_stat_rule`
--
ALTER TABLE `ims_stat_rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_createtime` (`createtime`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_uni_account`
--
ALTER TABLE `ims_uni_account`
  ADD PRIMARY KEY (`uniacid`);

--
-- Indexes for table `ims_uni_account_group`
--
ALTER TABLE `ims_uni_account_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_uni_account_menus`
--
ALTER TABLE `ims_uni_account_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `menuid` (`menuid`);

--
-- Indexes for table `ims_uni_account_modules`
--
ALTER TABLE `ims_uni_account_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_module` (`module`),
  ADD KEY `idx_uniacid` (`uniacid`);

--
-- Indexes for table `ims_uni_account_users`
--
ALTER TABLE `ims_uni_account_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_memberid` (`uid`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_uni_group`
--
ALTER TABLE `ims_uni_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_uni_settings`
--
ALTER TABLE `ims_uni_settings`
  ADD PRIMARY KEY (`uniacid`);

--
-- Indexes for table `ims_uni_verifycode`
--
ALTER TABLE `ims_uni_verifycode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_userapi_cache`
--
ALTER TABLE `ims_userapi_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_userapi_reply`
--
ALTER TABLE `ims_userapi_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_users`
--
ALTER TABLE `ims_users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `ims_users_failed_login`
--
ALTER TABLE `ims_users_failed_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_username` (`ip`,`username`);

--
-- Indexes for table `ims_users_group`
--
ALTER TABLE `ims_users_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_users_invitation`
--
ALTER TABLE `ims_users_invitation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_code` (`code`);

--
-- Indexes for table `ims_users_permission`
--
ALTER TABLE `ims_users_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_users_profile`
--
ALTER TABLE `ims_users_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_video_reply`
--
ALTER TABLE `ims_video_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_voice_reply`
--
ALTER TABLE `ims_voice_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_wechat_attachment`
--
ALTER TABLE `ims_wechat_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `media_id` (`media_id`),
  ADD KEY `acid` (`acid`);

--
-- Indexes for table `ims_wechat_news`
--
ALTER TABLE `ims_wechat_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `attach_id` (`attach_id`);

--
-- Indexes for table `ims_wxcard_reply`
--
ALTER TABLE `ims_wxcard_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ims_account`
--
ALTER TABLE `ims_account`
  MODIFY `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_activity_clerks`
--
ALTER TABLE `ims_activity_clerks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_activity_clerk_menu`
--
ALTER TABLE `ims_activity_clerk_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `ims_activity_coupon_allocation`
--
ALTER TABLE `ims_activity_coupon_allocation`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_activity_coupon_modules`
--
ALTER TABLE `ims_activity_coupon_modules`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_activity_exchange`
--
ALTER TABLE `ims_activity_exchange`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_activity_exchange_trades`
--
ALTER TABLE `ims_activity_exchange_trades`
  MODIFY `tid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_activity_exchange_trades_shipping`
--
ALTER TABLE `ims_activity_exchange_trades_shipping`
  MODIFY `tid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_activity_modules`
--
ALTER TABLE `ims_activity_modules`
  MODIFY `mid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_activity_modules_record`
--
ALTER TABLE `ims_activity_modules_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_activity_stores`
--
ALTER TABLE `ims_activity_stores`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_article_category`
--
ALTER TABLE `ims_article_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_article_news`
--
ALTER TABLE `ims_article_news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_article_notice`
--
ALTER TABLE `ims_article_notice`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_article_unread_notice`
--
ALTER TABLE `ims_article_unread_notice`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_basic_reply`
--
ALTER TABLE `ims_basic_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_business`
--
ALTER TABLE `ims_business`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_attachment`
--
ALTER TABLE `ims_core_attachment`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ims_core_cron`
--
ALTER TABLE `ims_core_cron`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_cron_record`
--
ALTER TABLE `ims_core_cron_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_menu`
--
ALTER TABLE `ims_core_menu`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `ims_core_paylog`
--
ALTER TABLE `ims_core_paylog`
  MODIFY `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ims_core_performance`
--
ALTER TABLE `ims_core_performance`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_queue`
--
ALTER TABLE `ims_core_queue`
  MODIFY `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_resource`
--
ALTER TABLE `ims_core_resource`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_sendsms_log`
--
ALTER TABLE `ims_core_sendsms_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_coupon`
--
ALTER TABLE `ims_coupon`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_coupon_activity`
--
ALTER TABLE `ims_coupon_activity`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_coupon_groups`
--
ALTER TABLE `ims_coupon_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_coupon_location`
--
ALTER TABLE `ims_coupon_location`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_coupon_modules`
--
ALTER TABLE `ims_coupon_modules`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_coupon_record`
--
ALTER TABLE `ims_coupon_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_coupon_store`
--
ALTER TABLE `ims_coupon_store`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_cover_reply`
--
ALTER TABLE `ims_cover_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ims_custom_reply`
--
ALTER TABLE `ims_custom_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_images_reply`
--
ALTER TABLE `ims_images_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_aihao`
--
ALTER TABLE `ims_jy_ppp_aihao`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_attent`
--
ALTER TABLE `ims_jy_ppp_attent`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_baoyue_log`
--
ALTER TABLE `ims_jy_ppp_baoyue_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_basic`
--
ALTER TABLE `ims_jy_ppp_basic`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_black`
--
ALTER TABLE `ims_jy_ppp_black`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_chat_doubi`
--
ALTER TABLE `ims_jy_ppp_chat_doubi`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_code`
--
ALTER TABLE `ims_jy_ppp_code`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_credit_log`
--
ALTER TABLE `ims_jy_ppp_credit_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_desc`
--
ALTER TABLE `ims_jy_ppp_desc`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_dianyuan`
--
ALTER TABLE `ims_jy_ppp_dianyuan`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_feedback`
--
ALTER TABLE `ims_jy_ppp_feedback`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_help`
--
ALTER TABLE `ims_jy_ppp_help`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_hf`
--
ALTER TABLE `ims_jy_ppp_hf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=293;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_hf2`
--
ALTER TABLE `ims_jy_ppp_hf2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_hf2_send`
--
ALTER TABLE `ims_jy_ppp_hf2_send`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_idcard`
--
ALTER TABLE `ims_jy_ppp_idcard`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_kefu`
--
ALTER TABLE `ims_jy_ppp_kefu`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_login_log`
--
ALTER TABLE `ims_jy_ppp_login_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_mailui`
--
ALTER TABLE `ims_jy_ppp_mailui`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_match`
--
ALTER TABLE `ims_jy_ppp_match`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_member`
--
ALTER TABLE `ims_jy_ppp_member`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_mianrao`
--
ALTER TABLE `ims_jy_ppp_mianrao`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_mobile`
--
ALTER TABLE `ims_jy_ppp_mobile`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_msg`
--
ALTER TABLE `ims_jy_ppp_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_nickname`
--
ALTER TABLE `ims_jy_ppp_nickname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_pay_log`
--
ALTER TABLE `ims_jy_ppp_pay_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_price`
--
ALTER TABLE `ims_jy_ppp_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_report`
--
ALTER TABLE `ims_jy_ppp_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_rule`
--
ALTER TABLE `ims_jy_ppp_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_safe`
--
ALTER TABLE `ims_jy_ppp_safe`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_setting`
--
ALTER TABLE `ims_jy_ppp_setting`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_shouxin_log`
--
ALTER TABLE `ims_jy_ppp_shouxin_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_tezheng`
--
ALTER TABLE `ims_jy_ppp_tezheng`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_tgy_rule`
--
ALTER TABLE `ims_jy_ppp_tgy_rule`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_thumb`
--
ALTER TABLE `ims_jy_ppp_thumb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=346;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_tixianrecord`
--
ALTER TABLE `ims_jy_ppp_tixianrecord`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_tuiguang`
--
ALTER TABLE `ims_jy_ppp_tuiguang`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_tuiguang_xinxi`
--
ALTER TABLE `ims_jy_ppp_tuiguang_xinxi`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_visit`
--
ALTER TABLE `ims_jy_ppp_visit`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_xinxi`
--
ALTER TABLE `ims_jy_ppp_xinxi`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=415;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_xinxi_temp`
--
ALTER TABLE `ims_jy_ppp_xinxi_temp`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=457;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_xunithumb`
--
ALTER TABLE `ims_jy_ppp_xunithumb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=827;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_xuni_member`
--
ALTER TABLE `ims_jy_ppp_xuni_member`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_xuni_pay`
--
ALTER TABLE `ims_jy_ppp_xuni_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_yongjin`
--
ALTER TABLE `ims_jy_ppp_yongjin`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_jy_ppp_zhaohu`
--
ALTER TABLE `ims_jy_ppp_zhaohu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=242;
--
-- AUTO_INCREMENT for table `ims_mc_card`
--
ALTER TABLE `ims_mc_card`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_card_care`
--
ALTER TABLE `ims_mc_card_care`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_card_credit_set`
--
ALTER TABLE `ims_mc_card_credit_set`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_card_members`
--
ALTER TABLE `ims_mc_card_members`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_card_notices`
--
ALTER TABLE `ims_mc_card_notices`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_card_notices_unread`
--
ALTER TABLE `ims_mc_card_notices_unread`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_card_recommend`
--
ALTER TABLE `ims_mc_card_recommend`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_card_record`
--
ALTER TABLE `ims_mc_card_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_card_sign_record`
--
ALTER TABLE `ims_mc_card_sign_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_cash_record`
--
ALTER TABLE `ims_mc_cash_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_chats_record`
--
ALTER TABLE `ims_mc_chats_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_credits_recharge`
--
ALTER TABLE `ims_mc_credits_recharge`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ims_mc_credits_record`
--
ALTER TABLE `ims_mc_credits_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ims_mc_fans_groups`
--
ALTER TABLE `ims_mc_fans_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_mc_fans_tag_mapping`
--
ALTER TABLE `ims_mc_fans_tag_mapping`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_groups`
--
ALTER TABLE `ims_mc_groups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_mc_handsel`
--
ALTER TABLE `ims_mc_handsel`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_mapping_fans`
--
ALTER TABLE `ims_mc_mapping_fans`
  MODIFY `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ims_mc_mapping_ucenter`
--
ALTER TABLE `ims_mc_mapping_ucenter`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_mass_record`
--
ALTER TABLE `ims_mc_mass_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_members`
--
ALTER TABLE `ims_mc_members`
  MODIFY `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ims_mc_member_address`
--
ALTER TABLE `ims_mc_member_address`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_member_fields`
--
ALTER TABLE `ims_mc_member_fields`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `ims_mc_oauth_fans`
--
ALTER TABLE `ims_mc_oauth_fans`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_menu_event`
--
ALTER TABLE `ims_menu_event`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mobilenumber`
--
ALTER TABLE `ims_mobilenumber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_modules`
--
ALTER TABLE `ims_modules`
  MODIFY `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ims_modules_bindings`
--
ALTER TABLE `ims_modules_bindings`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `ims_modules_recycle`
--
ALTER TABLE `ims_modules_recycle`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_music_reply`
--
ALTER TABLE `ims_music_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_news_reply`
--
ALTER TABLE `ims_news_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ims_paycenter_order`
--
ALTER TABLE `ims_paycenter_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_profile_fields`
--
ALTER TABLE `ims_profile_fields`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `ims_qrcode`
--
ALTER TABLE `ims_qrcode`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_qrcode_stat`
--
ALTER TABLE `ims_qrcode_stat`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ims_rule`
--
ALTER TABLE `ims_rule`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ims_rule_keyword`
--
ALTER TABLE `ims_rule_keyword`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `ims_site_article`
--
ALTER TABLE `ims_site_article`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_category`
--
ALTER TABLE `ims_site_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_multi`
--
ALTER TABLE `ims_site_multi`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_site_nav`
--
ALTER TABLE `ims_site_nav`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_page`
--
ALTER TABLE `ims_site_page`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ims_site_slide`
--
ALTER TABLE `ims_site_slide`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_styles`
--
ALTER TABLE `ims_site_styles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_site_styles_vars`
--
ALTER TABLE `ims_site_styles_vars`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_templates`
--
ALTER TABLE `ims_site_templates`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_stat_fans`
--
ALTER TABLE `ims_stat_fans`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `ims_stat_keyword`
--
ALTER TABLE `ims_stat_keyword`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ims_stat_msg_history`
--
ALTER TABLE `ims_stat_msg_history`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=276;
--
-- AUTO_INCREMENT for table `ims_stat_rule`
--
ALTER TABLE `ims_stat_rule`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `ims_uni_account`
--
ALTER TABLE `ims_uni_account`
  MODIFY `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_uni_account_group`
--
ALTER TABLE `ims_uni_account_group`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_uni_account_menus`
--
ALTER TABLE `ims_uni_account_menus`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ims_uni_account_modules`
--
ALTER TABLE `ims_uni_account_modules`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ims_uni_account_users`
--
ALTER TABLE `ims_uni_account_users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_uni_group`
--
ALTER TABLE `ims_uni_group`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_uni_verifycode`
--
ALTER TABLE `ims_uni_verifycode`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_userapi_cache`
--
ALTER TABLE `ims_userapi_cache`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_userapi_reply`
--
ALTER TABLE `ims_userapi_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ims_users`
--
ALTER TABLE `ims_users`
  MODIFY `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_users_failed_login`
--
ALTER TABLE `ims_users_failed_login`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ims_users_group`
--
ALTER TABLE `ims_users_group`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ims_users_invitation`
--
ALTER TABLE `ims_users_invitation`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_users_permission`
--
ALTER TABLE `ims_users_permission`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_users_profile`
--
ALTER TABLE `ims_users_profile`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_video_reply`
--
ALTER TABLE `ims_video_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_voice_reply`
--
ALTER TABLE `ims_voice_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_wechat_attachment`
--
ALTER TABLE `ims_wechat_attachment`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_wechat_news`
--
ALTER TABLE `ims_wechat_news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_wxcard_reply`
--
ALTER TABLE `ims_wxcard_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
DELIMITER $$
--
-- 事件
--
CREATE DEFINER=`root`@`localhost` EVENT `xiufu` ON SCHEDULE EVERY 40 SECOND STARTS '2016-09-11 00:00:00' ENDS '2016-12-29 00:00:00' ON COMPLETION PRESERVE ENABLE DO REPAIR TABLE `ims_account`, `ims_account_wechats`, `ims_activity_clerks`, `ims_activity_clerk_menu`, `ims_activity_coupon`, `ims_activity_coupon_allocation`, `ims_activity_coupon_modules`, `ims_activity_coupon_record`, `ims_activity_exchange`, `ims_activity_exchange_trades`, `ims_activity_exchange_trades_shipping`, `ims_activity_modules`, `ims_activity_modules_record`, `ims_activity_stores`, `ims_article_category`, `ims_article_news`, `ims_article_notice`, `ims_article_unread_notice`, `ims_basic_reply`, `ims_business`, `ims_core_attachment`, `ims_core_cache`, `ims_core_cron`, `ims_core_cron_record`, `ims_core_menu`, `ims_core_paylog`, `ims_core_performance`, `ims_core_queue`, `ims_core_resource`, `ims_core_sendsms_log`, `ims_core_sessions`, `ims_core_settings`, `ims_coupon`, `ims_coupon_location`, `ims_coupon_modules`, `ims_coupon_record`, `ims_coupon_setting`, `ims_cover_reply`, `ims_custom_reply`, `ims_images_reply`, `ims_jy_ppp_aihao`, `ims_jy_ppp_attent`, `ims_jy_ppp_baoyue_log`, `ims_jy_ppp_basic`, `ims_jy_ppp_black`, `ims_jy_ppp_chat_doubi`, `ims_jy_ppp_code`, `ims_jy_ppp_credit_log`, `ims_jy_ppp_desc`, `ims_jy_ppp_dianyuan`, `ims_jy_ppp_feedback`, `ims_jy_ppp_help`, `ims_jy_ppp_hf`, `ims_jy_ppp_idcard`, `ims_jy_ppp_kefu`, `ims_jy_ppp_login_log`, `ims_jy_ppp_mailui`, `ims_jy_ppp_match`, `ims_jy_ppp_member`, `ims_jy_ppp_mianrao`, `ims_jy_ppp_mobile`, `ims_jy_ppp_msg`, `ims_jy_ppp_nickname`, `ims_jy_ppp_pay_log`, `ims_jy_ppp_price`, `ims_jy_ppp_report`, `ims_jy_ppp_rule`, `ims_jy_ppp_safe`, `ims_jy_ppp_setting`, `ims_jy_ppp_shouxin_log`, `ims_jy_ppp_tezheng`, `ims_jy_ppp_thumb`, `ims_jy_ppp_visit`, `ims_jy_ppp_xinxi`, `ims_jy_ppp_xinxi_temp`, `ims_jy_ppp_xunithumb`, `ims_jy_ppp_xuni_member`, `ims_jy_ppp_xuni_pay`, `ims_jy_ppp_zhaohu`, `ims_mc_card`, `ims_mc_card_care`, `ims_mc_card_credit_set`, `ims_mc_card_members`, `ims_mc_card_notices`, `ims_mc_card_notices_unread`, `ims_mc_card_recommend`, `ims_mc_card_record`, `ims_mc_card_sign_record`, `ims_mc_cash_record`, `ims_mc_chats_record`, `ims_mc_credits_recharge`, `ims_mc_credits_record`, `ims_mc_fans_groups`, `ims_mc_groups`, `ims_mc_handsel`, `ims_mc_mapping_fans`, `ims_mc_mapping_ucenter`, `ims_mc_mass_record`, `ims_mc_members`, `ims_mc_member_address`, `ims_mc_member_fields`, `ims_mc_oauth_fans`, `ims_menu_event`, `ims_mobilenumber`, `ims_modules`, `ims_modules_bindings`, `ims_modules_recycle`, `ims_music_reply`, `ims_news_reply`, `ims_paycenter_order`, `ims_profile_fields`, `ims_qrcode`, `ims_qrcode_stat`, `ims_rule`, `ims_rule_keyword`, `ims_site_article`, `ims_site_category`, `ims_site_multi`, `ims_site_nav`, `ims_site_page`, `ims_site_slide`, `ims_site_styles`, `ims_site_styles_vars`, `ims_site_templates`, `ims_stat_fans`, `ims_stat_keyword`, `ims_stat_msg_history`, `ims_stat_rule`, `ims_uni_account`, `ims_uni_account_group`, `ims_uni_account_menus`, `ims_uni_account_modules`, `ims_uni_account_users`, `ims_uni_group`, `ims_uni_settings`, `ims_uni_verifycode`, `ims_userapi_cache`, `ims_userapi_reply`, `ims_users`, `ims_users_failed_login`, `ims_users_group`, `ims_users_invitation`, `ims_users_permission`, `ims_users_profile`, `ims_video_reply`, `ims_voice_reply`, `ims_wechat_attachment`, `ims_wechat_news`, `ims_wxcard_reply`$$

CREATE DEFINER=`root`@`localhost` EVENT `youhua` ON SCHEDULE EVERY 50 SECOND STARTS '2016-09-11 00:00:00' ENDS '2016-12-31 00:00:00' ON COMPLETION PRESERVE ENABLE DO OPTIMIZE TABLE `ims_account`, `ims_account_wechats`, `ims_activity_clerks`, `ims_activity_clerk_menu`, `ims_activity_coupon`, `ims_activity_coupon_allocation`, `ims_activity_coupon_modules`, `ims_activity_coupon_record`, `ims_activity_exchange`, `ims_activity_exchange_trades`, `ims_activity_exchange_trades_shipping`, `ims_activity_modules`, `ims_activity_modules_record`, `ims_activity_stores`, `ims_article_category`, `ims_article_news`, `ims_article_notice`, `ims_article_unread_notice`, `ims_basic_reply`, `ims_business`, `ims_core_attachment`, `ims_core_cache`, `ims_core_cron`, `ims_core_cron_record`, `ims_core_menu`, `ims_core_paylog`, `ims_core_performance`, `ims_core_queue`, `ims_core_resource`, `ims_core_sendsms_log`, `ims_core_sessions`, `ims_core_settings`, `ims_coupon`, `ims_coupon_location`, `ims_coupon_modules`, `ims_coupon_record`, `ims_coupon_setting`, `ims_cover_reply`, `ims_custom_reply`, `ims_images_reply`, `ims_jy_ppp_aihao`, `ims_jy_ppp_attent`, `ims_jy_ppp_baoyue_log`, `ims_jy_ppp_basic`, `ims_jy_ppp_black`, `ims_jy_ppp_chat_doubi`, `ims_jy_ppp_code`, `ims_jy_ppp_credit_log`, `ims_jy_ppp_desc`, `ims_jy_ppp_dianyuan`, `ims_jy_ppp_feedback`, `ims_jy_ppp_help`, `ims_jy_ppp_hf`, `ims_jy_ppp_idcard`, `ims_jy_ppp_kefu`, `ims_jy_ppp_login_log`, `ims_jy_ppp_mailui`, `ims_jy_ppp_match`, `ims_jy_ppp_member`, `ims_jy_ppp_mianrao`, `ims_jy_ppp_mobile`, `ims_jy_ppp_msg`, `ims_jy_ppp_nickname`, `ims_jy_ppp_pay_log`, `ims_jy_ppp_price`, `ims_jy_ppp_report`, `ims_jy_ppp_rule`, `ims_jy_ppp_safe`, `ims_jy_ppp_setting`, `ims_jy_ppp_shouxin_log`, `ims_jy_ppp_tezheng`, `ims_jy_ppp_thumb`, `ims_jy_ppp_visit`, `ims_jy_ppp_xinxi`, `ims_jy_ppp_xinxi_temp`, `ims_jy_ppp_xunithumb`, `ims_jy_ppp_xuni_member`, `ims_jy_ppp_xuni_pay`, `ims_jy_ppp_zhaohu`, `ims_mc_card`, `ims_mc_card_care`, `ims_mc_card_credit_set`, `ims_mc_card_members`, `ims_mc_card_notices`, `ims_mc_card_notices_unread`, `ims_mc_card_recommend`, `ims_mc_card_record`, `ims_mc_card_sign_record`, `ims_mc_cash_record`, `ims_mc_chats_record`, `ims_mc_credits_recharge`, `ims_mc_credits_record`, `ims_mc_fans_groups`, `ims_mc_groups`, `ims_mc_handsel`, `ims_mc_mapping_fans`, `ims_mc_mapping_ucenter`, `ims_mc_mass_record`, `ims_mc_members`, `ims_mc_member_address`, `ims_mc_member_fields`, `ims_mc_oauth_fans`, `ims_menu_event`, `ims_mobilenumber`, `ims_modules`, `ims_modules_bindings`, `ims_modules_recycle`, `ims_music_reply`, `ims_news_reply`, `ims_paycenter_order`, `ims_profile_fields`, `ims_qrcode`, `ims_qrcode_stat`, `ims_rule`, `ims_rule_keyword`, `ims_site_article`, `ims_site_category`, `ims_site_multi`, `ims_site_nav`, `ims_site_page`, `ims_site_slide`, `ims_site_styles`, `ims_site_styles_vars`, `ims_site_templates`, `ims_stat_fans`, `ims_stat_keyword`, `ims_stat_msg_history`, `ims_stat_rule`, `ims_uni_account`, `ims_uni_account_group`, `ims_uni_account_menus`, `ims_uni_account_modules`, `ims_uni_account_users`, `ims_uni_group`, `ims_uni_settings`, `ims_uni_verifycode`, `ims_userapi_cache`, `ims_userapi_reply`, `ims_users`, `ims_users_failed_login`, `ims_users_group`, `ims_users_invitation`, `ims_users_permission`, `ims_users_profile`, `ims_video_reply`, `ims_voice_reply`, `ims_wechat_attachment`, `ims_wechat_news`, `ims_wxcard_reply`$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
