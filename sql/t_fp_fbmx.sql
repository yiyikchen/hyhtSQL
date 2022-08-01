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

 Date: 01/08/2022 11:26:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_fp_fbmx
-- ----------------------------
DROP TABLE IF EXISTS `t_fp_fbmx`;
CREATE TABLE `t_fp_fbmx`  (
  `fpdjh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发票登记号',
  `uuidxh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'uuidxh',
  `code_of_invoice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票代码',
  `number_of_invoice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票号码',
  `date_of_issue` timestamp(6) NULL DEFAULT NULL COMMENT '开票日期',
  `billing_month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开票月份',
  `total` decimal(20, 2) NULL DEFAULT NULL COMMENT '合计',
  `seller_tin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销方识别号',
  `seller_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销方名称',
  `buyer_tin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购方识别号',
  `buyer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购方名称',
  `project_specifications` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目规格',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `quantity` decimal(20, 2) NULL DEFAULT NULL COMMENT '数量',
  `amount` decimal(20, 2) NULL DEFAULT NULL COMMENT '金额',
  `input_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '税额',
  `shall_at_his_own_expense` decimal(20, 2) NULL DEFAULT NULL COMMENT '自理自费',
  `spare1` decimal(20, 2) NULL DEFAULT NULL COMMENT '备用1',
  `spare2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用2',
  `zbuuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主表uuid',
  `rows` bigint(20) NULL DEFAULT NULL COMMENT '行次',
  PRIMARY KEY (`fpdjh`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附表明细' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
