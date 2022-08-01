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

 Date: 01/08/2022 11:26:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_fp_zzszyfp
-- ----------------------------
DROP TABLE IF EXISTS `t_fp_zzszyfp`;
CREATE TABLE `t_fp_zzszyfp`  (
  `ir_umber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发票登记号(主键)',
  `type_of_invoice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票类型（ZZS_ZYFP专用发票,ZZS_PTFP普通发票,ZZS_DZFP电子发票,ZZS_DZZP电子专票,JSFP卷试发票,DZ_TXFFP通行费发票,TYJDFP通用机打发票,TYJDDZFP通用机打电子发票）',
  `location_of_invoice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票所属地',
  `code_of_invoice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票代码',
  `number_of_invoice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票号码',
  `date_of_issue` timestamp(6) NULL DEFAULT NULL COMMENT '开票日期',
  `identifyingCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '校验码',
  `number_of_invoice_machine` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机器号码 ：税控盘号，金税盘号',
  `buyer_information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购买方信息',
  `name_of_purchaser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购方纳税人名称',
  `buyer_tin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购方纳税人识别号(统一社会信用代码)',
  `buyer_adr_phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购方地址电话',
  `buyer_bank_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购方银行账号',
  `security_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码区',
  `nature_of_invoice_line` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票行性质',
  `name_of_seller` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售方名称',
  `seller_tin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售方纳税人识别号',
  `seller_adr_phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售方地址电话',
  `seller_bank_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售方开户行及账号',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `payee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收款人',
  `reviewer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '复核',
  `issuer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开票人',
  `special_invoice_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '特殊票种',
  `void_flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作废标志(Y:作废，N:非作废)',
  `issuing_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开具类型',
  `invoice_status_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票状态代码（0征程，1失控，2作废，3红字，4异常发票）',
  `date_obsolete` timestamp(6) NULL DEFAULT NULL COMMENT '作废日期',
  `voider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作废人',
  `tax_rate_identification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '含税税率标识(0表示不含税税率1表示含税税率2表示差额征税)',
  `invoice_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票种类',
  `special_invoice_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票特殊类型(发票特殊标识1)_代码',
  `special_invoice_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票特殊类型(发票特殊标识1)_名称',
  `invoice_issuing_sign_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票代开标识(发票特殊标识2)_代码',
  `invoice_issuing_sign_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票代开标识(发票特殊标识2)_名称',
  `billing_month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开票月份',
  `billing_month_format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开票日期格式化(yyyymmdd)',
  `billing_month_format1` timestamp(6) NULL DEFAULT NULL COMMENT '开票日期格式化(yyyy-mm-dd)',
  `billing_month_format2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开票日期(yyyy-mm-dd)',
  `amount_excluding_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '金额',
  `tax_rate` decimal(20, 2) NULL DEFAULT NULL COMMENT '税率',
  `tax_amount` decimal(20, 2) NULL DEFAULT NULL COMMENT '税额',
  `total_tax_amount` decimal(20, 2) NULL DEFAULT NULL COMMENT '价税合计:单位:元',
  `fpzt_bz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票状态_标识(0正数票,1负数票,2空白作废发票,3正数作废发票,4负数作废发票)',
  `network_billing_acceptance_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网络开票受理号',
  `tyfpfb_glbz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通用发票附表关联标志(用于关联附表字段)',
  `outno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款订单号（对应票面订单号）',
  `ghfzh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购货方账号（对应票面商户号）',
  `fkfsmc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款方式名称（对应票面支付信息）',
  `yhh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户号（对应票面取票用户）',
  `ensure_the_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '税控码',
  `hwqd_bz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物清单标志',
  `reason_of_rush_red` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '红冲原因',
  `number_of_original_invoice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原发票号码',
  `code_of_original_invoice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原发票代码',
  `bsscbz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版式生成标志（Y:已生成，N：未生成）',
  `fpjgdjsh` timestamp(6) NULL DEFAULT NULL COMMENT '发票加工登记时间',
  `yfpdjh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原发票登记号',
  `total_amount_excluding_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '不含税合计',
  PRIMARY KEY (`ir_umber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '增值税专用发票' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
