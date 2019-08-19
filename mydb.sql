-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.9-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(11) DEFAULT NULL COMMENT '外键，关联主键',
  `defaluetAdd` tinyint(1) DEFAULT NULL COMMENT '是否为默认地址',
  `nation` varchar(20) DEFAULT NULL COMMENT '国家',
  `provice` varchar(20) DEFAULT NULL COMMENT '省',
  `city` varchar(20) DEFAULT NULL COMMENT '城市',
  `country` varchar(20) DEFAULT NULL COMMENT '县',
  `street` varchar(100) DEFAULT NULL COMMENT '街道',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`),
  CONSTRAINT `address_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,1,'中国','河南','郑州','金水区','二环路','瑞龙城'),(2,1,0,'中国','陕西','西安','北水曲','开宇阿奴','文景校区'),(3,1,0,'中国','云南','昆明','盘水曲','小康大道','银河校区'),(4,1,1,'中国','河南','郑州','金水区','二环路','瑞龙城'),(5,1,0,'中国','陕西','西安','北水曲','开宇阿奴','文景校区'),(6,1,0,'中国','云南','昆明','盘水曲','小康大道','银河校区');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sutdent`
--

DROP TABLE IF EXISTS `sutdent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sutdent` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生id',
  `reg_no` int(11) NOT NULL COMMENT '学号',
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `sex` varchar(20) NOT NULL COMMENT '性别',
  `age` int(11) NOT NULL COMMENT '年龄',
  `grade` varchar(20) NOT NULL COMMENT '年级',
  `major` varchar(50) NOT NULL COMMENT '专业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sutdent`
--

LOCK TABLES `sutdent` WRITE;
/*!40000 ALTER TABLE `sutdent` DISABLE KEYS */;
INSERT INTO `sutdent` VALUES (1,20171201,'梅长苏','男',31,'2008','哲学系'),(2,20171202,'萧景炎','男',30,'2008','政治系'),(3,20171203,'飞流','男',18,'2016','人体学'),(4,20171204,'萧景恒','男',35,'2006','政治系');
/*!40000 ALTER TABLE `sutdent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(50) NOT NULL COMMENT '登录账号',
  `userpass` varchar(50) NOT NULL COMMENT '登录密码',
  `nickname` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `age` int(11) DEFAULT NULL COMMENT '用户年龄',
  `gender` varchar(5) DEFAULT NULL COMMENT '用户性别',
  `phone` varchar(13) DEFAULT NULL COMMENT '联系方式',
  `email` varchar(20) DEFAULT NULL COMMENT '用户邮箱',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `lastLogin` datetime DEFAULT NULL COMMENT '最后登录时间',
  `userStatus` int(11) DEFAULT NULL COMMENT '用户状态 0 正常 1 锁定 2 删除',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'damu','damu','大慕',11,'男','132456','4566122@qq.com','2017-05-16 00:00:00','2017-03-03 00:00:00','2018-04-04 00:00:00',0,NULL),(3,'houjuzhang','123456','侯亮平',12,'男','123456','231456@qq.com','2017-05-16 00:00:00','2014-05-05 00:00:00','2015-04-04 00:00:00',1,NULL),(4,'jichangping','111111','季昌平',12,'女','41321','1234564@qq.com','2017-05-16 00:00:00','2015-07-07 00:00:00','2016-08-07 00:00:00',1,NULL),(5,'chenhai','222222','陈海',44,'男','231','2154@qq.com','2017-05-16 00:00:00','2018-09-09 00:00:00','2015-08-08 00:00:00',2,NULL),(7,'418894252@qq.com','45454645','小红',78,'男','1','418894252@qq.com','2019-07-30 17:38:27','2019-07-30 17:38:27','2019-07-30 17:38:27',0,NULL),(8,'aaa','45454645','小红',78,'男','1','418894252@qq.com','2019-07-30 17:39:03','2019-07-30 17:39:03','2019-07-30 17:39:03',0,NULL),(9,'imooc','45454645','小红',78,'男','1','418894252@qq.com','2019-07-30 17:47:57','2019-07-30 17:47:57','2019-07-30 17:47:57',0,NULL),(10,'aaa','45454645','小红',78,'男','1','418894252@qq.com','2019-07-30 17:51:11','2019-07-30 17:51:11','2019-07-30 17:51:11',0,NULL),(11,'aaa','45454645','小红',78,'男','1','418894252@qq.com','2019-07-30 17:52:51','2019-07-30 17:52:51','2019-07-30 17:52:51',0,NULL),(12,'aaa','45454645','小红',78,'男','1','418894252@qq.com','2019-07-30 17:53:29','2019-07-30 17:53:29','2019-07-30 17:53:29',0,NULL),(14,'418894252@qq.com','45454645','小红',78,'男','1','418894252@qq.com','2019-07-30 18:15:28','2019-07-30 18:15:28','2019-07-30 18:15:28',0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-20  7:38:03
