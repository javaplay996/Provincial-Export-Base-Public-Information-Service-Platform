/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - nshengchukoujidi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nshengchukoujidi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `nshengchukoujidi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/nshengchukoujidi/upload/1618884506383.jpg'),(2,'picture2','http://localhost:8080/nshengchukoujidi/upload/1618884511259.jpg'),(3,'picture3','http://localhost:8080/nshengchukoujidi/upload/1618884516832.jpg'),(6,'homepage','http://localhost:8080/nshengchukoujidi/upload/1618884524003.jpg');

/*Table structure for table `cukoujidi` */

DROP TABLE IF EXISTS `cukoujidi`;

CREATE TABLE `cukoujidi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cukoujidi_name` varchar(200) DEFAULT NULL COMMENT '名称 Search111',
  `cukoujidi_dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `jidiqiye_types` int(200) DEFAULT NULL COMMENT '类型 Search111',
  `cukoujidi_photo` varchar(200) DEFAULT NULL COMMENT '图片 ',
  `cukoujidi_content` text COMMENT '介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='出口基地';

/*Data for the table `cukoujidi` */

insert  into `cukoujidi`(`id`,`cukoujidi_name`,`cukoujidi_dizhi`,`jidiqiye_types`,`cukoujidi_photo`,`cukoujidi_content`,`create_time`) values (1,'出口基地1','地址1',3,'http://localhost:8080/nshengchukoujidi/file/download?fileName=1618838037961.jpg','<img src=\"http://localhost:8080/nshengchukoujidi/upload/1618838037960.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/nshengchukoujidi/upload/1618838037960.jpg\">\r\n','2021-04-19 21:13:59'),(2,'出口基地2','地址2',2,'http://localhost:8080/nshengchukoujidi/file/download?fileName=1618838052075.jpg','<img src=\"http://localhost:8080/nshengchukoujidi/upload/1618838052075.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/nshengchukoujidi/upload/1618838052075.jpg\">\r\n','2021-04-19 21:14:13'),(3,'出口基地3','地址3',1,'http://localhost:8080/nshengchukoujidi/file/download?fileName=1618838063213.jpg','<img src=\"http://localhost:8080/nshengchukoujidi/upload/1618838063213.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/nshengchukoujidi/upload/1618838063213.jpg\">\r\n','2021-04-19 21:14:24'),(4,'出口基地4','地址4',2,'http://localhost:8080/nshengchukoujidi/file/download?fileName=1618838076130.jpg','<img src=\"http://localhost:8080/nshengchukoujidi/upload/1618838076130.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/nshengchukoujidi/upload/1618838076130.jpg\">\r\n','2021-04-19 21:14:37');

/*Table structure for table `cukoujidi_collection` */

DROP TABLE IF EXISTS `cukoujidi_collection`;

CREATE TABLE `cukoujidi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cukoujidi_id` int(11) DEFAULT NULL COMMENT '出口基地id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='出口基地收藏';

/*Data for the table `cukoujidi_collection` */

insert  into `cukoujidi_collection`(`id`,`cukoujidi_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,4,1,'2021-04-20 11:52:16','2021-04-20 11:52:16');

/*Table structure for table `cukoujidi_liuyan` */

DROP TABLE IF EXISTS `cukoujidi_liuyan`;

CREATE TABLE `cukoujidi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cukoujidi_id` int(11) DEFAULT NULL COMMENT '出口基地id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `cukoujidi_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='出口基地留言';

/*Data for the table `cukoujidi_liuyan` */

insert  into `cukoujidi_liuyan`(`id`,`cukoujidi_id`,`yonghu_id`,`cukoujidi_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,4,1,'1233\r\n','123123123\r\n','2021-04-20 11:52:14','2021-04-20 11:52:14');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-19 19:32:33'),(2,'sex_types','性别',2,'女',NULL,'2021-04-19 19:32:33'),(3,'jidiqiye_types','企业类型名称',1,'航天',NULL,'2021-04-19 19:32:33'),(4,'jidiqiye_types','企业类型名称',2,'船舶',NULL,'2021-04-19 19:32:33'),(5,'jidiqiye_types','企业类型名称',3,'交通',NULL,'2021-04-19 19:32:33'),(6,'jidichanpin_types','类型名称',1,'类型1',NULL,'2021-04-19 19:32:33'),(7,'jidichanpin_types','类型名称',2,'类型2',NULL,'2021-04-19 19:32:33'),(8,'zhengchefagui_types','政策法规类型名称',1,'日常政策法规',NULL,'2021-04-19 19:32:33'),(9,'zhengchefagui_types','政策法规类型名称',2,'紧急政策法规',NULL,'2021-04-19 19:32:33'),(10,'zhixundongtai_types','资讯动态类型名称',1,'日常资讯动态',NULL,'2021-04-19 19:32:33'),(11,'zhixundongtai_types','资讯动态类型名称',2,'紧急资讯动态',NULL,'2021-04-19 19:32:33');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618890789929 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (102,'2021-03-18 17:31:37','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(103,'2021-03-18 17:31:37','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(104,'2021-03-18 17:31:37','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(105,'2021-03-18 17:31:37','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(106,'2021-03-18 17:31:37','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `jidichanpin` */

DROP TABLE IF EXISTS `jidichanpin`;

CREATE TABLE `jidichanpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jidichanpin_name` varchar(200) DEFAULT NULL COMMENT '名称 Search111',
  `jidichanpin_types` int(200) DEFAULT NULL COMMENT '类型 Search111',
  `jidichanpin_photo` varchar(200) DEFAULT NULL COMMENT '图片 ',
  `jidichanpin_content` text COMMENT '介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='基地产品';

/*Data for the table `jidichanpin` */

insert  into `jidichanpin`(`id`,`jidichanpin_name`,`jidichanpin_types`,`jidichanpin_photo`,`jidichanpin_content`,`create_time`) values (1,'产品1',1,'http://localhost:8080/nshengchukoujidi/file/download?fileName=1618884337346.jpg','介绍1\r\n','2021-04-20 10:05:39'),(2,'产品2',2,'http://localhost:8080/nshengchukoujidi/file/download?fileName=1618884349562.jpg','介绍2\r\n','2021-04-20 10:05:59');

/*Table structure for table `jidichanpin_collection` */

DROP TABLE IF EXISTS `jidichanpin_collection`;

CREATE TABLE `jidichanpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jidichanpin_id` int(11) DEFAULT NULL COMMENT '基地产品id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='基地产品收藏';

/*Data for the table `jidichanpin_collection` */

insert  into `jidichanpin_collection`(`id`,`jidichanpin_id`,`yonghu_id`,`insert_time`,`create_time`) values (2,2,1,'2021-04-20 11:52:34','2021-04-20 11:52:34');

/*Table structure for table `jidichanpin_liuyan` */

DROP TABLE IF EXISTS `jidichanpin_liuyan`;

CREATE TABLE `jidichanpin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jidichanpin_id` int(11) DEFAULT NULL COMMENT '基地产品id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jidichanpin_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='基地产品留言';

/*Data for the table `jidichanpin_liuyan` */

insert  into `jidichanpin_liuyan`(`id`,`jidichanpin_id`,`yonghu_id`,`jidichanpin_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,2,1,'123',NULL,'2021-04-20 11:52:33','2021-04-20 11:52:33');

/*Table structure for table `jidiqiye` */

DROP TABLE IF EXISTS `jidiqiye`;

CREATE TABLE `jidiqiye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jidiqiye_name` varchar(200) DEFAULT NULL COMMENT '企业名称 Search111',
  `jidiqiye_types` int(200) DEFAULT NULL COMMENT '企业类型 Search111',
  `jidiqiye_photo` varchar(200) DEFAULT NULL COMMENT '企业图片 ',
  `jidiqiye_content` text COMMENT '企业介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='基地企业';

/*Data for the table `jidiqiye` */

insert  into `jidiqiye`(`id`,`jidiqiye_name`,`jidiqiye_types`,`jidiqiye_photo`,`jidiqiye_content`,`create_time`) values (1,'企业1',3,'http://localhost:8080/nshengchukoujidi/file/download?fileName=1618884151545.jpg','企业介绍1\r\n','2021-04-20 10:02:34'),(2,'企业2',2,'http://localhost:8080/nshengchukoujidi/file/download?fileName=1618884163662.jpg','企业介绍1\r\n','2021-04-20 10:02:48');

/*Table structure for table `jidiqiye_collection` */

DROP TABLE IF EXISTS `jidiqiye_collection`;

CREATE TABLE `jidiqiye_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jidiqiye_id` int(11) DEFAULT NULL COMMENT '基地企业id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='基地企业收藏';

/*Data for the table `jidiqiye_collection` */

insert  into `jidiqiye_collection`(`id`,`jidiqiye_id`,`yonghu_id`,`insert_time`,`create_time`) values (2,2,1,'2021-04-20 11:52:22','2021-04-20 11:52:22');

/*Table structure for table `jidiqiye_liuyan` */

DROP TABLE IF EXISTS `jidiqiye_liuyan`;

CREATE TABLE `jidiqiye_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jidiqiye_id` int(11) DEFAULT NULL COMMENT '基地企业id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jidiqiye_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='基地企业留言';

/*Data for the table `jidiqiye_liuyan` */

insert  into `jidiqiye_liuyan`(`id`,`jidiqiye_id`,`yonghu_id`,`jidiqiye_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,2,1,'123',NULL,'2021-04-20 11:52:21','2021-04-20 11:52:21');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616060207063 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (121,'2021-03-18 17:31:37',1,'用户名1','留言内容1','回复内容1'),(122,'2021-03-18 17:31:37',2,'用户名2','留言内容2','回复内容2'),(123,'2021-03-18 17:31:37',3,'用户名3','留言内容3','回复内容3'),(124,'2021-03-18 17:31:37',4,'用户名4','留言内容4','回复内容4'),(125,'2021-03-18 17:31:37',5,'用户名5','留言内容5','回复内容5'),(126,'2021-03-18 17:31:37',6,'用户名6','留言内容6','回复内容6'),(1616060207062,'2021-03-18 17:36:46',1616060050171,'1','留言留言留言留言留言留言留言留言留言留言','1111111111111');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','on5g1ovivvkua1rwo2kw9ncz0wgjr5h6','2021-04-19 19:52:01','2021-04-20 12:53:53'),(2,1,'111','yonghu','用户','6ks3kp1aqun4hlx9exmdhxkyohqpm7b2','2021-04-19 21:29:20','2021-04-20 12:44:27'),(3,2,'222','yonghu','会员,yonghu','5dgdkk1knm9utdy3f62rljazr7sk2abk','2021-04-20 11:04:36','2021-04-20 12:04:37'),(4,3,'123','yonghu','用户','v3nsju8g9sp5ziz0hudvocew5gujz1pk','2021-04-20 11:50:41','2021-04-20 12:50:42'),(5,1,'111','yonghu','会员,yonghu','fi9iyswiyhfihcrwoovfvn98m84mavp1','2021-04-20 11:51:47','2021-04-20 12:51:47'),(6,1,'111','yonghu','会员','ryvb6tpf1gel8u0xrm3pedzadu4mr6p9','2021-04-20 11:53:25','2021-04-20 12:53:25');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `role` varchar(200) DEFAULT NULL COMMENT '身份',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`role`,`create_time`) values (1,'111','123456','用户1',2,'410882200011061211','17754466541','http://localhost:8080/nshengchukoujidi/file/download?fileName=1618836870902.jpg','会员','2021-04-19 20:54:32'),(2,'222','123456','用户2',2,'410882200011061212','17754466542','http://localhost:8080/nshengchukoujidi/file/download?fileName=1618838140228.jpg','会员','2021-04-19 21:15:41'),(3,'123','123456','123',2,'410882200011064871','17789944561','http://localhost:8080/nshengchukoujidi/file/download?fileName=1618889431528.jpg','用户','2021-04-20 11:30:43');

/*Table structure for table `zhengchefagui` */

DROP TABLE IF EXISTS `zhengchefagui`;

CREATE TABLE `zhengchefagui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhengchefagui_name` varchar(200) DEFAULT NULL COMMENT '政策法规名称  Search111 ',
  `zhengchefagui_types` int(11) DEFAULT NULL COMMENT '政策法规类型  Search111 ',
  `zhengchefagui_photo` varchar(200) DEFAULT NULL COMMENT '政策法规图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '政策法规时间',
  `zhengchefagui_content` text COMMENT '政策法规详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='政策法规';

/*Data for the table `zhengchefagui` */

insert  into `zhengchefagui`(`id`,`zhengchefagui_name`,`zhengchefagui_types`,`zhengchefagui_photo`,`insert_time`,`zhengchefagui_content`,`create_time`) values (1,'政策法规名称1',1,'http://localhost:8080/nshengchukoujidi/file/download?fileName=1618884409835.jpeg','2021-04-20 10:06:53','政策法规详情1\r\n','2021-04-20 10:06:53'),(2,'政策法规名称2',1,'http://localhost:8080/nshengchukoujidi/file/download?fileName=1618884469804.jpeg','2021-04-20 10:07:52','政策法规详情2\r\n','2021-04-20 10:07:52');

/*Table structure for table `zhixundongtai` */

DROP TABLE IF EXISTS `zhixundongtai`;

CREATE TABLE `zhixundongtai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhixundongtai_name` varchar(200) DEFAULT NULL COMMENT '资讯动态名称  Search111 ',
  `zhixundongtai_types` int(11) DEFAULT NULL COMMENT '资讯动态类型  Search111 ',
  `zhixundongtai_photo` varchar(200) DEFAULT NULL COMMENT '资讯动态图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '资讯动态时间',
  `zhixundongtai_content` text COMMENT '资讯动态详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='资讯动态';

/*Data for the table `zhixundongtai` */

insert  into `zhixundongtai`(`id`,`zhixundongtai_name`,`zhixundongtai_types`,`zhixundongtai_photo`,`insert_time`,`zhixundongtai_content`,`create_time`) values (1,'资讯动态名称1',1,'http://localhost:8080/nshengchukoujidi/file/download?fileName=1618884485573.jpg','2021-04-20 10:08:09','资讯动态详情1\r\n','2021-04-20 10:08:09'),(2,'资讯动态名称2',2,'http://localhost:8080/nshengchukoujidi/file/download?fileName=1618884495531.jpg','2021-04-20 10:08:17','资讯动态详情2\r\n','2021-04-20 10:08:17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
