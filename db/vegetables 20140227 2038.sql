-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.18-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema vegetables
--

CREATE DATABASE IF NOT EXISTS vegetables;
USE vegetables;

--
-- Definition of table `veg_address`
--

DROP TABLE IF EXISTS `veg_address`;
CREATE TABLE `veg_address` (
  `SEND_ADDRESS_ID` int(10) unsigned NOT NULL auto_increment,
  `USER_ADDRESS` varchar(100) NOT NULL,
  `USER_PHONE_NUMBER` varchar(45) NOT NULL,
  `USER_ID` varchar(45) NOT NULL,
  PRIMARY KEY  (`SEND_ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `veg_address`
--

/*!40000 ALTER TABLE `veg_address` DISABLE KEYS */;
INSERT INTO `veg_address` (`SEND_ADDRESS_ID`,`USER_ADDRESS`,`USER_PHONE_NUMBER`,`USER_ID`) VALUES 
 (1,'42','312','1'),
 (2,'42','312','1'),
 (3,'634','423','1'),
 (4,'634','423','1'),
 (5,'suzhou','412','1'),
 (6,'山西运城','432','1'),
 (7,'shi','321','1'),
 (8,'3241','321','6'),
 (9,'山西运城','0512-62886969','7'),
 (10,'运城市','13834701098','14'),
 (11,'山西运城','15035158280','17'),
 (12,'山西运城','','1'),
 (13,'山西运城','13834701098','1'),
 (14,'shanxi ','yuanqu','1'),
 (15,'fhskj','139423','1'),
 (16,'523','1131','1'),
 (17,'daw','fa','1'),
 (18,'苏州科技园','0512-62886969','19');
/*!40000 ALTER TABLE `veg_address` ENABLE KEYS */;


--
-- Definition of table `veg_desc`
--

DROP TABLE IF EXISTS `veg_desc`;
CREATE TABLE `veg_desc` (
  `WEIGHT` varchar(45) default NULL,
  `STORE_METHOD` varchar(200) default NULL,
  `FRESH_TIME` varchar(45) default NULL,
  `MAIN_METERIAL` varchar(100) default NULL,
  `DESC_ID` int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`DESC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `veg_desc`
--

/*!40000 ALTER TABLE `veg_desc` DISABLE KEYS */;
INSERT INTO `veg_desc` (`WEIGHT`,`STORE_METHOD`,`FRESH_TIME`,`MAIN_METERIAL`,`DESC_ID`) VALUES 
 ('500','常温','2',NULL,1),
 ('500','常温','3',NULL,2),
 ('500','常温','2',NULL,3),
 ('500','常温','3',NULL,4),
 ('500','常温','4',NULL,5),
 ('500','常温','2',NULL,6),
 ('500','常温','3',NULL,7),
 ('500','常温','2',NULL,8),
 ('500','常温','2',NULL,9),
 ('500','冷藏','2',NULL,10),
 ('500','冷藏','3',NULL,11),
 ('500','冷藏','4',NULL,12),
 ('800','冷藏','3',NULL,13),
 ('300','冷藏','2',NULL,14),
 ('800','冷藏','3',NULL,15),
 ('300','冷藏','3',NULL,16),
 ('800','常温','2',NULL,17),
 ('800','冷藏','3',NULL,18),
 ('800','常温','2',NULL,19),
 ('500','冷藏','4',NULL,20),
 ('800','常温','2',NULL,21),
 ('500','冷藏','3',NULL,22),
 ('800','常温','2',NULL,23),
 ('300','常温','3',NULL,24),
 ('500','冷藏','2',NULL,25),
 ('300','冷藏','2',NULL,26),
 ('300','常温','2',NULL,27),
 ('800','常温','3',NULL,28),
 ('800','常温','2',NULL,29),
 ('500','常温','3',NULL,30),
 ('300','常温','2',NULL,31),
 ('300','常温','2',NULL,32),
 ('300','常温','3',NULL,33),
 ('300','常温','3',NULL,34),
 ('300','常温','4',NULL,35),
 ('300','冷藏','2',NULL,41),
 ('1000','冷藏','5',NULL,42),
 ('500','常温','2',NULL,45);
/*!40000 ALTER TABLE `veg_desc` ENABLE KEYS */;


--
-- Definition of table `veg_goods`
--

DROP TABLE IF EXISTS `veg_goods`;
CREATE TABLE `veg_goods` (
  `GOODS_ID` int(10) unsigned NOT NULL auto_increment,
  `GOODS_NAME` varchar(80) default NULL,
  `GOODS_PICTURE` varchar(100) default NULL,
  `CATEGORY_CODE_ID` int(10) unsigned default NULL,
  `ORIGINAL_PRICE` varchar(100) default NULL,
  `SUIT_NUMBER_OF_PEOPLE` varchar(45) default NULL,
  `LIMIT_PRICE` varchar(45) default NULL,
  `DESC_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`GOODS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `veg_goods`
--

/*!40000 ALTER TABLE `veg_goods` DISABLE KEYS */;
INSERT INTO `veg_goods` (`GOODS_ID`,`GOODS_NAME`,`GOODS_PICTURE`,`CATEGORY_CODE_ID`,`ORIGINAL_PRICE`,`SUIT_NUMBER_OF_PEOPLE`,`LIMIT_PRICE`,`DESC_ID`) VALUES 
 (1,'茭白毛豆','veg_01_01.jpg',1,'10.00','2','4.00',1),
 (2,'丝瓜炒毛豆','veg_01_02.png',1,'10.00','1','4.00',2),
 (3,'蒜蓉丝瓜','veg_01_03.jpg',1,'10.00','3','3.00',3),
 (4,'炒年糕','veg_01_04.jpg',1,'10.00','1','4.30',4),
 (5,'养颜花椰菜','veg_01_05.jpg',1,'10.00','2','3.80',5),
 (6,'排骨毛豆炖面筋','veg_02_01.jpg',3,'10.00','3','10.00',6),
 (7,'苦瓜炒肉','veg_02_02.jpg',3,'10.00','4','5.50',7),
 (8,'排骨炒年糕','veg_02_03.jpg',3,'20.00','1','16.00',8),
 (9,'韭菜蒜苔肉丝','veg_02_04.jpg',3,'10.00','2','5.00',9),
 (10,'地瓜肉片','veg_02_05.jpg',3,'10.00','3','4.50',10),
 (11,'糖醋鱼排','veg_03_01.png',6,'10.00','4','8.00',11),
 (12,'酸菜鱼','veg_03_02.jpg',6,'10.00','2','10.00',12),
 (13,'家常麻辣带鱼','veg_03_03.jpg',6,'15.00','3','12.50',13),
 (14,'糖醋大黄鱼','veg_03_04.png',6,'30.00','2','23.00',14),
 (15,'五香黄花鱼','veg_03_05.jpg',6,'16.00','3','13.00',15),
 (16,'苦瓜炒蛋','veg_04_01.jpg',8,'10.00','4','5.00',16),
 (17,'胡萝卜炒鸡蛋','veg_04_02.jpg',8,'10.00','2','4.30',17),
 (18,'韭菜炒鸡蛋','veg_04_03.png',8,'10.00','3','3.50',18),
 (19,'麻婆豆腐','veg_04_04.png',8,'10.00','2','5.00',19),
 (20,'宫保豆腐','veg_04_05.jpg',8,'10.00','4','4.30',20),
 (21,'丝瓜肉片香菇汤','veg_05_01.png',10,'10.00','3','6.00',21),
 (22,'丝瓜蛋花汤','veg_05_02.png',10,'10.00','2','4.50',22),
 (23,'紫菜蛋花汤','veg_05_03.jpg',10,'10.00','3','5.00',23),
 (24,'紫菜鲜菇汤','veg_05_04.jpg',10,'10.00','4','3.00',24),
 (25,'猪蹄黄豆汤','veg_05_05.jpg',10,'30.00','3','19.40',25),
 (26,'火锅食材NO.7','veg_06_01.jpg',11,'10.00','2','6.40',26),
 (27,'火锅食材NO.5','veg_06_02.jpg',11,'10.00','2','7.40',27),
 (28,'火锅食材NO.4','veg_06_03.jpg',11,'10.00','3','7.40',28),
 (29,'火锅食材NO.3','veg_06_04.jpg',11,'10.00','2','5.40',29),
 (30,'火锅食材NO.2','veg_06_05.jpg',11,'10.00','3','7.40',30),
 (31,'凉拌腐竹','veg_07_01.jpg',12,'10.00','2','5.00',31),
 (32,'凉拌金针菇','veg_07_02.jpg',12,'10.00','3','7.30',32),
 (33,'肉末粉丝拌黄瓜','veg_07_03.jpg',12,'10.00','2','6.30',33),
 (34,'凉拌黄瓜木耳','veg_07_04.jpg',12,'10.00','3','5.00',34),
 (35,'凉拌豆芽黄瓜菜','veg_07_05.jpg',12,'10.00','2','8.00',35),
 (41,'平菇','Null.gif',2,'12.00','2','36.00',41),
 (42,'板鸭','Null.gif',4,'20.00','4','10.00',42),
 (45,'番茄鸡蛋','Null.gif',9,'10.00','9','8.00',45);
/*!40000 ALTER TABLE `veg_goods` ENABLE KEYS */;


--
-- Definition of table `veg_order`
--

DROP TABLE IF EXISTS `veg_order`;
CREATE TABLE `veg_order` (
  `ORDER_ID` int(10) unsigned NOT NULL auto_increment,
  `USER_ID` int(10) unsigned default NULL,
  `ORDER_PRICE` varchar(45) default NULL,
  `ORDER_SCORE` varchar(45) default NULL,
  `SEND_ADDRESS_ID` int(10) unsigned default NULL,
  `ORDER_STATUS` int(10) unsigned default NULL,
  `ORDER_PAY_STATUS` int(10) unsigned default NULL,
  `ORDER_TIME` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ORDER_ID`),
  KEY `FK_SEND_ADDRESS_ID` (`SEND_ADDRESS_ID`),
  CONSTRAINT `FK_SEND_ADDRESS_ID` FOREIGN KEY (`SEND_ADDRESS_ID`) REFERENCES `veg_address` (`SEND_ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `veg_order`
--

/*!40000 ALTER TABLE `veg_order` DISABLE KEYS */;
INSERT INTO `veg_order` (`ORDER_ID`,`USER_ID`,`ORDER_PRICE`,`ORDER_SCORE`,`SEND_ADDRESS_ID`,`ORDER_STATUS`,`ORDER_PAY_STATUS`,`ORDER_TIME`) VALUES 
 (9,6,'','20130604013319138977',8,1,1,'2013-06-04 01:33:19'),
 (10,7,'','20130604094920441568',9,1,1,'2013-06-04 09:49:20'),
 (11,14,'','20130609093438421369',10,1,1,'2013-06-09 09:34:38'),
 (12,17,'','20130615113141164905',11,1,1,'2013-06-15 11:31:41'),
 (17,1,'','20130616124109353042',16,0,0,'2013-06-16 12:41:09'),
 (18,1,'','20130616014343890707',17,0,0,'2013-06-16 13:43:43'),
 (19,19,'','20130616022857261957',18,1,1,'2013-06-16 14:28:57');
/*!40000 ALTER TABLE `veg_order` ENABLE KEYS */;


--
-- Definition of table `veg_seasoning`
--

DROP TABLE IF EXISTS `veg_seasoning`;
CREATE TABLE `veg_seasoning` (
  `SEASONING_ID` int(10) unsigned NOT NULL auto_increment,
  `SEASONING_NAME` varchar(80) NOT NULL,
  PRIMARY KEY  (`SEASONING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `veg_seasoning`
--

/*!40000 ALTER TABLE `veg_seasoning` DISABLE KEYS */;
/*!40000 ALTER TABLE `veg_seasoning` ENABLE KEYS */;


--
-- Definition of table `veg_seasoning_with_desc`
--

DROP TABLE IF EXISTS `veg_seasoning_with_desc`;
CREATE TABLE `veg_seasoning_with_desc` (
  `SEASONING_ID` int(10) unsigned NOT NULL,
  `GOODS_ID` int(10) unsigned NOT NULL,
  KEY `FK_SEASONING_ID` (`SEASONING_ID`),
  KEY `FK_GOODS_ID_2` (`GOODS_ID`),
  CONSTRAINT `FK_GOODS_ID_2` FOREIGN KEY (`GOODS_ID`) REFERENCES `veg_goods` (`GOODS_ID`),
  CONSTRAINT `FK_SEASONING_ID` FOREIGN KEY (`SEASONING_ID`) REFERENCES `veg_seasoning` (`SEASONING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `veg_seasoning_with_desc`
--

/*!40000 ALTER TABLE `veg_seasoning_with_desc` DISABLE KEYS */;
/*!40000 ALTER TABLE `veg_seasoning_with_desc` ENABLE KEYS */;


--
-- Definition of table `veg_shopping_cart`
--

DROP TABLE IF EXISTS `veg_shopping_cart`;
CREATE TABLE `veg_shopping_cart` (
  `SHOPPING_CART_ID` int(10) unsigned NOT NULL auto_increment,
  `GOODS_ID` int(10) unsigned NOT NULL,
  `USER_ID` int(10) unsigned NOT NULL,
  `ADD_TIME` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`SHOPPING_CART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `veg_shopping_cart`
--

/*!40000 ALTER TABLE `veg_shopping_cart` DISABLE KEYS */;
INSERT INTO `veg_shopping_cart` (`SHOPPING_CART_ID`,`GOODS_ID`,`USER_ID`,`ADD_TIME`) VALUES 
 (11,2,3,'2013-06-03 23:45:47'),
 (19,7,6,'2013-06-04 01:33:10'),
 (20,7,7,'2013-06-04 09:48:21'),
 (21,12,7,'2013-06-04 09:48:50'),
 (22,12,14,'2013-06-09 09:33:58'),
 (24,1,17,'2013-06-15 11:31:16');
/*!40000 ALTER TABLE `veg_shopping_cart` ENABLE KEYS */;


--
-- Definition of table `veg_user`
--

DROP TABLE IF EXISTS `veg_user`;
CREATE TABLE `veg_user` (
  `USER_ID` int(10) unsigned NOT NULL auto_increment,
  `USER_NAME` varchar(45) NOT NULL,
  `USER_PASSWORD` varchar(45) NOT NULL,
  `USER_DETAIL_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `veg_user`
--

/*!40000 ALTER TABLE `veg_user` DISABLE KEYS */;
INSERT INTO `veg_user` (`USER_ID`,`USER_NAME`,`USER_PASSWORD`,`USER_DETAIL_ID`) VALUES 
 (1,'user','123',1),
 (2,'eqw','111',1),
 (3,'634','312',2),
 (4,'111','111',4),
 (5,'5324','432',5),
 (6,'zhj','1',6),
 (7,'wc','123',7),
 (8,'','',8),
 (9,'y','123',9),
 (10,'qqq','',10),
 (11,'tew','',11),
 (12,'admin','123',12),
 (13,'534','432',12),
 (14,'zhaobb','123',13),
 (15,'fdshjk','faeshkl',14),
 (16,'ttt','123',15),
 (17,'wcc','123',16),
 (18,'ncs','123',17),
 (19,'ncswang','123',18),
 (20,'ccccc','ccccc',19);
/*!40000 ALTER TABLE `veg_user` ENABLE KEYS */;


--
-- Definition of table `veg_user_detail`
--

DROP TABLE IF EXISTS `veg_user_detail`;
CREATE TABLE `veg_user_detail` (
  `SEX` int(11) NOT NULL,
  `TRUE_NAME` varchar(45) default NULL,
  `RESIDENCE` varchar(200) default NULL,
  `QQ` varchar(100) default NULL,
  `AVATAR` varchar(100) default NULL,
  `USER_DETAIL_ID` int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`USER_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `veg_user_detail`
--

/*!40000 ALTER TABLE `veg_user_detail` DISABLE KEYS */;
INSERT INTO `veg_user_detail` (`SEX`,`TRUE_NAME`,`RESIDENCE`,`QQ`,`AVATAR`,`USER_DETAIL_ID`) VALUES 
 (0,'fwe',NULL,NULL,NULL,1),
 (0,'532442',NULL,NULL,NULL,2),
 (1,'喵喵','山西侯马','412',NULL,3),
 (1,'111','111','111',NULL,4),
 (1,'432','432','432',NULL,5),
 (1,'1','1','1',NULL,6),
 (0,'1','1','453015788',NULL,7),
 (0,'','','',NULL,8),
 (0,'','','',NULL,9),
 (0,'','','',NULL,10),
 (0,'','','',NULL,11),
 (0,'43','432','543',NULL,12),
 (1,'赵贝贝','运城市','453015788',NULL,13),
 (0,'fgshjk','gweio','rqewyiu',NULL,14),
 (0,'543','5324','432',NULL,15),
 (0,'111','123','432',NULL,16),
 (0,'王超','新电信息科技','453015788',NULL,17),
 (0,'王超','343','312',NULL,18),
 (0,'','','',NULL,19);
/*!40000 ALTER TABLE `veg_user_detail` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
