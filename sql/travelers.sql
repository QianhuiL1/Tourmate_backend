-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: travelers
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `attraction`
--

DROP TABLE IF EXISTS `attraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attraction` (
  `AttractionID` int NOT NULL,
  `AttractionName` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Star` int DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Comment` int DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`AttractionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attraction`
--

LOCK TABLES `attraction` WRITE;
/*!40000 ALTER TABLE `attraction` DISABLE KEYS */;
/*!40000 ALTER TABLE `attraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT,
  `table_name` varchar(200) DEFAULT NULL,
  `table_comment` varchar(500) DEFAULT NULL,
  `sub_table_name` varchar(64) DEFAULT NULL,
  `sub_table_fk_name` varchar(64) DEFAULT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  `tpl_category` varchar(200) DEFAULT NULL,
  `package_name` varchar(100) DEFAULT NULL,
  `module_name` varchar(30) DEFAULT NULL,
  `business_name` varchar(30) DEFAULT NULL,
  `function_name` varchar(50) DEFAULT NULL,
  `function_author` varchar(50) DEFAULT NULL,
  `gen_type` char(1) DEFAULT NULL,
  `gen_path` varchar(200) DEFAULT NULL,
  `options` varchar(1000) DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (1,'likes',NULL,NULL,NULL,'Likes',NULL,'com.ruoyi.system','system','likes',NULL,'ruoyi',NULL,NULL,NULL,'admin','2023-06-21 15:16:13',NULL,NULL,NULL),(2,'attraction',NULL,NULL,NULL,'Attraction',NULL,'com.ruoyi.system','system','attraction',NULL,'ruoyi',NULL,NULL,NULL,'admin','2023-06-21 15:16:34',NULL,NULL,NULL),(3,'hotelrecommendation',NULL,NULL,NULL,'Hotelrecommendation',NULL,'com.ruoyi.system','system','hotelrecommendation',NULL,'ruoyi',NULL,NULL,NULL,'admin','2023-06-21 15:16:34',NULL,NULL,NULL),(4,'message',NULL,NULL,NULL,'Message',NULL,'com.ruoyi.system','system','message',NULL,'ruoyi',NULL,NULL,NULL,'admin','2023-06-21 15:16:34',NULL,NULL,NULL),(5,'plancollection',NULL,NULL,NULL,'Plancollection',NULL,'com.ruoyi.system','system','plancollection',NULL,'ruoyi',NULL,NULL,NULL,'admin','2023-06-21 15:16:34',NULL,NULL,NULL),(6,'post',NULL,NULL,NULL,'Post',NULL,'com.ruoyi.system','system','post',NULL,'ruoyi',NULL,NULL,NULL,'admin','2023-06-21 15:16:34',NULL,NULL,NULL),(7,'pushcontent',NULL,NULL,NULL,'Pushcontent',NULL,'com.ruoyi.system','system','pushcontent',NULL,'ruoyi',NULL,NULL,NULL,'admin','2023-06-21 15:16:34',NULL,NULL,NULL),(8,'rating',NULL,NULL,NULL,'Rating',NULL,'com.ruoyi.system','system','rating',NULL,'ruoyi',NULL,NULL,NULL,'admin','2023-06-21 15:16:34',NULL,NULL,NULL),(9,'searchhistory',NULL,NULL,NULL,'Searchhistory',NULL,'com.ruoyi.system','system','searchhistory',NULL,'ruoyi',NULL,NULL,NULL,'admin','2023-06-21 15:16:34',NULL,NULL,NULL),(10,'user','记录旅行家系统的用户信息','','','TravelersUser','crud','com.travelers.system','system','TravelersUser','旅行家系统用户模块','pinanoria','0','/','{}','admin','2023-06-21 15:16:34',NULL,'2023-06-21 15:28:26',NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT,
  `table_id` varchar(64) DEFAULT NULL,
  `column_name` varchar(200) DEFAULT NULL,
  `column_comment` varchar(500) DEFAULT NULL,
  `column_type` varchar(100) DEFAULT NULL,
  `java_type` varchar(500) DEFAULT NULL,
  `java_field` varchar(200) DEFAULT NULL,
  `is_pk` char(1) DEFAULT NULL,
  `is_increment` char(1) DEFAULT NULL,
  `is_required` char(1) DEFAULT NULL,
  `is_insert` char(1) DEFAULT NULL,
  `is_edit` char(1) DEFAULT NULL,
  `is_list` char(1) DEFAULT NULL,
  `is_query` char(1) DEFAULT NULL,
  `query_type` varchar(200) DEFAULT NULL,
  `html_type` varchar(200) DEFAULT NULL,
  `dict_type` varchar(200) DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (1,'1','LikeID',NULL,'int','Long','LikeID','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input',NULL,1,'admin','2023-06-21 15:16:13',NULL,NULL),(2,'1','UserID',NULL,'int','Long','UserID','0','0',NULL,'1','1','1','1','EQ','input',NULL,2,'admin','2023-06-21 15:16:13',NULL,NULL),(3,'1','PostID',NULL,'int','Long','PostID','0','0',NULL,'1','1','1','1','EQ','input',NULL,3,'admin','2023-06-21 15:16:13',NULL,NULL),(4,'1','LikeTime',NULL,'timestamp','Date','LikeTime','0','0',NULL,'1','1','1','1','EQ','datetime',NULL,4,'admin','2023-06-21 15:16:13',NULL,NULL),(5,'2','AttractionID',NULL,'int','Long','AttractionID','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input',NULL,1,'admin','2023-06-21 15:16:34',NULL,NULL),(6,'2','AttractionName',NULL,'varchar(255)','String','AttractionName','0','0',NULL,'1','1','1','1','LIKE','input',NULL,2,'admin','2023-06-21 15:16:34',NULL,NULL),(7,'2','Location',NULL,'varchar(255)','String','Location','0','0',NULL,'1','1','1','1','EQ','input',NULL,3,'admin','2023-06-21 15:16:34',NULL,NULL),(8,'2','Star',NULL,'int','Long','Star','0','0',NULL,'1','1','1','1','EQ','input',NULL,4,'admin','2023-06-21 15:16:34',NULL,NULL),(9,'2','Type',NULL,'varchar(255)','String','Type','0','0',NULL,'1','1','1','1','EQ','select',NULL,5,'admin','2023-06-21 15:16:34',NULL,NULL),(10,'2','Comment',NULL,'int','Long','Comment','0','0',NULL,'1','1','1','1','EQ','input',NULL,6,'admin','2023-06-21 15:16:34',NULL,NULL),(11,'2','Description',NULL,'text','String','Description','0','0',NULL,'1','1','1','1','EQ','textarea',NULL,7,'admin','2023-06-21 15:16:34',NULL,NULL),(12,'3','RecommendationID',NULL,'int','Long','RecommendationID','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input',NULL,1,'admin','2023-06-21 15:16:34',NULL,NULL),(13,'3','AttractionID',NULL,'int','Long','AttractionID','0','0',NULL,'1','1','1','1','EQ','input',NULL,2,'admin','2023-06-21 15:16:34',NULL,NULL),(14,'3','HotelID',NULL,'int','Long','HotelID','0','0',NULL,'1','1','1','1','EQ','input',NULL,3,'admin','2023-06-21 15:16:34',NULL,NULL),(15,'3','RecommendationTime',NULL,'timestamp','Date','RecommendationTime','0','0',NULL,'1','1','1','1','EQ','datetime',NULL,4,'admin','2023-06-21 15:16:34',NULL,NULL),(16,'4','MessageID',NULL,'int','Long','MessageID','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input',NULL,1,'admin','2023-06-21 15:16:34',NULL,NULL),(17,'4','SenderID',NULL,'int','Long','SenderID','0','0',NULL,'1','1','1','1','EQ','input',NULL,2,'admin','2023-06-21 15:16:34',NULL,NULL),(18,'4','ReceiverID',NULL,'int','Long','ReceiverID','0','0',NULL,'1','1','1','1','EQ','input',NULL,3,'admin','2023-06-21 15:16:34',NULL,NULL),(19,'4','Content',NULL,'varchar(255)','String','Content','0','0',NULL,'1','1','1','1','EQ','editor',NULL,4,'admin','2023-06-21 15:16:34',NULL,NULL),(20,'4','SendTime',NULL,'timestamp','Date','SendTime','0','0',NULL,'1','1','1','1','EQ','datetime',NULL,5,'admin','2023-06-21 15:16:34',NULL,NULL),(21,'5','RecordID',NULL,'int','Long','RecordID','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input',NULL,1,'admin','2023-06-21 15:16:34',NULL,NULL),(22,'5','UserID',NULL,'int','Long','UserID','0','0',NULL,'1','1','1','1','EQ','input',NULL,2,'admin','2023-06-21 15:16:34',NULL,NULL),(23,'5','PlanID',NULL,'int','Long','PlanID','0','0',NULL,'1','1','1','1','EQ','input',NULL,3,'admin','2023-06-21 15:16:34',NULL,NULL),(24,'5','CollectionTime',NULL,'timestamp','Date','CollectionTime','0','0',NULL,'1','1','1','1','EQ','datetime',NULL,4,'admin','2023-06-21 15:16:34',NULL,NULL),(25,'6','PostID',NULL,'int','Long','PostID','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input',NULL,1,'admin','2023-06-21 15:16:34',NULL,NULL),(26,'6','UserID',NULL,'int','Long','UserID','0','0',NULL,'1','1','1','1','EQ','input',NULL,2,'admin','2023-06-21 15:16:34',NULL,NULL),(27,'6','Title',NULL,'varchar(255)','String','Title','0','0',NULL,'1','1','1','1','EQ','input',NULL,3,'admin','2023-06-21 15:16:34',NULL,NULL),(28,'6','Content',NULL,'text','String','Content','0','0',NULL,'1','1','1','1','EQ','editor',NULL,4,'admin','2023-06-21 15:16:34',NULL,NULL),(29,'6','PostTime',NULL,'timestamp','Date','PostTime','0','0',NULL,'1','1','1','1','EQ','datetime',NULL,5,'admin','2023-06-21 15:16:34',NULL,NULL),(30,'7','PushID',NULL,'int','Long','PushID','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input',NULL,1,'admin','2023-06-21 15:16:34',NULL,NULL),(31,'7','UserID',NULL,'int','Long','UserID','0','0',NULL,'1','1','1','1','EQ','input',NULL,2,'admin','2023-06-21 15:16:34',NULL,NULL),(32,'7','Content',NULL,'varchar(255)','String','Content','0','0',NULL,'1','1','1','1','EQ','editor',NULL,3,'admin','2023-06-21 15:16:34',NULL,NULL),(33,'7','PushTime',NULL,'timestamp','Date','PushTime','0','0',NULL,'1','1','1','1','EQ','datetime',NULL,4,'admin','2023-06-21 15:16:34',NULL,NULL),(34,'8','RatingID',NULL,'int','Long','RatingID','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input',NULL,1,'admin','2023-06-21 15:16:34',NULL,NULL),(35,'8','AttractionID',NULL,'int','Long','AttractionID','0','0',NULL,'1','1','1','1','EQ','input',NULL,2,'admin','2023-06-21 15:16:34',NULL,NULL),(36,'8','UserID',NULL,'int','Long','UserID','0','0',NULL,'1','1','1','1','EQ','input',NULL,3,'admin','2023-06-21 15:16:34',NULL,NULL),(37,'8','Score',NULL,'int','Long','Score','0','0',NULL,'1','1','1','1','EQ','input',NULL,4,'admin','2023-06-21 15:16:34',NULL,NULL),(38,'8','Comment',NULL,'text','String','Comment','0','0',NULL,'1','1','1','1','EQ','textarea',NULL,5,'admin','2023-06-21 15:16:34',NULL,NULL),(39,'9','RecordID',NULL,'int','Long','RecordID','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input',NULL,1,'admin','2023-06-21 15:16:34',NULL,NULL),(40,'9','UserID',NULL,'int','Long','UserID','0','0',NULL,'1','1','1','1','EQ','input',NULL,2,'admin','2023-06-21 15:16:34',NULL,NULL),(41,'9','Keyword',NULL,'varchar(255)','String','Keyword','0','0',NULL,'1','1','1','1','EQ','input',NULL,3,'admin','2023-06-21 15:16:34',NULL,NULL),(42,'9','SearchTime',NULL,'timestamp','Date','SearchTime','0','0',NULL,'1','1','1','1','EQ','datetime',NULL,4,'admin','2023-06-21 15:16:34',NULL,NULL),(43,'10','UserID','用户ID','int','Long','UserID','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input',NULL,1,'admin','2023-06-21 15:16:34',NULL,'2023-06-21 15:28:26'),(44,'10','Username','用户名','varchar(255)','String','Username','0','0',NULL,'1','1','1','1','LIKE','input',NULL,2,'admin','2023-06-21 15:16:34',NULL,'2023-06-21 15:28:26'),(45,'10','Gender','性别','varchar(10)','String','Gender','0','0',NULL,'1','1','1','1','EQ','input',NULL,3,'admin','2023-06-21 15:16:34',NULL,'2023-06-21 15:28:26'),(46,'10','Age','年龄','int','Long','Age','0','0',NULL,'1','1','1','1','EQ','input',NULL,4,'admin','2023-06-21 15:16:34',NULL,'2023-06-21 15:28:26'),(47,'10','Address','地址','varchar(255)','String','Address','0','0',NULL,'1','1','1','1','EQ','input',NULL,5,'admin','2023-06-21 15:16:34',NULL,'2023-06-21 15:28:26'),(48,'10','Password','密码','varchar(255)','String','Password','0','0',NULL,'1','1','1','1','EQ','input',NULL,6,'admin','2023-06-21 15:16:34',NULL,'2023-06-21 15:28:26'),(49,'10','RegistrationTime','注册时间','timestamp','Date','RegistrationTime','0','0',NULL,'1','1','1','1','EQ','datetime',NULL,7,'admin','2023-06-21 15:16:34',NULL,'2023-06-21 15:28:26');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotelrecommendation`
--

DROP TABLE IF EXISTS `hotelrecommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotelrecommendation` (
  `RecommendationID` int NOT NULL,
  `AttractionID` int DEFAULT NULL,
  `HotelID` int DEFAULT NULL,
  `RecommendationTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`RecommendationID`),
  KEY `AttractionID` (`AttractionID`),
  CONSTRAINT `hotelrecommendation_ibfk_1` FOREIGN KEY (`AttractionID`) REFERENCES `attraction` (`AttractionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelrecommendation`
--

LOCK TABLES `hotelrecommendation` WRITE;
/*!40000 ALTER TABLE `hotelrecommendation` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotelrecommendation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `LikeID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `PostID` int DEFAULT NULL,
  `LikeTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`LikeID`),
  KEY `UserID` (`UserID`),
  KEY `PostID` (`PostID`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`PostID`) REFERENCES `post` (`PostID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `MessageID` int NOT NULL,
  `SenderID` int DEFAULT NULL,
  `ReceiverID` int DEFAULT NULL,
  `Content` varchar(255) DEFAULT NULL,
  `SendTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`MessageID`),
  KEY `SenderID` (`SenderID`),
  KEY `ReceiverID` (`ReceiverID`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`SenderID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`ReceiverID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plancollection`
--

DROP TABLE IF EXISTS `plancollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plancollection` (
  `RecordID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `PlanID` int DEFAULT NULL,
  `CollectionTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`RecordID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `plancollection_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plancollection`
--

LOCK TABLES `plancollection` WRITE;
/*!40000 ALTER TABLE `plancollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `plancollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `PostID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` text,
  `PostTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PostID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pushcontent`
--

DROP TABLE IF EXISTS `pushcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pushcontent` (
  `PushID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `Content` varchar(255) DEFAULT NULL,
  `PushTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PushID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `pushcontent_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pushcontent`
--

LOCK TABLES `pushcontent` WRITE;
/*!40000 ALTER TABLE `pushcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `pushcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `RatingID` int NOT NULL,
  `AttractionID` int DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `Score` int DEFAULT NULL,
  `Comment` text,
  PRIMARY KEY (`RatingID`),
  KEY `AttractionID` (`AttractionID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`AttractionID`) REFERENCES `attraction` (`AttractionID`),
  CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searchhistory`
--

DROP TABLE IF EXISTS `searchhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `searchhistory` (
  `RecordID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `Keyword` varchar(255) DEFAULT NULL,
  `SearchTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`RecordID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `searchhistory_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searchhistory`
--

LOCK TABLES `searchhistory` WRITE;
/*!40000 ALTER TABLE `searchhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `searchhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` int NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `RegistrationTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2023-06-21 19:25:23
