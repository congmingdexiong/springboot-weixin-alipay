/*
Navicat MySQL Data Transfer

Source Server         : mysqllocal
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : pay_db

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-06-28 13:44:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `flow`
-- ----------------------------
DROP TABLE IF EXISTS `flow`;
CREATE TABLE `flow` (
                        `id` varchar(20) NOT NULL,
                        `flow_num` varchar(20) DEFAULT NULL COMMENT '流水号',
                        `order_num` varchar(20) DEFAULT NULL COMMENT '订单号',
                        `product_id` varchar(20) DEFAULT NULL COMMENT '产品主键ID',
                        `paid_amount` varchar(11) DEFAULT NULL COMMENT '支付金额',
                        `paid_method` int(11) DEFAULT NULL COMMENT '支付方式\r\n            1：支付宝\r\n            2：微信',
                        `buy_counts` int(11) DEFAULT NULL COMMENT '购买个数',
                        `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='流水表';

-- ----------------------------
-- Records of flow
-- ----------------------------
INSERT INTO `flow` VALUES ('1', '1', '1', '1', '11', '11', '11', '2018-06-21 13:29:15');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
                          `id` varchar(20) NOT NULL,
                          `order_num` varchar(20) DEFAULT NULL COMMENT '订单号',
                          `order_status` varchar(20) DEFAULT NULL COMMENT '订单状态\r\n            10：待付款\r\n            20：已付款',
                          `order_amount` varchar(11) DEFAULT NULL COMMENT '订单金额',
                          `paid_amount` varchar(11) DEFAULT NULL COMMENT '实际支付金额',
                          `product_id` varchar(20) DEFAULT NULL COMMENT '产品表外键ID',
                          `buy_counts` int(11) DEFAULT NULL COMMENT '产品购买的个数',
                          `create_time` datetime DEFAULT NULL COMMENT '订单创建时间',
                          `paid_time` datetime DEFAULT NULL COMMENT '支付时间',
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1', '1', '1', '1', null, '11', '2018-06-21 13:28:59', '2018-06-21 13:29:02');
INSERT INTO `orders` VALUES ('1806219KM59W4SFW', '1806219KM59W4SFW', '10', '132.0', null, '1', '11', '2018-06-21 13:29:37', null);
INSERT INTO `orders` VALUES ('1806219M30WYMPBC', '1806219M30WYMPBC', '10', '132.0', null, '1', '11', '2018-06-21 13:31:00', null);
INSERT INTO `orders` VALUES ('1806219M3DKK9A5P', '1806219M3DKK9A5P', '10', '132.0', null, '1', '11', '2018-06-21 13:31:03', null);
INSERT INTO `orders` VALUES ('180626C0DYZMMYY8', '180626C0DYZMMYY8', '10', '132.0', null, '1', '11', '2018-06-26 16:50:21', null);
INSERT INTO `orders` VALUES ('180626C8BWTBW280', '180626C8BWTBW280', '10', '14544.0', null, '1', '1212', '2018-06-26 17:14:09', null);
INSERT INTO `orders` VALUES ('180626CCZX3YNC00', '180626CCZX3YNC00', '10', '408.0', null, '1', '34', '2018-06-26 17:27:52', null);
INSERT INTO `orders` VALUES ('180626CD1AGKW094', '180626CD1AGKW094', '10', '408.0', null, '1', '34', '2018-06-26 17:28:01', null);
INSERT INTO `orders` VALUES ('180626CFTTHX372W', '180626CFTTHX372W', '10', '144.0', null, '1', '12', '2018-06-26 17:33:26', null);
INSERT INTO `orders` VALUES ('180626CGRFFY2YY8', '180626CGRFFY2YY8', '10', '144.0', null, '1', '12', '2018-06-26 17:36:11', null);
INSERT INTO `orders` VALUES ('180626D9M225GNTC', '180626D9M225GNTC', '10', '144.0', null, '1', '12', '2018-06-26 18:41:52', null);
INSERT INTO `orders` VALUES ('180626D9MZR771GC', '180626D9MZR771GC', '10', '144.0', null, '1', '12', '2018-06-26 18:41:58', null);

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
                           `id` varchar(20) NOT NULL,
                           `name` varchar(20) DEFAULT NULL COMMENT '产品名称',
                           `price` varchar(11) DEFAULT NULL COMMENT '价格',
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='产品表 ';

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '苹果', '12');
INSERT INTO `product` VALUES ('2', '香蕉', '11');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
                        `id` varchar(20) NOT NULL,
                        `username` varchar(128) DEFAULT NULL,
                        `sex` varchar(20) DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1806219HCB2XASNC', 'lcx', '男');
INSERT INTO `user` VALUES ('1806219HTDATW7F8', 'lcx', '男');
INSERT INTO `user` VALUES ('1806219HYA33BMW0', 'lcx', '男');
