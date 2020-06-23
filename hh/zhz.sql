/*
Navicat MySQL Data Transfer

Source Server         : 11
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2020-06-23 20:37:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `game`
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `game_plat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `game_age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `game_memory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `game_price` varchar(255) COLLATE utf8_unicode_ci NOT 
NULL,
  `game_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`game_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of game
-- ----------------------------
INSERT INTO `game` VALUES ('1', '精灵宝可梦', 'switch', '10+', '128G', '233', '养成游戏');
INSERT INTO `game` VALUES ('2', '刺客辣条', 'ps4', '17+', '500G', '668', '动作游戏');
INSERT INTO `game` VALUES ('3', '绝地求生', 'pc', '18+', '100G', '98', '射击游戏');
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `game_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `game_plat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `game_price` int(255) DEFAULT NULL,
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
