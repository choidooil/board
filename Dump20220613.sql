-- MariaDB dump 10.19  Distrib 10.6.8-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: board
-- ------------------------------------------------------
-- Server version	10.6.8-MariaDB

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `board_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시글번호',
  `board_Title` varchar(45) NOT NULL COMMENT '게시글제목',
  `board_Content` text NOT NULL COMMENT '게시글내용',
  `user_ID` varchar(45) DEFAULT NULL COMMENT '생성유저아이디',
  `Create_Date` varchar(45) DEFAULT NULL COMMENT '게시글생성시간',
  PRIMARY KEY (`board_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb3 COMMENT='게시글테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'title','content','user_id','create_date'),(3,'HELLO WORLD!','HELLO SPRING BOOT!','pkcdi4','2022-06-07'),(8,'제목5','내용5','1',NULL),(10,'제목7','내용7','1',NULL),(11,'제목8','내용8','1',NULL),(12,'제목9','내용9','1',NULL),(13,'제목10','내용10','1',NULL),(14,'제목11','내용11','1',NULL),(15,'제목12','내용12','1',NULL),(16,'제목13','내용13','1',NULL),(17,'제목14','내용14','1',NULL),(18,'제목15','내용15','1',NULL),(19,'제목16','내용16','1',NULL),(20,'제목17','내용17','1',NULL),(21,'제목18','내용18','1',NULL),(22,'제목19','내용19','1',NULL),(23,'제목20','내용20','1',NULL),(24,'제목21','내용21','1',NULL),(25,'제목22','내용22','1',NULL),(26,'제목23','내용23','1',NULL),(27,'제목24','내용24','1',NULL),(28,'제목25','내용25','1',NULL),(29,'제목26','내용26','1',NULL),(30,'제목27','내용27','1',NULL),(31,'제목28','내용28','1',NULL),(32,'제목29','내용29','1',NULL),(33,'제목30','내용30','1',NULL),(34,'제목31','내용31','1',NULL),(35,'제목32','내용32','1',NULL),(36,'제목33','내용33','1',NULL),(37,'제목34','내용34','1',NULL),(38,'제목35','내용35','1',NULL),(39,'제목36','내용36','1',NULL),(40,'제목37','내용37','1',NULL),(41,'제목38','내용38','1',NULL),(42,'제목39','내용39','1',NULL),(43,'제목40','내용40','1',NULL),(44,'제목41','내용41','1',NULL),(45,'제목42','내용42','1',NULL),(46,'제목43','내용43','1',NULL),(47,'제목44','내용44','1',NULL),(48,'제목45','내용45','1',NULL),(49,'제목46','내용46','1',NULL),(50,'제목47','내용47','1',NULL),(51,'제목48','내용48','1',NULL),(52,'제목49','내용49','1',NULL),(53,'제목50','내용50','1',NULL),(54,'제목51','내용51','1',NULL),(55,'제목52','내용52','1',NULL),(56,'제목53','내용53','1',NULL),(57,'제목54','내용54','1',NULL),(58,'제목55','내용55','1',NULL),(59,'제목56','내용56','1',NULL),(60,'제목57','내용57','1',NULL),(61,'제목58','내용58','1',NULL),(62,'제목59','내용59','1',NULL),(63,'제목60','내용60','1',NULL),(64,'제목61','내용61','1',NULL),(65,'제목62','내용62','1',NULL),(66,'제목63','내용63','1',NULL),(67,'제목64','내용64','1',NULL),(68,'제목65','내용65','1',NULL),(69,'제목66','내용66','1',NULL),(70,'제목67','내용67','1',NULL),(71,'제목68','내용68','1',NULL),(72,'제목69','내용69','1',NULL),(73,'제목70','내용70','1',NULL),(74,'제목71','내용71','1',NULL),(75,'제목72','내용72','1',NULL),(76,'제목73','내용73','1',NULL),(77,'제목74','내용74','1',NULL),(78,'제목75','내용75','1',NULL),(79,'제목76','내용76','1',NULL),(80,'제목77','내용77','1',NULL),(81,'제목78','내용78','1',NULL),(82,'제목79','내용79','1',NULL),(83,'제목80','내용80','1',NULL),(84,'제목81','내용81','1',NULL),(85,'제목82','내용82','1',NULL),(86,'제목83','내용83','1',NULL),(87,'제목84','내용84','1',NULL),(88,'제목85','내용85','1',NULL),(89,'제목86','내용86','1',NULL),(90,'제목87','내용87','1',NULL),(91,'제목88','내용88','1',NULL),(92,'제목89','내용89','1',NULL),(93,'제목90','내용90','1',NULL),(94,'제목91','내용91','1',NULL),(95,'제목92','내용92','1',NULL),(96,'제목93','내용93','1',NULL),(97,'제목94','내용94','1',NULL),(98,'제목95','내용95','1',NULL),(99,'제목96','내용96','1',NULL),(100,'제목97','내용97','1',NULL),(101,'제목98','내용98','1',NULL),(102,'제목99','내용99','1',NULL),(103,'제목100','내용100','1',NULL),(104,'제목101','내용101','1',NULL),(105,'제목102','내용102','1',NULL),(106,'제목103','내용103','1',NULL),(107,'제목104','내용104','1',NULL),(108,'제목105','내용105','1',NULL),(109,'제목106','내용106','1',NULL),(110,'제목107','내용107','1',NULL),(111,'제목108','내용108','1',NULL),(112,'제목109','내용109','1',NULL),(113,'제목110','내용110','1',NULL),(114,'제목111','내용111','1',NULL),(115,'제목112','내용112','1',NULL),(116,'제목113','내용113','1',NULL),(117,'제목114','내용114','1',NULL),(118,'제목115','내용115','1',NULL),(119,'제목116','내용116','1',NULL),(120,'제목117','내용117','1',NULL),(121,'제목118','내용118','1',NULL),(122,'제목119','내용119','1',NULL),(123,'제목120','내용120','1',NULL),(125,'title ','contenttttttttttttttttttt','user','date'),(126,'title123453','3','1','2'),(127,'1','4','2','3'),(128,'1','4','2','3'),(129,'tttttttttttttttttt','33333333333','111111111111111','222222222222'),(130,'1','4','2','3'),(131,'title','tttestestset','pkcdi4','create_date');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment`
--

DROP TABLE IF EXISTS `board_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_comment` (
  `board_ID` int(11) NOT NULL,
  `board_comment_ID` int(11) NOT NULL AUTO_INCREMENT,
  `board_comment_content` text DEFAULT NULL,
  `board_comment_User_ID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`board_comment_ID`,`board_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='게시글 덧글';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment`
--

LOCK TABLES `board_comment` WRITE;
/*!40000 ALTER TABLE `board_comment` DISABLE KEYS */;
INSERT INTO `board_comment` VALUES (1,1,'댓글1','user'),(1,2,'댓글2','user'),(1,3,'댓글3','user'),(4,4,'댓글3','user'),(1,5,'content','user'),(1,6,'cococo','user'),(1,7,'댓댓ㄷ','user2'),(1,8,'test33','user'),(1,9,'test33','test'),(1,10,'4445','tt33');
/*!40000 ALTER TABLE `board_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_user`
--

DROP TABLE IF EXISTS `board_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_user` (
  `User_ID` varchar(45) NOT NULL COMMENT '유저아이디\n',
  `User_PW` varchar(45) DEFAULT NULL COMMENT '유저패스워드',
  `User_Grade` varchar(45) DEFAULT NULL COMMENT '유저등급',
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='사용자테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_user`
--

LOCK TABLES `board_user` WRITE;
/*!40000 ALTER TABLE `board_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-13 20:57:16
