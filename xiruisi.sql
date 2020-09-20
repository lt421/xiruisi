/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.18-20170830-log : Database - sq_cyfwlp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sq_cyfwlp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sq_cyfwlp`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `realName` varchar(10) NOT NULL,
  `address` varchar(25) NOT NULL,
  `phone` varchar(12) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`address_id`,`user_id`,`realName`,`address`,`phone`) values (4,1,'李四','四川省成都市双流区成都信息工程大学','17742879706'),(5,20,'张三','四川省成都市双流区成都信息工程大学','17742879706'),(6,26,'何玉龙','四川省成都市双流区成都信息工程大学','13819321235');

/*Table structure for table `carousel` */

DROP TABLE IF EXISTS `carousel`;

CREATE TABLE `carousel` (
  `c_id` int(11) NOT NULL,
  `c_img` varchar(200) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `carousel` */

insert  into `carousel`(`c_id`,`c_img`) values (1,'https://s1.ax1x.com/2020/05/25/t9RZtJ.jpg'),(2,'https://s1.ax1x.com/2020/05/25/t9RsAg.jpg'),(3,'https://s1.ax1x.com/2020/05/25/t9RRcq.jpg');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `number` int(11) NOT NULL DEFAULT '1',
  `ischecked` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

insert  into `cart`(`cart_id`,`user_id`,`goods_id`,`number`,`ischecked`) values (100,17,11,6,1),(174,1,4,1,1),(186,26,21,1,1),(187,26,22,1,1),(192,20,4,1,0);

/*Table structure for table `cat` */

DROP TABLE IF EXISTS `cat`;

CREATE TABLE `cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(14) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `cat` */

insert  into `cat`(`cat_id`,`cat_name`) values (1,'电脑、办公'),(2,'手机、数码'),(3,'游戏、娱乐'),(4,'运动健康'),(5,'家用电器'),(6,'母婴、玩具'),(7,'图书、音像'),(8,'家具、家居'),(9,'汽车用品'),(10,'服装、内衣'),(11,'彩票、旅行'),(12,'箱包'),(13,'家装、厨具'),(14,'理财、众筹'),(15,'游戏、线上');

/*Table structure for table `collect` */

DROP TABLE IF EXISTS `collect`;

CREATE TABLE `collect` (
  `collect_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`collect_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `collect` */

insert  into `collect`(`collect_id`,`user_id`,`goods_id`) values (16,1,4),(18,1,6),(19,1,7),(20,1,8),(23,1,1),(24,1,2),(25,1,11),(26,1,12),(28,20,1),(31,20,7),(34,20,22),(35,20,3);

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL,
  `goods_name` varchar(225) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `image1` varchar(225) DEFAULT NULL,
  `image2` varchar(225) DEFAULT NULL,
  `image3` varchar(225) DEFAULT NULL,
  `image4` varchar(225) DEFAULT NULL,
  `image5` varchar(225) DEFAULT NULL,
  `goods_price` double DEFAULT NULL,
  `goods_number` int(11) DEFAULT NULL,
  `goods_introduce` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `cat_id` (`cat_id`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `cat` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`goods_id`,`goods_name`,`cat_id`,`image1`,`image2`,`image3`,`image4`,`image5`,`goods_price`,`goods_number`,`goods_introduce`) values (1,'戴尔(DELL)成就3471 英特尔酷睿i3 高性能 商用办公 台式电脑整机(i3-9100 8G 1T 四年上门 WIFI)21.5英寸',1,'https://img11.360buyimg.com/n1/s450x450_jfs/t1/107996/27/10980/166241/5e845fe7E6f77bc84/0584034847a86e71.jpg','https://img11.360buyimg.com/n1/s450x450_jfs/t1/100192/4/17060/149355/5e845fe7Ed756884d/8b16a19a05fc7589.jpg','https://m.360buyimg.com/mobilecms/s1125x1125_jfs/t1/50832/2/11651/132431/5d8852c0Eb87a1a8f/7a512cb06e804a52.jpg','https://m.360buyimg.com/mobilecms/s1125x1125_jfs/t1/44898/3/11543/84152/5d8852c1Ef1d43576/e9039fad292c691c.jpg','https://m.360buyimg.com/mobilecms/s1125x1125_jfs/t1/51257/29/11640/184828/5d8852c0Edd1cc3b7/8e66987d4f948f85.jpg!q70.dpg.webp',2789,0,'https://ae01.alicdn.com/kf/Hd191d52b6523474798dceb2db970d07dA.jpg'),(2,'华硕 玩家国度ROG MAXIMUS XI HERO (WI-FI) 主板 M11H 板载WIFI ROG MAXIMUS XI HERO WI-FI',1,'//img11.360buyimg.com/n1/jfs/t1/112047/24/4129/486688/5eabe431Eb77999ac/764b91179c800737.jpg','//img11.360buyimg.com//n0/jfs/t1/108679/23/15098/243392/5eabea7aE12efa755/e75b9faddc1097d5.jpg','//img11.360buyimg.com/n1/jfs/t1/108679/23/15098/243392/5eabea7aE12efa755/e75b9faddc1097d5.jpg','//img11.360buyimg.com/n1/jfs/t1/114241/33/4103/332237/5eabea7bE23faf520/e5d2a4c6e1d0470a.jpg','//img11.360buyimg.com/n1/jfs/t1/114241/33/4103/332237/5eabea7bE23faf520/e5d2a4c6e1d0470a.jpg',2999,998,'https://s1.ax1x.com/2020/05/14/Y09ECV.png'),(3,'联想(Lenovo)小新Pro13锐龙版 性能网课办公轻薄笔记本电脑(标压R5-3550H 16G 512G 人脸识别 100%sRGB)银',1,'//img11.360buyimg.com/n1/jfs/t1/116094/33/5326/41208/5eb2805dE7b35e362/5b8d52046dead384.jpg','//img11.360buyimg.com/n1/jfs/t1/45838/13/13028/75317/5da01860E1135e77f/2e296859784d659d.jpg','//img11.360buyimg.com/n1/jfs/t1/73294/10/12645/76668/5da01860Ea5077de8/bbe7d98324706692.jpg','//img11.360buyimg.com/n1/jfs/t1/118612/27/5228/83706/5eb28096E183afe73/284aebf79281a694.jpg','//img11.360buyimg.com/n1/jfs/t1/116094/33/5326/41208/5eb2805dE7b35e362/5b8d52046dead384.jpg',4343,1321,'https://s1.ax1x.com/2020/05/14/Y0EX60.png'),(4,'联想ThinkBook Plus(08CD)英特尔酷睿i5 13.3英寸E-ink墨水屏 轻薄笔记本电脑(十代i5-10210U 8G 512GSSD)',1,'//img11.360buyimg.com/n1/s450x450_jfs/t1/118016/29/1558/108581/5e996794E8b64a80b/671f6ac085ee6cdd.jpg','//img11.360buyimg.com/n1/s450x450_jfs/t1/109355/17/12345/98680/5e9529eeE3f8f946a/0a4066803f4190fb.jpg','//img11.360buyimg.com/n1/s450x450_jfs/t1/109355/17/12345/98680/5e9529eeE3f8f946a/0a4066803f4190fb.jpg','//img11.360buyimg.com/n1/s450x450_jfs/t1/98250/37/18598/148963/5e9529eeE9b0ff36b/fcac47809bfa5f48.jpg','//img11.360buyimg.com/n1/s450x450_jfs/t1/118016/29/1558/108581/5e996794E8b64a80b/671f6ac085ee6cdd.jpg',3211,2131,'https://s1.ax1x.com/2020/05/14/Y0ZoGj.png'),(5,'联想(Lenovo)AIO520C 英特尔酷睿i5微边框一体台式机电脑23.8英寸(十代i5-10210U 16G 512G SSD 无线键鼠)黑',1,'//img11.360buyimg.com/n1/s450x450_jfs/t1/99335/35/16934/332046/5e830d39Eb6057112/928e2a45f2ce56d7.jpg','//img11.360buyimg.com/n1/s450x450_jfs/t1/101462/32/17257/223018/5e830d2fE92001e38/c7538159038efcc9.jpg','//img11.360buyimg.com/n1/s450x450_jfs/t1/99335/35/16934/332046/5e830d39Eb6057112/928e2a45f2ce56d7.jpg','//img11.360buyimg.com/n1/s450x450_jfs/t1/109192/29/10782/256046/5e830d2fEbd48ebaa/2333c9036f3569fc.jpg','//img11.360buyimg.com/n1/s450x450_jfs/t1/109192/29/10782/256046/5e830d2fEbd48ebaa/2333c9036f3569fc.jpg',4999,1231,'https://s1.ax1x.com/2020/05/14/Y0tkIs.png'),(6,'联想(Lenovo)YOGA C940 英特尔酷睿i7 14.0英寸超轻薄笔记本电脑移动超能版(i7-1065G7 16G 1T UHD)深空灰',1,'//img13.360buyimg.com/n1/s450x450_jfs/t1/67113/1/11262/72885/5d884b27E65105623/1e0870e1b26c406f.jpg','//img13.360buyimg.com/n1/s450x450_jfs/t1/73613/25/10844/69532/5d884b27Ededf9033/69451898fe4dbe85.jpg','//img13.360buyimg.com/n1/s450x450_jfs/t1/73613/25/10844/69532/5d884b27Ededf9033/69451898fe4dbe85.jpg','//img13.360buyimg.com/n1/s450x450_jfs/t1/73613/25/10844/69532/5d884b27Ededf9033/69451898fe4dbe85.jpg','//img13.360buyimg.com/n1/s450x450_jfs/t1/73613/25/10844/69532/5d884b27Ededf9033/69451898fe4dbe85.jpg',3213,1232,'https://s1.ax1x.com/2020/05/14/Y0NFOO.png'),(7,' AOC AIO大师734 23.8英寸高清办公一体机台式电脑 (九代酷睿i5-9400 16G 512G固态 双频WiFi 3年上门 键鼠)',1,'//img11.360buyimg.com/n1/s450x450_jfs/t1/103753/28/2223/289411/5dce3e06E10df1d16/94552e5e8585a0de.jpg','//img11.360buyimg.com/n1/s450x450_jfs/t11536/280/2780523052/362431/86ec889d/5cd8ea70Naf495228.jpg','//img11.360buyimg.com/n1/s450x450_jfs/t1/53686/4/438/171227/5cd8ea70E209809d6/6cfaadf4b97d7892.jpg','//img11.360buyimg.com/n1/s450x450_jfs/t1/33010/26/11747/494646/5cd8ea71E18de6093/30b6ae25aca59713.jpg','//img11.360buyimg.com/n1/s450x450_jfs/t30244/116/1208486886/455970/23c547e8/5cd8ea71N009067bb.jpg',4354,1231,'https://s1.ax1x.com/2020/05/14/Y0NHNd.png'),(8,'高配28英寸4K屏一体机电脑i5i7/1660super吃鸡LOL网吧游戏型台式组装电脑主机电脑全套 套餐一：28英寸4K/i5/4G独显/240G固态',1,'//img11.360buyimg.com/n1/jfs/t1/33928/33/15674/218320/5d1f21feEbba572df/eefb8d86d9ce11a6.jpg','//img11.360buyimg.com/n1/jfs/t1/111666/17/2401/99791/5ea1c246E4ef11fb2/11d2e9a445e00b39.jpg','//img11.360buyimg.com/n1/jfs/t1/114497/27/2414/65540/5ea1c24dEf198ed5f/2bf50c7631870d26.jpg','//img11.360buyimg.com/n1/jfs/t1/111522/39/2427/90359/5ea1c251E66eecb05/97a2e51785bf7084.jpg','//img11.360buyimg.com/n1/jfs/t1/111684/11/2464/99791/5ea1c257E46dec96e/f88a35e5632e7be5.jpg',3799,3212,'https://s1.ax1x.com/2020/05/14/Y0UUVe.png'),(9,'外星人Alienware m15 15.6英寸英特尔酷睿i7眼球追踪轻薄游戏笔记本电脑(i7-9750H 16G 512G GeForce GTX1660Ti) ALW15M-R4725B',1,'//img13.360buyimg.com/n1/s450x450_jfs/t1/64099/10/14464/133347/5dbbaccbEc1315d4d/a51e85d05a46570a.jpg','//img13.360buyimg.com/n1/s450x450_jfs/t1/65677/16/11179/35645/5d897db7E904859aa/188547607166979d.jpg','//img13.360buyimg.com/n1/s450x450_jfs/t1/76764/6/11120/36467/5d897db7E4e26c189/45c5438c7a38f933.jpg','//img13.360buyimg.com/n1/s450x450_jfs/t1/74835/1/11304/65744/5d897db7E4e61bf91/af14aa9f175eeefb.jpg','//img13.360buyimg.com/n1/s450x450_jfs/t1/72346/27/3080/21763/5d161919Ed838ad35/13e66956d5ceac9d.jpg',13887,118,'https://s1.ax1x.com/2020/05/14/Y0ausf.png'),(10,'酷耶 i5四核台式机电脑主机 电竞独显吃鸡游戏组装电脑整机粉色款女神 主机+24英寸曲面显示器 套餐二',1,'//img10.360buyimg.com/n1/jfs/t1/91907/9/13489/331744/5e58e930Ee1ba39a8/abee24b14768c4d5.jpg','//img10.360buyimg.com/n1/jfs/t1/93942/16/4345/259323/5de74e2bE8a8f0460/7994239731a01021.jpg','//img10.360buyimg.com/n1/jfs/t1/100979/29/4511/326302/5de7502aE4ac24ff3/bd91b6ed59c5945b.jpg','//img10.360buyimg.com/n1/jfs/t1/91689/6/4467/220913/5de74e2cEbdbc4604/5b4252168cbfc430.jpg','//img10.360buyimg.com/n1/jfs/t1/98258/10/4407/420491/5de74e2cE7099983d/041816e807db898d.jpg',3698,1227,'https://s1.ax1x.com/2020/05/14/Y05QmD.png'),(11,'1',1,'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=161416428,2109044559&fm=26&gp=0.jpg','1','1','1','1',1,1,'1'),(12,'2',1,'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=161416428,2109044559&fm=26&gp=0.jpg','1','1','1','1',1,1,'1'),(13,'3',1,'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=161416428,2109044559&fm=26&gp=0.jpg','1',NULL,'1','1',1,1,'1'),(14,'4',1,'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=161416428,2109044559&fm=26&gp=0.jpg','1','1','1','1',1,1,'1'),(15,'5',1,'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=161416428,2109044559&fm=26&gp=0.jpg','1','1','1','1',1,1,'1'),(16,'6',1,'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=161416428,2109044559&fm=26&gp=0.jpg','1','1','1','1',1,1,'1'),(17,'7',1,'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=161416428,2109044559&fm=26&gp=0.jpg','1','1','1','1',1,1,'1'),(18,'8',1,'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=161416428,2109044559&fm=26&gp=0.jpg','1','1','1','1',1,1,'1'),(19,'9',1,'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=161416428,2109044559&fm=26&gp=0.jpg','1','1','1','1',1,1,'1'),(20,'10',1,'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=161416428,2109044559&fm=26&gp=0.jpg','1','1','1','1',1,1,'1'),(21,' 一加 OnePlus 8 5G旗舰 90Hz高清柔性屏 高通骁龙865 180g轻薄手感 8GB+128GB 青空 超清超广角拍照游戏手机',2,'//img12.360buyimg.com/n1/s450x450_jfs/t1/119916/31/2962/88836/5ecb1b94E08ce1913/b6b1deca73cf4b81.jpg','//img12.360buyimg.com/n1/s450x450_jfs/t1/105933/4/18698/171206/5e98502dE0ef0fbb5/d9eddae31cffc084.jpg','//img12.360buyimg.com/n1/s450x450_jfs/t1/111760/12/1439/102110/5e98502fE26c665a8/035d40b78019dcbd.jpg','//img12.360buyimg.com/n1/s450x450_jfs/t1/117905/37/1439/86394/5e98502eE7e49a3d3/7d082644404b2038.jpg','//img12.360buyimg.com/n1/s450x450_jfs/t1/111760/12/1439/102110/5e98502fE26c665a8/035d40b78019dcbd.jpg',3999,121,'https://s1.ax1x.com/2020/05/25/t97N9O.png'),(22,'OPPO Ace2 8+128 极光银 双模5G 185g超薄机身 65W超级闪充 40W无线闪充 90Hz电竞屏高通骁龙865游戏智能手机',2,'//img11.360buyimg.com/n1/jfs/t1/118231/7/8295/219596/5ecb7eb2E33349fca/8a2a464438808c91.jpg','//img11.360buyimg.com/n1/jfs/t1/118231/7/8295/219596/5ecb7eb2E33349fca/8a2a464438808c91.jpg','//img11.360buyimg.com/n1/jfs/t1/116262/36/6157/37754/5eb93944Ea01f71ae/cf1bc2d90afaa06b.jpg','//img11.360buyimg.com/n1/jfs/t1/116262/36/6157/37754/5eb93944Ea01f71ae/cf1bc2d90afaa06b.jpg','//img11.360buyimg.com/n1/jfs/t1/124961/12/1099/31642/5eb93944E3e6da6ba/ccb6c937e3a4f111.jpg',4999,2130,'https://s1.ax1x.com/2020/05/25/t9775V.png');

/*Table structure for table `order_x` */

DROP TABLE IF EXISTS `order_x`;

CREATE TABLE `order_x` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 待支付 1 代发货 2 已经发货',
  `order_amount` double NOT NULL,
  `paid_amount` double NOT NULL,
  `goods_id` int(11) NOT NULL,
  `buy_counts` int(11) NOT NULL,
  `create_time` varchar(25) DEFAULT NULL,
  `paid_time` varchar(25) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `order_x_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`),
  CONSTRAINT `order_x_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8;

/*Data for the table `order_x` */

insert  into `order_x`(`id`,`order_num`,`order_status`,`order_amount`,`paid_amount`,`goods_id`,`buy_counts`,`create_time`,`paid_time`,`address_id`) values (178,'231470843765592064',3,2789,2789,1,1,'2020-05-19 17:42:29','2020-05-19 17:43:58',5),(179,'231471312827191296',1,5998,5998,2,2,'2020-05-19 17:44:21','2020-05-19 17:44:51',5),(180,'231471312827191296',1,4343,4343,3,1,'2020-05-19 17:44:21','2020-05-19 17:44:51',5),(193,'231561690167250944',0,8686,8686,3,2,'2020-05-19 23:43:29',NULL,5),(194,'231563552446615552',1,13887,13887,9,1,'2020-05-19 23:50:53','2020-05-19 23:51:33',5),(195,'231722781472067584',0,4999,4999,5,1,'2020-05-20 10:23:36',NULL,5),(196,'231724263944622080',0,3799,3799,8,1,'2020-05-20 10:29:29',NULL,5),(197,'231724263944622080',0,3,3,11,3,'2020-05-20 10:29:29',NULL,5),(198,'231724317480718336',0,3799,3799,8,1,'2020-05-20 10:29:42',NULL,5),(199,'231724317480718336',0,3,3,11,3,'2020-05-20 10:29:42',NULL,5),(200,'231724451459371008',0,3799,3799,8,1,'2020-05-20 10:30:14',NULL,5),(201,'231724451459371008',0,3,3,11,3,'2020-05-20 10:30:14',NULL,5),(202,'231725412290531328',1,4354,4354,7,1,'2020-05-20 10:34:03','2020-05-20 10:34:37',5),(203,'231725412290531328',1,1,1,12,1,'2020-05-20 10:34:03','2020-05-20 10:34:37',5),(204,'231899774511616000',0,3211,3211,4,1,'2020-05-20 22:06:54',NULL,NULL),(205,'231899774511616000',0,17372,17372,3,4,'2020-05-20 22:06:54',NULL,NULL),(206,'231899874197639168',1,3211,3211,4,1,'2020-05-20 22:07:18','2020-05-20 22:09:16',4),(207,'231899874197639168',1,17372,17372,3,4,'2020-05-20 22:07:18','2020-05-20 22:09:16',4),(208,'231902013657583616',0,8686,8686,3,2,'2020-05-20 22:15:48',NULL,NULL),(209,'231902013657583616',0,41661,41661,9,3,'2020-05-20 22:15:48',NULL,NULL),(210,'231902060294049792',1,8686,8686,3,2,'2020-05-20 22:15:59','2020-05-20 22:16:47',4),(211,'231902060294049792',1,41661,41661,9,3,'2020-05-20 22:15:59','2020-05-20 22:16:47',4),(212,'231904791310241792',0,6426,6426,6,2,'2020-05-20 22:26:50',NULL,NULL),(213,'231904791310241792',0,55548,55548,9,4,'2020-05-20 22:26:50',NULL,NULL),(216,'231908310683619328',0,69435,69435,9,5,'2020-05-20 22:40:49',NULL,NULL),(217,'231908310683619328',0,8686,8686,3,2,'2020-05-20 22:40:49',NULL,NULL),(218,'231908387909144576',1,69435,69435,9,5,'2020-05-20 22:41:08','2020-05-20 22:42:03',5),(219,'231908387909144576',1,8686,8686,3,2,'2020-05-20 22:41:08','2020-05-20 22:42:03',5),(220,'233624727539814400',0,13029,13029,3,3,'2020-05-25 16:21:15',NULL,NULL),(221,'234313387893460992',0,4999,4999,22,1,'2020-05-27 13:57:45',NULL,NULL),(222,'234313387893460992',0,3999,3999,21,1,'2020-05-27 13:57:45',NULL,NULL),(223,'234313429538705408',0,4999,4999,22,1,'2020-05-27 13:57:54',NULL,NULL),(224,'234313429538705408',0,3999,3999,21,1,'2020-05-27 13:57:54',NULL,NULL),(225,'234313643880222720',0,9998,9998,22,2,'2020-05-27 13:58:46',NULL,NULL),(226,'234313643880222720',0,7998,7998,21,2,'2020-05-27 13:58:46',NULL,NULL),(227,'234313743369113600',0,9998,9998,22,2,'2020-05-27 13:59:09',NULL,6),(228,'234313743369113600',0,7998,7998,21,2,'2020-05-27 13:59:09',NULL,6),(229,'234315378761797632',1,7998,7998,21,2,'2020-05-27 14:05:39','2020-05-27 14:06:24',6),(230,'234315378761797632',1,9998,9998,22,2,'2020-05-27 14:05:39','2020-05-27 14:06:25',6),(231,'234687689746681856',0,8686,8686,3,2,'2020-05-28 14:45:05',NULL,5),(232,'234687689746681856',0,13887,13887,9,1,'2020-05-28 14:45:05',NULL,5),(234,'236077811306205184',0,3698,3698,10,1,'2020-06-01 10:48:56',NULL,NULL),(235,'236077811306205184',0,41661,41661,9,3,'2020-06-01 10:48:56',NULL,NULL),(236,'236077884098351104',1,3698,3698,10,1,'2020-06-01 10:49:13','2020-06-01 11:03:18',5),(237,'236077884098351104',1,41661,41661,9,3,'2020-06-01 10:49:14','2020-06-01 11:03:18',5);

/*Table structure for table `recommend` */

DROP TABLE IF EXISTS `recommend`;

CREATE TABLE `recommend` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `recommend` */

insert  into `recommend`(`id`,`goods_id`) values (1,1),(2,2),(3,3),(4,4),(5,5),(6,6);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`username`,`PASSWORD`,`email`,`phone`,`address_id`) values (12,'12','12','3123123@qq.com','18919183258',5),(20,'admin','abc123','32131@163.com','17361575821',5),(25,'孤独时代的cuber','12345','123@qq.com','17742879705',NULL),(26,'廖涛','liaotao','1961638786@qq.com','13890560240',6),(27,'工具人','tplinkd66201','1326360319@qq.com','17352252695',NULL),(28,'JinKami','123456','1059573835@qq.com','15985438580',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
