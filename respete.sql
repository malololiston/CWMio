-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: ete
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB

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
  `NoCuenta` int(9) NOT NULL,
  `ApPaterno` char(15) DEFAULT NULL,
  `ApMaterno` char(15) DEFAULT NULL,
  `Nombre` char(15) DEFAULT NULL,
  `ClaveOps` char(2) DEFAULT NULL,
  PRIMARY KEY (`NoCuenta`),
  KEY `ClaveOps` (`ClaveOps`),
  CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`ClaveOps`) REFERENCES `ete` (`ClaveOps`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (300000001,'Franzua','Nolasco','Agripina','CN'),(309890232,'Razo','Cano','Luis Javier','FO'),(309893244,'Toro','Bravo','Armida','HI'),(317302005,'Atilano','Xi','Lomeno','LQ'),(318081166,'Cruz','Hernandez','Victor Emiliano','CM'),(318154907,'List','CeseÃ±a','JosÃ© Manuel','CM'),(318188912,'Rosales','Carapia','Alejandra','NT'),(318546923,'Carmona','Pachuca','Grecia','BN'),(319999555,'Azul','Miralrio','Nero','DA'),(321923834,'Calca','Evangelista','Melesio','CN');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ete`
--

DROP TABLE IF EXISTS `ete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ete` (
  `ClaveOps` char(2) NOT NULL,
  `NomCompleto` blob,
  `AÃ±os` tinyint(2) DEFAULT NULL,
  `NumAsigs` int(2) DEFAULT NULL,
  PRIMARY KEY (`ClaveOps`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ete`
--

LOCK TABLES `ete` WRITE;
/*!40000 ALTER TABLE `ete` DISABLE KEYS */;
INSERT INTO `ete` VALUES ('av','Agencia de Viajes y Hoteler¡a',2,11),('BN','Auxiliar Bancario',1,6),('CM','Compuaci¢n',2,10),('CN','Auxiliar en Contabilidad',1,5),('DA','Auxiliar en Dibujo Arquitect¢nico',1,5),('EN','Ense¤anza en Ingles',1,5),('FO','Auxiliar Fot¢grafo Laboratorista y Prensa',1,5),('HI','Histopatolog¡a',1,6),('LQ','Auxiliar Laboratorista Qu¡mico',1,6),('MR','Auxiliar Muse¢grafo Restaurador',1,4),('NT','Auxiliar Nutri¢logo',1,6);
/*!40000 ALTER TABLE `ete` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-21 19:51:00
