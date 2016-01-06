/*
Navicat MySQL Data Transfer

Source Server         : sample-localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : gasdb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-01-06 11:23:26
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `property_family`
-- ----------------------------
DROP TABLE IF EXISTS `property_family`;
CREATE TABLE `property_family` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_fwltode97qxl5vfc93yqvdcry` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of property_family
-- ----------------------------
INSERT INTO `property_family` VALUES ('1', '0', '与状态无关，至于组分相关', '简单物性');
INSERT INTO `property_family` VALUES ('2', '0', '与状态有关，与组分相关', '状态参数');
INSERT INTO `property_family` VALUES ('3', '0', '对应于不同状态方程', '状态方程的系数');
