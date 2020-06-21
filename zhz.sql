/*
 Navicat Premium Data Transfer

 Source Server         : 123
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : zhz

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 24/06/2019 19:00:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_log` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_price` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 2, 'aaa', '傻妞', '华人牌', NULL);
INSERT INTO `orders` VALUES (3, 2, 'aaa', '傻妞', '华人牌', NULL);
INSERT INTO `orders` VALUES (4, 2, 'aaa', '傻妞', '华人牌', NULL);
INSERT INTO `orders` VALUES (8, 1, '456', '傻妞', '华人牌华人牌', NULL);
INSERT INTO `orders` VALUES (9, 2, 'aaa', '傻妞', '华人牌', 9);
INSERT INTO `orders` VALUES (10, 2, 'aaa', '傻妞', '华人牌', 9);
INSERT INTO `orders` VALUES (15, 1, 'abc', '傻妞', '华人牌华人牌', 99999999);
INSERT INTO `orders` VALUES (16, 1, 'abc', '傻妞', '华人牌华人牌', 99999999);
INSERT INTO `orders` VALUES (17, 3, 'abc', '风暴', '太子牌太子牌', 66666666);

-- ----------------------------
-- Table structure for phone
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone`  (
  `phone_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_log` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_cpu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_screen` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_charge` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`phone_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone
-- ----------------------------
INSERT INTO `phone` VALUES (1, '傻妞', '华人牌', '麒麟999999', '真人模式', '99999999', '100000w光能充电');
INSERT INTO `phone` VALUES (2, '太子', '太子牌', '高通666666', '全息投影', '88888888', '100000w快充');
INSERT INTO `phone` VALUES (3, '风暴', '太子牌', '麒麟888888', '全息投影', '66666666', '100000w快充');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `numbe` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 'zh', 1);
INSERT INTO `student` VALUES (2, 'a', 2);
INSERT INTO `student` VALUES (3, '2', 1);
INSERT INTO `student` VALUES (4, '1', 2);
INSERT INTO `student` VALUES (5, '1', 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'abc', '123');
INSERT INTO `user` VALUES (2, '123', '456');
INSERT INTO `user` VALUES (3, 'bcd', '456');
INSERT INTO `user` VALUES (4, 'bcd', '456');
INSERT INTO `user` VALUES (5, 'bcd', '456');
INSERT INTO `user` VALUES (6, 'bcd', '456');
INSERT INTO `user` VALUES (7, 'bcd', '456');
INSERT INTO `user` VALUES (8, 'fasdfasd', 'asdfasf');
INSERT INTO `user` VALUES (9, 'def', '456');
INSERT INTO `user` VALUES (10, 'tyu', 'tyu');
INSERT INTO `user` VALUES (11, 'qwe', '123');
INSERT INTO `user` VALUES (12, '啊', 'a');
INSERT INTO `user` VALUES (13, '456', '123');

SET FOREIGN_KEY_CHECKS = 1;
