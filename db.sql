/*
 Navicat Premium Data Transfer

 Source Server         : homework
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : db

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 06/06/2023 15:07:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `account` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `type` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', '123456', 'admin');
INSERT INTO `admin` VALUES ('super', '123456', 'superadmin');
INSERT INTO `admin` VALUES ('root', '123456', 'admin');

-- ----------------------------
-- Table structure for allowancetable
-- ----------------------------
DROP TABLE IF EXISTS `allowancetable`;
CREATE TABLE `allowancetable`  (
  `staffcode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工编号',
  `date1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `bonus` bigint(0) NULL DEFAULT NULL COMMENT '奖金',
  `overtimepays` bigint(0) NULL DEFAULT NULL COMMENT '加班费',
  `chargebacks` bigint(0) NULL DEFAULT NULL COMMENT '请假扣款',
  `fulltimewage` bigint(0) NULL DEFAULT NULL COMMENT '全勤奖',
  `lunchsubsidy` bigint(0) NULL DEFAULT NULL COMMENT '午餐补贴'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of allowancetable
-- ----------------------------
INSERT INTO `allowancetable` VALUES ('st03', '2019.1', 3000, 0, 0, 0, 200);
INSERT INTO `allowancetable` VALUES ('st04', '2019.1', 3200, 0, 200, 0, 200);
INSERT INTO `allowancetable` VALUES ('st05', '2019.1', 6000, 1200, 0, 100, 200);
INSERT INTO `allowancetable` VALUES ('st06', '2019.1', 7000, 0, 0, 0, 200);
INSERT INTO `allowancetable` VALUES ('st07', '2019.1', 3000, 800, 0, 100, 200);
INSERT INTO `allowancetable` VALUES ('st08', '2019.1', 3800, 0, 0, 0, 200);
INSERT INTO `allowancetable` VALUES ('st09', '2019.1', 2000, 0, 0, 0, 200);
INSERT INTO `allowancetable` VALUES ('st03', '2019.2', 4000, 0, 0, 0, 100);
INSERT INTO `allowancetable` VALUES ('st04', '2019.2', 6000, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st05', '2019.2', 6000, 1200, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st06', '2019.2', 6522, 0, 20, 100, 0);
INSERT INTO `allowancetable` VALUES ('st07', '2019.2', 4200, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st08', '2019.2', 4100, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st09', '2019.2', 4000, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st03', '2022.8', 1234, 354, 423, 654, 456);
INSERT INTO `allowancetable` VALUES ('st04', '2022.8', 12, 543, 645, 645, 645);
INSERT INTO `allowancetable` VALUES ('st05', '2022.8', 45654, 0, 45, 453, 0);
INSERT INTO `allowancetable` VALUES ('st06', '2022.8', 114514, 1919, 0, 233, 810);
INSERT INTO `allowancetable` VALUES ('st07', '2022.8', 45656, 54345, 5466, 35435, 345);
INSERT INTO `allowancetable` VALUES ('st01', '2022.9', 233, 12345, 312, 321, 213);
INSERT INTO `allowancetable` VALUES ('st02', '2022.9', 123, 132, 1232121, 312312, 213312);
INSERT INTO `allowancetable` VALUES ('st03', '2022.9', 132, 213123, 0, 312312, 123);
INSERT INTO `allowancetable` VALUES ('st04', '2022.9', 0, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st05', '2022.9', 0, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st06', '2022.9', 0, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st07', '2022.9', 0, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st08', '2022.9', 0, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st114', '2022.9', 0, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st01', '2022.6', 200, 500, 100, 321, 213);
INSERT INTO `allowancetable` VALUES ('st02', '2022.6', 123, 132, 123, 312, 213);
INSERT INTO `allowancetable` VALUES ('st03', '2022.6', 1354, 123, 423, 456, 321);
INSERT INTO `allowancetable` VALUES ('st04', '2022.6', 123, 546, 12, 456, 78);
INSERT INTO `allowancetable` VALUES ('st05', '2022.6', 123, 645, 12, 453, 356);
INSERT INTO `allowancetable` VALUES ('st06', '2022.6', 435, 12353, 4503, 453, 345);
INSERT INTO `allowancetable` VALUES ('st07', '2022.6', 354, 45, 4530, 345, 543);
INSERT INTO `allowancetable` VALUES ('st08', '2022.6', 453, 345, 123, 543, 453);
INSERT INTO `allowancetable` VALUES ('st114', '2022.6', 453, 435, 534, 543, 435453);
INSERT INTO `allowancetable` VALUES ('st24', '2022.6', 354, 345, 312, 534, 345);
INSERT INTO `allowancetable` VALUES ('st01', '2020.1', 200, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st02', '2020.1', 123, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st03', '2020.1', 132, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st04', '2020.1', 0, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st05', '2020.1', 0, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st06', '2020.1', 0, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st07', '2020.1', 0, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st08', '2020.1', 0, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st114', '2020.1', 0, 0, 0, 0, 0);
INSERT INTO `allowancetable` VALUES ('st24', '2020.1', 243, 411, 100, 400, 345);

-- ----------------------------
-- Table structure for attendtable
-- ----------------------------
DROP TABLE IF EXISTS `attendtable`;
CREATE TABLE `attendtable`  (
  `staffcode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工编号',
  `date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `normal` bigint(0) NULL DEFAULT NULL COMMENT '应到天数',
  `actual` bigint(0) NULL DEFAULT NULL COMMENT '实到天数',
  `overattendence` bigint(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attendtable
-- ----------------------------
INSERT INTO `attendtable` VALUES ('st03', '2019.1', 21, 21, 0);
INSERT INTO `attendtable` VALUES ('st03', '2019.2', 18, 18, 4);
INSERT INTO `attendtable` VALUES ('st04', '2019.1', 21, 21, 0);
INSERT INTO `attendtable` VALUES ('st04', '2019.2', 18, 15, 0);
INSERT INTO `attendtable` VALUES ('st05', '2019.1', 21, 21, 4);
INSERT INTO `attendtable` VALUES ('st05', '2019.2', 18, 16, 0);
INSERT INTO `attendtable` VALUES ('st06', '2019.1', 21, 18, 0);
INSERT INTO `attendtable` VALUES ('st06', '2019.2', 18, 17, 1);
INSERT INTO `attendtable` VALUES ('st07', '2019.1', 21, 21, 2);
INSERT INTO `attendtable` VALUES ('st07', '2019.2', 18, 18, 0);
INSERT INTO `attendtable` VALUES ('st08', '2019.1', 21, 20, 0);
INSERT INTO `attendtable` VALUES ('st08', '2019.2', 18, 15, 0);
INSERT INTO `attendtable` VALUES ('st09', '2019.1', 21, 18, 0);
INSERT INTO `attendtable` VALUES ('st09', '2019.2', 18, 16, 0);
INSERT INTO `attendtable` VALUES ('st03', '2022.6', 21, 21, 5);
INSERT INTO `attendtable` VALUES ('st04', '2022.6', 21, 20, 0);
INSERT INTO `attendtable` VALUES ('st05', '2022.6', 21, 24, 3);
INSERT INTO `attendtable` VALUES ('st06', '2022.6', 21, 22, 3);
INSERT INTO `attendtable` VALUES ('st07', '2022.6', 21, 30, 5);
INSERT INTO `attendtable` VALUES ('st03', '2001.11', 20, 20, 5);
INSERT INTO `attendtable` VALUES ('st04', '2001.11', 20, 20, 2);
INSERT INTO `attendtable` VALUES ('st05', '2001.11', 20, 5, 0);
INSERT INTO `attendtable` VALUES ('st06', '2001.11', 20, 18, 12);
INSERT INTO `attendtable` VALUES ('st07', '2001.11', 20, 21, 5);
INSERT INTO `attendtable` VALUES ('st114', '2020.6', 28, 26, 0);
INSERT INTO `attendtable` VALUES ('st01', '2020.6', 28, 28, 0);
INSERT INTO `attendtable` VALUES ('st03', '2020.6', 28, 28, 2);
INSERT INTO `attendtable` VALUES ('st04', '2020.6', 28, 22, 2);
INSERT INTO `attendtable` VALUES ('st05', '2020.6', 28, 10, 0);
INSERT INTO `attendtable` VALUES ('st06', '2020.6', 28, 13, 4);
INSERT INTO `attendtable` VALUES ('st02', '2020.6', 28, 25, 6);
INSERT INTO `attendtable` VALUES ('st07', '2020.6', 28, 29, 1);
INSERT INTO `attendtable` VALUES ('st08', '2020.6', 28, 0, 0);
INSERT INTO `attendtable` VALUES ('st114', '2022.9', 20, 26, 0);
INSERT INTO `attendtable` VALUES ('st01', '2022.9', 20, 28, 0);
INSERT INTO `attendtable` VALUES ('st03', '2022.9', 20, 28, 2);
INSERT INTO `attendtable` VALUES ('st04', '2022.9', 20, 22, 2);
INSERT INTO `attendtable` VALUES ('st05', '2022.9', 20, 10, 0);
INSERT INTO `attendtable` VALUES ('st06', '2022.9', 20, 13, 4);
INSERT INTO `attendtable` VALUES ('st02', '2022.9', 20, 25, 6);
INSERT INTO `attendtable` VALUES ('st07', '2022.9', 20, 29, 1);
INSERT INTO `attendtable` VALUES ('st08', '2022.9', 20, 0, 0);
INSERT INTO `attendtable` VALUES ('st04', '2020.1', 21, 26, 0);
INSERT INTO `attendtable` VALUES ('st114', '2020.1', 21, 5, 0);
INSERT INTO `attendtable` VALUES ('st24', '2020.1', 21, 28, 5);
INSERT INTO `attendtable` VALUES ('st01', '2020.1', 21, 22, 2);
INSERT INTO `attendtable` VALUES ('st03', '2020.1', 21, 10, 0);
INSERT INTO `attendtable` VALUES ('st05', '2020.1', 21, 13, 4);
INSERT INTO `attendtable` VALUES ('st06', '2020.1', 21, 28, 8);
INSERT INTO `attendtable` VALUES ('st02', '2020.1', 21, 29, 5);
INSERT INTO `attendtable` VALUES ('st07', '2020.1', 21, 20, 3);
INSERT INTO `attendtable` VALUES ('st08', '2020.1', 21, 21, 1);
INSERT INTO `attendtable` VALUES ('st04', '2020.8', 21, 26, 0);
INSERT INTO `attendtable` VALUES ('st114', '2020.8', 21, 28, 0);
INSERT INTO `attendtable` VALUES ('st24', '2020.8', 21, 0, 0);
INSERT INTO `attendtable` VALUES ('st01', '2020.8', 21, 0, 2);
INSERT INTO `attendtable` VALUES ('st03', '2020.8', 21, 0, 0);
INSERT INTO `attendtable` VALUES ('st05', '2020.8', 21, 0, 0);
INSERT INTO `attendtable` VALUES ('st06', '2020.8', 21, 0, 0);
INSERT INTO `attendtable` VALUES ('st02', '2020.8', 21, 0, 0);
INSERT INTO `attendtable` VALUES ('st07', '2020.8', 21, 0, 0);
INSERT INTO `attendtable` VALUES ('st08', '2020.8', 21, 0, 0);

-- ----------------------------
-- Table structure for debittable
-- ----------------------------
DROP TABLE IF EXISTS `debittable`;
CREATE TABLE `debittable`  (
  `staffcode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工号',
  `date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `common` bigint(0) NULL DEFAULT NULL COMMENT '公积金',
  `insurance` bigint(0) NULL DEFAULT NULL COMMENT '社保',
  `taxation` bigint(0) NULL DEFAULT NULL COMMENT '税'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of debittable
-- ----------------------------
INSERT INTO `debittable` VALUES ('st03', '2019.1', 650, 624, 6);
INSERT INTO `debittable` VALUES ('st03', '2019.2', 787, 756, 39);
INSERT INTO `debittable` VALUES ('st04', '2019.1', 675, 648, 12);
INSERT INTO `debittable` VALUES ('st04', '2019.2', 1025, 984, 96);
INSERT INTO `debittable` VALUES ('st05', '2019.1', 1212, 1164, 141);
INSERT INTO `debittable` VALUES ('st05', '2019.2', 1212, 1164, 141);
INSERT INTO `debittable` VALUES ('st06', '2019.1', 1187, 1140, 135);
INSERT INTO `debittable` VALUES ('st06', '2019.2', 1138, 1092, 123);
INSERT INTO `debittable` VALUES ('st07', '2019.1', 750, 720, 30);
INSERT INTO `debittable` VALUES ('st07', '2019.2', 800, 768, 42);
INSERT INTO `debittable` VALUES ('st08', '2019.1', 750, 720, 30);
INSERT INTO `debittable` VALUES ('st08', '2019.2', 787, 756, 39);
INSERT INTO `debittable` VALUES ('st09', '2019.1', 500, 480, 0);
INSERT INTO `debittable` VALUES ('st09', '2019.2', 762, 732, 33);
INSERT INTO `debittable` VALUES ('st03', '2022.8', 597, 573, 0);
INSERT INTO `debittable` VALUES ('st04', '2022.8', 463, 444, 0);
INSERT INTO `debittable` VALUES ('st05', '2022.8', 6070, 5827, 1836);
INSERT INTO `debittable` VALUES ('st06', '2022.8', 14997, 14397, 8978);
INSERT INTO `debittable` VALUES ('st07', '2022.8', 16564, 15902, 10232);
INSERT INTO `debittable` VALUES ('st01', '2022.9', 1913, 1836, 309);
INSERT INTO `debittable` VALUES ('st02', '2022.9', -88005, -84485, 0);
INSERT INTO `debittable` VALUES ('st03', '2022.9', 66024, 63383, 104037);
INSERT INTO `debittable` VALUES ('st04', '2022.9', 313, 300, 0);
INSERT INTO `debittable` VALUES ('st05', '2022.9', 313, 300, 0);
INSERT INTO `debittable` VALUES ('st06', '2022.9', 313, 300, 0);
INSERT INTO `debittable` VALUES ('st07', '2022.9', 275, 264, 0);
INSERT INTO `debittable` VALUES ('st08', '2022.9', 275, 264, 0);
INSERT INTO `debittable` VALUES ('st114', '2022.9', 250, 240, 0);
INSERT INTO `debittable` VALUES ('st01', '2022.6', 438, 420, 0);
INSERT INTO `debittable` VALUES ('st02', '2022.6', 275, 264, 0);
INSERT INTO `debittable` VALUES ('st03', '2022.6', 313, 300, 0);
INSERT INTO `debittable` VALUES ('st04', '2022.6', 313, 300, 0);
INSERT INTO `debittable` VALUES ('st05', '2022.6', 313, 300, 0);
INSERT INTO `debittable` VALUES ('st06', '2022.6', 313, 300, 0);
INSERT INTO `debittable` VALUES ('st07', '2022.6', 275, 264, 0);
INSERT INTO `debittable` VALUES ('st08', '2022.6', 275, 264, 0);
INSERT INTO `debittable` VALUES ('st114', '2022.6', 250, 240, 0);
INSERT INTO `debittable` VALUES ('st24', '2022.6', 353, 339, 0);
INSERT INTO `debittable` VALUES ('st01', '2022.6', 454, 436, 0);
INSERT INTO `debittable` VALUES ('st02', '2022.6', 357, 343, 0);
INSERT INTO `debittable` VALUES ('st03', '2022.6', 541, 520, 0);
INSERT INTO `debittable` VALUES ('st04', '2022.6', 461, 443, 0);
INSERT INTO `debittable` VALUES ('st05', '2022.6', 508, 488, 0);
INSERT INTO `debittable` VALUES ('st06', '2022.6', 1448, 1390, 197);
INSERT INTO `debittable` VALUES ('st07', '2022.6', -130, -125, 0);
INSERT INTO `debittable` VALUES ('st08', '2022.6', 484, 465, 0);
INSERT INTO `debittable` VALUES ('st114', '2022.6', 54794, 52602, 77085);
INSERT INTO `debittable` VALUES ('st24', '2022.6', 511, 491, 0);
INSERT INTO `debittable` VALUES ('st01', '2020.1', 338, 324, 0);
INSERT INTO `debittable` VALUES ('st02', '2020.1', 290, 279, 0);
INSERT INTO `debittable` VALUES ('st03', '2020.1', 329, 316, 0);
INSERT INTO `debittable` VALUES ('st04', '2020.1', 250, 240, 0);
INSERT INTO `debittable` VALUES ('st05', '2020.1', 313, 300, 0);
INSERT INTO `debittable` VALUES ('st06', '2020.1', 313, 300, 0);
INSERT INTO `debittable` VALUES ('st07', '2020.1', 275, 264, 0);
INSERT INTO `debittable` VALUES ('st08', '2020.1', 275, 264, 0);
INSERT INTO `debittable` VALUES ('st114', '2020.1', 250, 240, 0);
INSERT INTO `debittable` VALUES ('st24', '2020.1', 412, 396, 0);

-- ----------------------------
-- Table structure for dptable
-- ----------------------------
DROP TABLE IF EXISTS `dptable`;
CREATE TABLE `dptable`  (
  `dpcode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门编号',
  `dpname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名',
  `dpleastwage` bigint(0) NULL DEFAULT NULL COMMENT '最低工资',
  `num` bigint(0) NULL DEFAULT NULL,
  INDEX `dpname`(`dpname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dptable
-- ----------------------------
INSERT INTO `dptable` VALUES ('dp04', '测试部', 2300, 2);
INSERT INTO `dptable` VALUES ('dp03', '开发部', 2500, NULL);
INSERT INTO `dptable` VALUES ('dp02', '人事部', 3000, NULL);
INSERT INTO `dptable` VALUES ('dp01', '后勤部', 2000, NULL);
INSERT INTO `dptable` VALUES ('dp05', '工商部', 2000, NULL);
INSERT INTO `dptable` VALUES ('dp06', '招生办', 2800, NULL);

-- ----------------------------
-- Table structure for stafftable
-- ----------------------------
DROP TABLE IF EXISTS `stafftable`;
CREATE TABLE `stafftable`  (
  `code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工编号',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `department` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `age` bigint(0) NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `position` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`code`) USING BTREE,
  INDEX `staff_dp`(`department`) USING BTREE,
  CONSTRAINT `stafftable_ibfk_1` FOREIGN KEY (`department`) REFERENCES `dptable` (`dpname`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stafftable
-- ----------------------------
INSERT INTO `stafftable` VALUES ('st01', '唐佳蔚', '开发部', 22, '男', '副部长');
INSERT INTO `stafftable` VALUES ('st02', '汪永康', '测试部', 22, '男', '黑色高级司机');
INSERT INTO `stafftable` VALUES ('st03', '月ノ美兎', '开发部', 36, '女', '虚拟主播');
INSERT INTO `stafftable` VALUES ('st04', '张三', '后勤部', 29, '男', '高级员工');
INSERT INTO `stafftable` VALUES ('st05', '李四', '开发部', 31, '男', '普通员工');
INSERT INTO `stafftable` VALUES ('st06', '王五', '开发部', 26, '男', '实习生');
INSERT INTO `stafftable` VALUES ('st07', '洪升', '测试部', 23, '女', '副部长');
INSERT INTO `stafftable` VALUES ('st08', '叶宇仁', '测试部', 22, '男', '部长');
INSERT INTO `stafftable` VALUES ('st114', '穿山甲', '后勤部', 40, '男', '炊事员兼高级双料特工');
INSERT INTO `stafftable` VALUES ('st24', '物述有栖', '工商部', 22, '女', '虚拟主播');

-- ----------------------------
-- Triggers structure for table stafftable
-- ----------------------------
DROP TRIGGER IF EXISTS `del_code`;
delimiter ;;
CREATE TRIGGER `del_code` AFTER DELETE ON `stafftable` FOR EACH ROW BEGIN
DELETE FROM allowancetable WHERE allowancetable.`staffcode`=OLD.code;
DELETE FROM attendtable WHERE attendtable.`staffcode`=OLD.code;
DELETE FROM debittable WHERE debittable.`staffcode`=OLD.code;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
