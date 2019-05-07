-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: pets_db
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pets` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `ptype` varchar(20) DEFAULT NULL,
  `age_weeks` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `coat` varchar(10) DEFAULT NULL,
  `picture` varchar(40) DEFAULT NULL,
  `breed` varchar(30) DEFAULT NULL,
  `date_posted` date DEFAULT NULL,
  `date_adopted` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `sid` (`sid`),
  CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `shelters` (`sid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (1,1,'Sparkle','cat',156,'female','available','short','www.siamesecat.com/asfasf.url','siamese','2019-05-07',NULL),(2,1,'pirata','dog',312,'male','adopted','short','www.thatdogpic.jpg','poodle','2012-05-19','2012-06-21'),(3,2,'daphne','dog',104,'female','available','long','www.thatdogpic.jpg','chocolate lab','2019-05-07',NULL),(4,2,'zeus','dog',104,'male','available','short','www.thatdogpic.jpg','pug','2019-05-07',NULL),(5,3,'luna','cat',52,'female','available','short','www.wowlookatthatcat.com/saffsfasf.jpg','bengal','2019-05-07',NULL);
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-07 15:33:27
