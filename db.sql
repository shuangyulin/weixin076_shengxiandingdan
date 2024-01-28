/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmcakkg
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmcakkg` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmcakkg`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619660457921 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-29 09:10:17',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-29 09:10:17',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-29 09:10:17',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-29 09:10:17',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-29 09:10:17',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-29 09:10:17',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619659400072,'2021-04-29 09:23:19',1619659336969,'中一大厦(新中路店)','陈一','12312312312','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619660181379,'2021-04-29 09:36:20',1619660025489,'中一大厦(新中路店)','张一','12312312312','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619660457920,'2021-04-29 09:40:57',1619660291561,'中一大厦(新中路店)','张一','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619660577432 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1619659902314,'2021-04-29 09:31:41','shangpinxinxi',1619659796299,1619659212753,'广西新鲜甜玉米','http://localhost:8080/ssmcakkg/upload/1619659194693.jpg',1,15,NULL);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619660509853 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (51,'2021-04-29 09:10:17',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (52,'2021-04-29 09:10:17',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (53,'2021-04-29 09:10:17',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (54,'2021-04-29 09:10:17',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (55,'2021-04-29 09:10:17',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (56,'2021-04-29 09:10:17',6,6,'提问6','回复6',6);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619659370396,'2021-04-29 09:22:50',1619659336969,NULL,'请问今天能配送到吗',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619659500039,'2021-04-29 09:24:59',1619659336969,1,NULL,'这里可以回复咨询及售后问题',NULL);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619660160759,'2021-04-29 09:35:59',1619660025489,NULL,'今天今天能配送吗',NULL,1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619660437997,'2021-04-29 09:40:37',1619660291561,NULL,'请问今天能进行配送吗',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619660509852,'2021-04-29 09:41:49',1619660291561,1,NULL,'可以',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmcakkg/upload/1619659303901.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmcakkg/upload/1619659311734.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmcakkg/upload/1619659320105.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `dingdanpingjia` */

DROP TABLE IF EXISTS `dingdanpingjia`;

CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619660567789 DEFAULT CHARSET=utf8 COMMENT='订单评价';

/*Data for the table `dingdanpingjia` */

insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`fenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (41,'2021-04-29 09:10:17','订单编号1','商品名称1','分类1','1','http://localhost:8080/ssmcakkg/upload/1619659055442.jpg','评价内容1','2021-04-29','用户名1','联系电话1','是','',1);
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`fenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (42,'2021-04-29 09:10:17','订单编号2','商品名称2','分类2','1','http://localhost:8080/ssmcakkg/upload/dingdanpingjia_tianjiatupian2.jpg','评价内容2','2021-04-29','用户名2','联系电话2','是','',2);
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`fenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (43,'2021-04-29 09:10:17','订单编号3','商品名称3','分类3','1','http://localhost:8080/ssmcakkg/upload/dingdanpingjia_tianjiatupian3.jpg','评价内容3','2021-04-29','用户名3','联系电话3','是','',3);
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`fenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (44,'2021-04-29 09:10:17','订单编号4','商品名称4','分类4','1','http://localhost:8080/ssmcakkg/upload/1619659063466.jpg','评价内容4','2021-04-29','用户名4','联系电话4','是','',4);
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`fenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (45,'2021-04-29 09:10:17','订单编号5','商品名称5','分类5','1','http://localhost:8080/ssmcakkg/upload/1619659072662.jpg','评价内容5','2021-04-29','用户名5','联系电话5','是','',5);
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`fenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (46,'2021-04-29 09:10:17','订单编号6','商品名称6','分类6','1','http://localhost:8080/ssmcakkg/upload/dingdanpingjia_tianjiatupian6.jpg','评价内容6','2021-04-29','用户名6','联系电话6','是','',6);
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`fenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (1619659444867,'2021-04-29 09:24:04','20214299232310454429','广西新鲜甜玉米','蔬菜','5','http://localhost:8080/ssmcakkg/upload/1619659432279.jpg','配送很快，玉米很新鲜','2021-04-29','1','12345678941','是','感谢支持',1619659336969);
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`fenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (1619660567788,'2021-04-29 09:42:47','2021429941022063449','广西新鲜甜玉米','蔬菜','5','http://localhost:8080/ssmcakkg/upload/1619660560364.jpg','配送很快，玉米很新鲜','2021-04-29','11','12312312312','','',1619660291561);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619659462139 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-29 09:10:17',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (112,'2021-04-29 09:10:17',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (113,'2021-04-29 09:10:17',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (114,'2021-04-29 09:10:17',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (115,'2021-04-29 09:10:17',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (116,'2021-04-29 09:10:17',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619659462138,'2021-04-29 09:24:21',1619659212753,1619659336969,'1','1份有4根吗','是的');

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
) ENGINE=InnoDB AUTO_INCREMENT=1619659286746 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-04-29 09:10:17','标题1','简介1','http://localhost:8080/ssmcakkg/upload/1619659080797.jpg','<p>内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-04-29 09:10:17','标题2','简介2','http://localhost:8080/ssmcakkg/upload/1619659089442.jpg','<p>内容2</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-04-29 09:10:17','标题3','简介3','http://localhost:8080/ssmcakkg/upload/1619659097511.jpg','<p>内容3</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-04-29 09:10:17','标题4','简介4','http://localhost:8080/ssmcakkg/upload/1619659107245.jpg','<p>内容4</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-04-29 09:10:17','标题6','简介6','http://localhost:8080/ssmcakkg/upload/1619659126477.jpg','<p>内容6</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619659286745,'2021-04-29 09:21:26','商品优惠资讯','商品优惠','http://localhost:8080/ssmcakkg/upload/1619659263831.jpg','<p>全场生鲜商品参与优惠活动，具体详见商品详情页</p><p><img src=\"http://localhost:8080/ssmcakkg/upload/1619659285132.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
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
) ENGINE=InnoDB AUTO_INCREMENT=1619660597308 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619659404486,'2021-04-29 09:23:24','20214299232310454429','shangpinxinxi',1619659336969,1619659212753,'广西新鲜甜玉米','http://localhost:8080/ssmcakkg/upload/1619659194693.jpg',3,15,15,45,45,1,'已完成','中一大厦(新中路店)','12312312312','陈一');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619660184885,'2021-04-29 09:36:24','20214299362371627285','shangpinxinxi',1619660025489,1619659212753,'广西新鲜甜玉米','http://localhost:8080/ssmcakkg/upload/1619659194693.jpg',4,15,15,60,60,1,'未支付','中一大厦(新中路店)','12312312312','张一');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619660461417,'2021-04-29 09:41:01','2021429941022063449','shangpinxinxi',1619660291561,1619659212753,'广西新鲜甜玉米','http://localhost:8080/ssmcakkg/upload/1619659194693.jpg',3,15,15,45,45,1,'已完成','中一大厦(新中路店)','12312312312','张一');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619660597307,'2021-04-29 09:43:17','20214299431628673848','shangpinxinxi',1619660291561,34,'商品名称4','http://localhost:8080/ssmcakkg/upload/1619659019399.jpg',2,59,59,118,118,1,'已支付','中一大厦(新中路店)','12312312312','张一');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619659178365 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`fenlei`) values (21,'2021-04-29 09:10:17','禽畜肉蛋');
insert  into `shangpinfenlei`(`id`,`addtime`,`fenlei`) values (22,'2021-04-29 09:10:17','蔬菜');
insert  into `shangpinfenlei`(`id`,`addtime`,`fenlei`) values (23,'2021-04-29 09:10:17','水果');
insert  into `shangpinfenlei`(`id`,`addtime`,`fenlei`) values (24,'2021-04-29 09:10:17','肉品');
insert  into `shangpinfenlei`(`id`,`addtime`,`fenlei`) values (1619659178364,'2021-04-29 09:19:38','熟食');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianma` varchar(200) DEFAULT NULL COMMENT '商品编码',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianma` (`shangpinbianma`)
) ENGINE=InnoDB AUTO_INCREMENT=1619659212754 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianma`,`shangpinmingcheng`,`fenlei`,`tupian`,`guige`,`chandi`,`baozhiqi`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (31,'2021-04-29 09:10:17','商品编码1','商品名称1','水果','http://localhost:8080/ssmcakkg/upload/1619658979475.jpg','规格1','产地1','保质期1','<p>商品详情1</p>','2021-04-29 09:40:21',7,99.9,1,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianma`,`shangpinmingcheng`,`fenlei`,`tupian`,`guige`,`chandi`,`baozhiqi`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (32,'2021-04-29 09:10:17','商品编码2','商品名称2','禽畜肉蛋','http://localhost:8080/ssmcakkg/upload/1619658992883.jpg','规格2','产地2','保质期2','<p>商品详情2</p>','2021-04-29 09:16:26',3,99.9,2,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianma`,`shangpinmingcheng`,`fenlei`,`tupian`,`guige`,`chandi`,`baozhiqi`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (33,'2021-04-29 09:10:17','商品编码3','商品名称3','熟食','http://localhost:8080/ssmcakkg/upload/1619659006065.jpg','规格3','产地3','保质期3','<p>商品详情3</p>','2021-04-29 09:27:36',5,99.9,3,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianma`,`shangpinmingcheng`,`fenlei`,`tupian`,`guige`,`chandi`,`baozhiqi`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (34,'2021-04-29 09:10:17','商品编码4','商品名称4','肉品','http://localhost:8080/ssmcakkg/upload/1619659019399.jpg','规格4','产地4','保质期4','<p>商品详情4</p>','2021-04-29 09:43:23',25,59,6,0);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianma`,`shangpinmingcheng`,`fenlei`,`tupian`,`guige`,`chandi`,`baozhiqi`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (35,'2021-04-29 09:10:17','商品编码5','商品名称5','蔬菜','http://localhost:8080/ssmcakkg/upload/1619659031330.jpg','规格5','产地5','保质期5','<p>商品详情5</p>','2021-04-29 09:17:03',6,99.9,5,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianma`,`shangpinmingcheng`,`fenlei`,`tupian`,`guige`,`chandi`,`baozhiqi`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (36,'2021-04-29 09:10:17','商品编码6','商品名称6','水果','http://localhost:8080/ssmcakkg/upload/1619659043518.jpg','规格6','产地6','保质期6','<p>商品详情6</p>','2021-04-29 09:17:15',7,99.9,6,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianma`,`shangpinmingcheng`,`fenlei`,`tupian`,`guige`,`chandi`,`baozhiqi`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (1619659212753,'2021-04-29 09:20:12','1619659180960','广西新鲜甜玉米','蔬菜','http://localhost:8080/ssmcakkg/upload/1619659194693.jpg','4根','广西','5天','<p>商品介绍</p><p><img src=\"http://localhost:8080/ssmcakkg/upload/1619659210913.jpg\"></p>','2021-04-29 09:41:11',29,15,5,40);

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
) ENGINE=InnoDB AUTO_INCREMENT=1619660406697 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619659896685,'2021-04-29 09:31:36',1619659796299,1619659212753,'shangpinxinxi','广西新鲜甜玉米','http://localhost:8080/ssmcakkg/upload/1619659194693.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619659916555,'2021-04-29 09:31:56',1619659796299,31,'shangpinxinxi','商品名称1','http://localhost:8080/ssmcakkg/upload/1619658979475.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','68wmm3q4gkztrctafdxs0npr0d460xea','2021-04-29 09:13:16','2021-04-29 10:19:29');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619659336969,'1','yonghu','用户','5qdjcgcdylcnh2tmsz17xpccchodeo2p','2021-04-29 09:22:22','2021-04-29 10:22:22');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619659796299,'2','yonghu','用户','8140e9covwx1szshvlo99k8eykii8exr','2021-04-29 09:30:36','2021-04-29 10:30:36');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1619659939182,'3','yonghu','用户','kjvmpyjcv58wjc0emfuqyervwe1nzcfd','2021-04-29 09:32:55','2021-04-29 10:32:55');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,1619660025489,'4','yonghu','用户','rkzgb3vu7x3gy09uth3zh9vvwzsoxyux','2021-04-29 09:34:18','2021-04-29 10:34:19');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (6,1619660216952,'5','yonghu','用户','blvkg89jr5y3uyjzw88eleuumnym7cho','2021-04-29 09:37:02','2021-04-29 10:37:03');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (7,1619660291561,'11','yonghu','用户','nhyvdkide4trudfs6kcxs6k4gykj5i9x','2021-04-29 09:38:51','2021-04-29 10:38:51');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-29 09:10:17');

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
) ENGINE=InnoDB AUTO_INCREMENT=1619660291562 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (11,'2021-04-29 09:10:17','用户1','123456','姓名1','男','http://localhost:8080/ssmcakkg/upload/yonghu_touxiang1.jpg','13823888881',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (12,'2021-04-29 09:10:17','用户2','123456','姓名2','男','http://localhost:8080/ssmcakkg/upload/yonghu_touxiang2.jpg','13823888882',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (13,'2021-04-29 09:10:17','用户3','123456','姓名3','男','http://localhost:8080/ssmcakkg/upload/yonghu_touxiang3.jpg','13823888883',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (14,'2021-04-29 09:10:17','用户4','123456','姓名4','男','http://localhost:8080/ssmcakkg/upload/yonghu_touxiang4.jpg','13823888884',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (15,'2021-04-29 09:10:17','用户5','123456','姓名5','男','http://localhost:8080/ssmcakkg/upload/yonghu_touxiang5.jpg','13823888885',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (16,'2021-04-29 09:10:17','用户6','123456','姓名6','男','http://localhost:8080/ssmcakkg/upload/yonghu_touxiang6.jpg','13823888886',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (1619659336969,'2021-04-29 09:22:16','1','1','陈一','女','http://localhost:8080/ssmcakkg/upload/1619659353964.jpg','12345678941',1955);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (1619659796299,'2021-04-29 09:29:56','2','2','张一','女','http://localhost:8080/ssmcakkg/upload/1619659844179.png','12345678941',1000);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (1619659939182,'2021-04-29 09:32:19','3','3','张一','女','http://localhost:8080/ssmcakkg/upload/1619659980516.png','12312312312',1000);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (1619660025489,'2021-04-29 09:33:45','4','4','张一','女','http://localhost:8080/ssmcakkg/upload/1619660063679.png','12345678912',0);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (1619660216952,'2021-04-29 09:36:56','5','5','张一','女','http://localhost:8080/ssmcakkg/upload/1619660228344.png','12312312312',1000);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (1619660291561,'2021-04-29 09:38:11','11','11','张一','女','http://localhost:8080/ssmcakkg/upload/1619660335409.jpg','12312312312',837);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
