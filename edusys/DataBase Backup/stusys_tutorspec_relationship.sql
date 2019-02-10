-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: stusys
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `tutorspec_relationship`
--

DROP TABLE IF EXISTS `tutorspec_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tutorspec_relationship` (
  `TutorID` varchar(10) NOT NULL,
  `SpecialityID` int(11) NOT NULL,
  `TutorDate` datetime DEFAULT NULL,
  PRIMARY KEY (`TutorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorspec_relationship`
--

LOCK TABLES `tutorspec_relationship` WRITE;
/*!40000 ALTER TABLE `tutorspec_relationship` DISABLE KEYS */;
INSERT INTO `tutorspec_relationship` VALUES ('20030012',1,'2000-01-02 00:00:00'),('20032654',1,'2003-01-15 00:00:00'),('20042561',5,'2005-11-25 00:00:00'),('20050124',2,'2002-03-15 00:00:00'),('20054256',2,'2001-06-20 00:00:00'),('20061541',3,'2005-01-26 00:00:00'),('20071036',3,'2007-10-22 00:00:00'),('20071523',4,'2006-03-28 00:00:00'),('20081074',4,'2006-10-05 00:00:00'),('20091089',1,'2000-01-01 00:00:00'),('20091542',5,'2009-05-02 00:00:00');
/*!40000 ALTER TABLE `tutorspec_relationship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29 14:56:42
