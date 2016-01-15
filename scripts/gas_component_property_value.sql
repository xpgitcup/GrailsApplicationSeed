/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : gasdb

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-01-15 22:09:53
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `gas_component_property_value`
-- ----------------------------
DROP TABLE IF EXISTS `gas_component_property_value`;
CREATE TABLE `gas_component_property_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `gas_component_id` bigint(20) NOT NULL,
  `gas_component_property_id` bigint(20) NOT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cvpyfoueuximcag6gf53d8cob` (`gas_component_id`),
  KEY `FK_rw8lpc9rgo322vp526dsaml8h` (`gas_component_property_id`),
  CONSTRAINT `FK_cvpyfoueuximcag6gf53d8cob` FOREIGN KEY (`gas_component_id`) REFERENCES `gas_component` (`id`),
  CONSTRAINT `FK_rw8lpc9rgo322vp526dsaml8h` FOREIGN KEY (`gas_component_property_id`) REFERENCES `gas_component_property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gas_component_property_value
-- ----------------------------
INSERT INTO `gas_component_property_value` VALUES ('1', '0', '17', '4', '220.89');
INSERT INTO `gas_component_property_value` VALUES ('2', '0', '17', '8', '56');
INSERT INTO `gas_component_property_value` VALUES ('3', '0', '17', '3', '374.15');
INSERT INTO `gas_component_property_value` VALUES ('4', '0', '17', '10', '5.63');
INSERT INTO `gas_component_property_value` VALUES ('5', '0', '17', '11', '0.01');
INSERT INTO `gas_component_property_value` VALUES ('6', '0', '17', '5', '0.344');
INSERT INTO `gas_component_property_value` VALUES ('7', '0', '17', '1', '18.015');
INSERT INTO `gas_component_property_value` VALUES ('8', '0', '17', '6', '100');
INSERT INTO `gas_component_property_value` VALUES ('9', '0', '17', '12', '1374.4');
INSERT INTO `gas_component_property_value` VALUES ('10', '0', '17', '2', '0.999');
INSERT INTO `gas_component_property_value` VALUES ('11', '0', '22', '4', '80.96');
INSERT INTO `gas_component_property_value` VALUES ('12', '0', '22', '8', '99');
INSERT INTO `gas_component_property_value` VALUES ('13', '0', '22', '3', '239.45');
INSERT INTO `gas_component_property_value` VALUES ('14', '0', '22', '10', '12.8');
INSERT INTO `gas_component_property_value` VALUES ('15', '0', '22', '11', '0.036');
INSERT INTO `gas_component_property_value` VALUES ('16', '0', '22', '5', '0.559');
INSERT INTO `gas_component_property_value` VALUES ('17', '0', '22', '1', '32.042');
INSERT INTO `gas_component_property_value` VALUES ('18', '0', '22', '6', '64.55');
INSERT INTO `gas_component_property_value` VALUES ('19', '0', '22', '12', '11132.1');
INSERT INTO `gas_component_property_value` VALUES ('20', '0', '22', '2', '0.797');
INSERT INTO `gas_component_property_value` VALUES ('21', '0', '62', '4', '61.4');
INSERT INTO `gas_component_property_value` VALUES ('22', '0', '62', '8', '167');
INSERT INTO `gas_component_property_value` VALUES ('23', '0', '62', '3', '240.75');
INSERT INTO `gas_component_property_value` VALUES ('24', '0', '62', '10', '11.48');
INSERT INTO `gas_component_property_value` VALUES ('25', '0', '62', '11', '0');
INSERT INTO `gas_component_property_value` VALUES ('26', '0', '62', '5', '0.644');
INSERT INTO `gas_component_property_value` VALUES ('27', '0', '62', '1', '46.069');
INSERT INTO `gas_component_property_value` VALUES ('28', '0', '62', '6', '78.25');
INSERT INTO `gas_component_property_value` VALUES ('29', '0', '62', '12', '20889.7');
INSERT INTO `gas_component_property_value` VALUES ('30', '0', '62', '2', '0.794');
INSERT INTO `gas_component_property_value` VALUES ('31', '0', '63', '4', '33.13');
INSERT INTO `gas_component_property_value` VALUES ('32', '0', '63', '8', '450');
INSERT INTO `gas_component_property_value` VALUES ('33', '0', '63', '3', '437');
INSERT INTO `gas_component_property_value` VALUES ('34', '0', '63', '10', '29.65');
INSERT INTO `gas_component_property_value` VALUES ('35', '0', '63', '5', '1.287');
INSERT INTO `gas_component_property_value` VALUES ('36', '0', '63', '1', '90.122');
INSERT INTO `gas_component_property_value` VALUES ('37', '0', '63', '6', '188.3');
INSERT INTO `gas_component_property_value` VALUES ('38', '0', '63', '12', '51534.4');
INSERT INTO `gas_component_property_value` VALUES ('39', '0', '63', '2', '0.851');
INSERT INTO `gas_component_property_value` VALUES ('40', '0', '23', '4', '90');
INSERT INTO `gas_component_property_value` VALUES ('41', '0', '23', '8', '186');
INSERT INTO `gas_component_property_value` VALUES ('42', '0', '23', '3', '446.85');
INSERT INTO `gas_component_property_value` VALUES ('43', '0', '23', '10', '6.98');
INSERT INTO `gas_component_property_value` VALUES ('44', '0', '23', '11', '0.00863');
INSERT INTO `gas_component_property_value` VALUES ('45', '0', '23', '5', '0.535');
INSERT INTO `gas_component_property_value` VALUES ('46', '0', '23', '1', '62.069');
INSERT INTO `gas_component_property_value` VALUES ('47', '0', '23', '6', '197.35');
INSERT INTO `gas_component_property_value` VALUES ('48', '0', '23', '12', '32019.8');
INSERT INTO `gas_component_property_value` VALUES ('49', '0', '23', '2', '1.117');
INSERT INTO `gas_component_property_value` VALUES ('50', '0', '60', '4', '46.61');
INSERT INTO `gas_component_property_value` VALUES ('51', '0', '60', '8', '316');
INSERT INTO `gas_component_property_value` VALUES ('52', '0', '60', '3', '407.85');
INSERT INTO `gas_component_property_value` VALUES ('53', '0', '60', '10', '17.22');
INSERT INTO `gas_component_property_value` VALUES ('54', '0', '60', '11', '-0.0161');
INSERT INTO `gas_component_property_value` VALUES ('55', '0', '60', '5', '1.201');
INSERT INTO `gas_component_property_value` VALUES ('56', '0', '60', '1', '106.122');
INSERT INTO `gas_component_property_value` VALUES ('57', '0', '60', '6', '245.85');
INSERT INTO `gas_component_property_value` VALUES ('58', '0', '60', '12', '62664.5');
INSERT INTO `gas_component_property_value` VALUES ('59', '0', '60', '2', '1.119');
INSERT INTO `gas_component_property_value` VALUES ('60', '0', '44', '4', '33.13');
INSERT INTO `gas_component_property_value` VALUES ('61', '0', '44', '8', '450');
INSERT INTO `gas_component_property_value` VALUES ('62', '0', '44', '3', '437');
INSERT INTO `gas_component_property_value` VALUES ('63', '0', '44', '10', '29.65');
INSERT INTO `gas_component_property_value` VALUES ('64', '0', '44', '11', '-0.0231');
INSERT INTO `gas_component_property_value` VALUES ('65', '0', '44', '5', '1.287');
INSERT INTO `gas_component_property_value` VALUES ('66', '0', '44', '1', '150.175');
INSERT INTO `gas_component_property_value` VALUES ('67', '0', '44', '6', '278.3');
INSERT INTO `gas_component_property_value` VALUES ('68', '0', '44', '12', '93309.2');
INSERT INTO `gas_component_property_value` VALUES ('69', '0', '44', '2', '1.127');
INSERT INTO `gas_component_property_value` VALUES ('70', '0', '64', '4', '33.13');
INSERT INTO `gas_component_property_value` VALUES ('71', '0', '64', '8', '450');
INSERT INTO `gas_component_property_value` VALUES ('72', '0', '64', '3', '437');
INSERT INTO `gas_component_property_value` VALUES ('73', '0', '64', '10', '7');
INSERT INTO `gas_component_property_value` VALUES ('74', '0', '64', '5', '1.287');
INSERT INTO `gas_component_property_value` VALUES ('75', '0', '64', '1', '148.2');
INSERT INTO `gas_component_property_value` VALUES ('76', '0', '64', '6', '278.3');
INSERT INTO `gas_component_property_value` VALUES ('77', '0', '64', '12', '91935.3');
INSERT INTO `gas_component_property_value` VALUES ('78', '0', '64', '2', '0.951');
INSERT INTO `gas_component_property_value` VALUES ('79', '0', '65', '4', '33.13');
INSERT INTO `gas_component_property_value` VALUES ('80', '0', '65', '8', '450');
INSERT INTO `gas_component_property_value` VALUES ('81', '0', '65', '3', '437');
INSERT INTO `gas_component_property_value` VALUES ('82', '0', '65', '10', '-15.3');
INSERT INTO `gas_component_property_value` VALUES ('83', '0', '65', '5', '1.287');
INSERT INTO `gas_component_property_value` VALUES ('84', '0', '65', '1', '182.174');
INSERT INTO `gas_component_property_value` VALUES ('85', '0', '65', '6', '278.3');
INSERT INTO `gas_component_property_value` VALUES ('86', '0', '65', '12', '115568.8');
INSERT INTO `gas_component_property_value` VALUES ('87', '0', '65', '2', '1.022');
INSERT INTO `gas_component_property_value` VALUES ('88', '0', '59', '4', '77.01');
INSERT INTO `gas_component_property_value` VALUES ('89', '0', '59', '8', '255');
INSERT INTO `gas_component_property_value` VALUES ('90', '0', '59', '3', '371.85');
INSERT INTO `gas_component_property_value` VALUES ('91', '0', '59', '10', '-8.41');
INSERT INTO `gas_component_property_value` VALUES ('92', '0', '59', '5', '1.146');
INSERT INTO `gas_component_property_value` VALUES ('93', '0', '59', '1', '92.095');
INSERT INTO `gas_component_property_value` VALUES ('94', '0', '59', '6', '289.85');
INSERT INTO `gas_component_property_value` VALUES ('95', '0', '59', '12', '52906.9');
INSERT INTO `gas_component_property_value` VALUES ('96', '0', '59', '2', '1.261');
INSERT INTO `gas_component_property_value` VALUES ('97', '0', '61', '4', '35.46');
INSERT INTO `gas_component_property_value` VALUES ('98', '0', '61', '3', '426.85');
INSERT INTO `gas_component_property_value` VALUES ('99', '0', '61', '10', '0');
INSERT INTO `gas_component_property_value` VALUES ('100', '0', '61', '11', '0');
INSERT INTO `gas_component_property_value` VALUES ('101', '0', '61', '5', '1');
INSERT INTO `gas_component_property_value` VALUES ('102', '0', '61', '1', '58.443');
INSERT INTO `gas_component_property_value` VALUES ('103', '0', '61', '6', '1413');
INSERT INTO `gas_component_property_value` VALUES ('104', '0', '61', '12', '29497.5');
INSERT INTO `gas_component_property_value` VALUES ('105', '0', '61', '2', '2.165');
INSERT INTO `gas_component_property_value` VALUES ('106', '0', '66', '4', '35.46');
INSERT INTO `gas_component_property_value` VALUES ('107', '0', '66', '3', '526.85');
INSERT INTO `gas_component_property_value` VALUES ('108', '0', '66', '10', '0');
INSERT INTO `gas_component_property_value` VALUES ('109', '0', '66', '11', '0');
INSERT INTO `gas_component_property_value` VALUES ('110', '0', '66', '5', '1');
INSERT INTO `gas_component_property_value` VALUES ('111', '0', '66', '1', '68.01');
INSERT INTO `gas_component_property_value` VALUES ('112', '0', '66', '12', '36152.6');
INSERT INTO `gas_component_property_value` VALUES ('113', '0', '66', '2', '1.92');
INSERT INTO `gas_component_property_value` VALUES ('114', '0', '67', '4', '35.46');
INSERT INTO `gas_component_property_value` VALUES ('115', '0', '67', '3', '526.85');
INSERT INTO `gas_component_property_value` VALUES ('116', '0', '67', '10', '0');
INSERT INTO `gas_component_property_value` VALUES ('117', '0', '67', '11', '0');
INSERT INTO `gas_component_property_value` VALUES ('118', '0', '67', '5', '1');
INSERT INTO `gas_component_property_value` VALUES ('119', '0', '67', '1', '74.55');
INSERT INTO `gas_component_property_value` VALUES ('120', '0', '67', '12', '40702');
INSERT INTO `gas_component_property_value` VALUES ('121', '0', '67', '2', '1.98');
INSERT INTO `gas_component_property_value` VALUES ('122', '0', '68', '4', '35.46');
INSERT INTO `gas_component_property_value` VALUES ('123', '0', '68', '3', '526.85');
INSERT INTO `gas_component_property_value` VALUES ('124', '0', '68', '10', '0');
INSERT INTO `gas_component_property_value` VALUES ('125', '0', '68', '11', '0');
INSERT INTO `gas_component_property_value` VALUES ('126', '0', '68', '5', '1');
INSERT INTO `gas_component_property_value` VALUES ('127', '0', '68', '1', '84.12');
INSERT INTO `gas_component_property_value` VALUES ('128', '0', '68', '12', '47359.2');
INSERT INTO `gas_component_property_value` VALUES ('129', '0', '68', '2', '1.91');
INSERT INTO `gas_component_property_value` VALUES ('130', '0', '69', '4', '35.46');
INSERT INTO `gas_component_property_value` VALUES ('131', '0', '69', '3', '426.85');
INSERT INTO `gas_component_property_value` VALUES ('132', '0', '69', '10', '0');
INSERT INTO `gas_component_property_value` VALUES ('133', '0', '69', '11', '0');
INSERT INTO `gas_component_property_value` VALUES ('134', '0', '69', '5', '1');
INSERT INTO `gas_component_property_value` VALUES ('135', '0', '69', '1', '102.9');
INSERT INTO `gas_component_property_value` VALUES ('136', '0', '69', '6', '1413');
INSERT INTO `gas_component_property_value` VALUES ('137', '0', '69', '12', '60423.2');
INSERT INTO `gas_component_property_value` VALUES ('138', '0', '69', '2', '3');
INSERT INTO `gas_component_property_value` VALUES ('139', '0', '70', '4', '35.46');
INSERT INTO `gas_component_property_value` VALUES ('140', '0', '70', '3', '526.85');
INSERT INTO `gas_component_property_value` VALUES ('141', '0', '70', '10', '0');
INSERT INTO `gas_component_property_value` VALUES ('142', '0', '70', '11', '0');
INSERT INTO `gas_component_property_value` VALUES ('143', '0', '70', '5', '1');
INSERT INTO `gas_component_property_value` VALUES ('144', '0', '70', '1', '110.986');
INSERT INTO `gas_component_property_value` VALUES ('145', '0', '70', '6', '1600');
INSERT INTO `gas_component_property_value` VALUES ('146', '0', '70', '12', '66048.1');
INSERT INTO `gas_component_property_value` VALUES ('147', '0', '70', '2', '2.152');
INSERT INTO `gas_component_property_value` VALUES ('148', '0', '71', '4', '35.46');
INSERT INTO `gas_component_property_value` VALUES ('149', '0', '71', '3', '526.85');
INSERT INTO `gas_component_property_value` VALUES ('150', '0', '71', '10', '0');
INSERT INTO `gas_component_property_value` VALUES ('151', '0', '71', '11', '0');
INSERT INTO `gas_component_property_value` VALUES ('152', '0', '71', '5', '1');
INSERT INTO `gas_component_property_value` VALUES ('153', '0', '71', '1', '119.01');
INSERT INTO `gas_component_property_value` VALUES ('154', '0', '71', '12', '71629.8');
INSERT INTO `gas_component_property_value` VALUES ('155', '0', '71', '2', '2.75');
INSERT INTO `gas_component_property_value` VALUES ('156', '0', '72', '4', '35.46');
INSERT INTO `gas_component_property_value` VALUES ('157', '0', '72', '3', '526.85');
INSERT INTO `gas_component_property_value` VALUES ('158', '0', '72', '10', '0');
INSERT INTO `gas_component_property_value` VALUES ('159', '0', '72', '11', '0');
INSERT INTO `gas_component_property_value` VALUES ('160', '0', '72', '5', '1');
INSERT INTO `gas_component_property_value` VALUES ('161', '0', '72', '1', '195.94');
INSERT INTO `gas_component_property_value` VALUES ('162', '0', '72', '12', '125144.8');
INSERT INTO `gas_component_property_value` VALUES ('163', '0', '72', '2', '3.1');
