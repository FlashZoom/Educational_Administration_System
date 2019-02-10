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
-- Table structure for table `nation`
--

DROP TABLE IF EXISTS `nation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nation` (
  `NationID` varchar(2) NOT NULL,
  `NationName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nation`
--

LOCK TABLES `nation` WRITE;
/*!40000 ALTER TABLE `nation` DISABLE KEYS */;
INSERT INTO `nation` VALUES ('1','汉族'),('10','朝鲜族'),('11','满族'),('12','侗族'),('13','瑶族'),('14','白族'),('15','土家族'),('16','哈尼族'),('17','哈萨克族'),('18','傣族'),('19','黎族'),('2','蒙古族'),('20','傈僳族'),('21','佤族'),('22','畲族'),('23','高山族'),('24','拉祜族'),('25','水族'),('26','东乡族'),('27','纳西族'),('28','景颇族'),('29','柯尔克孜族'),('3','回族'),('30','土族'),('31','达斡尔族'),('32','仫佬族'),('33','羌族'),('34','布朗族'),('35','撒拉族'),('36','毛难族'),('37','仡佬族'),('38','锡伯族'),('39','阿昌族'),('4','藏族'),('40','普米族'),('41','塔吉克族'),('42','怒族'),('43','乌孜别克族'),('44','俄罗斯族'),('45','鄂温克族'),('46','崩龙族'),('47','保安族'),('48','裕固族'),('49','京族'),('5','维吾尔族'),('50','塔塔尔族'),('51','独龙族'),('52','鄂伦春族'),('53','赫哲族'),('54','门巴族'),('55','珞巴族'),('56','基诺族'),('6','苗族'),('7','彝族'),('8','壮族'),('9','布依族'),('97','其他'),('98','外国血统中国籍人士');
/*!40000 ALTER TABLE `nation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29 14:56:38
