/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm443x6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm443x6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm443x6`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm443x6/upload/1620264166252.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm443x6/upload/1620264174389.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm443x6/upload/1620264182594.jpeg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `dianyingleixing` */

DROP TABLE IF EXISTS `dianyingleixing`;

CREATE TABLE `dianyingleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leixing` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1620264086059 DEFAULT CHARSET=utf8 COMMENT='电影类型';

/*Data for the table `dianyingleixing` */

insert  into `dianyingleixing`(`id`,`addtime`,`leixing`) values (31,'2021-05-06 09:03:44','动作片');
insert  into `dianyingleixing`(`id`,`addtime`,`leixing`) values (32,'2021-05-06 09:03:44','悬疑片');
insert  into `dianyingleixing`(`id`,`addtime`,`leixing`) values (33,'2021-05-06 09:03:44','动画片');
insert  into `dianyingleixing`(`id`,`addtime`,`leixing`) values (34,'2021-05-06 09:03:44','爱情片');
insert  into `dianyingleixing`(`id`,`addtime`,`leixing`) values (1620264086058,'2021-05-06 09:21:25','喜剧片');

/*Table structure for table `dianyingxinxi` */

DROP TABLE IF EXISTS `dianyingxinxi`;

CREATE TABLE `dianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `zhuyan` varchar(200) DEFAULT NULL COMMENT '主演',
  `shangyingriqi` datetime DEFAULT NULL COMMENT '上映日期',
  `pianzhang` varchar(200) DEFAULT NULL COMMENT '片长',
  `dianyingyugao` varchar(200) DEFAULT NULL COMMENT '电影预告',
  `dianyingjianjie` longtext COMMENT '电影简介',
  `yingyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '影院名称',
  `fangyingting` varchar(200) DEFAULT NULL COMMENT '放映厅',
  `changci` datetime DEFAULT NULL COMMENT '场次',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `number` int(11) NOT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620264151415 DEFAULT CHARSET=utf8 COMMENT='电影信息';

/*Data for the table `dianyingxinxi` */

insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`leixing`,`haibao`,`daoyan`,`zhuyan`,`shangyingriqi`,`pianzhang`,`dianyingyugao`,`dianyingjianjie`,`yingyuanmingcheng`,`fangyingting`,`changci`,`clicktime`,`clicknum`,`price`,`number`,`selected`) values (41,'2021-05-06 09:03:44','电影名称1','动作片','http://localhost:8080/ssm443x6/upload/1620263617004.jpg','导演1','主演1','2021-05-06 09:03:44','片长1','','<p>电影简介1</p>','影院名称1','1号厅','2021-05-06 09:03:44','2021-05-06 09:32:05',3,99.9,20,'1,3,5,7,9,10,11,12');
insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`leixing`,`haibao`,`daoyan`,`zhuyan`,`shangyingriqi`,`pianzhang`,`dianyingyugao`,`dianyingjianjie`,`yingyuanmingcheng`,`fangyingting`,`changci`,`clicktime`,`clicknum`,`price`,`number`,`selected`) values (42,'2021-05-06 09:03:44','电影名称2','动作片','http://localhost:8080/ssm443x6/upload/1620263630959.jpg','导演2','主演2','2021-05-06 09:03:44','片长2','','<p>电影简介2</p>','影院名称2','1号厅','2021-05-06 09:03:44','2021-05-06 09:13:41',3,99.9,20,'1,3,5,7,9');
insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`leixing`,`haibao`,`daoyan`,`zhuyan`,`shangyingriqi`,`pianzhang`,`dianyingyugao`,`dianyingjianjie`,`yingyuanmingcheng`,`fangyingting`,`changci`,`clicktime`,`clicknum`,`price`,`number`,`selected`) values (43,'2021-05-06 09:03:44','电影名称3','动画片','http://localhost:8080/ssm443x6/upload/1620263644227.jpg','导演3','主演3','2021-05-06 09:03:44','片长3','','<p>电影简介3</p>','影院名称3','1号厅','2021-05-06 09:03:44','2021-05-06 09:13:55',4,99.9,20,'1,3,5,7,9');
insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`leixing`,`haibao`,`daoyan`,`zhuyan`,`shangyingriqi`,`pianzhang`,`dianyingyugao`,`dianyingjianjie`,`yingyuanmingcheng`,`fangyingting`,`changci`,`clicktime`,`clicknum`,`price`,`number`,`selected`) values (44,'2021-05-06 09:03:44','电影名称4','悬疑片','http://localhost:8080/ssm443x6/upload/1620263656152.jpg','导演4','主演4','2021-05-06 09:03:44','片长4','','<p>电影简介4</p>','影院名称4','1号厅','2021-05-06 09:03:44','2021-05-06 09:31:09',13,99.9,20,'1,3,5,7,9,11,12');
insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`leixing`,`haibao`,`daoyan`,`zhuyan`,`shangyingriqi`,`pianzhang`,`dianyingyugao`,`dianyingjianjie`,`yingyuanmingcheng`,`fangyingting`,`changci`,`clicktime`,`clicknum`,`price`,`number`,`selected`) values (46,'2021-05-06 09:03:44','电影名称6','爱情片','http://localhost:8080/ssm443x6/upload/1620263675828.jpg','导演6','主演6','2021-05-06 09:03:44','片长6','','<p>电影简介6</p>','影院名称6','1号厅','2021-05-06 09:03:44','2021-05-06 09:34:41',9,99.9,20,'1,3,5,7,9');
insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`leixing`,`haibao`,`daoyan`,`zhuyan`,`shangyingriqi`,`pianzhang`,`dianyingyugao`,`dianyingjianjie`,`yingyuanmingcheng`,`fangyingting`,`changci`,`clicktime`,`clicknum`,`price`,`number`,`selected`) values (1620264151414,'2021-05-06 09:22:31','你好，李焕英','喜剧片','http://localhost:8080/ssm443x6/upload/1620264102014.jpg','贾玲','贾玲张小斐','2021-03-12 08:00:00','128分钟','http://localhost:8080/ssm443x6/upload/1620264129175.mp4','<p>2001年的某一天，刚刚考上大学的贾晓玲经历了人生中的一次大起大落。一心想要成为母亲骄傲的她却因母亲突遭严重意外，而悲痛万分。在贾晓玲情绪崩溃的状态下，竟意外的回到了1981年，并与年轻的母亲李焕英相遇，二人形影不离，宛如闺蜜。与此同时，也结识了一群天真善良的好朋友。晓玲以为来到了这片“广阔天地”，她可以凭借自己超前的思维，让母亲“大有作为”，但结果却让晓玲感到意外......。</p>','大地影院','4号厅','2021-05-08 20:00:00','2021-05-06 09:33:58',5,45,20,'1,2,3,11,12,13,14');

/*Table structure for table `discussdianyingxinxi` */

DROP TABLE IF EXISTS `discussdianyingxinxi`;

CREATE TABLE `discussdianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620264876664 DEFAULT CHARSET=utf8 COMMENT='电影信息评论表';

/*Data for the table `discussdianyingxinxi` */

insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-05-06 09:03:44',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (92,'2021-05-06 09:03:44',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (93,'2021-05-06 09:03:44',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (94,'2021-05-06 09:03:44',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (95,'2021-05-06 09:03:44',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (96,'2021-05-06 09:03:44',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1620264308922,'2021-05-06 09:25:08',1620264151414,1620263827269,'1','很感人的电影','可以查看影评，可以进行回复，可以进行删除');
insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1620264833238,'2021-05-06 09:33:52',1620264151414,1620264509462,'2','看了你好，李焕英，想起了小时候经常跟妈妈去工厂车间的场景，感谢贾玲的电影，让我铭记了那句话，一定要让妈妈高兴','');
insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1620264876663,'2021-05-06 09:34:36',46,1620264509462,'2','1','');

/*Table structure for table `discussyingyuanxinxi` */

DROP TABLE IF EXISTS `discussyingyuanxinxi`;

CREATE TABLE `discussyingyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='影院信息评论表';

/*Data for the table `discussyingyuanxinxi` */

insert  into `discussyingyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-05-06 09:03:44',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussyingyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (82,'2021-05-06 09:03:44',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussyingyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (83,'2021-05-06 09:03:44',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussyingyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (84,'2021-05-06 09:03:44',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussyingyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (85,'2021-05-06 09:03:44',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussyingyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (86,'2021-05-06 09:03:44',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620264215529 DEFAULT CHARSET=utf8 COMMENT='电影资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (71,'2021-05-06 09:03:44','标题1','简介1','http://localhost:8080/ssm443x6/upload/1620263687125.jpg','<p>内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (72,'2021-05-06 09:03:44','标题2','简介2','http://localhost:8080/ssm443x6/upload/1620263694943.jpg','<p>内容2</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (73,'2021-05-06 09:03:44','标题3','简介3','http://localhost:8080/ssm443x6/upload/1620263702074.jpg','<p>内容3</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (74,'2021-05-06 09:03:44','标题4','简介4','http://localhost:8080/ssm443x6/upload/1620263716255.jpg','<p>内容4</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (75,'2021-05-06 09:03:44','标题5','简介5','http://localhost:8080/ssm443x6/upload/1620263724682.jpg','<p>内容5</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1620264215528,'2021-05-06 09:23:35','新影片上映资讯','新影片上映','http://localhost:8080/ssm443x6/upload/1620264201265.jpg','<p>资讯内容KAKGCHLKJLHUKULHGJKLKHK</p><p><img src=\"http://localhost:8080/ssm443x6/upload/1620264213962.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'dianyingxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1620264733092 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1620264235951,'2021-05-06 09:23:55','2021569235427515662','dianyingxinxi',1620263827269,1620264151414,'你好，李焕英','http://localhost:8080/ssm443x6/upload/1620264102014.jpg',2,45,45,90,90,1,'已完成','11,12',NULL,NULL);
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1620264246945,'2021-05-06 09:24:06','202156924475750039','dianyingxinxi',1620263827269,45,'电影名称5','http://localhost:8080/ssm443x6/upload/1620263798029.jpg',2,99.9,99.9,199.8,199.8,1,'已退款','14,15',NULL,NULL);
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1620264662158,'2021-05-06 09:31:01','202156931037526747','dianyingxinxi',1620264509462,1620264151414,'你好，李焕英','http://localhost:8080/ssm443x6/upload/1620264102014.jpg',2,45,45,90,90,1,'已完成','13,14',NULL,NULL);
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1620264676906,'2021-05-06 09:31:16','202156931158598478','dianyingxinxi',1620264509462,44,'电影名称4','http://localhost:8080/ssm443x6/upload/1620263656152.jpg',2,99.9,99.9,199.8,199.8,1,'已退款','11,12',NULL,NULL);
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1620264733091,'2021-05-06 09:32:12','2021569321099135950','dianyingxinxi',1620264509462,41,'电影名称1','http://localhost:8080/ssm443x6/upload/1620263617004.jpg',3,99.9,99.9,299.7,299.7,1,'已取消','10,11,12',NULL,NULL);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620264629843 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','1ywo7fkz2xop82kcmbpkg1hw591371sp','2021-05-06 09:09:49','2021-05-06 10:20:12');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'用户1','yonghu','用户','9ijiontar96jwyc856st0au8l0ffzxd2','2021-05-06 09:10:16','2021-05-06 10:10:16');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1620263827269,'1','yonghu','用户','ooyqqxih5mt2g9wrq3oapso6jeloikko','2021-05-06 09:17:13','2021-05-06 10:17:13');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1620264509462,'2','yonghu','用户','btn0q7wkr91v2a82podwzke0dwuu4f5l','2021-05-06 09:29:03','2021-05-06 10:29:03');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-06 09:03:44');

/*Table structure for table `yingyuanxinxi` */

DROP TABLE IF EXISTS `yingyuanxinxi`;

CREATE TABLE `yingyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yingyuanmingcheng` varchar(200) NOT NULL COMMENT '影院名称',
  `yingyuanguimo` varchar(200) DEFAULT NULL COMMENT '影院规模',
  `yingyuantupian` varchar(200) DEFAULT NULL COMMENT '影院图片',
  `yingtingshuliang` int(11) DEFAULT NULL COMMENT '影厅数量',
  `yingyuanjieshao` longtext COMMENT '影院介绍',
  `yingyuandizhi` varchar(200) DEFAULT NULL COMMENT '影院地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620264073108 DEFAULT CHARSET=utf8 COMMENT='影院信息';

/*Data for the table `yingyuanxinxi` */

insert  into `yingyuanxinxi`(`id`,`addtime`,`yingyuanmingcheng`,`yingyuanguimo`,`yingyuantupian`,`yingtingshuliang`,`yingyuanjieshao`,`yingyuandizhi`,`lianxidianhua`) values (21,'2021-05-06 09:03:44','影院名称1','小型','http://localhost:8080/ssm443x6/upload/yingyuanxinxi_yingyuantupian1.jpg',1,'影院介绍1','影院地址1','联系电话1');
insert  into `yingyuanxinxi`(`id`,`addtime`,`yingyuanmingcheng`,`yingyuanguimo`,`yingyuantupian`,`yingtingshuliang`,`yingyuanjieshao`,`yingyuandizhi`,`lianxidianhua`) values (22,'2021-05-06 09:03:44','影院名称2','小型','http://localhost:8080/ssm443x6/upload/yingyuanxinxi_yingyuantupian2.jpg',2,'影院介绍2','影院地址2','联系电话2');
insert  into `yingyuanxinxi`(`id`,`addtime`,`yingyuanmingcheng`,`yingyuanguimo`,`yingyuantupian`,`yingtingshuliang`,`yingyuanjieshao`,`yingyuandizhi`,`lianxidianhua`) values (23,'2021-05-06 09:03:44','影院名称3','小型','http://localhost:8080/ssm443x6/upload/yingyuanxinxi_yingyuantupian3.jpg',3,'影院介绍3','影院地址3','联系电话3');
insert  into `yingyuanxinxi`(`id`,`addtime`,`yingyuanmingcheng`,`yingyuanguimo`,`yingyuantupian`,`yingtingshuliang`,`yingyuanjieshao`,`yingyuandizhi`,`lianxidianhua`) values (24,'2021-05-06 09:03:44','影院名称4','小型','http://localhost:8080/ssm443x6/upload/yingyuanxinxi_yingyuantupian4.jpg',4,'影院介绍4','影院地址4','联系电话4');
insert  into `yingyuanxinxi`(`id`,`addtime`,`yingyuanmingcheng`,`yingyuanguimo`,`yingyuantupian`,`yingtingshuliang`,`yingyuanjieshao`,`yingyuandizhi`,`lianxidianhua`) values (25,'2021-05-06 09:03:44','影院名称5','小型','http://localhost:8080/ssm443x6/upload/yingyuanxinxi_yingyuantupian5.jpg',5,'影院介绍5','影院地址5','联系电话5');
insert  into `yingyuanxinxi`(`id`,`addtime`,`yingyuanmingcheng`,`yingyuanguimo`,`yingyuantupian`,`yingtingshuliang`,`yingyuanjieshao`,`yingyuandizhi`,`lianxidianhua`) values (1620264073107,'2021-05-06 09:21:12','大地影院','中型','http://localhost:8080/ssm443x6/upload/1620264036486.jpg',8,'<p>影院介绍JKSGLHKGFLJKUHL;KILKLI;H OKIOILOJOJOJ</p>','广州增城区挂绿广场5楼','020-12345678');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1620264509463 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (11,'2021-05-06 09:03:44','用户1','123456','姓名1','男','http://localhost:8080/ssm443x6/upload/yonghu_touxiang1.jpg','13823888881',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (12,'2021-05-06 09:03:44','用户2','123456','姓名2','男','http://localhost:8080/ssm443x6/upload/yonghu_touxiang2.jpg','13823888882',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (13,'2021-05-06 09:03:44','用户3','123456','姓名3','男','http://localhost:8080/ssm443x6/upload/yonghu_touxiang3.jpg','13823888883',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (14,'2021-05-06 09:03:44','用户4','123456','姓名4','男','http://localhost:8080/ssm443x6/upload/yonghu_touxiang4.jpg','13823888884',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (15,'2021-05-06 09:03:44','用户5','123456','姓名5','男','http://localhost:8080/ssm443x6/upload/yonghu_touxiang5.jpg','13823888885',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (16,'2021-05-06 09:03:44','用户6','123456','姓名6','男','http://localhost:8080/ssm443x6/upload/yonghu_touxiang6.jpg','13823888886',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (1620263827269,'2021-05-06 09:17:07','1','1','陈一','女','http://localhost:8080/ssm443x6/upload/1620263841773.jpg','12345678978',260);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (1620264509462,'2021-05-06 09:28:29','2','2','张一','女','http://localhost:8080/ssm443x6/upload/1620264548599.png','12312312312',260);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
