/*
Navicat MySQL Data Transfer

Source Server         : 132.228.237.149
Source Server Version : 50161
Source Host           : 132.228.237.149:3306
Source Database       : itos_v2

Target Server Type    : MYSQL
Target Server Version : 50161
File Encoding         : 65001

Date: 2015-04-17 17:22:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ez_app_config`
-- ----------------------------
DROP TABLE IF EXISTS `ez_app_config`;
CREATE TABLE `ez_app_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `seq` int(11) DEFAULT '0',
  `val` text,
  `state` int(10) unsigned NOT NULL DEFAULT '1',
  `state_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_date` datetime DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ez_app_config
-- ----------------------------

-- ----------------------------
-- Table structure for `ez_app_dic`
-- ----------------------------
DROP TABLE IF EXISTS `ez_app_dic`;
CREATE TABLE `ez_app_dic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) unsigned DEFAULT '0',
  `seq` int(11) NOT NULL DEFAULT '0',
  `dic_id` int(11) NOT NULL,
  `dic_name` varchar(255) DEFAULT NULL,
  `dic_code` varchar(255) DEFAULT NULL,
  `state` int(10) unsigned NOT NULL DEFAULT '1',
  `state_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_date` datetime DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ez_app_dic
-- ----------------------------

-- ----------------------------
-- Table structure for `ez_app_dic_cate`
-- ----------------------------
DROP TABLE IF EXISTS `ez_app_dic_cate`;
CREATE TABLE `ez_app_dic_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) NOT NULL,
  `cate_code` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `state_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_date` datetime DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ez_app_dic_cate
-- ----------------------------

-- ----------------------------
-- Table structure for `ez_app_icon`
-- ----------------------------
DROP TABLE IF EXISTS `ez_app_icon`;
CREATE TABLE `ez_app_icon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon_name` varchar(255) NOT NULL,
  `icon_cls` varchar(45) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `width` int(4) unsigned DEFAULT NULL,
  `height` int(4) unsigned DEFAULT NULL,
  `state` int(4) unsigned NOT NULL DEFAULT '1',
  `state_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_date` datetime DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ez_app_icon
-- ----------------------------

-- ----------------------------
-- Table structure for `ez_pub_priv`
-- ----------------------------
DROP TABLE IF EXISTS `ez_pub_priv`;
CREATE TABLE `ez_pub_priv` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `seq` int(11) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `priv_code` varchar(255) NOT NULL,
  `priv_type_id` int(1) NOT NULL DEFAULT '1',
  `icon_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `state` int(1) unsigned NOT NULL DEFAULT '1',
  `state_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_date` datetime DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ez_pub_priv
-- ----------------------------
INSERT INTO `ez_pub_priv` VALUES ('1', '0', '1', '系统管理', 'APP', '1', '0', 'app/app.html', '1', '2015-03-19 18:47:30', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('2', '1', '1', '参数配置', 'APP_config', '2', '0', 'app/config.html', '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('3', '1', '2', '字典配置', 'APP_dic', '2', '0', 'app/dic.html', '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('4', '1', '3', '文件管理', 'APP_file', '2', '0', 'app/file.html', '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('5', '1', '4', '图标管理', 'APP_icon', '2', '0', 'app/icon.html', '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('6', '1', '5', '用户管理', 'PUB_user', '2', '0', 'pub/user.html', '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('7', '1', '6', '角色管理', 'PUB_role', '2', '0', 'pub/role.html', '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('8', '1', '7', '权限管理', 'PUB_priv', '2', '0', 'pub/priv.html', '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('9', '2', '1', '查询配置', 'APP_config_Btn_qry', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('10', '2', '2', '新增配置', 'APP_config_Btn_add', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('11', '2', '3', '修改配置', 'APP_config_Btn_edt', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('12', '2', '4', '删除配置', 'APP_config_Btn_del', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('13', '3', '1', '查询字典', 'APP_dic_Btn_qry', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('14', '3', '2', '新增字典', 'APP_dic_Btn_add', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('15', '3', '3', '修改字典', 'APP_dic_Btn_edt', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('16', '3', '4', '删除字典', 'APP_dic_Btn_del', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('17', '5', '1', '查询图标', 'APP_icon_Btn_qry', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('18', '5', '2', '新增图标', 'APP_icon_Btn_add', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('19', '5', '3', '修改图标', 'APP_icon_Btn_edt', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('20', '5', '4', '删除图标', 'APP_icon_Btn_del', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('21', '6', '1', '查询用户', 'PUB_user_Btn_qry', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('22', '6', '2', '新增用户', 'PUB_user_Btn_add', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('23', '6', '3', '修改用户', 'PUB_user_Btn_edt', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('24', '6', '4', '配置角色', 'PUB_user_Btn_setRoles', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('25', '6', '5', '删除用户', 'PUB_user_Btn_del', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('26', '7', '1', '查询角色', 'PUB_role_Btn_qry', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('27', '7', '2', '新增角色', 'PUB_role_Btn_add', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('28', '7', '3', '修改角色', 'PUB_role_Btn_edt', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('29', '7', '4', '配置权限', 'PUB_role_Btn_setPrivs', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('30', '7', '5', '删除角色', 'PUB_role_Btn_del', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('31', '8', '1', '查询权限', 'PUB_priv_Btn_qry', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('32', '8', '2', '新增权限', 'PUB_priv_Btn_add', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('33', '8', '3', '修改权限', 'PUB_priv_Btn_edt', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('34', '8', '4', '删除权限', 'PUB_priv_Btn_del', '3', '0', null, '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', null);
INSERT INTO `ez_pub_priv` VALUES ('35', '0', '4', '自助问询', 'SELF', '1', '0', '', '1', '2015-03-19 17:03:40', '2015-03-19 17:03:40', null);
INSERT INTO `ez_pub_priv` VALUES ('43', '35', '1', '运营分类解决通道', 'SELF_category', '2', '0', 'self/category.html', '1', '2015-03-19 18:26:06', '2015-03-19 18:26:06', null);
INSERT INTO `ez_pub_priv` VALUES ('44', '35', '2', '自助学习知识库', 'SELF_knowledgeBase', '2', '0', 'self/knowledgeBase.html', '1', '2015-03-19 18:26:06', '2015-03-19 18:26:06', null);
INSERT INTO `ez_pub_priv` VALUES ('45', '35', '3', '智能客服机器人', 'SELF_hotSearch', '2', '0', 'self/hotSearch.html', '1', '2015-03-19 18:26:06', '2015-03-19 18:26:06', null);
INSERT INTO `ez_pub_priv` VALUES ('46', '43', '1', '智能客服机器人', 'SELF_category_Font_robot', '3', '0', 'self/robot.html', '1', '2015-03-19 18:40:59', '2015-03-19 18:40:59', null);
INSERT INTO `ez_pub_priv` VALUES ('47', '43', '2', '接入', 'SELF_category_Font_access', '3', '0', 'self/access.html', '1', '2015-03-19 18:40:59', '2015-03-19 18:40:59', null);
INSERT INTO `ez_pub_priv` VALUES ('48', '43', '3', '存量', 'SELF_category_Font_stock', '3', '0', 'self/stock.html', '1', '2015-03-19 18:40:59', '2015-03-19 18:40:59', null);
INSERT INTO `ez_pub_priv` VALUES ('49', '43', '4', 'gis', 'SELF_category_Font_gis', '3', '0', 'self/gis.html', '1', '2015-03-19 18:40:59', '2015-03-19 18:40:59', null);
INSERT INTO `ez_pub_priv` VALUES ('50', '43', '5', '三线一库', 'SELF_category_Font_line', '3', '0', 'self/line.html', '1', '2015-03-19 18:40:59', '2015-03-19 18:40:59', null);
INSERT INTO `ez_pub_priv` VALUES ('51', '43', '6', '接口', 'SELF_category_Font_interface', '3', '0', 'self/interface.html', '1', '2015-03-19 18:40:59', '2015-03-19 18:40:59', null);
INSERT INTO `ez_pub_priv` VALUES ('52', '0', '3', '故障分析', 'fault', '1', '0', '', '1', '2015-03-19 18:42:22', '2015-03-19 18:42:22', null);
INSERT INTO `ez_pub_priv` VALUES ('53', '52', '1', '故障查询', 'fault_serach', '2', '0', 'fault/faultSerach.html', '1', '2015-03-19 18:43:45', '2015-03-19 18:43:45', null);
INSERT INTO `ez_pub_priv` VALUES ('54', '52', '2', '故障分析', 'fault_analys', '2', '0', 'fault/faultAnalys.html', '1', '2015-03-19 18:43:45', '2015-03-19 18:43:45', null);
INSERT INTO `ez_pub_priv` VALUES ('55', '0', '5', '权限1', 'quanxian', '1', '0', '', '0', '2015-03-25 10:49:59', '2015-03-25 10:45:26', '');
INSERT INTO `ez_pub_priv` VALUES ('56', '0', '5', '权限2', 'quanxian', '1', '0', '', '0', '2015-03-25 10:54:39', '2015-03-25 10:50:37', '');
INSERT INTO `ez_pub_priv` VALUES ('57', '0', '5', '权限3', 'quanxian', '1', '0', '', '0', '2015-03-25 11:30:07', '2015-03-25 10:55:13', '');
INSERT INTO `ez_pub_priv` VALUES ('58', '0', '5', '权限4', 'quanxian4', '1', '0', '', '0', '2015-03-25 11:30:48', '2015-03-25 11:30:39', '');
INSERT INTO `ez_pub_priv` VALUES ('59', '0', '5', '报障分析', 'faultSubmit', '1', '0', '', '0', '2015-03-27 15:25:06', '2015-03-27 15:21:51', '');
INSERT INTO `ez_pub_priv` VALUES ('60', '0', '1', '报障分析', 'faultSubmit', '2', '0', 'fault/faulbSubmit', '0', '2015-03-27 15:25:14', '2015-03-27 15:24:36', '');
INSERT INTO `ez_pub_priv` VALUES ('62', '0', '3', '报障分析', 'fault_submit', '2', '0', 'fault/fault_submit', '0', '2015-03-27 15:31:20', '2015-03-27 15:30:47', '');
INSERT INTO `ez_pub_priv` VALUES ('64', '52', '3', '报障查询', 'fault_submit', '2', '0', 'fault/faultSubmit.html', '1', '2015-03-27 15:41:28', '2015-03-27 15:35:21', null);

-- ----------------------------
-- Table structure for `ez_pub_role`
-- ----------------------------
DROP TABLE IF EXISTS `ez_pub_role`;
CREATE TABLE `ez_pub_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `role_code` varchar(255) NOT NULL,
  `state` int(1) unsigned NOT NULL DEFAULT '1',
  `state_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_date` datetime DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ez_pub_role
-- ----------------------------
INSERT INTO `ez_pub_role` VALUES ('1', 'root', 'root', '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', 'default');

-- ----------------------------
-- Table structure for `ez_pub_role_priv`
-- ----------------------------
DROP TABLE IF EXISTS `ez_pub_role_priv`;
CREATE TABLE `ez_pub_role_priv` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `priv_id` int(11) NOT NULL,
  `state` int(1) unsigned NOT NULL DEFAULT '1',
  `state_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_date` datetime DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ez_pub_role_priv
-- ----------------------------

-- ----------------------------
-- Table structure for `ez_pub_user`
-- ----------------------------
DROP TABLE IF EXISTS `ez_pub_user`;
CREATE TABLE `ez_pub_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `password` varchar(40) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `state` int(1) unsigned NOT NULL DEFAULT '1',
  `state_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_date` datetime DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ez_pub_user
-- ----------------------------
INSERT INTO `ez_pub_user` VALUES ('1', 'root', 'd9b1d7db4cd6e70935368a1efb10e377', '123', 'test@test.test', '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', 'default');

-- ----------------------------
-- Table structure for `ez_pub_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `ez_pub_user_role`;
CREATE TABLE `ez_pub_user_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `state` int(1) unsigned NOT NULL DEFAULT '1',
  `state_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_date` datetime DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ez_pub_user_role
-- ----------------------------
INSERT INTO `ez_pub_user_role` VALUES ('1', '1', '1', '1', '2015-03-19 16:59:52', '2015-03-19 16:59:52', 'default');

-- ----------------------------
-- Table structure for `fault_analys`
-- ----------------------------
DROP TABLE IF EXISTS `fault_analys`;
CREATE TABLE `fault_analys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `opera_type` varchar(1000) DEFAULT NULL,
  `opera_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fault_analys
-- ----------------------------
INSERT INTO `fault_analys` VALUES ('56', 'root', '南京', '智能客服机器人', '2015-03-23 13:45:25');
INSERT INTO `fault_analys` VALUES ('55', 'root', '南京', '智能客服机器人', '2015-03-23 11:26:24');
INSERT INTO `fault_analys` VALUES ('54', 'root', '南京', '接入问题', '2015-03-23 11:21:56');
INSERT INTO `fault_analys` VALUES ('53', 'root', '南京', '接入相关', '2015-03-23 11:20:35');
INSERT INTO `fault_analys` VALUES ('52', 'root', '南京', '接入相关', '2015-03-23 11:18:01');
INSERT INTO `fault_analys` VALUES ('51', 'root', '南京', '接入问题', '2015-03-23 11:13:25');
INSERT INTO `fault_analys` VALUES ('50', 'root', '南京', '这', '2015-03-23 11:07:28');
INSERT INTO `fault_analys` VALUES ('49', 'root', '南京', '这是', '2015-03-23 11:07:20');
INSERT INTO `fault_analys` VALUES ('48', 'root', '南京', '智能客服机器人', '2015-03-23 10:57:37');
INSERT INTO `fault_analys` VALUES ('47', 'root', '南京', '问题', '2015-03-23 09:49:25');
INSERT INTO `fault_analys` VALUES ('46', 'root', '南京', '故障查询', '2015-03-23 09:45:28');
INSERT INTO `fault_analys` VALUES ('45', 'root', '南京', '智能客服机器人', '2015-03-23 09:31:09');
INSERT INTO `fault_analys` VALUES ('44', 'root', '南京', '存量', '2015-03-20 17:42:57');
INSERT INTO `fault_analys` VALUES ('43', 'root', '南京', '故障查询', '2015-03-20 17:42:09');
INSERT INTO `fault_analys` VALUES ('42', 'root', '南京', '接入', '2015-03-20 17:40:57');
INSERT INTO `fault_analys` VALUES ('41', 'root', '南京', '接入', '2015-03-20 16:38:25');
INSERT INTO `fault_analys` VALUES ('40', 'root', '南京', '智能客服机器人', '2015-03-20 16:02:30');
INSERT INTO `fault_analys` VALUES ('39', 'root', '南京', '存量', '2015-03-20 15:40:13');
INSERT INTO `fault_analys` VALUES ('38', 'root', '南京', '故障查询', '2015-03-20 15:31:22');
INSERT INTO `fault_analys` VALUES ('37', 'root', '南京', '接入', '2015-03-20 15:30:36');
INSERT INTO `fault_analys` VALUES ('36', 'root', '南京', '存量', '2015-03-20 15:10:27');
INSERT INTO `fault_analys` VALUES ('57', 'root', '南京', '接入', '2015-03-23 13:59:16');
INSERT INTO `fault_analys` VALUES ('58', 'root', '南京', '接入', '2015-03-23 14:30:35');
INSERT INTO `fault_analys` VALUES ('59', 'root', '南京', '智能客服机器人', '2015-03-23 15:01:07');
INSERT INTO `fault_analys` VALUES ('60', 'root', '南京', '智能客服机器人', '2015-03-23 15:07:40');
INSERT INTO `fault_analys` VALUES ('61', 'root', '南京', '智能客服机器人', '2015-03-23 15:12:55');
INSERT INTO `fault_analys` VALUES ('62', 'root', '南京', '已经很多接入问题呐', '2015-03-23 15:13:05');
INSERT INTO `fault_analys` VALUES ('63', 'root', '南京', '割接单导出资料报错', '2015-03-24 10:03:57');
INSERT INTO `fault_analys` VALUES ('64', 'root', '南京', '设备覆盖地址默认分值功能存在问题', '2015-03-24 10:13:55');
INSERT INTO `fault_analys` VALUES ('65', 'root', '南京', '终端拆除异常:要拆除设备中的逻辑链路还存在业务连接，请确认链路拆除任务已处理。此类问题 如果这个终端上确实还有业务号码占用链路，拆机单如何处理', '2015-03-24 11:16:29');
INSERT INTO `fault_analys` VALUES ('66', 'root', '南京', '终端拆除异常:要拆除设备中的物理链路还存在业务连接，请确认链路拆除任务已处理', '2015-03-25 09:06:30');
INSERT INTO `fault_analys` VALUES ('67', 'root', '南京', '是不是接入相关的', '2015-03-25 15:02:35');
INSERT INTO `fault_analys` VALUES ('68', 'root', '南京', '公众客户属性 在数据库哪里查', '2015-03-25 15:02:49');
INSERT INTO `fault_analys` VALUES ('69', 'root', '南京', 'HA-NGN-GC-S3328-3，NGN（SS/TG/SG）节点，点击修改设备报这个错 资源处于事务态', '2015-03-25 15:06:32');
INSERT INTO `fault_analys` VALUES ('70', 'root', '南京', '割接单导出资料报错', '2015-03-25 15:06:58');
INSERT INTO `fault_analys` VALUES ('71', 'root', '南京', '设备覆盖地址默认分值功能存在问题', '2015-03-25 15:07:41');
INSERT INTO `fault_analys` VALUES ('72', 'root', '南京', '可以问接入问题大', '2015-03-25 15:29:37');
INSERT INTO `fault_analys` VALUES ('73', 'root', '南京', 'OBD割接工单，停在PON割接逻辑链路配置，无法处理', '2015-03-25 15:29:46');
INSERT INTO `fault_analys` VALUES ('74', 'root', '南京', '资源系统报文网元节点里没有送【新设备信息】', '2015-03-27 10:44:02');
INSERT INTO `fault_analys` VALUES ('75', 'root', '南京', '4.资源系统报文网元节点里没有送【新设备信息】', '2015-04-01 14:18:02');
INSERT INTO `fault_analys` VALUES ('76', 'root', '南京', '1.HA-NGN-GC-S3328-3，NGN（SS/TG/SG）节点，点击修改设备报这个错 资源处于事务态', '2015-04-01 14:25:59');
INSERT INTO `fault_analys` VALUES ('77', 'root', '南京', '终端拆除异常:要拆除设备中的物理链路还存在业务连接，请确认链路拆除任务已处理', '2015-04-01 14:32:57');
INSERT INTO `fault_analys` VALUES ('78', 'root', '南京', '终端拆除异常:要拆除设备中的物理链路还存在业务连接，请确认链路拆除任务已处理', '2015-04-01 14:33:33');
INSERT INTO `fault_analys` VALUES ('79', 'root', '南京', '终端拆除异常:要拆除设备中的物理链路还存在业务连接，请确认链路拆除任务已处理', '2015-04-01 14:33:35');
INSERT INTO `fault_analys` VALUES ('80', 'root', '南京', '2.设备覆盖地址默认分值功能存在问题', '2015-04-01 14:35:59');
INSERT INTO `fault_analys` VALUES ('81', 'root', '南京', '2.设备覆盖地址默认分值功能存在问题', '2015-04-01 14:36:13');
INSERT INTO `fault_analys` VALUES ('82', 'root', '南京', '终端拆除异常:要拆除设备中的物理链路还存在业务连接，请确认链路拆除任务已处理', '2015-04-01 14:40:51');
INSERT INTO `fault_analys` VALUES ('83', 'root', '南京', '终端拆除异常:要拆除设备中的物理链路还存在业务连接，请确认链路拆除任务已处理', '2015-04-01 14:40:57');
INSERT INTO `fault_analys` VALUES ('84', 'root', '南京', '终端拆除异常:要拆除设备中的物理链路还存在业务连接，请确认链路拆除任务已处理', '2015-04-01 14:42:24');
INSERT INTO `fault_analys` VALUES ('85', 'root', '南京', '终端拆除异常:要拆除设备中的物理链路还存在业务连接，请确认链路拆除任务已处理', '2015-04-01 14:42:34');
INSERT INTO `fault_analys` VALUES ('86', 'root', '南京', '请问CBL_FIBER这个表里，是不是cbl_line_id非空的就是说明这个纤芯是被占用的了么？', '2015-04-01 15:17:07');
INSERT INTO `fault_analys` VALUES ('87', 'root', '南京', 'HA-NGN-GC-S3328-3，NGN（SS/TG/SG）节点，点击修改设备报这个错 资源处于事务态', '2015-04-01 16:04:59');
INSERT INTO `fault_analys` VALUES ('88', 'root', '南京', '接入', '2015-04-01 16:05:16');

-- ----------------------------
-- Table structure for `fault_submit`
-- ----------------------------
DROP TABLE IF EXISTS `fault_submit`;
CREATE TABLE `fault_submit` (
  `id` varchar(25) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `fault_info` varchar(100) DEFAULT NULL,
  `fault_img` varchar(255) DEFAULT '',
  `fault_date` datetime DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `imgName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fault_submit
-- ----------------------------
INSERT INTO `fault_submit` VALUES ('1427766974202', 'root', '说明', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20155631095604.jpg', '2015-03-31 09:56:29', '待处理', '20155631095604');
INSERT INTO `fault_submit` VALUES ('1427768389328', 'root', '截个图说说', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20151931101933.jpg', '2015-03-31 10:20:04', '待处理', '20151931101933');
INSERT INTO `fault_submit` VALUES ('1427770268229', 'root', '', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20155031105039.jpg', '2015-03-31 10:51:23', '待处理', '20155031105039');
INSERT INTO `fault_submit` VALUES ('1427770293263', 'root', '', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20155031105039.jpg', '2015-03-31 10:51:48', '待处理', '20155031105039');
INSERT INTO `fault_submit` VALUES ('1427780532454', 'root', '智能机器人问答', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20154131134136.jpg', '2015-03-31 13:42:27', '待处理', '20154131134136');
INSERT INTO `fault_submit` VALUES ('1427780671575', 'root', '1', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20154431134400.jpg', '2015-03-31 13:44:46', '待处理', '20154431134400');
INSERT INTO `fault_submit` VALUES ('1427780769368', 'root', '12', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20154531134548.jpg', '2015-03-31 13:46:24', '待处理', '20154531134548');
INSERT INTO `fault_submit` VALUES ('1427781242169', 'root', '接入相关问题', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20155331135338.jpg', '2015-03-31 13:54:17', '待处理', '20155331135338');
INSERT INTO `fault_submit` VALUES ('1427781579395', 'root', '这个不知道怎么做了', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20155931135919.jpg', '2015-03-31 13:59:54', '待处理', '20155931135919');
INSERT INTO `fault_submit` VALUES ('1427781653043', 'root', '这个解决会不会太难', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20150031140031.jpg', '2015-03-31 14:01:08', '待处理', '20150031140031');
INSERT INTO `fault_submit` VALUES ('1427782078233', 'root', '二人转', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20150731140741.jpg', '2015-03-31 14:08:13', '待处理', '20150731140741');
INSERT INTO `fault_submit` VALUES ('1427783444168', 'root', '要', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20153031143032.jpg', '2015-03-31 14:30:59', '待处理', '20153031143032');
INSERT INTO `fault_submit` VALUES ('1427784191489', 'root', '分析', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20154231144237.jpg', '2015-03-31 14:43:26', '待处理', '20154231144237');
INSERT INTO `fault_submit` VALUES ('1427784194448', 'root', '分析', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20154231144237.jpg', '2015-03-31 14:43:29', '待处理', '20154231144237');
INSERT INTO `fault_submit` VALUES ('1427784518176', 'root', '提交', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20154731144740.jpg', '2015-03-31 14:48:53', '待处理', '20154731144740');
INSERT INTO `fault_submit` VALUES ('1427787277353', 'root', '可以么', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20153431153413.jpg', '2015-03-31 15:34:52', '待处理', '20153431153413');
INSERT INTO `fault_submit` VALUES ('1427787386211', 'root', '加载好慢', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20153631153611.jpg', '2015-03-31 15:36:41', '待处理', '20153631153611');
INSERT INTO `fault_submit` VALUES ('1427867326601', 'root', '截图完成', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20154801134831.jpg', '2015-04-01 13:50:49', '待处理', '20154801134831');
INSERT INTO `fault_submit` VALUES ('1427867357558', 'root', '重新截图', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20154801134859.jpg', '2015-04-01 13:51:20', '待处理', '20154801134859');
INSERT INTO `fault_submit` VALUES ('1427875881503', 'root', '这怎么又可以', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20151101161106.jpg', '2015-04-01 16:13:24', '待处理', '20151101161106');
INSERT INTO `fault_submit` VALUES ('1427877015277', 'root', '说说', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20153001163004.jpg', '2015-04-01 16:32:18', '待处理', '20153001163004');
INSERT INTO `fault_submit` VALUES ('1427878477002', 'root', '在', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20155401165428.jpg', '2015-04-01 16:56:39', '待处理', '20155401165428');
INSERT INTO `fault_submit` VALUES ('1427937961920', 'root', '图片', 'C:\\Users\\Administrator\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20152502092546.jpg', '2015-04-02 09:28:04', '待处理', '20152502092546');
INSERT INTO `fault_submit` VALUES ('1427950586991', 'root', 'e', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20155502125551.jpg', '2015-04-02 12:58:29', '待处理', '20155502125551');
INSERT INTO `fault_submit` VALUES ('1427950638294', 'root', 'dgjg', 'C:\\Users\\admin\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ITOS_V2\\images\\20155702125710.jpg', '2015-04-02 12:59:21', '待处理', '20155702125710');

-- ----------------------------
-- Table structure for `hot_issues_retrieval`
-- ----------------------------
DROP TABLE IF EXISTS `hot_issues_retrieval`;
CREATE TABLE `hot_issues_retrieval` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(1000) DEFAULT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `clickCount` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hot_issues_retrieval
-- ----------------------------
INSERT INTO `hot_issues_retrieval` VALUES ('12', '是的，有关接入的答案', '是不是接入相关的', 'access', '4', '2015-03-23 14:34:10');
INSERT INTO `hot_issues_retrieval` VALUES ('13', '答案多多', '已经很多接入问题呐', 'access', '3', '2015-03-23 14:36:20');
INSERT INTO `hot_issues_retrieval` VALUES ('14', '正在搜索中', '可以问接入问题大', 'access', '4', '2015-03-23 15:01:20');
INSERT INTO `hot_issues_retrieval` VALUES ('15', 'Index: 0', '报错原因：Index: 0', 'access', '1', '2015-03-23 17:26:11');
INSERT INTO `hot_issues_retrieval` VALUES ('16', '百度一下你就知道', '三线一库有哪些', 'line', '1', '2015-03-24 09:41:13');
INSERT INTO `hot_issues_retrieval` VALUES ('17', '1.查看设备和端口表数据看是否存在MNT_STATE_ID不正常的数据，有则修改 2.查看 lgc_switch_eqp 表中是否存在数据问题，没有需要补录数据', 'HA-NGN-GC-S3328-3，NGN（SS/TG/SG）节点，点击修改设备报这个错 资源处于事务态', 'stock', '7', '2015-03-24 10:10:51');
INSERT INTO `hot_issues_retrieval` VALUES ('18', '经分析研究 光终端盒LYG.580/GB00413这个设备在phy_equipment表中的area_id是64，而设备规格在PUB_RES_SPEC_LOCTION_SCORE表中所关联的area_id是63，所以导致设备location_cover_score 字段为空，改为63即可显示。', '设备覆盖地址默认分值功能存在问题', 'stock', '2', '2015-03-24 10:13:55');
INSERT INTO `hot_issues_retrieval` VALUES ('19', '清理地址是已经整理的地址，这种地址是由专门权限的人才能设置的，设置后，这种地址是不能归并的 。 清理地址不允许归并，要想可以归并，把清理标识给删了。 去掉清理标识必须是系统界面左边分段组里的“清理属性——已整理地址”前面勾勾点掉。', '地址界面做归并操作报错: 地址是已清理地址，禁止归并。', 'access', '2', '2015-03-24 10:16:20');
INSERT INTO `hot_issues_retrieval` VALUES ('20', 'select * from bse_equipment a where a.res_spec_id=205 and a.name = \'GPON蒋公岸交J655554FTTH改造A01\' ; select * from spc_tml a where a.tml_id=190122419; select * from bse_equipment a where a.tml_id=190122419; select * from SPC_STATION a where a.tml_id=190122419; select * from bse_room a where a.station_id=19020100019680;--这条有数据 机房里才能查找到，如果查找不到说明这里缺数据 这个局站下面没有机房所以查不到 bse_equipment指的是支撑设备', '机房名称:GPON蒋公岸交J655554FTTH改造A01', 'stock', '2', '2015-03-24 10:39:57');
INSERT INTO `hot_issues_retrieval` VALUES ('21', '首先查看下数据总线报文里面<field code=\"netDataInfo\">节点是否是空的，然后确认下该流程实例是建设单还是业务单。 建设单：网元信息同问题一，这里缺少新设备信息，网元不能轻易放下去，需要查找出原因。因为建设单的网元都是在链路配置的时候处理的，所以首先需要确认下链路是否有问题。 业务单: 数据类业务，常遇见的几类问题，资源拓展表中缺少宽带账号，该网元不是当前变更单处理的，链路有问题。语音类业务，这个常见的是链路配置完了没有触发SIP账号配置工单或者没触发物理号码配置工单。 其实这里，不管网元缺少旧设备信息还是缺少新设备信息，首先需要知道的是，当前变更单下面的工单，需要操作哪几个网元，比如链路配置，光路配置，物理号配置等等，这样的话哪个网元信息有问题，就可以知道哪个工单处理环节出现了问题。</field>', '资源系统报文网元节点里没有送【新设备信息】', 'access', '3', '2015-03-24 10:51:31');
INSERT INTO `hot_issues_retrieval` VALUES ('22', '如果是PSTN接入的，先找到交换母局节点（该设备被交换模块节点或者程控交换机直接承载），然后通过交换母局节点在表nbr_net_addr_namespace找到物理号码命名空间，然后通过命名空间找是否存在下单地区下的空闲可用物理号码。当然预留和非预留也要做个判断！ 如果是AG，起AG端口会绑定物理号码，记录在表dat_ngn_gateway中，选用该绑定的号码配置。如果是IAD和E8-C模式，分别找到注册的网关簇，然后判断承载网关簇的交换机是IMS还是SS的，当然IMS的不会配置实体物理号码，也不会报这种错误。如果是SS的，需要通过网关簇查到找命名空间，然后找下单地区下的空闲可用物理号码。', '物理号码配置提示“查询物理号码时候报错，信息如下：找不到可用的物理号码”', 'access', '2', '2015-03-24 10:55:21');
INSERT INTO `hot_issues_retrieval` VALUES ('23', '这个要拆除设备中的逻辑链路还存在业务连接，请确认链路拆除任务已处理处理完以后还会有一个要拆除设备中的物理链路还存在业务连接，请确认链路拆除任务已处理，对于这种的问题，如果确实还有业务号码占用链路请看物理及逻辑链路数据，然后进行具体处理。 select * from srv_ro_2_res a where a.ro_id=25800003976313; --查变更单端口 select a.*', '终端拆除异常:要拆除设备中的逻辑链路还存在业务连接，请确认链路拆除任务已处理。此类问题 如果这个终端上确实还有业务号码占用链路，拆机单如何处理', 'access', '2', '2015-03-24 10:59:04');
INSERT INTO `hot_issues_retrieval` VALUES ('24', '就是删物理链路和逻辑链路两张表 SELECT * FROM lnk_lgc_link_component lc WHERE lc.z_lgc_port_id in (\'25800001191969\'', '终端拆除异常:要拆除设备中的物理链路还存在业务连接，请确认链路拆除任务已处理', 'access', '1', '2015-03-25 09:06:30');
INSERT INTO `hot_issues_retrieval` VALUES ('25', 'select * from spc_address a where a.full_name=\'常州市天宁区龙城大道香溢紫郡\'; select * from spc_segment_member_list a where a.location_id=190502834569;', '公众客户属性 在数据库哪里查', 'stock', '1', '2015-03-25 15:02:49');
INSERT INTO `hot_issues_retrieval` VALUES ('26', '这种数据可能是某个链路组成太长了，导致越界了，联系开发后得知导出表格的时候会对数据进行对齐， 造成无法直观的表现出表格内的问题；这种情况下可以根据割接单编号查出其所有的接入号，然后在批量 号码查询线路中运用二分法导出分开导出割接单中的相关信息。', '割接单导出资料报错', 'stock', '2', '2015-03-25 15:06:58');
INSERT INTO `hot_issues_retrieval` VALUES ('27', '这个问题首先新的逻辑链路配置错了，应该是OLT到OBD，但是少了OBD一段。需要退单回来重新配置，但是目前系统下面几个配置环境都没有退单功能，所以目前的方法是先回单到IOM起流程， 然后IOM退单，退单原因选光路错，退到光路配置环节，重新配置。要在OSS的环境全部回单了，才能IOM启流程。让单子走下去到IOM，然后IOM退单到光路配置 。', 'OBD割接工单，停在PON割接逻辑链路配置，无法处理', 'stock', '1', '2015-03-25 15:29:46');
INSERT INTO `hot_issues_retrieval` VALUES ('28', '看纤芯 是否绑定局向线 绑定了局向线 说明有业务就是占用了', '请问CBL_FIBER这个表里，是不是cbl_line_id非空的就是说明这个纤芯是被占用的了么？', 'stock', '1', '2015-04-01 15:17:07');

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('中中中文');
