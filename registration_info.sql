-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spring_recruit_2020
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `colleges`
--

DROP TABLE IF EXISTS `colleges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colleges` (
  `College_ID` int NOT NULL AUTO_INCREMENT,
  `name` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`College_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colleges`
--

LOCK TABLES `colleges` WRITE;
/*!40000 ALTER TABLE `colleges` DISABLE KEYS */;
INSERT INTO `colleges` VALUES (1,'北校体育学院'),(2,'北校建筑学院'),(3,'北校工商管理学院(体尖)'),(4,'南校材料科学与工程学院'),(5,'南校化学与化工学院'),(6,'南校轻工科学与工程学院'),(7,'南校食品科学与工程学院'),(8,'南校数学学院'),(9,'南校物理与光电学院'),(10,'南校经济与贸易学院'),(11,'南校计算机科学与工程学院'),(12,'南校生物科学与工程学院'),(13,'南校环境与能源学院'),(14,'南校软件学院'),(15,'南校工商管理学院(非体尖)'),(16,'南校公共管理学院'),(17,'南校马克思主义学院'),(18,'南校外国语学院'),(19,'南校法学院'),(20,'南校新闻与传播学院'),(21,'南校艺术学院'),(22,'南校设计学院'),(23,'南校医学院'),(24,'南校国际教育学院'),(25,'国际校区机械与汽车工程学院'),(26,'国际校区土木与交通学院'),(27,'国际校区电力学院'),(28,'国际校区电子与信息学院'),(29,'国际校区自动化科学与工程学院'),(30,'国际校区微电子学院'),(31,'国际校区生物医学科学与工程学院'),(32,'国际校区分子科学与工程学院'),(33,'国际校区吴贤能智能工程学院');
/*!40000 ALTER TABLE `colleges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `Department_ID` int NOT NULL AUTO_INCREMENT,
  `name` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`Department_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'南校综合管理部'),(2,'南校人力资源部'),(3,'南校综合新闻部'),(4,'南校编辑部'),(5,'南校视频部'),(6,'南校外联部'),(7,'南校策划推广部'),(8,'南校技术部-代码组'),(9,'南校技术部-设计组'),(10,'南校视觉设计部'),(11,'南校节目部-国语'),(12,'南校节目部-粤语'),(13,'南校节目部-英语'),(14,'北校行政部'),(15,'北校人力资源部'),(16,'北校综合新闻部'),(17,'北校频道资讯部'),(18,'北校视频部'),(19,'北校市场拓展部'),(20,'北校形象推广部'),(21,'北校技术部-代码组'),(22,'北校技术部-产品设计组'),(23,'北校视觉设计部'),(24,'国际校区行政部'),(25,'国际校区人力资源部'),(26,'国际校区综合新闻部'),(27,'国际校区频道资讯部'),(28,'国际校区视频部'),(29,'国际校区市场拓展部'),(30,'国际校区形象推广部'),(31,'国际校区技术部-代码组'),(32,'国际校区技术部-产品设计组'),(33,'国际校区视觉设计部');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `Grade_ID` int NOT NULL AUTO_INCREMENT,
  `name` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`Grade_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,'大一'),(2,'大二'),(3,'大三'),(4,'大四');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_info`
--

DROP TABLE IF EXISTS `registration_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Grade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `College` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dormitory` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `First_choice` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Second_choice` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Willing_adjust` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Self_introduction` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Grade_ID` (`Grade`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_info`
--

LOCK TABLES `registration_info` WRITE;
/*!40000 ALTER TABLE `registration_info` DISABLE KEYS */;
INSERT INTO `registration_info` VALUES (1,'陈惠杰','M','大一','计算机科学与工程学院','C12 110','18813496228','南校技术部','南校技术部','Y','机智勇敢善良帅气');
/*!40000 ALTER TABLE `registration_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_info`
--

DROP TABLE IF EXISTS `users_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_info`
--

LOCK TABLES `users_info` WRITE;
/*!40000 ALTER TABLE `users_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'spring_recruit_2020'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-30 21:22:09
