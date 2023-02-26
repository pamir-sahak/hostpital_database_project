-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `entranceDate` date NOT NULL,
  `exitDate` date DEFAULT NULL,
  `disease` varchar(45) NOT NULL,
  `ROOM_Id` int NOT NULL,
  PRIMARY KEY (`Id`,`ROOM_Id`),
  KEY `fk_PATIENT_ROOM1_idx` (`ROOM_Id`),
  CONSTRAINT `fk_PATIENT_ROOM1` FOREIGN KEY (`ROOM_Id`) REFERENCES `room` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Pauline','Sellers','2005-08-05','2005-09-01','Kidney Sergury',1),(2,'Shaunna','Potter','2007-08-12','2007-09-25','Allergy',2),(3,'Alexandru','Munro','2015-03-15','2016-08-15','Colds and Flu',3),(4,'Danial','Fuentes','2016-08-21','2016-09-19','Pink eye',6),(5,'Ivie','Battle','2019-09-20',NULL,'Diarrhea',1),(6,'Nazim','Chamberlain','2022-05-23',NULL,'Headaches',2),(7,'Marianne','Snderson','2022-04-30',NULL,'Stocmach aches',4),(8,'Dean','Chadwick','2022-02-15','2022-03-21','AIDS',6),(9,'Emyr','Flynn','2021-10-13','2021-12-25','Alzheimer',3),(10,'Socha','Hart','2019-11-19','2019-12-12','Obesity',13),(11,'Luca','Kaye','2019-12-30',NULL,'Oral Cancer',21),(12,'Rachel','Francis','2022-05-12','2022-05-22','Malaria',6),(13,'Alayah','Hampton','2022-05-23',NULL,'Fever',7),(14,'Dion','Quinn','2022-05-15',NULL,'Bird Flu',8),(15,'Katharine','Deacon','2021-09-20','2021-09-25','Black Lung',9),(16,'Abdullah','Jacobs','2019-07-25','2019-09-10','Hemopjila',7),(17,'Mindly','Vinson','2022-01-31',NULL,'Hendra Virus',14),(18,'Sneha','Craig','2009-05-09','2009-06-20','Hepatitis A',17),(19,'Max','Monroe','2006-12-23','2007-01-25','Influenza',20),(20,'Jobe','Steele','2011-09-05','2012-09-02','Bird Flu',16),(21,'Tolga','Sanderson','2022-04-29',NULL,'TB',2),(22,'Darsh','Deacon','2013-09-28','2014-10-22','Tetanus',3),(23,'Aman','Battle','2015-05-18','2015-05-30','Throat sore',4);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-26 19:31:12
