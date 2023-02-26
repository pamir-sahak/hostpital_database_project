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
-- Table structure for table `doctor_has_patient`
--

DROP TABLE IF EXISTS `doctor_has_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_has_patient` (
  `DOCTOR_Id` int NOT NULL,
  `PATIENT_Id` int NOT NULL,
  `PATIENT_ROOM_Id` int NOT NULL,
  PRIMARY KEY (`DOCTOR_Id`,`PATIENT_Id`,`PATIENT_ROOM_Id`),
  KEY `fk_DOCTOR_has_PATIENT_PATIENT1_idx` (`PATIENT_Id`,`PATIENT_ROOM_Id`),
  KEY `fk_DOCTOR_has_PATIENT_DOCTOR1_idx` (`DOCTOR_Id`),
  CONSTRAINT `fk_DOCTOR_has_PATIENT_DOCTOR1` FOREIGN KEY (`DOCTOR_Id`) REFERENCES `doctor` (`Id`),
  CONSTRAINT `fk_DOCTOR_has_PATIENT_PATIENT1` FOREIGN KEY (`PATIENT_Id`, `PATIENT_ROOM_Id`) REFERENCES `patient` (`Id`, `ROOM_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_has_patient`
--

LOCK TABLES `doctor_has_patient` WRITE;
/*!40000 ALTER TABLE `doctor_has_patient` DISABLE KEYS */;
INSERT INTO `doctor_has_patient` VALUES (1,4,6),(1,21,2),(2,9,3),(2,11,21),(3,15,9),(3,19,20),(4,16,7),(4,17,14),(5,22,3),(6,2,2),(7,10,13),(8,5,1),(8,7,4),(9,3,3),(9,18,17),(10,13,7),(10,20,16),(11,23,4),(12,6,2),(12,12,6),(13,1,1),(13,8,6);
/*!40000 ALTER TABLE `doctor_has_patient` ENABLE KEYS */;
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
