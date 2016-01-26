/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : gasdb

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-01-25 16:38:59
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `fluid_gas`
-- ----------------------------
DROP TABLE IF EXISTS `fluid_gas`;
CREATE TABLE `fluid_gas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pseudo_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8j9bvv20xmra7c6ieesp1qnj2` (`pseudo_id`),
  CONSTRAINT `FK_8j9bvv20xmra7c6ieesp1qnj2` FOREIGN KEY (`pseudo_id`) REFERENCES `pseudo_component` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fluid_gas
-- ----------------------------
INSERT INTO `fluid_gas` VALUES ('1', '0', 'BN', '1');
