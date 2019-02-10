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
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add course info',8,'add_courseinfo'),(26,'Can change course info',8,'change_courseinfo'),(27,'Can delete course info',8,'delete_courseinfo'),(28,'Can view course info',8,'view_courseinfo'),(29,'Can add coursetype',9,'add_coursetype'),(30,'Can change coursetype',9,'change_coursetype'),(31,'Can delete coursetype',9,'delete_coursetype'),(32,'Can view coursetype',9,'view_coursetype'),(33,'Can add cultivate scheme',10,'add_cultivatescheme'),(34,'Can change cultivate scheme',10,'change_cultivatescheme'),(35,'Can delete cultivate scheme',10,'delete_cultivatescheme'),(36,'Can view cultivate scheme',10,'view_cultivatescheme'),(37,'Can add dept info',11,'add_deptinfo'),(38,'Can change dept info',11,'change_deptinfo'),(39,'Can delete dept info',11,'delete_deptinfo'),(40,'Can view dept info',11,'view_deptinfo'),(41,'Can add login',7,'add_login'),(42,'Can change login',7,'change_login'),(43,'Can delete login',7,'delete_login'),(44,'Can view login',7,'view_login'),(45,'Can add nation',12,'add_nation'),(46,'Can change nation',12,'change_nation'),(47,'Can delete nation',12,'delete_nation'),(48,'Can view nation',12,'view_nation'),(49,'Can add policate',13,'add_policate'),(50,'Can change policate',13,'change_policate'),(51,'Can delete policate',13,'delete_policate'),(52,'Can view policate',13,'view_policate'),(53,'Can add select course',14,'add_selectcourse'),(54,'Can change select course',14,'change_selectcourse'),(55,'Can delete select course',14,'delete_selectcourse'),(56,'Can view select course',14,'view_selectcourse'),(57,'Can add sex',15,'add_sex'),(58,'Can change sex',15,'change_sex'),(59,'Can delete sex',15,'delete_sex'),(60,'Can view sex',15,'view_sex'),(61,'Can add speciality info',16,'add_specialityinfo'),(62,'Can change speciality info',16,'change_specialityinfo'),(63,'Can delete speciality info',16,'delete_specialityinfo'),(64,'Can view speciality info',16,'view_specialityinfo'),(65,'Can add student info',17,'add_studentinfo'),(66,'Can change student info',17,'change_studentinfo'),(67,'Can delete student info',17,'delete_studentinfo'),(68,'Can view student info',17,'view_studentinfo'),(69,'Can add tutor info',18,'add_tutorinfo'),(70,'Can change tutor info',18,'change_tutorinfo'),(71,'Can delete tutor info',18,'delete_tutorinfo'),(72,'Can view tutor info',18,'view_tutorinfo'),(73,'Can add tutorlevel',19,'add_tutorlevel'),(74,'Can change tutorlevel',19,'change_tutorlevel'),(75,'Can delete tutorlevel',19,'delete_tutorlevel'),(76,'Can view tutorlevel',19,'view_tutorlevel'),(77,'Can add tutorspec relationship',20,'add_tutorspecrelationship'),(78,'Can change tutorspec relationship',20,'change_tutorspecrelationship'),(79,'Can delete tutorspec relationship',20,'delete_tutorspecrelationship'),(80,'Can view tutorspec relationship',20,'view_tutorspecrelationship'),(81,'Can add auth group',21,'add_authgroup'),(82,'Can change auth group',21,'change_authgroup'),(83,'Can delete auth group',21,'delete_authgroup'),(84,'Can view auth group',21,'view_authgroup'),(85,'Can add auth group permissions',22,'add_authgrouppermissions'),(86,'Can change auth group permissions',22,'change_authgrouppermissions'),(87,'Can delete auth group permissions',22,'delete_authgrouppermissions'),(88,'Can view auth group permissions',22,'view_authgrouppermissions'),(89,'Can add auth permission',23,'add_authpermission'),(90,'Can change auth permission',23,'change_authpermission'),(91,'Can delete auth permission',23,'delete_authpermission'),(92,'Can view auth permission',23,'view_authpermission'),(93,'Can add auth user',24,'add_authuser'),(94,'Can change auth user',24,'change_authuser'),(95,'Can delete auth user',24,'delete_authuser'),(96,'Can view auth user',24,'view_authuser'),(97,'Can add auth user groups',25,'add_authusergroups'),(98,'Can change auth user groups',25,'change_authusergroups'),(99,'Can delete auth user groups',25,'delete_authusergroups'),(100,'Can view auth user groups',25,'view_authusergroups'),(101,'Can add auth user user permissions',26,'add_authuseruserpermissions'),(102,'Can change auth user user permissions',26,'change_authuseruserpermissions'),(103,'Can delete auth user user permissions',26,'delete_authuseruserpermissions'),(104,'Can view auth user user permissions',26,'view_authuseruserpermissions'),(105,'Can add django admin log',27,'add_djangoadminlog'),(106,'Can change django admin log',27,'change_djangoadminlog'),(107,'Can delete django admin log',27,'delete_djangoadminlog'),(108,'Can view django admin log',27,'view_djangoadminlog'),(109,'Can add django content type',28,'add_djangocontenttype'),(110,'Can change django content type',28,'change_djangocontenttype'),(111,'Can delete django content type',28,'delete_djangocontenttype'),(112,'Can view django content type',28,'view_djangocontenttype'),(113,'Can add django migrations',29,'add_djangomigrations'),(114,'Can change django migrations',29,'change_djangomigrations'),(115,'Can delete django migrations',29,'delete_djangomigrations'),(116,'Can view django migrations',29,'view_djangomigrations'),(117,'Can add django session',30,'add_djangosession'),(118,'Can change django session',30,'change_djangosession'),(119,'Can delete django session',30,'delete_djangosession'),(120,'Can view django session',30,'view_djangosession');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29 14:56:35
