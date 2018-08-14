/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : role

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-08-14 11:11:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for permiss
-- ----------------------------
DROP TABLE IF EXISTS `permiss`;
CREATE TABLE `permiss` (
  `cguid` varchar(18) NOT NULL,
  `cName` varchar(18) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`cguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of permiss
-- ----------------------------
INSERT INTO `permiss` VALUES ('1', 'dept:update');
INSERT INTO `permiss` VALUES ('2', 'dept:delete');
INSERT INTO `permiss` VALUES ('3', 'dept:edit');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `cguid` varchar(18) NOT NULL,
  `cName` varchar(18) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`cguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin');
INSERT INTO `role` VALUES ('2', 'emp');

-- ----------------------------
-- Table structure for role_permiss
-- ----------------------------
DROP TABLE IF EXISTS `role_permiss`;
CREATE TABLE `role_permiss` (
  `cguid` varchar(18) NOT NULL,
  `permissId` varchar(18) DEFAULT NULL COMMENT '名称',
  `roleId` varchar(18) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`cguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of role_permiss
-- ----------------------------
INSERT INTO `role_permiss` VALUES ('1', '1', '1');
INSERT INTO `role_permiss` VALUES ('2', '2', '1');
INSERT INTO `role_permiss` VALUES ('3', '3', '1');
INSERT INTO `role_permiss` VALUES ('4', '1', '2');
INSERT INTO `role_permiss` VALUES ('5', '2', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `cguid` varchar(18) NOT NULL,
  `cName` varchar(18) DEFAULT NULL COMMENT '名称',
  `cPassword` varchar(100) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`cguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '4280d89a5a03f812751f504cc10ee8a5');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `cguid` varchar(18) NOT NULL,
  `userId` varchar(18) DEFAULT NULL COMMENT '名称',
  `roleId` varchar(18) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`cguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1');
