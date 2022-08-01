/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : hyht

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 01/08/2022 11:26:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_fp_fpzl
-- ----------------------------
DROP TABLE IF EXISTS `t_fp_fpzl`;
CREATE TABLE `t_fp_fpzl`  (
  `id` int(11) NOT NULL,
  `parentID` int(11) NULL DEFAULT NULL COMMENT '父id',
  `cj` int(11) NULL DEFAULT NULL COMMENT '层级',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发票种类名称',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发票种类代码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '发票种类（3层）' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
