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
-- Table structure for table `tutorlevel`
--

DROP TABLE IF EXISTS `tutorlevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tutorlevel` (
  `TutorLevel` varchar(3) NOT NULL,
  `LevelName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`TutorLevel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorlevel`
--

LOCK TABLES `tutorlevel` WRITE;
/*!40000 ALTER TABLE `tutorlevel` DISABLE KEYS */;
INSERT INTO `tutorlevel` VALUES ('10','高等学校教师'),('100','农业技术人员（兽医）'),('101','农业技术推广研究员（兽医）'),('102','高级兽医师'),('103','兽医师'),('104','助理兽医师'),('105','兽医技术员'),('11','教授'),('110','农业技术人员（畜牧）'),('111','农业技术推广研究员（畜牧）'),('112','高级畜牧师'),('113','畜牧师'),('114','助理畜牧师'),('115','畜牧技术员'),('12','副教授'),('120','经济专业人员'),('122','高级经济师'),('123','经济师'),('124','助理经济师'),('125','经济员'),('13','讲师'),('130','会计人员'),('132','高级会计师'),('133','会计师'),('134','助理会计师'),('135','会计员'),('14','助教'),('140','统计人员'),('142','高级统计师'),('143','统计师'),('144','助理统计师'),('145','统计员'),('150','出版专业人员（编审）'),('151','编审'),('152','副编审'),('153','编辑'),('154','助理编辑'),('160','出版专业人员（编辑）'),('163','技术编辑'),('164','助理技术编辑'),('165','技术设计员'),('170','出版专业人员（校对）'),('173','一级校对'),('174','二级校对'),('175','三级校对'),('180','翻译人员'),('181','译审'),('182','副译审'),('183','翻译'),('184','助理翻译'),('190','新闻专业人员（记者）'),('191','高级记者'),('192','主任记者'),('193','记者'),('194','助理记者'),('20','中等专业学校教师'),('200','新闻专业人员（编辑）'),('201','高级编辑'),('202','主任编辑'),('203','编辑'),('204','助理编辑'),('22','高级讲师'),('220','播音员'),('221','播音指导'),('222','主任播音员'),('223','一级播音员'),('224','二级播音员'),('225','三级播音员'),('23','讲师'),('230','卫生技术人员（医疗）'),('231','主任医师'),('232','副主任医师'),('233','主治医师'),('234','医师'),('235','医士'),('24','助理讲师'),('240','卫生技术人员（药剂）'),('241','主任药师'),('242','副主任药师'),('243','主管药师'),('244','药师'),('245','药士'),('25','教员'),('250','卫生技术（护理）'),('251','主任护师'),('252','副主任护师'),('253','主管护师'),('254','护师'),('255','护士'),('260','卫生技术人员（其他）'),('261','主任技师'),('262','副主任技师'),('263','主管技师'),('264','技师'),('265','技士'),('270','工艺美术人员'),('272','高级工艺美术师'),('273','工艺美术师'),('274','助理工艺美术师'),('275','工艺美术员'),('280','艺术人员（演员）'),('281','一级演员'),('282','二级演员'),('283','三级演员'),('284','四级演员'),('290','艺术人员（演奏员）'),('291','一级演奏员'),('292','二级演奏员'),('293','三级演奏员'),('294','四级演奏员'),('30','技工学校教师（讲师）'),('300','艺术人员（编剧）'),('301','一级编剧'),('302','二级编剧'),('303','三级编剧'),('304','四级编剧'),('310','艺术人员（导演）'),('311','一级导演'),('312','二级导演'),('313','三级导演'),('314','四级导演'),('32','高级讲师'),('320','艺术人员（指挥）'),('321','一级指挥'),('322','二级指挥'),('323','三级指挥'),('324','四级指挥'),('33','讲师'),('330','艺术人员（作曲）'),('331','一级作曲'),('332','二级作曲'),('333','三级作曲'),('334','四级作曲'),('34','助理讲师'),('340','艺术人员（美术）'),('341','一级美术师'),('342','二级美术师'),('343','三级美术师'),('344','美术员'),('35','教员'),('350','艺术人员（舞美设计）'),('351','一级舞美设计师'),('352','二级舞美设计师'),('353','三级舞美设计师'),('354','舞美设计员'),('360','艺术人员（舞台设计）'),('362','主任舞台技师'),('363','舞台技师'),('364','舞台技术员'),('370','体育教练'),('371','国家级教练'),('372','高级教练'),('373','一级教练'),('374','二级教练'),('375','三级教练'),('390','律师'),('391','一级律师'),('392','二级律师'),('393','三级律师'),('394','四级律师'),('395','律师助理'),('40','技工学校教师(实习指导)'),('400','公证员'),('401','一级公证员'),('402','二级公证员'),('403','三级公证员'),('404','四级公证员'),('405','公证员助理'),('410','小学教师'),('413','小学高级教师'),('414','小学一级教师'),('42','高级实习指导教师'),('43','一级实习指导教师'),('44','二级实习指导教师'),('45','三级实习指导教师'),('50','中学教师'),('52','中学高级教师'),('53','中学一级教师'),('54','中学二级教师'),('55','中学三级教师'),('61','研究员              '),('62','副研究员            '),('63','助理研究员          '),('64','研究实习员          '),('70','实验人员'),('72','高级实验师'),('73','实验师'),('74','助理实验师'),('75','实验员'),('80','工程技术人员'),('82','高级工程师'),('83','工程师'),('84','助理工程师'),('85','技术员'),('90','农业技术人员（农艺）'),('91','农业技术推广研究员（农艺）'),('92','高级农艺师'),('93','农艺师'),('94','助理农艺师'),('95','农业技术员');
/*!40000 ALTER TABLE `tutorlevel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29 14:56:40
