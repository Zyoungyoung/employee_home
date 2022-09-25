-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: employee
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dept_info`
--

DROP TABLE IF EXISTS `dept_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept_info` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_info`
--

LOCK TABLES `dept_info` WRITE;
/*!40000 ALTER TABLE `dept_info` DISABLE KEYS */;
INSERT INTO `dept_info` VALUES (2,'开发部门','开发的'),(3,'开发部门','搞开发的'),(4,'组织','组织的');
/*!40000 ALTER TABLE `dept_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doucment_info`
--

DROP TABLE IF EXISTS `doucment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doucment_info` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `Filename` varchar(300) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `user_Id` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doucment_info`
--

LOCK TABLES `doucment_info` WRITE;
/*!40000 ALTER TABLE `doucment_info` DISABLE KEYS */;
INSERT INTO `doucment_info` VALUES (1,'红烧鸡翅','zyy','很好吃','2020-03-05 16:00:00',2),(2,'来吃饭','blank','发','2022-09-19 00:54:16',1);
/*!40000 ALTER TABLE `doucment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_info`
--

DROP TABLE IF EXISTS `employee_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_info` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `dept_Id` int DEFAULT NULL,
  `job_Id` int DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `card_Id` varchar(18) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `post_code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `qq` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sex` int DEFAULT NULL,
  `party` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `race` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `education` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `speciality` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `hobby` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_info`
--

LOCK TABLES `employee_info` WRITE;
/*!40000 ALTER TABLE `employee_info` DISABLE KEYS */;
INSERT INTO `employee_info` VALUES (1,1,1,'ZYY','333333','广州','好活','乐','112233','2233','2233@',1,'汉','2020-02-03 00:00:00','请求','大学','请求','打球','请求','2020-02-02 16:00:00'),(2,1,1,'ZYY','333333','广州','好活','乐','112233','2233','2233@',1,'汉','2020-02-03 00:00:00','请求','小学','请求','踢球','请求','2020-02-02 16:00:00'),(5,1,2,'李丽','34343434','张三','3434','23232323','121213','2321321','232323232',2,'汉族','2022-09-13 16:00:00','汉','大学','张三','张三','张三','2022-09-19 00:32:34');
/*!40000 ALTER TABLE `employee_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facekey_info`
--

DROP TABLE IF EXISTS `facekey_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facekey_info` (
  `Id` int DEFAULT NULL,
  `appId` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `apiKey` varchar(32) DEFAULT NULL,
  `secretKey` varchar(32) DEFAULT NULL,
  `threshold` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facekey_info`
--

LOCK TABLES `facekey_info` WRITE;
/*!40000 ALTER TABLE `facekey_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `facekey_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_info`
--

DROP TABLE IF EXISTS `job_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_info` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `reamark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_info`
--

LOCK TABLES `job_info` WRITE;
/*!40000 ALTER TABLE `job_info` DISABLE KEYS */;
INSERT INTO `job_info` VALUES (2,'开发','修改过了');
/*!40000 ALTER TABLE `job_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_info`
--

DROP TABLE IF EXISTS `notice_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice_info` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_info`
--

LOCK TABLES `notice_info` WRITE;
/*!40000 ALTER TABLE `notice_info` DISABLE KEYS */;
INSERT INTO `notice_info` VALUES (5,'下午15.30来大礼堂开会','下午需要开会','2022-09-17 06:55:20','zyy'),(6,'来吃饭','饭来了','2022-09-18 17:00:40','zyy');
/*!40000 ALTER TABLE `notice_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_info`
--

DROP TABLE IF EXISTS `role_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_info` (
  `num` int NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_info`
--

LOCK TABLES `role_info` WRITE;
/*!40000 ALTER TABLE `role_info` DISABLE KEYS */;
INSERT INTO `role_info` VALUES (1,'管理员'),(2,'用户');
/*!40000 ALTER TABLE `role_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Loginname` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `Createdate` varchar(30) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `faceurl` varchar(255) DEFAULT NULL,
  `facepath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `user_info_FK` (`status`),
  CONSTRAINT `user_info_FK` FOREIGN KEY (`status`) REFERENCES `role_info` (`num`) ON DELETE SET DEFAULT ON UPDATE SET DEFAULT
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'zyy','11',1,'2021-02-23 10:16:55','zyy',NULL,NULL),(2,'yyy','22',2,'2021-02-13 10:16:55','yyy',NULL,NULL),(3,'uu','33',2,'2022-09-14 01:11:14.55','uu','blank','blank'),(10,'aaa','1',1,'2022-09-16 06:07:39.913','aaaa','blank','blank');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'employee'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-19 21:34:36
