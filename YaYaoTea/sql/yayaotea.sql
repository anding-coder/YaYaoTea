/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : yayaotea

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-02-23 19:36:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `customer_tb`
-- ----------------------------
DROP TABLE IF EXISTS `customer_tb`;
CREATE TABLE `customer_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(24) DEFAULT NULL,
  `cellPhone` varchar(24) DEFAULT NULL,
  `email` varchar(24) DEFAULT NULL,
  `teaType` varchar(24) DEFAULT NULL,
  `totaladdress` varchar(256) DEFAULT NULL,
  `referTime` datetime(6) DEFAULT NULL,
  `orderStatus` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_tb
-- ----------------------------
INSERT INTO `customer_tb` VALUES ('1', 'dfg', 'dfg', 'dfg', 'dfg', 'dfg', '2016-02-18 15:24:20.000000', '0');
INSERT INTO `customer_tb` VALUES ('9', 'tff', '4578784', 'hdhdvx@qq.com', '黑马黑茶', '湖南长沙长沙市xhhxh', '2016-02-19 16:45:07.000000', '1');
INSERT INTO `customer_tb` VALUES ('10', 'fhfj', '455767676', '45875@qq.com', '黑马黑茶', '湖南长沙长沙市dhdhh', '2016-02-19 16:47:02.000000', '0');
INSERT INTO `customer_tb` VALUES ('13', 'fdg', '15111336584', '278156156@qq.com', '黑马黑茶', '湖南长沙长沙市sdf', '2016-02-23 10:32:29.000000', '0');
