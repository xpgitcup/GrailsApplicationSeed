/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : gasdb

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-01-25 16:39:06
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `component_factor`
-- ----------------------------
DROP TABLE IF EXISTS `component_factor`;
CREATE TABLE `component_factor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `fluid_gas_id` bigint(20) NOT NULL,
  `gas_component_id` bigint(20) NOT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hs2s7b6kviaa4ykpx5oynr507` (`fluid_gas_id`),
  KEY `FK_3j97outpxwcr8p7949gls7a63` (`gas_component_id`),
  CONSTRAINT `FK_3j97outpxwcr8p7949gls7a63` FOREIGN KEY (`gas_component_id`) REFERENCES `gas_component` (`id`),
  CONSTRAINT `FK_hs2s7b6kviaa4ykpx5oynr507` FOREIGN KEY (`fluid_gas_id`) REFERENCES `fluid_gas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of component_factor
-- ----------------------------
INSERT INTO `component_factor` VALUES ('1', '0', '1', '1', '83.2');
INSERT INTO `component_factor` VALUES ('2', '0', '1', '2', '5.9');
INSERT INTO `component_factor` VALUES ('3', '0', '1', '3', '2.25');
INSERT INTO `component_factor` VALUES ('4', '0', '1', '4', '0.437');
INSERT INTO `component_factor` VALUES ('5', '0', '1', '5', '1.01');
INSERT INTO `component_factor` VALUES ('6', '0', '1', '6', '0.285');
INSERT INTO `component_factor` VALUES ('7', '0', '1', '7', '0.419');
INSERT INTO `component_factor` VALUES ('8', '0', '1', '8', '0.073');
INSERT INTO `component_factor` VALUES ('9', '0', '1', '15', '0');
INSERT INTO `component_factor` VALUES ('10', '0', '1', '13', '1.107');
INSERT INTO `component_factor` VALUES ('11', '0', '1', '14', '5.319');
INSERT INTO `component_factor` VALUES ('12', '0', '1', '17', '0');
