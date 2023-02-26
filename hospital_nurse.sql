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
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `salary` decimal(10,0) NOT NULL,
  `phoneNumber` varchar(45) NOT NULL,
  `section` varchar(45) NOT NULL,
  `DOCTOR_Id` int NOT NULL,
  PRIMARY KEY (`Id`,`DOCTOR_Id`),
  KEY `fk_NURSE_DOCTOR1_idx` (`DOCTOR_Id`),
  CONSTRAINT `fk_NURSE_DOCTOR1` FOREIGN KEY (`DOCTOR_Id`) REFERENCES `doctor` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES (1,'Margie','Bass',2000,'4679879799','Allergy',5),(2,'Olga','Harper',2500,'9465321346','Dermatoldy',8),(3,'Irvin','Obrien',2900,'9894613467','Radiology',2),(4,'Tina','Oslon',2700,'1654654676','Family',7),(5,'Sonja','Carroll',2300,'5664688464','Internal',1),(6,'Tiffany','Zimmerman',3000,'9643131646','Genetics',11),(7,'Morris','Edwards',2600,'4676846466','Neurology',3),(8,'Marguerite','Massey',2100,'9897646467','Pathology',4),(9,'Francis','Chambers',2400,'8464654799','Ophthalmology',9),(10,'Thelma','Nash',2600,'4946461679','Pediatrics',10);
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
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
