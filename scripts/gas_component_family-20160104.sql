/*
Navicat MySQL Data Transfer

Source Server         : sample-localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : gasdb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-01-04 18:37:46
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `gas_component_family`
-- ----------------------------
DROP TABLE IF EXISTS `gas_component_family`;
CREATE TABLE `gas_component_family` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6usc25fj27ryak7f7gxkm5v68` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gas_component_family
-- ----------------------------
INSERT INTO `gas_component_family` VALUES ('1', '0', null, 'Hydrocarbon');
INSERT INTO `gas_component_family` VALUES ('7', '0', null, 'Miscellaneous');
INSERT INTO `gas_component_family` VALUES ('9', '0', null, 'Alcohol');
