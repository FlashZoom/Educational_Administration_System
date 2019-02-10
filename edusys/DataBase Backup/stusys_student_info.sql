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
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student_info` (
  `GraduateID` varchar(10) NOT NULL,
  `GraduateName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Sex` varchar(1) DEFAULT NULL,
  `Birthday` datetime DEFAULT NULL,
  `PolicateID` varchar(2) DEFAULT NULL,
  `NationID` varchar(2) DEFAULT NULL,
  `IDcardNo` varchar(18) DEFAULT NULL,
  `Grade` varchar(4) DEFAULT NULL,
  `SpecialityID` int(11) DEFAULT NULL,
  `TutorID` varchar(10) DEFAULT NULL,
  `Tel` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `City` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`GraduateID`),
  KEY `TutorID_idx` (`TutorID`),
  KEY `NationID_idx` (`NationID`),
  KEY `PolicateID_idx` (`PolicateID`),
  KEY `Sex_idx` (`Sex`),
  CONSTRAINT `NationID` FOREIGN KEY (`NationID`) REFERENCES `nation` (`nationid`),
  CONSTRAINT `PolicateID` FOREIGN KEY (`PolicateID`) REFERENCES `policate` (`policateid`),
  CONSTRAINT `Sex` FOREIGN KEY (`Sex`) REFERENCES `sex` (`sex`),
  CONSTRAINT `TutorID` FOREIGN KEY (`TutorID`) REFERENCES `tutor_info` (`tutorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_info`
--

LOCK TABLES `student_info` WRITE;
/*!40000 ALTER TABLE `student_info` DISABLE KEYS */;
INSERT INTO `student_info` VALUES ('2220111245','白杨婧','女','1992-08-25 00:00:00','1','1','NULL','2011',4,'20091089','89654123','NULL','NULL'),('2220111452','汪昊天','男','1992-09-15 00:00:00','3','2','NULL','2011',3,'20091089','84425623','NULL','NULL'),('2220113256','李峥涛','男','1992-04-16 00:00:00','3','2','NULL','2011',3,'20091089','87512365','NULL','NULL'),('2220115262','孙鹤松','男','1992-05-08 00:00:00','1','1','NULL','2011',2,'20091089','65487521','NULL','NULL'),('2220121200','黄晓瑶','女','1993-10-22 00:00:00','3','1','NULL','2012',1,'20091089','65897436','NULL','NULL'),('2220121756','周文蘂','女','1994-05-15 00:00:00','3','1','NULL','2012',1,'20091089','65432198','NULL','NULL'),('2220121764','陈海鸥','女','1993-07-28 00:00:00','3','1','NULL','2012',1,'20091089','12345678','NULL','NULL'),('2220121900','张雨轩','男','1993-05-04 00:00:00','3','1','NULL','2012',1,'20091089','87651235','NULL','NULL'),('2220122080','刘晓晨','女','1994-08-27 00:00:00','3','1','NULL','2012',1,'20091089','98765426','NULL','NULL'),('2220123980','蒋浩文','男','1993-03-09 00:00:00','1','1','NULL','2012',1,'20091089','63548192','NULL','NULL'),('2220124512','刘继芳','男','1993-02-25 00:00:00','3','2','NULL','2012',2,'20091089','65841235','NULL','NULL'),('2220125263','周斌','男','1993-06-27 00:00:00','3','1','NULL','2012',5,'20091089','84226955','NULL','NULL'),('2220125264','蔡智浩','男','1993-05-17 00:00:00','3','1','NULL','2012',5,'20091089','84263514','NULL','NULL'),('2220125648','毛羽','女','1994-06-18 00:00:00','1','3','NULL','2012',3,'20091089','84223659','NULL','NULL');
/*!40000 ALTER TABLE `student_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29 14:56:41
