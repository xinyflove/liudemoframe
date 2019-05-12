/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : call_out

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-05-12 22:32:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `forum`
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `forum_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) NOT NULL COMMENT '昵称',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `content` varchar(500) NOT NULL COMMENT '论坛内容',
  `created_time` int(10) unsigned DEFAULT '0' COMMENT '发布时间',
  PRIMARY KEY (`forum_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES ('2', '小峰', 'xinyflove@sina.com', 'sfadf', '1557586215');
INSERT INTO `forum` VALUES ('3', '小峰', 'xinyflove@sina.com', 'sfadf', '1557586414');
INSERT INTO `forum` VALUES ('4', '小峰', 'xinyflove@sina.com', 'sfadf', '1557586423');
INSERT INTO `forum` VALUES ('5', '小峰', 'xinyflove@sina.com', 'sfadf', '1557586423');
INSERT INTO `forum` VALUES ('6', '小峰', 'xinyflove@sina.com', 'sfadf', '1557586424');
INSERT INTO `forum` VALUES ('7', '小峰', 'xinyflove@sina.com', 'sfadf', '1557586426');
INSERT INTO `forum` VALUES ('8', '小峰', 'xinyflove@sina.com', 'sfadf', '1557586427');
INSERT INTO `forum` VALUES ('9', '小峰', 'xinyflove@sina.com', 'sfadf', '1557586702');
INSERT INTO `forum` VALUES ('10', '小峰', 'xinyflove@sina.com', 'sfadf', '1557586719');
INSERT INTO `forum` VALUES ('11', '小峰', 'xinyflove@sina.com', 'sfadf', '1557586758');
