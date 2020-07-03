-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: speakerrecognition
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `host` (
  `host_id` int NOT NULL AUTO_INCREMENT,
  `host_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`host_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
INSERT INTO `host` VALUES (1,'Xu ly anh'),(2,'host'),(3,'Xu ly tieng noi');
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_user`
--

DROP TABLE IF EXISTS `host_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `host_user` (
  `host_user_id` int NOT NULL AUTO_INCREMENT,
  `host_id` int DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `is_attending` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`host_user_id`),
  KEY `host_id` (`host_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `host_user_ibfk_1` FOREIGN KEY (`host_id`) REFERENCES `host` (`host_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `host_user_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `user` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_user`
--

LOCK TABLES `host_user` WRITE;
/*!40000 ALTER TABLE `host_user` DISABLE KEYS */;
INSERT INTO `host_user` VALUES (1,1,'17021288_Khong Trang',1),(2,2,'17021288_Khong Trang',1),(3,3,'17021288_Khong Trang',1);
/*!40000 ALTER TABLE `host_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `client_id` varchar(255) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_host` tinyint(1) DEFAULT NULL,
  `train_folder` varchar(255) DEFAULT NULL,
  `test_folder` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('12345_Khong Dung','12345','Khong Dung',0,'local/bin/usr/voice_recog/train_folder/12345_Khong Dung','local/bin/usr/voice_recog/test_folder/12345_Khong Dung'),('17000000_Nguyen Binh','17000000','Nguyen Binh',1,'local/bin/usr/voice_recog/train_folder/17000000_Nguyen Binh','local/bin/usr/voice_recog/test_folder/17000000_Nguyen Binh'),('17021288_Khong Trang','17021288','Khong Trang',1,'local/bin/usr/voice_recog/train_folder/17021288_Khong Trang','local/bin/usr/voice_recog/test_folder/17021288_Khong Trang'),('17021288_Mai Loan','17021288','Mai Loan',1,'local/bin/usr/voice_recog/train_folder/17021288_Mai Loan','local/bin/usr/voice_recog/test_folder/17021288_Mai Loan'),('17021289_Khong Trag','17021289','Khong Trag',0,'local/bin/usr/voice_recog/train_folder/17021289_Khong Trag','local/bin/usr/voice_recog/test_folder/17021289_Khong Trag'),('17021295_Duong Hai Minh','17021295','Duong Hai Minh',0,'local/bin/usr/voice_recog/train_folder/17021295_Duong Hai Minh','local/bin/usr/voice_recog/test_folder/17021295_Duong Hai Minh'),('18000000_test','18000000','test',0,'local/bin/usr/voice_recog/train_folder/18000000_test','local/bin/usr/voice_recog/test_folder/18000000_test'),('28000000_test','28000000','test',0,'local/bin/usr/voice_recog/train_folder/28000000_test','local/bin/usr/voice_recog/test_folder/28000000_test');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-04  1:15:13
