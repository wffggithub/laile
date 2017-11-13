/*
Navicat MySQL Data Transfer

Source Server         : szlang
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : laile2

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2017-11-13 10:46:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qw_about
-- ----------------------------
DROP TABLE IF EXISTS `qw_about`;
CREATE TABLE `qw_about` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(9) NOT NULL,
  `title` varchar(32) NOT NULL DEFAULT '',
  `image_path` varchar(200) NOT NULL DEFAULT '',
  `banner_image_path` varchar(200) NOT NULL DEFAULT '',
  `content` text,
  `t` int(10) NOT NULL,
  `seotitle` varchar(255) DEFAULT '',
  `keywords` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_about
-- ----------------------------
INSERT INTO `qw_about` VALUES ('22', '53', '', '', '', '<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	1、服务商发布于选软件网（以下简称“平台”）的所有信息真实、准确，符合相关法律法规及平台的规则。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	2、服务商对其发布于平台的产品有销售权。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	3、服务商保证在软件服务进行的过程中遵守诚实信用的原则，不在服务过程中采取不正当竞争行为，不扰乱网上交易的正常秩序，不从事与网上交易无关的行为。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	4、服务商保证在软件服务时实施的所有行为均遵守国家法律、法规和平台的相关规则、规定以及各种社会公共利益及公共道德。如有违反导致任何法律后果的发生，服务商将以自己的名义独立承担所有相应的法律责任。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	5、如遇恶劣天气或其它自然灾害等不可抗因素，买卖双方应酌情商议。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	6、买卖双方在沟通时，卖家不能主动引导用户通过平台外的交易方式购买产品和服务，如发现此类问题对平台造成恶劣影响的，选软件网保留追究法律责任的权利。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	7、服务商承诺将采取措施防止交易纠纷的发生，包括但不限于对软件服务流程进行视频、照片记录等。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	8、买卖双方发生纠纷时，如果用户提出申诉并提交证据，服务商需在24小时内回应并提供有效证据，如未回应或未提供有效证据则依据用户申诉要求和提交证据处理。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#444444;font-family:Arial, Verdana, 宋体;font-size:14px;background-color:#EEEEEE;\">\r\n	&nbsp;\r\n</p>', '1510474197', '企业简介', '企业简介', '企业简介企业简介企业简介企业简介企业简介企业简介企业简介企业简介企业简介企业简介企业简介企业简介企业简介');
INSERT INTO `qw_about` VALUES ('23', '55', '', '', '', '企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化<img src=\"/Public/attached/image/20171112/20171112134048_15949.png\" alt=\"\" />', '1510494050', '企业文化', '企业文化', '企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化企业文化');

-- ----------------------------
-- Table structure for qw_activity
-- ----------------------------
DROP TABLE IF EXISTS `qw_activity`;
CREATE TABLE `qw_activity` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(9) NOT NULL COMMENT '导航id',
  `image_path` varchar(200) NOT NULL COMMENT '广告图',
  `t` int(10) NOT NULL,
  `seotitle` varchar(255) DEFAULT '',
  `keywords` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `content` text,
  `title` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_activity
-- ----------------------------
INSERT INTO `qw_activity` VALUES ('1', '0', '/Public/attached/2017/11/12/5a0803a53a8f9.jpg', '1510474848', '管理员管理员管理员管理员', '管理员管理员', '管理员管理员管理员管理员管理员管理员管理员管理员管理员管理员管理员管理员管理员管理员管理员管理员管理员管理员管理员', '<p style=\"text-align:justify;text-indent:2em;color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\">\r\n	尘在外，心在内，这场爱恋，如焰火般在心的荒芜中绚烂，虽然时刻短，但那霎时的秀丽，足已温暖我的前尘此生。那十指紧扣的温顺，也成为我来生最美的期盼。感谢有你的陪同，谢谢你，爱过我。\r\n</p>\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\"> </span>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\">\r\n	握着你的手，走过快乐和伤心，黑夜白天，咱们都曾具有，人生是没有定律的一种节奏，不如用心去感触，不用在乎太多，只需和你一同度过，哪怕是冰山，我也情愿。－－题记\r\n</p>\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\"> </span>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\">\r\n	【一】\r\n</p>\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\"> </span>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\">\r\n	初冬的阳光充溢淡淡的暖暖滋味，行走在阡陌红尘里，安之若素的你如一缕清风，轻轻拂过我的眼前，留下阵阵余香。你从繁华中浅笑而来，我掠过地平线上的日光，才看清你的脸颊，吹弹可破的肤质润滑，正经温顺，腰间一落千丈的秀发随风飘飘扬扬。我轻如浮云，淡如静水，冷似冰山，近我者，皆免不了皮开肉绽，而你却不以为然。\r\n</p>\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\"> </span>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\">\r\n	望着你盈盈浅笑的面孔，臆想，假若早些遇见你，这份尘缘是不是会更秀丽？我不是拈花微笑的仙人，关于红尘中的爱恨情仇无心参加，亦不是履历丰厚的智者，关于苍茫的十字岔口决断决择，我仅仅一名平常百姓，思念往昔，留恋红尘，仅此而已。\r\n</p>\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\"> </span>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\">\r\n	幽静流年，韶光划过指尖，我无怨承受生命赋予的全部，无悔享用人世奉送的全部，或许正由于如此，习气单支形影的本人失掉了仅有的一丝温度。直到遇见你，我才觉得本来心与情是彼此的，心为情动，情为心伤。\r\n</p>\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\"> </span>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\">\r\n	如若不是你，我怎能懂得何为爱，何为真情？如若不是你，如今的我是不是活得无忧无虑？如若不是你，我又怎能信任还有永久？如若不是你，那山，那雨，那对岸苍海，那涉水茫田，那铭肌镂骨的种种，还会纠结至今吗？\r\n</p>\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\"> </span>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\">\r\n	放眼回望，春暖花开，你我倾慕的相遇绚烂在那一季繁花，渡一丈清水掀起无尽狂潮，设千道机关仍然逃不过你交心的关心。夏天流火，仅仅是一杯咖啡的温度，便足以耐人寻味，缕继清风，丝丝心意，淡淡悠长。秋风冷瑟，弯身捡起一片落叶携入腋下，是谁告诉我，落红不是无情物，化作春泥更护花？夜空那稍纵即逝的秀丽，毕生难忘。冬日温文，谁的婆娑目光揽尽日光，迷离不解的为我送上，又是谁说，情暖心间，喜爱永久！\r\n</p>\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\"> </span>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\">\r\n	清风云淡，细水东流，借着地老天荒的传说，我浅笑允应你，情缘系三生，携手青丝变青丝，一路不离不弃。你外表仍然安静如水，心中却为此情此意深深感动，不想让许诺成为牵绊，不想让永久成为止境，那便且行且爱惜吧。\r\n</p>\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\"> </span>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;font-family:&quot;font-size:14px;background-color:#EEEEEE;\">\r\n	阳光照旧，年月照旧，你懂我，是我幸，我伤你，是我逆。\r\n</p>', '管理员');
INSERT INTO `qw_activity` VALUES ('2', '0', '/Public/attached/2017/11/12/5a0862b8d7c3b.png', '1510499007', '最新活动', '最新活动', '最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动', '最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动', '最新活动');
INSERT INTO `qw_activity` VALUES ('3', '0', '/Public/attached/2017/11/12/5a08674a559c5.jpg', '1510500176', '最新活动', '最新活动', '最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动', '最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动', '最新活动');
INSERT INTO `qw_activity` VALUES ('4', '0', '/Public/attached/2017/11/12/5a086791a576d.jpg', '1510500245', '最新活动', '最新活动', '最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动', '最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动最新活动', '最新活动');

-- ----------------------------
-- Table structure for qw_article
-- ----------------------------
DROP TABLE IF EXISTS `qw_article`;
CREATE TABLE `qw_article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL COMMENT '分类id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `seotitle` varchar(255) DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '摘要',
  `thumbnail` varchar(255) NOT NULL COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `t` int(10) unsigned NOT NULL COMMENT '时间',
  `n` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  PRIMARY KEY (`aid`),
  KEY `sid` (`sid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_article
-- ----------------------------

-- ----------------------------
-- Table structure for qw_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `qw_auth_group`;
CREATE TABLE `qw_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_auth_group
-- ----------------------------
INSERT INTO `qw_auth_group` VALUES ('1', '超级管理员', '1', '1,2,58,65,59,60,61,62,3,56,4,6,5,7,8,9,10,51,52,53,57,11,54,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,29,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47,63,48,49,50,55');
INSERT INTO `qw_auth_group` VALUES ('2', '管理员', '1', '1,2,120,3,99,56,31,100,103,32,33,13,14,15,16,17,18,24,80,121,122,123,124,125,68,101,104,88,72,77,102,105,90,78,79,118,117,119,73,74,89,106,107,75,91,108,109,76,82,92,83,111,110,86,94,87,114,115,84,93,85,112,113,81,116,25,26,27,29,30,34,36,37,38,95,39,40,41,42,43,44,45,46,47,63,48,49,50,55');
INSERT INTO `qw_auth_group` VALUES ('3', '普通用户', '1', '1');

-- ----------------------------
-- Table structure for qw_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `qw_auth_group_access`;
CREATE TABLE `qw_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_auth_group_access
-- ----------------------------
INSERT INTO `qw_auth_group_access` VALUES ('1', '1');
INSERT INTO `qw_auth_group_access` VALUES ('2', '2');
INSERT INTO `qw_auth_group_access` VALUES ('3', '2');

-- ----------------------------
-- Table structure for qw_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `qw_auth_rule`;
CREATE TABLE `qw_auth_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `islink` tinyint(1) NOT NULL DEFAULT '1',
  `o` int(11) NOT NULL COMMENT '排序',
  `tips` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_auth_rule
-- ----------------------------
INSERT INTO `qw_auth_rule` VALUES ('1', '0', 'Index/index', '控制台', 'menu-icon fa fa-tachometer', '1', '1', '', '1', '1', '友情提示：经常查看操作日志，发现异常以便及时追查原因。');
INSERT INTO `qw_auth_rule` VALUES ('2', '0', '', '系统设置', 'menu-icon fa fa-cog', '1', '1', '', '1', '2', '');
INSERT INTO `qw_auth_rule` VALUES ('3', '2', 'Setting/setting', '网站设置', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '3', '这是网站设置的提示。');
INSERT INTO `qw_auth_rule` VALUES ('4', '2', 'Menu/index', '后台菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '4', '');
INSERT INTO `qw_auth_rule` VALUES ('5', '4', 'Menu/add', '新增菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '5', '');
INSERT INTO `qw_auth_rule` VALUES ('6', '4', 'Menu/edit', '编辑菜单', '', '1', '1', '', '0', '6', '');
INSERT INTO `qw_auth_rule` VALUES ('7', '2', 'Menu/update', '保存菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '7', '');
INSERT INTO `qw_auth_rule` VALUES ('8', '2', 'Menu/del', '删除菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '8', '');
INSERT INTO `qw_auth_rule` VALUES ('9', '2', 'Database/backup', '数据库备份', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '9', '');
INSERT INTO `qw_auth_rule` VALUES ('10', '9', 'Database/recovery', '数据库还原', '', '1', '1', '', '0', '10', '');
INSERT INTO `qw_auth_rule` VALUES ('11', '2', 'Update/update', '在线升级', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '11', '');
INSERT INTO `qw_auth_rule` VALUES ('12', '2', 'Update/devlog', '开发日志', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '12', '');
INSERT INTO `qw_auth_rule` VALUES ('13', '0', '', '用户及组', 'menu-icon fa fa-users', '1', '1', '', '1', '13', '');
INSERT INTO `qw_auth_rule` VALUES ('14', '13', 'Member/index', '用户管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '14', '');
INSERT INTO `qw_auth_rule` VALUES ('15', '13', 'Member/add', '新增用户', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '15', '');
INSERT INTO `qw_auth_rule` VALUES ('16', '13', 'Member/edit', '编辑用户', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '16', '');
INSERT INTO `qw_auth_rule` VALUES ('17', '13', 'Member/update', '保存用户', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '17', '');
INSERT INTO `qw_auth_rule` VALUES ('18', '13', 'Member/del', '删除用户', '', '1', '1', '', '0', '18', '');
INSERT INTO `qw_auth_rule` VALUES ('19', '13', 'Group/index', '用户组管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '19', '');
INSERT INTO `qw_auth_rule` VALUES ('20', '13', 'Group/add', '新增用户组', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '20', '');
INSERT INTO `qw_auth_rule` VALUES ('21', '13', 'Group/edit', '编辑用户组', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '21', '');
INSERT INTO `qw_auth_rule` VALUES ('22', '13', 'Group/update', '保存用户组', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '22', '');
INSERT INTO `qw_auth_rule` VALUES ('23', '13', 'Group/del', '删除用户组', '', '1', '1', '', '0', '23', '');
INSERT INTO `qw_auth_rule` VALUES ('24', '0', '', '网站内容', 'menu-icon fa fa-desktop', '1', '1', '', '1', '24', '');
INSERT INTO `qw_auth_rule` VALUES ('25', '24', 'Article/index', '文章管理', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '25', '网站虽然重要，身体更重要，出去走走吧。');
INSERT INTO `qw_auth_rule` VALUES ('26', '24', 'Article/add', '新增文章', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '26', '');
INSERT INTO `qw_auth_rule` VALUES ('27', '24', 'Article/edit', '编辑文章', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '27', '');
INSERT INTO `qw_auth_rule` VALUES ('29', '24', 'Article/update', '保存文章', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '29', '');
INSERT INTO `qw_auth_rule` VALUES ('30', '24', 'Article/del', '删除文章', '', '1', '1', '', '0', '30', '');
INSERT INTO `qw_auth_rule` VALUES ('31', '2', 'Category/index', '导航管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '31', '');
INSERT INTO `qw_auth_rule` VALUES ('32', '31', 'Category/add', '新增导航', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '32', '');
INSERT INTO `qw_auth_rule` VALUES ('33', '31', 'Category/edit', '编辑导航', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '33', '');
INSERT INTO `qw_auth_rule` VALUES ('34', '24', 'Category/update', '保存导航', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '34', '');
INSERT INTO `qw_auth_rule` VALUES ('36', '24', 'Category/del', '删除导航', '', '1', '1', '', '0', '36', '');
INSERT INTO `qw_auth_rule` VALUES ('37', '0', '', '其它功能', 'menu-icon fa fa-legal', '1', '1', '', '0', '37', '');
INSERT INTO `qw_auth_rule` VALUES ('38', '37', 'Link/index', '友情链接', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '38', '');
INSERT INTO `qw_auth_rule` VALUES ('39', '38', 'Link/add', '增加链接', '', '1', '1', '', '0', '39', '');
INSERT INTO `qw_auth_rule` VALUES ('40', '38', 'Link/edit', '编辑链接', '', '1', '1', '', '0', '40', '');
INSERT INTO `qw_auth_rule` VALUES ('41', '37', 'Link/update', '保存链接', '', '1', '1', '', '0', '41', '');
INSERT INTO `qw_auth_rule` VALUES ('42', '37', 'Link/del', '删除链接', '', '1', '1', '', '0', '42', '');
INSERT INTO `qw_auth_rule` VALUES ('43', '37', 'Flash/index', '焦点图', 'menu-icon fa fa-desktop', '1', '1', '', '0', '43', '');
INSERT INTO `qw_auth_rule` VALUES ('44', '37', 'Flash/add', '新增焦点图', '', '1', '1', '', '0', '44', '');
INSERT INTO `qw_auth_rule` VALUES ('45', '37', 'Flash/update', '保存焦点图', '', '1', '1', '', '0', '45', '');
INSERT INTO `qw_auth_rule` VALUES ('46', '37', 'Flash/edit', '编辑焦点图', '', '1', '1', '', '0', '46', '');
INSERT INTO `qw_auth_rule` VALUES ('47', '37', 'Flash/del', '删除焦点图', '', '1', '1', '', '0', '47', '');
INSERT INTO `qw_auth_rule` VALUES ('48', '0', 'Personal/index', '个人中心', 'menu-icon fa fa-user', '1', '1', '', '1', '48', '');
INSERT INTO `qw_auth_rule` VALUES ('49', '48', 'Personal/profile', '个人资料', 'menu-icon fa fa-user', '1', '1', '', '1', '49', '');
INSERT INTO `qw_auth_rule` VALUES ('50', '48', 'Logout/index', '退出', '', '1', '1', '', '1', '50', '');
INSERT INTO `qw_auth_rule` VALUES ('51', '9', 'Database/export', '备份', '', '1', '1', '', '0', '51', '');
INSERT INTO `qw_auth_rule` VALUES ('52', '9', 'Database/optimize', '数据优化', '', '1', '1', '', '0', '52', '');
INSERT INTO `qw_auth_rule` VALUES ('53', '9', 'Database/repair', '修复表', '', '1', '1', '', '0', '53', '');
INSERT INTO `qw_auth_rule` VALUES ('54', '11', 'Update/updating', '升级安装', '', '1', '1', '', '0', '54', '');
INSERT INTO `qw_auth_rule` VALUES ('55', '48', 'Personal/update', '资料保存', '', '1', '1', '', '0', '55', '');
INSERT INTO `qw_auth_rule` VALUES ('56', '3', 'Setting/update', '设置保存', '', '1', '1', '', '0', '56', '');
INSERT INTO `qw_auth_rule` VALUES ('57', '9', 'Database/del', '备份删除', '', '1', '1', '', '0', '57', '');
INSERT INTO `qw_auth_rule` VALUES ('58', '2', 'variable/index', '自定义变量', '', '1', '1', '', '1', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('59', '58', 'variable/add', '新增变量', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('60', '58', 'variable/edit', '编辑变量', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('61', '58', 'variable/update', '保存变量', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('62', '58', 'variable/del', '删除变量', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('63', '37', 'Facebook/add', '用户反馈', '', '1', '1', '', '0', '63', '');
INSERT INTO `qw_auth_rule` VALUES ('68', '24', 'Product/index', '设备展示', '', '1', '1', '', '1', '4', '');
INSERT INTO `qw_auth_rule` VALUES ('72', '68', 'Product/add', '新增设备', '', '1', '1', '', '0', '1', '');
INSERT INTO `qw_auth_rule` VALUES ('73', '24', 'Latest/index', '来乐价值观', '', '1', '1', '', '1', '8', '');
INSERT INTO `qw_auth_rule` VALUES ('74', '73', 'Latest/add', '新增价值观', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('75', '24', 'About/index', '关于来乐', '', '1', '1', '', '1', '9', '');
INSERT INTO `qw_auth_rule` VALUES ('76', '75', 'About/add', '新增关于', '', '1', '1', '', '0', '1', '');
INSERT INTO `qw_auth_rule` VALUES ('77', '24', 'Solution/index', '解决方案', '', '1', '1', '', '1', '6', '');
INSERT INTO `qw_auth_rule` VALUES ('78', '77', 'Solution/add', '新增解决', '', '1', '1', '', '0', '1', '');
INSERT INTO `qw_auth_rule` VALUES ('79', '24', 'Position/index', '点位分布', '', '1', '1', '', '1', '7', '');
INSERT INTO `qw_auth_rule` VALUES ('80', '79', 'Position/add', '新增点位', '1', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('81', '24', 'Message/index', '留言管理', '', '1', '1', '', '0', '12', '');
INSERT INTO `qw_auth_rule` VALUES ('82', '24', 'Activity/index', '最新活动', '', '1', '1', '', '1', '10', '');
INSERT INTO `qw_auth_rule` VALUES ('83', '82', 'Activity/add', '新增活动', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('84', '24', 'Cooperation/index', '合作方案', '', '1', '1', '', '1', '11', '');
INSERT INTO `qw_auth_rule` VALUES ('85', '84', 'Cooperation/add', '新增合作', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('86', '24', 'Video/index', '音视频管理', '', '1', '1', '', '0', '11', '');
INSERT INTO `qw_auth_rule` VALUES ('87', '86', 'Video/add', '新增视频', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('88', '68', 'Product/edit', '编辑设备', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('89', '73', 'Latest/edit', '编辑价值观', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('90', '77', 'Solution/edit', '编辑解决', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('91', '75', 'About/edit', '编辑关于', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('92', '82', 'Activity/edit', '编辑活动', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('93', '84', 'Cooperation/edit', '编辑合作', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('94', '86', 'Video/edit', '编辑视频', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('95', '38', 'Link/edit', '编辑链接', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('96', '24', 'ProductType/index', '产品分类', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('97', '96', 'ProductType/add', '新增分类', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('98', '96', 'ProductType/edit', '编辑分类', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('99', '3', 'Setting/update', '更新网站设置', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('100', '31', 'Category/update', '更新导航', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('101', '68', 'Product/update', '更新设置', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('102', '77', 'Solution/update', '更新解决', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('103', '31', 'Category/del', '删除导航', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('104', '68', 'Product/del', '删除设备', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('105', '77', 'Solution/del', '删除解决', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('106', '73', 'Latest/update', '更新价值观', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('107', '73', 'Latest/del', '删除价值观', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('108', '75', 'About/update', '更新关于', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('109', '75', 'About/del', '删除关于', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('110', '82', 'Activity/update', '更新活动', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('111', '82', 'Activity/del', '删除活动', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('112', '84', 'Cooperation/update', '更新合作', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('113', '84', 'Cooperation/del', '删除合作', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('114', '86', 'Video/update', '更新视频', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('115', '86', 'Video/del', '删除视频', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('116', '81', 'Message/del', '删除留言', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('117', '79', 'Position/edit', '编辑点位', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('118', '79', 'Position/update', '更新点位', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('119', '79', 'Position/del', '删除点位', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('120', '2', 'cache/clear', '清除缓存', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('121', '24', 'Introduce/index', '首页', '', '1', '1', '', '1', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('122', '121', 'Introduce/add', '新增首页', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('123', '121', 'Introduce/edit', '编辑首页', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('124', '121', 'Introduce/del', '删除首页', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('125', '121', 'Introduce/update', '更新首页', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('126', '24', 'Banner/index', 'banner管理', '', '1', '1', '', '1', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('127', '126', 'Banner/add', '新增banner', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('128', '126', 'Banner/edit', '编辑banner', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('129', '126', 'Banner/update', '更新banner', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('130', '126', 'Banner/del', '删除banner', '', '1', '1', '', '0', '0', '');

-- ----------------------------
-- Table structure for qw_banner
-- ----------------------------
DROP TABLE IF EXISTS `qw_banner`;
CREATE TABLE `qw_banner` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(9) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `t` int(10) NOT NULL,
  `is_position` tinyint(1) NOT NULL DEFAULT '0' COMMENT '客户端 0：pc端 1:移动端',
  `o` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_banner
-- ----------------------------
INSERT INTO `qw_banner` VALUES ('26', '57', '/Public/attached/2017/11/12/5a0808ae741d5.jpg', '1510475953', '0', '0');
INSERT INTO `qw_banner` VALUES ('27', '45', '/Public/attached/2017/11/12/5a0808cd7259a.jpg', '1510475985', '0', '1');
INSERT INTO `qw_banner` VALUES ('28', '37', '/Public/attached/2017/11/12/5a084d6f34fec.jpg', '1510493553', '0', '0');
INSERT INTO `qw_banner` VALUES ('29', '49', '/Public/attached/2017/11/12/5a08519165f3a.jpg', '1510494611', '0', '2');
INSERT INTO `qw_banner` VALUES ('30', '72', '/Public/attached/2017/11/12/5a0855b750674.jpg', '1510495704', '0', '1');

-- ----------------------------
-- Table structure for qw_category
-- ----------------------------
DROP TABLE IF EXISTS `qw_category`;
CREATE TABLE `qw_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '0正常，1单页，2外链',
  `pid` int(11) NOT NULL COMMENT '父ID',
  `name` varchar(100) NOT NULL COMMENT '分类名称',
  `dir` varchar(100) NOT NULL COMMENT '目录名称',
  `seotitle` varchar(200) DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `cattemplate` varchar(100) NOT NULL,
  `contemplate` varchar(100) NOT NULL,
  `o` int(11) NOT NULL COMMENT '排序',
  `link` varchar(32) NOT NULL DEFAULT '',
  `image_path` varchar(200) NOT NULL DEFAULT '',
  `position` tinyint(1) DEFAULT '1' COMMENT '1:顶部; 2:底部； 3：全部',
  PRIMARY KEY (`id`),
  KEY `fsid` (`pid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_category
-- ----------------------------
INSERT INTO `qw_category` VALUES ('36', '1', '0', '首页', '', '首页', '首页', '首页', '', '', '', '', '0', 'Index/index', '', '1');
INSERT INTO `qw_category` VALUES ('37', '0', '0', '设置展示', 'Product', '', '', '', '', '', '', '', '4', 'Product/index', '', '3');
INSERT INTO `qw_category` VALUES ('38', '0', '37', '无人售货机', 'Product', '', '', '谜兰时黛以其流行的设计、精巧的做工、舒适的感觉、先进的面料，赢得了全世界女性的青睐。', '', '', '', '', '1', 'Product/index', '/Public/attached/2017/10/16/59e415338a067.jpg', '1');
INSERT INTO `qw_category` VALUES ('39', '0', '37', '体验店', '', '', '', '曼妙的弧线，自然的性感，高雅的气质，你能一眼恋上谜兰时黛为身体打造的第二层肌肤，轻巧、舒适、透气。精湛做工、贴臀剪裁，具良好的提臀效果，完美勾勒浑圆臀线，将性感演绎到极致。', '', '', '', '', '2', 'Product/index', '/Public/attached/2017/10/16/59e4154c0293c.jpg', '1');
INSERT INTO `qw_category` VALUES ('40', '0', '37', '饮料机', '', '', '', '无论是连裤袜，长筒袜，吊袜带还是半筒袜，谜兰时黛丝袜凭借其独一无二的制版，最富有浪漫色彩的款式，紧跟潮流的时尚花形设计，精挑细选的原材料和现代化的加工工艺，征服了所有爱美女人的心。', '', '', '', '', '3', 'Product/index', '/Public/attached/2017/10/08/59da2c7863d0e.jpg', '1');
INSERT INTO `qw_category` VALUES ('41', '0', '37', '综合食品柜', '', '', '', '谜兰时黛家居系列选用最优质的原料，健康天然的用料标准，加以精良的工艺做工，倍显质地轻柔，手感舒爽富有弹性，穿着飘逸、舒适，无论在室内还是室外都令人心驰神往。', '', '', '', '', '4', 'Product/index', '/Public/attached/2017/10/16/59e413c0ad67f.jpg', '1');
INSERT INTO `qw_category` VALUES ('42', '0', '37', '生鲜机', '', '', '', '谜兰时黛保暖内衣精选天然生态健康面料，柔软保暖亲肤，在手感，弹性，柔软性，耐穿性等方面具有绝对优势，产品拒绝二次陈年棉，不刺激、舒适，与人体肌肤极具亲和性。', '', '', '', '', '6', 'Product/index', '/Public/attached/2017/10/08/59da2c6c36e71.jpg', '1');
INSERT INTO `qw_category` VALUES ('43', '0', '37', '橙汁机', '', '', '', '谜兰时黛泳衣系列率先开启时装与泳装的灵感跨界时代。擅长色彩、不同质感面料的工艺设计，注重精致的廓形剪裁和线条曲线，融入时装的设计细节，延续并颠覆泳装设计的时尚审美。谜兰时黛更是一种时尚的生活态度。', '', '', '', '', '7', 'Product/index', '/Public/attached/2017/10/08/59da2c4abc628.jpg', '1');
INSERT INTO `qw_category` VALUES ('45', '0', '0', '解决方案', 'Solution', '解决方案', '解决方案', '解决方案', '', '', '', '', '3', 'Solution/index', '', '3');
INSERT INTO `qw_category` VALUES ('46', '0', '45', '社区解决方案', '', '社区解决方案', '社区解决方案', '社区解决方案', '', '', '', '', '1', 'Solution/index', '', '1');
INSERT INTO `qw_category` VALUES ('47', '0', '45', '机场解决方案', '', '', '', '', '', '', '', '', '2', 'Solution/index', '', '1');
INSERT INTO `qw_category` VALUES ('48', '1', '0', '点位分布', 'Position', '点位分布', '点位分布', '点位分布', '', '', '', '', '2', 'Position/index', '', '1');
INSERT INTO `qw_category` VALUES ('49', '0', '0', '来乐价值观', 'Latest', '', '', '', '', '', '', '', '10', 'Latest/index', '', '2');
INSERT INTO `qw_category` VALUES ('50', '0', '49', '环境责任', '', '企业新闻', '企业新闻', '企业新闻', '', '', '', '', '1', 'Latest/index', '', '1');
INSERT INTO `qw_category` VALUES ('51', '0', '49', '隐私', '', '潮流趋势', '潮流趋势', '潮流趋势', '', '', '', '', '2', 'Latest/index', '', '1');
INSERT INTO `qw_category` VALUES ('52', '0', '0', '关于来乐', 'About', '', '', '', '', '', '', '', '10', 'About/index', '', '2');
INSERT INTO `qw_category` VALUES ('53', '0', '52', '企业简介', '', '', '', '', '', '', '', '', '1', 'About/index', '/Public/attached/2017/10/16/59e417c2b6b9e.jpg', '1');
INSERT INTO `qw_category` VALUES ('54', '0', '52', '发展历程', '', '', '', '', '', '', '', '', '3', 'About/index', '', '1');
INSERT INTO `qw_category` VALUES ('55', '0', '52', '企业文化', '', null, '', '', '', '', '', '', '2', 'About/index', '', '1');
INSERT INTO `qw_category` VALUES ('57', '1', '0', '最新活动', 'Activity', '', '', '', '', '', '', '', '1', 'Activity/index', '', '1');
INSERT INTO `qw_category` VALUES ('58', '0', '52', '工作机会', '', '', '', '', '', '', '', '', '5', 'About/index', '', '1');
INSERT INTO `qw_category` VALUES ('77', '0', '37', '便利柜', '', '', '', '', '', '', '', '', '5', 'Product/index', '', '1');
INSERT INTO `qw_category` VALUES ('60', '0', '37', '椰汁机', '', '', '', '生活在这个灯红酒绿的城市，多少人插肩而过，每天活的都是不一样的自己。怎么能让简单的自己在闲暇之余释放自己之美？如何才能让你那个理想的他心目中留下深刻印象之美？答案就在谜兰时黛！', '', '', '', '', '8', 'Product/index', '/Public/attached/2017/10/08/59da2c849d790.jpg', '1');
INSERT INTO `qw_category` VALUES ('62', '0', '45', '地铁解决方案', '', '', '', '', '', '', '', '', '3', 'Solution/index', '', '1');
INSERT INTO `qw_category` VALUES ('63', '0', '45', '商场解决方案', '', '', '', '', '', '', '', '', '4', 'Solution/index', '', '1');
INSERT INTO `qw_category` VALUES ('64', '0', '45', '物业解决方案', '', '', '', '', '', '', '', '', '5', 'Solution/index', '', '1');
INSERT INTO `qw_category` VALUES ('65', '0', '45', '景区解决方案', '', '', '', '', '', '', '', '', '6', 'Solution/index', '', '1');
INSERT INTO `qw_category` VALUES ('66', '0', '45', '火车站解决方案', '', '', '', '', '', '', '', '', '7', 'Solution/index', '', '1');
INSERT INTO `qw_category` VALUES ('67', '0', '45', '游乐场解决方案', '', '', '', '', '', '', '', '', '8', 'Solution/index', '', '1');
INSERT INTO `qw_category` VALUES ('68', '0', '52', '来乐管理层', '', '', '', '', '', '', '', '', '4', 'About/index', '', '1');
INSERT INTO `qw_category` VALUES ('69', '0', '52', '合作商声明', '', '', '', '', '', '', '', '', '6', 'About/index', '', '1');
INSERT INTO `qw_category` VALUES ('70', '0', '49', '服务商责任', '', '', '', '', '', '', '', '', '3', 'Latest/Index', '', '1');
INSERT INTO `qw_category` VALUES ('71', '0', '49', '供应商责任', '', '', '', '', '', '', '', '', '5', 'Latest/Index', '', '1');
INSERT INTO `qw_category` VALUES ('72', '0', '0', '合作方案', 'Cooperation', '', '', '', '', '', '', '', '5', 'Cooperation/Index', '', '1');
INSERT INTO `qw_category` VALUES ('73', '0', '0', '注册/登录', 'Login', '', '', '', '', '', '', '', '7', 'Login/Index', '', '1');
INSERT INTO `qw_category` VALUES ('74', '0', '0', '帐户', 'Account', '', '', '', '', '', '', '', '8', 'Account/Index', '', '2');
INSERT INTO `qw_category` VALUES ('75', '0', '74', '内部帐户', '', '', '', '', '', '', '', '', '1', 'Account/Index', '', '1');
INSERT INTO `qw_category` VALUES ('76', '0', '74', '消费者帐户', '', '', '', '', '', '', '', '', '2', 'Account/Index', '', '1');

-- ----------------------------
-- Table structure for qw_cooperation
-- ----------------------------
DROP TABLE IF EXISTS `qw_cooperation`;
CREATE TABLE `qw_cooperation` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(200) NOT NULL COMMENT '左侧图',
  `t` int(10) NOT NULL,
  `seotitle` varchar(255) DEFAULT '',
  `keywords` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `content` text,
  `title` varchar(100) DEFAULT NULL COMMENT '合作方式',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_cooperation
-- ----------------------------
INSERT INTO `qw_cooperation` VALUES ('1', '/Public/attached/2017/11/12/5a07f7486e50a.jpg', '1510496463', '联营', '联营', '联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营', '联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营联营<img src=\"/Public/attached/image/20171112/20171112142031_81430.png\" alt=\"\" />', '联营');
INSERT INTO `qw_cooperation` VALUES ('2', '/Public/attached/2017/11/12/5a07fa5021800.jpg', '1510496242', '租凭', '租凭', '租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭', '\r\n	租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭租凭\r\n\r\n\r\n	\r\n', '租凭');

-- ----------------------------
-- Table structure for qw_devlog
-- ----------------------------
DROP TABLE IF EXISTS `qw_devlog`;
CREATE TABLE `qw_devlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v` varchar(225) NOT NULL COMMENT '版本号',
  `y` int(4) NOT NULL COMMENT '年分',
  `t` int(10) NOT NULL COMMENT '发布日期',
  `log` text NOT NULL COMMENT '更新日志',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_devlog
-- ----------------------------
INSERT INTO `qw_devlog` VALUES ('1', '1.0.0', '2016', '1440259200', 'QWADMIN第一个版本发布。');
INSERT INTO `qw_devlog` VALUES ('2', '1.0.1', '2016', '1440259200', '修改cookie过于简单的安全风险。');

-- ----------------------------
-- Table structure for qw_flash
-- ----------------------------
DROP TABLE IF EXISTS `qw_flash`;
CREATE TABLE `qw_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `o` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `o` (`o`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_flash
-- ----------------------------

-- ----------------------------
-- Table structure for qw_introduce
-- ----------------------------
DROP TABLE IF EXISTS `qw_introduce`;
CREATE TABLE `qw_introduce` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(200) NOT NULL,
  `t` int(10) DEFAULT NULL,
  `sid` int(9) DEFAULT NULL COMMENT '导航id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_introduce
-- ----------------------------
INSERT INTO `qw_introduce` VALUES ('32', '/Public/attached/2017/11/12/5a07c47f5aa1e.jpg', '1510458498', '37');
INSERT INTO `qw_introduce` VALUES ('34', '/Public/attached/2017/11/12/5a0836ce8ec2d.jpg', '1510487803', '72');

-- ----------------------------
-- Table structure for qw_latest
-- ----------------------------
DROP TABLE IF EXISTS `qw_latest`;
CREATE TABLE `qw_latest` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(9) NOT NULL,
  `title` varchar(32) NOT NULL DEFAULT '',
  `image_path` varchar(200) NOT NULL DEFAULT '',
  `content` text,
  `t` int(10) NOT NULL,
  `look_count` int(11) NOT NULL DEFAULT '0',
  `seotitle` varchar(255) DEFAULT '',
  `keywords` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_latest
-- ----------------------------
INSERT INTO `qw_latest` VALUES ('76', '50', '', '', '<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:&quot;\">\r\n	，更以严格的政策来管理所有数据的处理方式。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:&quot;\">\r\n	安全和隐私是我们设计所有硬件、软件与服务的基础，这其中不仅包括 iCloud，还有 Apple Pay 等新服务。同时，我们还在持续不断地改进与完善。我们鼓励所有用户使用两步式验证，这不仅能保护你的 Apple ID 帐户信息，还能保护你在 iCloud 上存储与更新的所有数据。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:&quot;\">\r\n	我们坚信，那些关乎个人信息的事，都应事先如实告知于你，并在你与我们共享它们之前征得你的许可。如果你稍后改变了主意，我们也能让你轻松停止与我们的共享。每款 Apple 产品的设计均遵循这些准则。而当我们请求使用你的数据时，其目的是为你提供更好的用户体验。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:&quot;\">\r\n	我们发布这个网站，是为了说明我们如何处理你的个人信息，我们会收集和不会收集哪些信息，以及其中的原因。我们将确保让你能至少每年一次于本网站获得有关 Apple 隐私政策的更新，并及时获悉我们政策的重大变化。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:&quot;\">\r\n	几年以前，使用互联网服务的用户开始意识到，当一项在线服务免费时，你就不再是消费者，反而成为被消费的对象。但在 Apple，我们坚信出色的用户体验，不应以牺牲你的隐私为代价。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:&quot;\">\r\n	我们的商业模式非常直接：就是销售出色的产品。我们不会根据你的电子邮件内容或网页浏览习惯来建立档案，然后出售给广告商。我们不会用你存放在 iPhone 或 iCloud 上的信息来赚钱。而且我们不会读取你的电子邮件或信息，从中获取资料来向你推销相关商品。我们软件和服务的设计初衷，是让我们的设备更为出色。一切就这么简单。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:&quot;\">\r\n	我们只有很小一部分业务是服务于广告商的，那就是 iAd。我们之所以打造广告宣传网络，是因为某些 app 开发者需要依靠这种商业模式，而我们希望为其提供与 iTunes&nbsp;Radio 免费服务相同的支持。iAd 遵守与其他所有 Apple 产品完全相同的隐私政策。它不会从健康 app、HomeKit、地图&nbsp;app、Siri、iMessage、通话历史记录，或通讯录及邮件等任何 iCloud 服务中获取数据，而且你随时可以全部关闭此功能。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:&quot;\">\r\n	最后，我想要彻底澄清一点：我们从未与任何国家的任何政府机构就任何产品或服务建立过所谓的 \"后门\"。我们也从未开放过我们的服务器，并且永远不会。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:&quot;\">\r\n	我们对保护个人隐私的承诺，源于对消费者深深的尊重。我们知道，获得你的信任并非易事。也正因如此，我们才一如既往地全力以赴，来赢得并保持这份信任。\r\n</p>', '1510473145', '0', '环境责任', '环境责任', '环境责任环境责任环境责任环境责任环境责任环境责任环境责任环境责任环境责任环境责任环境责任环境责任环境责任环境责任环境责任环境责任环境责任环境责任环境责任环境责任');
INSERT INTO `qw_latest` VALUES ('77', '51', '', '', '<p style=\"text-align:justify;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:justify;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:;\">\r\n	你的信任对我们而言意味着一切。正因如此，我们尊重你的隐私，并使用强大的加密技术来保护它们，更以严格的政策来管理所有数据的处理方式。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:;\">\r\n	安全和隐私是我们设计所有硬件、软件与服务的基础，这其中不仅包括 iCloud，还有 Apple Pay 等新服务。同时，我们还在持续不断地改进与完善。我们鼓励所有用户使用两步式验证，这不仅能保护你的 Apple ID 帐户信息，还能保护你在 iCloud 上存储与更新的所有数据。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:;\">\r\n	我们坚信，那些关乎个人信息的事，都应事先如实告知于你，并在你与我们共享它们之前征得你的许可。如果你稍后改变了主意，我们也能让你轻松停止与我们的共享。每款 Apple 产品的设计均遵循这些准则。而当我们请求使用你的数据时，其目的是为你提供更好的用户体验。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:;\">\r\n	我们发布这个网站，是为了说明我们如何处理你的个人信息，我们会收集和不会收集哪些信息，以及其中的原因。我们将确保让你能至少每年一次于本网站获得有关 Apple 隐私政策的更新，并及时获悉我们政策的重大变化。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:;\">\r\n	几年以前，使用互联网服务的用户开始意识到，当一项在线服务免费时，你就不再是消费者，反而成为被消费的对象。但在 Apple，我们坚信出色的用户体验，不应以牺牲你的隐私为代价。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:;\">\r\n	我们的商业模式非常直接：就是销售出色的产品。我们不会根据你的电子邮件内容或网页浏览习惯来建立档案，然后出售给广告商。我们不会用你存放在 iPhone 或 iCloud 上的信息来赚钱。而且我们不会读取你的电子邮件或信息，从中获取资料来向你推销相关商品。我们软件和服务的设计初衷，是让我们的设备更为出色。一切就这么简单。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:;\">\r\n	我们只有很小一部分业务是服务于广告商的，那就是 iAd。我们之所以打造广告宣传网络，是因为某些 app 开发者需要依靠这种商业模式，而我们希望为其提供与 iTunes&nbsp;Radio 免费服务相同的支持。iAd 遵守与其他所有 Apple 产品完全相同的隐私政策。它不会从健康 app、HomeKit、地图&nbsp;app、Siri、iMessage、通话历史记录，或通讯录及邮件等任何 iCloud 服务中获取数据，而且你随时可以全部关闭此功能。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:;\">\r\n	最后，我想要彻底澄清一点：我们从未与任何国家的任何政府机构就任何产品或服务建立过所谓的 \"后门\"。我们也从未开放过我们的服务器，并且永远不会。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:;\">\r\n	我们对保护个人隐私的承诺，源于对消费者深深的尊重。我们知道，获得你的信任并非易事。也正因如此，我们才一如既往地全力以赴，来赢得并保持这份信任。\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:;\">\r\n	<strong>Tim Cook &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>\r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;color:#333333;background-color:#EEEEEE;font-size:16px;font-family:;\">\r\n	<strong><br />\r\n</strong>\r\n</p>', '1510495140', '0', '隐私', '隐私', '隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私隐私');
INSERT INTO `qw_latest` VALUES ('78', '70', '', '', '社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案', '1510495191', '0', '社区解决方案', '社区解决方案', '社区解决方案社区解决方案社区解决方案社区解决方案');

-- ----------------------------
-- Table structure for qw_links
-- ----------------------------
DROP TABLE IF EXISTS `qw_links`;
CREATE TABLE `qw_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `o` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `o` (`o`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_links
-- ----------------------------

-- ----------------------------
-- Table structure for qw_log
-- ----------------------------
DROP TABLE IF EXISTS `qw_log`;
CREATE TABLE `qw_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `t` int(10) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `log` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_log
-- ----------------------------
INSERT INTO `qw_log` VALUES ('1', 'admin', '1506075358', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('2', 'admin', '1506075681', '127.0.0.1', '新增菜单，名称：产品列表');
INSERT INTO `qw_log` VALUES ('3', 'admin', '1506076031', '127.0.0.1', '编辑菜单，ID：66');
INSERT INTO `qw_log` VALUES ('4', 'admin', '1506076060', '127.0.0.1', '新增菜单，名称：产品列表');
INSERT INTO `qw_log` VALUES ('5', 'admin', '1506076473', '127.0.0.1', '删除菜单ID：66');
INSERT INTO `qw_log` VALUES ('6', 'admin', '1506076607', '127.0.0.1', '新增菜单，名称：产品管理');
INSERT INTO `qw_log` VALUES ('7', 'admin', '1506076653', '127.0.0.1', '编辑菜单，ID：26');
INSERT INTO `qw_log` VALUES ('8', 'admin', '1506076853', '127.0.0.1', '新增菜单，名称：产品列表');
INSERT INTO `qw_log` VALUES ('9', 'admin', '1506077489', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('10', 'admin', '1506077737', '127.0.0.1', '新增菜单，名称：产品管理');
INSERT INTO `qw_log` VALUES ('11', 'admin', '1506077801', '127.0.0.1', '编辑菜单，ID：70');
INSERT INTO `qw_log` VALUES ('12', 'admin', '1506077824', '127.0.0.1', '新增菜单，名称：产品列表');
INSERT INTO `qw_log` VALUES ('13', 'admin', '1506078009', '127.0.0.1', '删除菜单ID：71');
INSERT INTO `qw_log` VALUES ('14', 'admin', '1506078019', '127.0.0.1', '删除菜单ID：70');
INSERT INTO `qw_log` VALUES ('15', 'admin', '1506086746', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('16', 'admin', '1506087115', '127.0.0.1', '编辑菜单，ID：26');
INSERT INTO `qw_log` VALUES ('17', 'admin', '1506087364', '127.0.0.1', '编辑菜单，ID：31');
INSERT INTO `qw_log` VALUES ('18', 'admin', '1506087535', '127.0.0.1', '新增分类，ID：36，名称：首页');
INSERT INTO `qw_log` VALUES ('19', 'admin', '1506087573', '127.0.0.1', '新增分类，ID：37，名称：产品中心');
INSERT INTO `qw_log` VALUES ('20', 'admin', '1506087634', '127.0.0.1', '新增分类，ID：38，名称：内衣');
INSERT INTO `qw_log` VALUES ('21', 'admin', '1506087785', '127.0.0.1', '新增分类，ID：45，名称：门店展示');
INSERT INTO `qw_log` VALUES ('22', 'admin', '1506087955', '127.0.0.1', '新增分类，ID：48，名称：招商加盟');
INSERT INTO `qw_log` VALUES ('23', 'admin', '1506087978', '127.0.0.1', '新增分类，ID：49，名称：新闻动态');
INSERT INTO `qw_log` VALUES ('24', 'admin', '1506088052', '127.0.0.1', '新增分类，ID：52，名称：关于我们');
INSERT INTO `qw_log` VALUES ('25', 'admin', '1506088145', '127.0.0.1', '新增分类，ID：57，名称：联系我们');
INSERT INTO `qw_log` VALUES ('26', 'admin', '1506089517', '127.0.0.1', '新增菜单，名称：新增产品');
INSERT INTO `qw_log` VALUES ('27', 'admin', '1506089588', '127.0.0.1', '编辑菜单，ID：72');
INSERT INTO `qw_log` VALUES ('28', 'admin', '1506089630', '127.0.0.1', '编辑菜单，ID：72');
INSERT INTO `qw_log` VALUES ('29', 'admin', '1506092428', '127.0.0.1', '新增菜单，名称：新闻管理');
INSERT INTO `qw_log` VALUES ('30', 'admin', '1506092571', '127.0.0.1', '新增菜单，名称：新增新闻');
INSERT INTO `qw_log` VALUES ('31', 'admin', '1506093670', '127.0.0.1', '新增菜单，名称：关于我们');
INSERT INTO `qw_log` VALUES ('32', 'admin', '1506093693', '127.0.0.1', '编辑菜单，ID：75');
INSERT INTO `qw_log` VALUES ('33', 'admin', '1506093794', '127.0.0.1', '新增菜单，名称：新增');
INSERT INTO `qw_log` VALUES ('34', 'admin', '1506095079', '127.0.0.1', '新增菜单，名称：门店展示');
INSERT INTO `qw_log` VALUES ('35', 'admin', '1506095119', '127.0.0.1', '新增菜单，名称：新增');
INSERT INTO `qw_log` VALUES ('36', 'admin', '1506095167', '127.0.0.1', '新增菜单，名称：招商加盟');
INSERT INTO `qw_log` VALUES ('37', 'admin', '1506095185', '127.0.0.1', '新增菜单，名称：新增');
INSERT INTO `qw_log` VALUES ('38', 'admin', '1506095268', '127.0.0.1', '新增菜单，名称：留言管理');
INSERT INTO `qw_log` VALUES ('39', 'admin', '1506095300', '127.0.0.1', '新增菜单，名称：联系我们');
INSERT INTO `qw_log` VALUES ('40', 'admin', '1506097145', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('41', 'admin', '1506098260', '127.0.0.1', '新增菜单，名称：新增');
INSERT INTO `qw_log` VALUES ('42', 'admin', '1506130395', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('43', 'admin', '1506130697', '127.0.0.1', '文章分类修改，ID：37，名称：产品中心');
INSERT INTO `qw_log` VALUES ('44', 'admin', '1506130786', '127.0.0.1', '文章分类修改，ID：45，名称：门店展示');
INSERT INTO `qw_log` VALUES ('45', 'admin', '1506130809', '127.0.0.1', '文章分类修改，ID：48，名称：招商加盟');
INSERT INTO `qw_log` VALUES ('46', 'admin', '1506130824', '127.0.0.1', '文章分类修改，ID：49，名称：新闻动态');
INSERT INTO `qw_log` VALUES ('47', 'admin', '1506130838', '127.0.0.1', '文章分类修改，ID：52，名称：关于我们');
INSERT INTO `qw_log` VALUES ('48', 'admin', '1506130852', '127.0.0.1', '文章分类修改，ID：57，名称：联系我们');
INSERT INTO `qw_log` VALUES ('49', 'admin', '1506135543', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('50', 'admin', '1506137020', '127.0.0.1', '分类修改排序，ID：36');
INSERT INTO `qw_log` VALUES ('51', 'admin', '1506137021', '127.0.0.1', '分类修改排序，ID：36');
INSERT INTO `qw_log` VALUES ('52', 'admin', '1506137025', '127.0.0.1', '分类修改排序，ID：36');
INSERT INTO `qw_log` VALUES ('53', 'admin', '1506137027', '127.0.0.1', '分类修改排序，ID：37');
INSERT INTO `qw_log` VALUES ('54', 'admin', '1506137676', '127.0.0.1', '新增菜单，名称：banner管理');
INSERT INTO `qw_log` VALUES ('55', 'admin', '1506137696', '127.0.0.1', '编辑菜单，ID：84');
INSERT INTO `qw_log` VALUES ('56', 'admin', '1506137948', '127.0.0.1', '新增菜单，名称：新增banner');
INSERT INTO `qw_log` VALUES ('57', 'admin', '1506138081', '127.0.0.1', '分类修改排序，ID：36');
INSERT INTO `qw_log` VALUES ('58', 'admin', '1506138081', '127.0.0.1', '分类修改排序，ID：36');
INSERT INTO `qw_log` VALUES ('59', 'admin', '1506138083', '127.0.0.1', '分类修改排序，ID：36');
INSERT INTO `qw_log` VALUES ('60', 'admin', '1506145802', '127.0.0.1', '编辑菜单，ID：25');
INSERT INTO `qw_log` VALUES ('61', 'admin', '1506146134', '10.50.148.54', '登录成功。');
INSERT INTO `qw_log` VALUES ('62', 'admin', '1506146168', '10.50.149.41', '登录成功。');
INSERT INTO `qw_log` VALUES ('63', 'admin', '1506146202', '10.50.144.19', '登录成功。');
INSERT INTO `qw_log` VALUES ('64', 'admin', '1506146249', '10.50.144.19', '登录成功。');
INSERT INTO `qw_log` VALUES ('65', 'admin', '1506146298', '10.50.149.39', '登录失败。');
INSERT INTO `qw_log` VALUES ('66', 'admin', '1506146316', '10.50.143.19', '登录成功。');
INSERT INTO `qw_log` VALUES ('67', 'admin', '1506146395', '10.50.149.61', '登录成功。');
INSERT INTO `qw_log` VALUES ('68', 'admin', '1506146524', '10.50.149.13', '登录成功。');
INSERT INTO `qw_log` VALUES ('69', 'admin', '1506146561', '10.50.149.73', '登录成功。');
INSERT INTO `qw_log` VALUES ('70', 'admin', '1506146641', '10.50.149.12', '登录成功。');
INSERT INTO `qw_log` VALUES ('71', 'admin', '1506146687', '10.50.149.73', '登录成功。');
INSERT INTO `qw_log` VALUES ('72', 'admin', '1506146842', '10.50.148.61', '登录成功。');
INSERT INTO `qw_log` VALUES ('73', 'admin', '1506146865', '10.50.143.19', '登录成功。');
INSERT INTO `qw_log` VALUES ('74', 'admin', '1506147018', '10.50.148.56', '登录成功。');
INSERT INTO `qw_log` VALUES ('75', 'admin', '1506147048', '10.50.149.73', '登录成功。');
INSERT INTO `qw_log` VALUES ('76', 'admin', '1506147072', '10.50.150.61', '登录成功。');
INSERT INTO `qw_log` VALUES ('77', 'admin', '1506147356', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('78', 'admin', '1506147620', '10.50.149.13', '登录成功。');
INSERT INTO `qw_log` VALUES ('79', 'admin', '1506147868', '10.50.149.12', '登录成功。');
INSERT INTO `qw_log` VALUES ('80', 'admin', '1506148454', '10.50.144.19', '登录成功。');
INSERT INTO `qw_log` VALUES ('81', 'admin', '1506148492', '10.50.144.19', '登录成功。');
INSERT INTO `qw_log` VALUES ('82', 'admin', '1506148522', '10.50.148.60', '登录成功。');
INSERT INTO `qw_log` VALUES ('83', 'admin', '1506148549', '10.50.148.55', '登录成功。');
INSERT INTO `qw_log` VALUES ('84', 'admin', '1506181894', '10.50.149.41', '登录成功。');
INSERT INTO `qw_log` VALUES ('85', 'admin', '1506181929', '10.50.149.13', '登录成功。');
INSERT INTO `qw_log` VALUES ('86', 'admin', '1506218497', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('87', 'admin', '1506223030', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('88', 'admin', '1506250856', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('89', 'admin', '1506251679', '127.0.0.1', '新增菜单，名称：视频管理');
INSERT INTO `qw_log` VALUES ('90', 'admin', '1506251835', '127.0.0.1', '新增分类，ID：58，名称：联系我们');
INSERT INTO `qw_log` VALUES ('91', 'admin', '1506251872', '127.0.0.1', '分类修改排序，ID：58');
INSERT INTO `qw_log` VALUES ('92', 'admin', '1506254190', '127.0.0.1', '新增菜单，名称：新增视频');
INSERT INTO `qw_log` VALUES ('93', 'admin', '1506260154', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('94', 'admin', '1506261333', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('95', 'admin', '1506263009', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('96', 'admin', '1506263696', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('97', 'admin', '1506263726', '127.0.0.1', '新增友情链接');
INSERT INTO `qw_log` VALUES ('98', 'admin', '1506267530', '10.50.148.56', '登录成功。');
INSERT INTO `qw_log` VALUES ('99', 'admin', '1506303286', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('100', 'admin', '1506307454', '127.0.0.1', '编辑菜单，ID：31');
INSERT INTO `qw_log` VALUES ('101', 'admin', '1506307480', '127.0.0.1', '编辑菜单，ID：32');
INSERT INTO `qw_log` VALUES ('102', 'admin', '1506323657', '10.50.148.57', '登录成功。');
INSERT INTO `qw_log` VALUES ('103', 'admin', '1506323967', '10.50.148.61', '登录成功。');
INSERT INTO `qw_log` VALUES ('104', 'admin', '1506325901', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('105', 'admin', '1506326212', '10.50.148.54', '登录成功。');
INSERT INTO `qw_log` VALUES ('106', 'admin', '1506330943', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('107', 'admin', '1506332922', '127.0.0.1', '编辑菜单，ID：79');
INSERT INTO `qw_log` VALUES ('108', 'admin', '1506333547', '10.50.149.12', '登录成功。');
INSERT INTO `qw_log` VALUES ('109', 'admin', '1506333958', '10.50.148.56', '修改网站配置。');
INSERT INTO `qw_log` VALUES ('110', 'admin', '1506334582', '10.50.148.60', '新增自定义变量：footer-address');
INSERT INTO `qw_log` VALUES ('111', 'admin', '1506334599', '10.50.148.60', '删除自定义变量，ID：test');
INSERT INTO `qw_log` VALUES ('112', 'admin', '1506335025', '10.50.149.39', '登录成功。');
INSERT INTO `qw_log` VALUES ('113', 'admin', '1506336962', '127.0.0.1', '编辑菜单，ID：63');
INSERT INTO `qw_log` VALUES ('114', 'admin', '1506336999', '127.0.0.1', '编辑菜单，ID：43');
INSERT INTO `qw_log` VALUES ('115', 'admin', '1506337017', '127.0.0.1', '编辑菜单，ID：44');
INSERT INTO `qw_log` VALUES ('116', 'admin', '1506337034', '127.0.0.1', '编辑菜单，ID：11');
INSERT INTO `qw_log` VALUES ('117', 'admin', '1506337045', '127.0.0.1', '编辑菜单，ID：12');
INSERT INTO `qw_log` VALUES ('118', 'admin', '1506338274', '127.0.0.1', '修改网站配置。');
INSERT INTO `qw_log` VALUES ('119', 'admin', '1506338284', '127.0.0.1', '修改网站配置。');
INSERT INTO `qw_log` VALUES ('120', 'admin', '1506347156', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('121', 'admin', '1506347290', '10.50.149.61', '登录成功。');
INSERT INTO `qw_log` VALUES ('122', 'admin', '1506347658', '10.50.148.56', '登录成功。');
INSERT INTO `qw_log` VALUES ('123', 'admin', '1506347721', '10.50.148.53', '修改网站配置。');
INSERT INTO `qw_log` VALUES ('124', 'admin', '1506347805', '127.0.0.1', '修改网站配置。');
INSERT INTO `qw_log` VALUES ('125', 'admin', '1506347824', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('126', 'admin', '1506348065', '127.0.0.1', '修改网站配置。');
INSERT INTO `qw_log` VALUES ('127', 'admin', '1506348228', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('128', 'admin', '1506348897', '127.0.0.1', '修改网站配置。');
INSERT INTO `qw_log` VALUES ('129', 'admin', '1506349084', '127.0.0.1', '修改网站配置。');
INSERT INTO `qw_log` VALUES ('130', 'admin', '1506349200', '127.0.0.1', '修改网站配置。');
INSERT INTO `qw_log` VALUES ('131', 'admin', '1506349354', '127.0.0.1', '修改网站配置。');
INSERT INTO `qw_log` VALUES ('132', 'admin', '1506354093', '10.50.148.56', '删除用户组ID：6');
INSERT INTO `qw_log` VALUES ('133', 'admin', '1506354167', '10.50.148.59', '编辑用户组，ID：2，组名：管理员');
INSERT INTO `qw_log` VALUES ('134', 'admin', '1506354203', '10.50.148.60', '新增会员，会员UID：2');
INSERT INTO `qw_log` VALUES ('135', 'meitong', '1506354220', '10.50.149.61', '登录成功。');
INSERT INTO `qw_log` VALUES ('136', 'meitong', '1506354299', '10.50.148.53', '修改个人资料');
INSERT INTO `qw_log` VALUES ('137', 'admin', '1506354556', '127.0.0.1', '编辑菜单，ID：72');
INSERT INTO `qw_log` VALUES ('138', 'admin', '1506354688', '127.0.0.1', '编辑菜单，ID：32');
INSERT INTO `qw_log` VALUES ('139', 'admin', '1506354711', '127.0.0.1', '编辑菜单，ID：5');
INSERT INTO `qw_log` VALUES ('140', 'admin', '1506354798', '127.0.0.1', '编辑菜单，ID：74');
INSERT INTO `qw_log` VALUES ('141', 'admin', '1506354819', '127.0.0.1', '编辑菜单，ID：83');
INSERT INTO `qw_log` VALUES ('142', 'admin', '1506354840', '127.0.0.1', '编辑菜单，ID：85');
INSERT INTO `qw_log` VALUES ('143', 'admin', '1506354859', '127.0.0.1', '编辑菜单，ID：78');
INSERT INTO `qw_log` VALUES ('144', 'admin', '1506354880', '127.0.0.1', '编辑菜单，ID：87');
INSERT INTO `qw_log` VALUES ('145', 'admin', '1506354930', '127.0.0.1', '编辑菜单，ID：76');
INSERT INTO `qw_log` VALUES ('146', 'admin', '1506355713', '10.50.149.41', '新增菜单，名称：编辑产品');
INSERT INTO `qw_log` VALUES ('147', 'admin', '1506356174', '127.0.0.1', '编辑菜单，ID：39');
INSERT INTO `qw_log` VALUES ('148', 'admin', '1506356243', '127.0.0.1', '新增菜单，名称：编辑新闻');
INSERT INTO `qw_log` VALUES ('149', 'admin', '1506356333', '127.0.0.1', '新增菜单，名称：编辑门店');
INSERT INTO `qw_log` VALUES ('150', 'admin', '1506356373', '127.0.0.1', '新增菜单，名称：编辑关于');
INSERT INTO `qw_log` VALUES ('151', 'admin', '1506356394', '127.0.0.1', '新增菜单，名称：编辑联系');
INSERT INTO `qw_log` VALUES ('152', 'admin', '1506356428', '127.0.0.1', '新增菜单，名称：编辑banner');
INSERT INTO `qw_log` VALUES ('153', 'admin', '1506356456', '127.0.0.1', '新增菜单，名称：编辑视频');
INSERT INTO `qw_log` VALUES ('154', 'admin', '1506357514', '10.50.144.19', '新增菜单，名称：编辑链接');
INSERT INTO `qw_log` VALUES ('155', 'admin', '1506357822', '10.50.149.13', '编辑菜单，ID：40');
INSERT INTO `qw_log` VALUES ('156', 'admin', '1506389037', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('157', 'admin', '1506389467', '10.50.148.57', '登录成功。');
INSERT INTO `qw_log` VALUES ('158', 'admin', '1506389646', '10.50.149.73', '登录成功。');
INSERT INTO `qw_log` VALUES ('159', 'admin', '1506390432', '10.50.149.41', '登录成功。');
INSERT INTO `qw_log` VALUES ('160', 'admin', '1506396802', '10.50.149.12', '修改网站配置。');
INSERT INTO `qw_log` VALUES ('161', 'admin', '1506397000', '10.50.150.61', '修改网站配置。');
INSERT INTO `qw_log` VALUES ('162', 'admin', '1506435041', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('163', 'admin', '1506435080', '127.0.0.1', '修改网站配置。');
INSERT INTO `qw_log` VALUES ('164', 'admin', '1506445495', '10.50.148.57', '登录成功。');
INSERT INTO `qw_log` VALUES ('165', 'admin', '1506478902', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('166', 'admin', '1506492820', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('167', 'admin', '1506492983', '127.0.0.1', '新增菜单，名称：产品分类');
INSERT INTO `qw_log` VALUES ('168', 'admin', '1506493050', '127.0.0.1', '新增菜单，名称：新增分类');
INSERT INTO `qw_log` VALUES ('169', 'admin', '1506496672', '127.0.0.1', '新增菜单，名称：编辑分类');
INSERT INTO `qw_log` VALUES ('170', 'admin', '1506524743', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('171', 'admin', '1506561957', '127.0.0.1', '登录成功。');
INSERT INTO `qw_log` VALUES ('172', 'admin', '1506565078', '127.0.0.1', '文章分类修改，ID：38，名称：内衣');
INSERT INTO `qw_log` VALUES ('173', 'admin', '1506566062', '127.0.0.1', '编辑菜单，ID：96');
INSERT INTO `qw_log` VALUES ('174', 'admin', '1506577270', '127.0.0.1', '修改，ID：38，名称：内衣');
INSERT INTO `qw_log` VALUES ('175', 'admin', '1506577307', '127.0.0.1', '修改，ID：38，名称：内衣');
INSERT INTO `qw_log` VALUES ('176', 'admin', '1506579496', '127.0.0.1', '删除友情链接，ID：1,2');
INSERT INTO `qw_log` VALUES ('177', 'admin', '1506579548', '127.0.0.1', '编辑菜单，ID：37');

-- ----------------------------
-- Table structure for qw_member
-- ----------------------------
DROP TABLE IF EXISTS `qw_member`;
CREATE TABLE `qw_member` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(225) NOT NULL,
  `head` varchar(255) NOT NULL COMMENT '头像',
  `sex` tinyint(1) NOT NULL COMMENT '0保密1男，2女',
  `birthday` int(10) NOT NULL COMMENT '生日',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `qq` varchar(20) NOT NULL COMMENT 'QQ',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `password` varchar(32) NOT NULL,
  `t` int(10) unsigned NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_member
-- ----------------------------
INSERT INTO `qw_member` VALUES ('1', 'admin', '/Public/attached/201601/1453389194.png', '1', '1420128000', '13800138000', '331349451', 'xieyanwei@qq.com', '66d6a1c8748025462128dc75bf5ae8d1', '1442505600');
INSERT INTO `qw_member` VALUES ('2', 'meitong', '/Public/attached/2017/09/25/59c9247a23593.png', '0', '144000', '', '', '', '0fa5933c7d220e1334ba99d6f751074c', '1507113999');
INSERT INTO `qw_member` VALUES ('3', 'milan', '/Public/attached/2017/09/28/59cc9b7edb0e2.png', '0', '0', '', '', '', '0fa5933c7d220e1334ba99d6f751074c', '1506581377');

-- ----------------------------
-- Table structure for qw_message
-- ----------------------------
DROP TABLE IF EXISTS `qw_message`;
CREATE TABLE `qw_message` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `t` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_message
-- ----------------------------

-- ----------------------------
-- Table structure for qw_position
-- ----------------------------
DROP TABLE IF EXISTS `qw_position`;
CREATE TABLE `qw_position` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `t` int(10) NOT NULL,
  `seotitle` varchar(255) DEFAULT '',
  `keywords` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `detail` varchar(1024) DEFAULT NULL,
  `o` int(9) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_position
-- ----------------------------
INSERT INTO `qw_position` VALUES ('1', '1510469010', '深圳', '深圳', '深圳', '深圳', '{id: \'A\',position: [113.714174,22.790835],iconStyle: \'red\',title: \'希比希真空电子（东莞）有限公司\',desc: \'东莞市长安镇上角管理区振安西路303希比希工厂办公室2楼\'}, {id: \'B\',position: [113.893207,22.930103],iconStyle: \'red\',title: \'东莞万科松山湖中心\',desc: \'东莞市松山湖高新技术产业开发区新竹路7号停车场出口保安亭\'}, {id: \'C\',position: [114.092855,22.916382],iconStyle: \'red\',title: \'东莞顺丰樟木头车站分部\',desc: \'东莞市樟木头镇东城路1号1-20铺至26铺\'}, {id: \'D\',position: [114.136674,22.725932],iconStyle: \'red\',title: \'东莞顺丰凤岗五联车站分部\',desc: \'东莞市凤岗镇五联村碧湖大道东39-42号\'}', '0');
INSERT INTO `qw_position` VALUES ('2', '1510469855', '广州', '广州', '广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州广州', '广州', '{id: \'A\',position: [113.117299,23.106095],iconStyle: \'red\',title: \'中国银行佛山金雅轩支行\',desc: \'佛山市南海区大沥城南一路金雅轩首层119、120号商铺\'}, {id:\'B\',position: [113.122058,23.109791],iconStyle: \'red\',title: \'中国银行佛山大沥支行\',desc: \'佛山市南海大沥行政区金融中心新城大道中\'}, {id: \'C\',position: [113.144947,23.009745],iconStyle: \'red\',title: \'中国银行佛山怡翠玖瑰支行\',desc: \'佛山市南海季华7路2号怡翠玖瑰园P108-P110铺\'}, {id: \'D\',position: [113.12242,23.114417],iconStyle: \'red\',title: \'中国银行佛山兴隆支行\',desc: \'佛山市南海区大沥兴隆街58号首层之三、四号铺\'}', '2');

-- ----------------------------
-- Table structure for qw_product
-- ----------------------------
DROP TABLE IF EXISTS `qw_product`;
CREATE TABLE `qw_product` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(9) NOT NULL COMMENT '导航id',
  `type_id` int(9) NOT NULL DEFAULT '0' COMMENT '产品分类id',
  `image_path` varchar(200) NOT NULL COMMENT 'banner图',
  `t` int(10) NOT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否首页显示',
  `is_home_l` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为首页轮播图',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '热门推荐 0：不推荐1：推荐',
  `seotitle` varchar(255) DEFAULT '',
  `keywords` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_product
-- ----------------------------
INSERT INTO `qw_product` VALUES ('256', '38', '0', '/Public/attached/2017/11/12/5a07df03bc999.jpg', '1510465722', '0', '0', '0', '无人售货机', '无人售货机', '无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机', '<p>\r\n	<img src=\"/Public/attached/image/20171112/20171112054203_37666.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机无人售货机\r\n</p>');
INSERT INTO `qw_product` VALUES ('257', '39', '0', '/Public/attached/2017/11/12/5a07e14bd9822.jpg', '1510465938', '0', '0', '0', '体验店', '体验店', '体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店 体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店', '<p>\r\n	<img src=\"/Public/attached/image/20171112/20171112055119_66999.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	体验店体验店体验店体验店体验店体\r\n</p>\r\n<p>\r\n	体验店验店体验店体验店\r\n</p>\r\n<p>\r\n	体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店 体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店\r\n</p>\r\n<p>\r\n	体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店 体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店\r\n</p>\r\n<p>\r\n	体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店 体验店体验店体验店体验店体验店体验店体验店体验店体验店体验店\r\n</p>');

-- ----------------------------
-- Table structure for qw_product_type
-- ----------------------------
DROP TABLE IF EXISTS `qw_product_type`;
CREATE TABLE `qw_product_type` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(9) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(200) NOT NULL,
  `image_path_home` varchar(200) NOT NULL COMMENT '首页推荐图',
  `image_path` varchar(200) NOT NULL COMMENT '产品中心图',
  `t` int(10) NOT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_product_type
-- ----------------------------
INSERT INTO `qw_product_type` VALUES ('1', '38', '文胸系列', '谜兰时黛品牌内衣款式多样，\r\n色彩和元素间的搭配也精美出彩，\r\n这一季完美将精品内衣与各种潮流时装进行\r\n革新搭配.', '/Public/attached/2017/09/27/59cb49ac2c19a.png', '/Public/attached/2017/09/27/59cb49bb007be.png', '1506494909', '1');
INSERT INTO `qw_product_type` VALUES ('2', '39', '精品系列', '精品系列精品系列精品系列精品系列精品系列精品系列精品系列精品系列精品系列精品系列精品系列精品系列精品系列精品系列', '/Public/attached/2017/09/27/59cb518d872de.png', '/Public/attached/2017/09/27/59cb51967dc77.png', '1506496921', '1');
INSERT INTO `qw_product_type` VALUES ('3', '38', '泳衣系列', '泳衣系列泳衣系列泳衣系列泳衣系列泳衣系列泳衣系列泳衣系列泳衣系列', '/Public/attached/2017/09/27/59cb6d9f79edf.png', '/Public/attached/2017/09/27/59cb6da69a2ad.png', '1506504104', '1');

-- ----------------------------
-- Table structure for qw_setting
-- ----------------------------
DROP TABLE IF EXISTS `qw_setting`;
CREATE TABLE `qw_setting` (
  `k` varchar(100) NOT NULL COMMENT '变量',
  `v` varchar(255) NOT NULL COMMENT '值',
  `type` tinyint(1) NOT NULL COMMENT '0系统，1自定义',
  `name` varchar(255) NOT NULL COMMENT '说明',
  PRIMARY KEY (`k`),
  KEY `k` (`k`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_setting
-- ----------------------------
INSERT INTO `qw_setting` VALUES ('sitename', '来乐', '0', '');
INSERT INTO `qw_setting` VALUES ('title', '来乐', '0', '');
INSERT INTO `qw_setting` VALUES ('keywords', '来乐', '0', '');
INSERT INTO `qw_setting` VALUES ('description', '来乐', '0', '');
INSERT INTO `qw_setting` VALUES ('footer', '2017©来乐', '0', '');
INSERT INTO `qw_setting` VALUES ('footer-address', '地址：佛山市南海区里广路2号来乐（地铁六号线浔峰岗站A出口） 加盟咨询热线：400-1883-577', '1', '网站底部-地址-联系方式');
INSERT INTO `qw_setting` VALUES ('water_image_path', '', '2', '');
INSERT INTO `qw_setting` VALUES ('position', '1', '3', '');

-- ----------------------------
-- Table structure for qw_solution
-- ----------------------------
DROP TABLE IF EXISTS `qw_solution`;
CREATE TABLE `qw_solution` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(9) NOT NULL COMMENT '导航id',
  `image_path` varchar(200) NOT NULL COMMENT 'banner图',
  `t` int(10) NOT NULL,
  `seotitle` varchar(255) DEFAULT '',
  `keywords` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_solution
-- ----------------------------
INSERT INTO `qw_solution` VALUES ('1', '46', '/Public/attached/2017/11/12/5a07e6d712937.jpg', '1510492486', '社区解决方', '社区解决方案', '社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案', '<p>\r\n	<img src=\"/Public/attached/image/20171112/20171112061505_38454.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解\r\n</p>\r\n<p>\r\n	决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区\r\n</p>\r\n<p>\r\n	解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解\r\n</p>\r\n<p>\r\n	决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案社区解决方案\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/attached/image/20171112/20171112131444_75346.jpg\" alt=\"\" />\r\n</p>');

-- ----------------------------
-- Table structure for qw_store
-- ----------------------------
DROP TABLE IF EXISTS `qw_store`;
CREATE TABLE `qw_store` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(9) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `t` int(10) NOT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否首页展示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_store
-- ----------------------------

-- ----------------------------
-- Table structure for qw_video
-- ----------------------------
DROP TABLE IF EXISTS `qw_video`;
CREATE TABLE `qw_video` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `t` int(10) DEFAULT NULL,
  `is_video` tinyint(1) NOT NULL DEFAULT '0',
  `position` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_video
-- ----------------------------
INSERT INTO `qw_video` VALUES ('3', 'http://study-media-in.oss-cn-shenzhen.aliyuncs.com/UID_11/%E5%BA%8F%E5%88%97%2001.mp4', '1508055255', '1', '1');
INSERT INTO `qw_video` VALUES ('5', 'http://study-media-in.oss-cn-shenzhen.aliyuncs.com/UID_11/%E8%A7%86%E9%A2%912.mp4', '1508206309', '1', '2');
INSERT INTO `qw_video` VALUES ('6', 'http://study-media-in.oss-cn-shenzhen.aliyuncs.com/UID_11/%E8%A7%86%E9%A2%913.mp4', '1508206370', '1', '3');
INSERT INTO `qw_video` VALUES ('7', 'http://study-media-in.oss-cn-shenzhen.aliyuncs.com/UID_5345/5ADcFzmxzn.mp3', '1507994903', '0', '0');

-- ----------------------------
-- Table structure for qw_withus
-- ----------------------------
DROP TABLE IF EXISTS `qw_withus`;
CREATE TABLE `qw_withus` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(9) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `t` int(10) NOT NULL,
  `position` tinyint(1) NOT NULL DEFAULT '0',
  `o` int(9) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_withus
-- ----------------------------
INSERT INTO `qw_withus` VALUES ('1', '48', '/Public/attached/2017/10/16/59e43be255f0d.jpg', '1508129768', '0', '0');
INSERT INTO `qw_withus` VALUES ('20', '48', '/Public/attached/2017/10/16/59e44d63a3952.jpg', '1508134248', '0', '7');
INSERT INTO `qw_withus` VALUES ('19', '48', '/Public/attached/2017/10/16/59e43c6a4d6ad.jpg', '1508129904', '0', '6');
INSERT INTO `qw_withus` VALUES ('18', '48', '/Public/attached/2017/10/16/59e43c601b507.jpg', '1508129891', '0', '5');
INSERT INTO `qw_withus` VALUES ('14', '48', '/Public/attached/2017/10/16/59e43c1fefe19.jpg', '1508129829', '0', '1');
INSERT INTO `qw_withus` VALUES ('15', '48', '/Public/attached/2017/10/16/59e43c3504346.jpg', '1508129849', '0', '2');
INSERT INTO `qw_withus` VALUES ('16', '48', '/Public/attached/2017/10/16/59e43c44731a3.jpg', '1508129865', '0', '3');
INSERT INTO `qw_withus` VALUES ('17', '48', '/Public/attached/2017/10/16/59e43c51922a5.jpg', '1508129877', '0', '4');
INSERT INTO `qw_withus` VALUES ('12', '48', '/Public/attached/2017/10/16/59e4126fdc7c9.jpg', '1508119156', '1', '0');
