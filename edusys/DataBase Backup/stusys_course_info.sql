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
-- Table structure for table `course_info`
--

DROP TABLE IF EXISTS `course_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course_info` (
  `CourseID` varchar(10) NOT NULL,
  `CourseName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `StudyHour` int(11) DEFAULT NULL,
  `Credit` decimal(18,1) DEFAULT NULL,
  `TestSty` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DeptID` varchar(10) DEFAULT NULL,
  `Comment` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`CourseID`),
  KEY `DeptID_idx` (`DeptID`),
  CONSTRAINT `DeptID` FOREIGN KEY (`DeptID`) REFERENCES `dept_info` (`deptid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_info`
--

LOCK TABLES `course_info` WRITE;
/*!40000 ALTER TABLE `course_info` DISABLE KEYS */;
INSERT INTO `course_info` VALUES ('13003220','概率论与数理统计',54,3.0,'考查','10',NULL),('13003640','大学物理实验',18,1.0,'考查','11',NULL),('13005140','软件工程',54,3.0,'考查','3',NULL),('13005220','计算机组成原理',72,4.0,'考试','3',NULL),('13005470','多媒体技术',54,3.0,'考查','3',NULL),('13005650','数据库原理',54,3.0,'考试','3',NULL),('13005710','数据结构',72,4.0,'考试','3',NULL),('13006160','模拟电子技术',54,3.0,'考试','3',NULL),('13006300','数字逻辑与数字系统',54,3.0,'考试','3',NULL),('13013430','互联网软件基础',18,1.0,'考查','3',NULL),('13015560','马克思主义基本原理',54,3.0,'考查','12',NULL),('13017740','算法设计与分析',18,1.0,'考查','10',NULL),('13025373','大学英语',54,3.0,'考试','9',NULL),('13025413','大学英语听说（1-3）',18,1.0,'考查','9',NULL),('13025414','大学英语听说（1—-4）',18,1.0,'考查','9',NULL),('13025850','毛泽东思想和中国特色社会主义理论体系概论',72,4.0,'考试','12',NULL),('13030530','计算方法及MATLAB应用',36,2.0,'考查','3',NULL),('13030539','数据库系统',56,3.0,'考试','3',NULL);
/*!40000 ALTER TABLE `course_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29 14:56:36
