/*
Navicat MySQL Data Transfer

Source Server         : sample-localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : gasdb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-01-04 17:16:09
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `system_procedure`
-- ----------------------------
DROP TABLE IF EXISTS `system_procedure`;
CREATE TABLE `system_procedure` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `action_name` varchar(255) DEFAULT NULL,
  `controller_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `next_id` bigint(20) DEFAULT NULL,
  `previous_id` bigint(20) DEFAULT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `view_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_cc35aqiqibt35f7oi6b3a7e5p` (`name`),
  KEY `FK_hb3wr8lfurf3r0y3qt2ku7ali` (`next_id`),
  KEY `FK_qoihmm7f3k6inga0kwdx4631r` (`previous_id`),
  CONSTRAINT `FK_hb3wr8lfurf3r0y3qt2ku7ali` FOREIGN KEY (`next_id`) REFERENCES `system_procedure` (`id`),
  CONSTRAINT `FK_qoihmm7f3k6inga0kwdx4631r` FOREIGN KEY (`previous_id`) REFERENCES `system_procedure` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_procedure
-- ----------------------------
INSERT INTO `system_procedure` VALUES ('1', '1', 'prepareImportGasComponentNames', 'fluidGasTools', '1.导入气体组分名称', '2', null, 'gasComponentNames', null);
INSERT INTO `system_procedure` VALUES ('2', '0', 'importGascomponentNames', 'fluidGasTools', '1.1执行导入', null, '1', null, null);
