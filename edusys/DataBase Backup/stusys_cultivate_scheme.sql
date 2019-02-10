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
-- Table structure for table `cultivate_scheme`
--

DROP TABLE IF EXISTS `cultivate_scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cultivate_scheme` (
  `SchemeID` decimal(9,0) NOT NULL,
  `SpecialityID` int(11) NOT NULL,
  `Grade` varchar(4) NOT NULL,
  `CourseType` varchar(5) NOT NULL,
  `CourseID` varchar(10) NOT NULL,
  `Year` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Term` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TestSty` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`SchemeID`),
  KEY `SpecialityID_idx` (`SpecialityID`),
  KEY `CourseType_idx` (`CourseType`),
  KEY `CourseID_idx` (`CourseID`),
  CONSTRAINT `CourseID` FOREIGN KEY (`CourseID`) REFERENCES `course_info` (`courseid`),
  CONSTRAINT `CourseType` FOREIGN KEY (`CourseType`) REFERENCES `coursetype` (`coursetype`),
  CONSTRAINT `SpecialityID` FOREIGN KEY (`SpecialityID`) REFERENCES `speciality_info` (`specialityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cultivate_scheme`
--

LOCK TABLES `cultivate_scheme` WRITE;
/*!40000 ALTER TABLE `cultivate_scheme` DISABLE KEYS */;
INSERT INTO `cultivate_scheme` VALUES (1,1,'2012','3','13005650','2013-2014','2','考试'),(2,2,'2012','4','13005220','2013-2014','2','考试'),(3,1,'2012','3','13025373','2013-2014','1','考试'),(4,3,'2012','4','13005140','2013-2014','1','考试'),(7,2,'2012','3','13005710','2013-2014','2','考查'),(8,2,'2012','2','13003640','2013-2014','1','考查'),(9,1,'2012','3','13006160','2013-2014','2','考试'),(10,5,'2012','3','13025850','2013-2014','1','考试'),(11,4,'2012','2','13015560','2013-2014','1','考查'),(12,2,'2012','3','13005650','2013-2014','2','考试'),(13,3,'2012','2','13015560','2013-2014','1','考查'),(14,1,'2012','3','13025850','2012-2013','1','考试'),(15,5,'2012','3','13003640','2012-2013','1','考查'),(16,4,'2012','1','13005710','2013-2014','2','考查'),(17,1,'2012','3','13005140','2012-2013','1','考试'),(18,4,'2012','4','13005220','2013-2014','2','考试'),(19,1,'2012','2','13013430','2013-2014','1','考查'),(20,3,'2012','3','13013430','2013-2014','1','考查'),(21,5,'2012','3','13013430','2013-2014','2','考查'),(22,4,'2012','4','13013430','2013-2014','1','考查'),(23,1,'2012','3','13006300','2013-2014','2','考试'),(24,5,'2012','3','13006300','2013-2014','1','考试'),(25,3,'2012','4','13006300','2013-2014','2','考试'),(26,2,'2012','3','13006300','2013-2014','1','考试'),(27,5,'2012','1','13017740','2012-2013','2','考试'),(28,4,'2012','3','13017740','2012-2013','2','考试'),(29,2,'2012','1','13017740','2012-2013','1','考试'),(30,1,'2012','3','13017740','2012-2013','2','考试'),(31,3,'2012','1','13017740','2012-2013','1','考试'),(32,2,'2012','3','13005140','2013-2014','1','考试'),(33,5,'2012','2','13005140','2013-2014','2','考试'),(34,4,'2012','4','13005140','2013-2014','2','考试'),(35,3,'2012','3','13006160','2013-2014','2','考试');
/*!40000 ALTER TABLE `cultivate_scheme` ENABLE KEYS */;
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
