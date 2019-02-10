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
-- Table structure for table `tutor_info`
--

DROP TABLE IF EXISTS `tutor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tutor_info` (
  `TutorID` varchar(10) NOT NULL,
  `TutorName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TutorSex` varchar(1) DEFAULT NULL,
  `TutorBirthday` datetime DEFAULT NULL,
  `TutorLevel` varchar(3) DEFAULT NULL,
  `TutorDescript` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `HomePage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Tel` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`TutorID`),
  KEY `TutorLevel_idx` (`TutorLevel`),
  KEY `TutorSex_idx` (`TutorSex`),
  CONSTRAINT `TutorLevel` FOREIGN KEY (`TutorLevel`) REFERENCES `tutorlevel` (`tutorlevel`),
  CONSTRAINT `TutorSex` FOREIGN KEY (`TutorSex`) REFERENCES `sex` (`sex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutor_info`
--

LOCK TABLES `tutor_info` WRITE;
/*!40000 ALTER TABLE `tutor_info` DISABLE KEYS */;
INSERT INTO `tutor_info` VALUES ('20030012','刘波','男','1970-05-15 00:00:00','11','NULL','NULL','NULL','84236589'),('20032654','刘振华','男','1977-06-05 00:00:00','11','NULL','NULL','NULL','85236514'),('20042561','李想','女','1976-05-29 00:00:00','12','NULL','NULL','NULL','82365178'),('20050124','刘宁宁','男','1975-06-15 00:00:00','11','NULL','NULL','NULL','84236599'),('20054256','刘勇','男','1978-03-02 00:00:00','11','NULL','NULL','NULL','84236512'),('20061541','于红','女','1976-09-26 00:00:00','12','NULL','NULL','NULL','84236586'),('20071036','杨淑宁','女','1980-03-25 00:00:00','13','NULL','NULL','NULL','84223658'),('20071523','张国明','男','1975-05-14 00:00:00','12','NULL','NULL','NULL','84236521'),('20081074','刘晓艳','女','1976-09-15 00:00:00','12','NULL','NULL','NULL','85632462'),('20091089','张德珍','男','1973-03-12 00:00:00','12','NULL','NULL','NULL','84728530'),('20091523','陈晓','女','1975-05-12 00:00:00','13','NULL','NULL','NULL','82364145'),('20091542','李军','男','1977-04-25 00:00:00','13','NULL','NULL','NULL','84236654');
/*!40000 ALTER TABLE `tutor_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29 14:56:34
