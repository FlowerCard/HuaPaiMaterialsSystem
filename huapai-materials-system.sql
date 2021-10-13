/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 5.7.25-log : Database - huapai-materials-system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`huapai-materials-system` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `huapai-materials-system`;

/*Table structure for table `t_goods` */

DROP TABLE IF EXISTS `t_goods`;

CREATE TABLE `t_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id主键',
  `goods_id` int(11) NOT NULL COMMENT '商品编号',
  `goods_name` varchar(255) NOT NULL COMMENT '商品名称',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `goods_num` int(11) NOT NULL COMMENT '商品数量',
  `goods_type` int(11) NOT NULL COMMENT '商品类型id，管理t_good_type.type_id',
  `user_id` int(11) NOT NULL COMMENT '所有者id，t_user.id',
  `goods_info` varchar(255) NOT NULL COMMENT '商品介绍信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_goods_type` */

DROP TABLE IF EXISTS `t_goods_type`;

CREATE TABLE `t_goods_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `type_id` int(11) NOT NULL COMMENT '商品类型编号',
  `type_name` varchar(255) NOT NULL COMMENT '商品类型名称',
  `type_info` varchar(255) NOT NULL COMMENT '商品类型描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_record` */

DROP TABLE IF EXISTS `t_record`;

CREATE TABLE `t_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '出入库主键id',
  `user_id` int(11) NOT NULL COMMENT '操作者id,user.id',
  `goods_name` varchar(255) NOT NULL COMMENT '商品名称',
  `operation_type` int(1) NOT NULL COMMENT '操作类型:-1==出库，1==入库',
  `operation_num` int(11) NOT NULL COMMENT '操作数量',
  `operation_time` datetime NOT NULL COMMENT '记录产生时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '用户密码',
  `nickname` varchar(20) NOT NULL COMMENT '用户昵称',
  `telephone` varchar(20) NOT NULL DEFAULT 'null' COMMENT '用户联系方式',
  `address` varchar(255) NOT NULL DEFAULT 'null' COMMENT '用户地址',
  `is_admin` int(1) NOT NULL DEFAULT '0' COMMENT '用户身份:0==商户,1==管理员',
  `is_delete` int(1) NOT NULL DEFAULT '0' COMMENT '用户状态:0==正常,1==删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
