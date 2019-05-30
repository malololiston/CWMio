-- MySQL dump 10.13  Distrib 5.7.17, for Win32 (AMD64)
--
-- Host: localhost    Database: Practica14
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos` (
  `NCuenta` int(9) NOT NULL,
  `ApPaterno` char(12) NOT NULL,
  `ApMaterno` char(12) NOT NULL,
  `Nombre` char(12) NOT NULL,
  `Clave_Plantel` int(5) NOT NULL,
  PRIMARY KEY (`NCuenta`),
  KEY `Clave_Plantel` (`Clave_Plantel`),
  CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`Clave_Plantel`) REFERENCES `planteles` (`Clave_Plantel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (317053697,'Rodriguez','Grajales','Evelyn',32),(317133231,'Prado','Oropeza','Karina',26),(317200126,'Ramirez','Solano','Yael',33),(317208193,'Velazquez','Nolasco','Monica',22),(317291672,'Cruz','Gonzalez','Jenifer',26),(317466587,'Perez','Nolasco','Kira',29),(317569853,'Rosas','Pineda','Carmina',35),(317733265,'Maldonado','Bravo','Ana',28),(317843569,'Zamora','Anaya','Ricardo',27),(317966589,'Garcia','Arellano','Lizbeth',25);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planteles`
--

DROP TABLE IF EXISTS `planteles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planteles` (
  `Clave_Plantel` int(5) NOT NULL,
  `Plantel` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Clave_Plantel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planteles`
--

LOCK TABLES `planteles` WRITE;
/*!40000 ALTER TABLE `planteles` DISABLE KEYS */;
INSERT INTO `planteles` VALUES (21,'E.N.P 1 \'GABINO BARRERA\''),(22,'E.N.P 2 \'ERASMO CASTELLANOS Q.'),(23,'E.N.P 3 \'JUSTO SIERRA\''),(24,'E.N.P 4 \'VIDAL CATAÑEDA Y N.\''),(25,'E.N.P 5 \'JOSE VASCONCELOS\''),(26,'E.N.P 6 \'ANTONIO CASO\''),(27,'E.N.P 7 \'EZEQUIEL A. CHAVEZ\''),(28,'E.N.P 8 \'MIGUEL E. SCHULZ\''),(29,'E.N.P 9 \'PEDRO DE ALBA\''),(31,'C.C.H.\'PLANTEL AZCAPOTZALCO\''),(32,'C.C.H.\'PLANTEL NAULCALPAN\''),(33,'C.C.H.\'PLANTEL VALLEJO\''),(34,'C.C.H.\'PLANTEL ORIENTE\''),(35,'C.C.H.\'PLANTEL SUR\'');
/*!40000 ALTER TABLE `planteles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 13:28:00
