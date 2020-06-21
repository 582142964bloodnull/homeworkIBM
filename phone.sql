/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : phone_manufacturing_works

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-05-04 20:40:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phone
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `Phomod` char(10) NOT NULL,
  `Phobra` char(10) DEFAULT NULL,
  `Systemker` char(20) DEFAULT NULL,
  `Cpumod` char(10) DEFAULT NULL,
  `Cpunum` int(11) DEFAULT NULL,
  `Phocolor` char(10) DEFAULT NULL,
  `Scrbra` char(20) DEFAULT NULL,
  `Scrsize` double DEFAULT NULL,
  `Resolution` char(20) DEFAULT NULL,
  `Pixelden` int(11) DEFAULT NULL,
  `Gpumod` char(20) DEFAULT NULL,
  `Rancap` char(10) DEFAULT NULL,
  `Romcap` char(10) DEFAULT NULL,
  `Batmod` char(20) DEFAULT NULL,
  `Batcap` char(20) DEFAULT NULL,
  `Cambra` char(20) DEFAULT NULL,
  `ACambra` char(20) DEFAULT NULL,
  `Propixel` char(20) DEFAULT NULL,
  `Aftpixel` char(20) DEFAULT NULL,
  `Camsenmod` char(20) DEFAULT NULL,
  `Flash` char(20) DEFAULT NULL,
  `Weight` double DEFAULT NULL,
  `Fusmat` char(20) DEFAULT NULL,
  `Senmod` char(20) DEFAULT NULL,
  PRIMARY KEY (`Phomod`),
  KEY `Phomod` (`Phomod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
