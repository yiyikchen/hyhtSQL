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

 Date: 01/08/2022 11:26:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_vip_detaile
-- ----------------------------
DROP TABLE IF EXISTS `sys_vip_detaile`;
CREATE TABLE `sys_vip_detaile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `enterprise_id` int(11) NULL DEFAULT NULL COMMENT '企业Id',
  `enterprise_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业全称',
  `enterprise_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业社会信用代码',
  `vip_open_time` timestamp(6) NULL DEFAULT NULL COMMENT '会员开通时间',
  `vip_end_time` timestamp(6) NULL DEFAULT NULL COMMENT '会员结束时间',
  `state` int(1) NULL DEFAULT NULL COMMENT '删除状态(0删除，1使用)',
  `register_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_vip_detaile_id`(`id`) USING BTREE,
  INDEX `index_all_vip_detaile`(`enterprise_id`, `enterprise_name`, `vip_open_time`, `vip_end_time`, `state`, `register_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员明细表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
