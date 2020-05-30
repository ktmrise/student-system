-- MySQL dump 10.13  Distrib 5.7.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: student-system
-- ------------------------------------------------------
-- Server version	5.7.30-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_city`
--

DROP TABLE IF EXISTS `t_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_city` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `numbers` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_city`
--

LOCK TABLES `t_city` WRITE;
/*!40000 ALTER TABLE `t_city` DISABLE KEYS */;
INSERT INTO `t_city` VALUES (1,'北京','2020-05-06 03:03:26',2),(2,'天津','2020-05-06 03:03:00',2),(3,'上海','2020-04-28 21:15:22',0),(4,'深圳','2020-04-28 21:18:26',0),(5,'天津','2020-05-05 14:48:48',0);
/*!40000 ALTER TABLE `t_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_clazz`
--

DROP TABLE IF EXISTS `t_clazz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_clazz` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `tagid` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_clazz`
--

LOCK TABLES `t_clazz` WRITE;
/*!40000 ALTER TABLE `t_clazz` DISABLE KEYS */;
INSERT INTO `t_clazz` VALUES (1,'1班',3),(2,'2班',3),(3,'3班',3),(4,'4班',4),(5,'5班',3),(6,'2班',3);
/*!40000 ALTER TABLE `t_clazz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_group`
--

DROP TABLE IF EXISTS `t_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_group` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `clazzid` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_group`
--

LOCK TABLES `t_group` WRITE;
/*!40000 ALTER TABLE `t_group` DISABLE KEYS */;
INSERT INTO `t_group` VALUES (1,'一组','千行代码过,BUG不沾身!',1),(2,'二组','我们都是大神',1),(3,'三组','NOBUG',1),(4,'一组','学JAVA,我的未来不是梦!',2),(5,'二组','我们二组都是人才',2),(6,'2组','我们都是大神',1);
/*!40000 ALTER TABLE `t_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_student`
--

DROP TABLE IF EXISTS `t_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_student` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `bir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone` varchar(11) DEFAULT NULL,
  `qq` varchar(16) DEFAULT NULL,
  `attr` varchar(6) DEFAULT NULL,
  `starts` varchar(14) DEFAULT NULL,
  `mark` varchar(200) DEFAULT NULL,
  `cityid` int(6) DEFAULT NULL,
  `clazzid` int(6) DEFAULT NULL,
  `groupid` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_student`
--

LOCK TABLES `t_student` WRITE;
/*!40000 ALTER TABLE `t_student` DISABLE KEYS */;
INSERT INTO `t_student` VALUES (4,'yannan chen',28,'1992-12-22 02:00:00','01010533789','344355','猴','摩羯座','这是好学生',2,2,5),(5,'小黑',27,'1993-10-22 03:00:00','01010533789','344355','鸡','天秤座','这是好学生',1,1,1),(6,'yannan chen',8,'2012-12-11 02:00:00','01010533789','344355','龙','射手座','这是好学生',2,2,5),(7,'yannan chen',8,'2012-12-11 02:00:00','01010533789','344355','龙','射手座','这是好学生',1,2,5);
/*!40000 ALTER TABLE `t_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_student_tag`
--

DROP TABLE IF EXISTS `t_student_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_student_tag` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `studentid` int(6) DEFAULT NULL,
  `tagid` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_student_tag`
--

LOCK TABLES `t_student_tag` WRITE;
/*!40000 ALTER TABLE `t_student_tag` DISABLE KEYS */;
INSERT INTO `t_student_tag` VALUES (7,4,2),(8,4,5),(9,5,1),(10,6,2),(11,7,5);
/*!40000 ALTER TABLE `t_student_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tag`
--

DROP TABLE IF EXISTS `t_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tag` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tag`
--

LOCK TABLES `t_tag` WRITE;
/*!40000 ALTER TABLE `t_tag` DISABLE KEYS */;
INSERT INTO `t_tag` VALUES (1,'帅哥','学生','2020-04-30 13:19:06'),(2,'美女','学生','2020-04-30 00:16:21'),(3,'牛逼班','班级','2020-04-30 00:18:36'),(4,'好玩班','班级','2020-04-30 15:09:56'),(5,'学渣','学生','2020-05-03 18:09:09');
/*!40000 ALTER TABLE `t_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `role` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'admin','admin','激活','2020-04-26 17:58:46','admin'),(2,'xiaochen','123','激活','2020-04-26 18:01:20','admin'),(4,'xiaochen123','123','激活','2020-04-26 18:06:37','admin'),(5,'zhangsan','123','激活','2020-04-26 19:42:27','student'),(6,'ktm','123','激活','2020-05-29 12:11:26','admin'),(7,'ktm','123','激活','2020-05-29 12:14:37','student'),(8,'qjj','123','激活','2020-05-29 12:19:38','student'),(9,'ktm','46465','激活','2020-05-29 12:30:15','admin'),(10,'weqwe','eweqw','激活','2020-05-29 12:45:46','admin');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-30 20:18:09
