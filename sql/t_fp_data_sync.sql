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

 Date: 01/08/2022 11:26:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_fp_data_sync
-- ----------------------------
DROP TABLE IF EXISTS `t_fp_data_sync`;
CREATE TABLE `t_fp_data_sync`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ent_id` int(11) NULL DEFAULT NULL COMMENT '企业id',
  `ent_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业全称',
  `syn_date` date NULL DEFAULT NULL COMMENT '同步日期',
  `pull_total` int(20) NULL DEFAULT NULL COMMENT '拉取条数',
  `sum` int(20) NULL DEFAULT NULL COMMENT '总条数',
  `fail_total` int(20) NULL DEFAULT NULL COMMENT '失败条数',
  `state` int(1) NULL DEFAULT NULL COMMENT '0失败 1成功',
  `pull_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拉取人姓名',
  `create_time` timestamp(6) NULL DEFAULT NULL COMMENT '同步时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据同步比对表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
