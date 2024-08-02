-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bdt_ejerc4
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `tbl_empleados`
--

DROP TABLE IF EXISTS `tbl_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_empleados` (
  `id` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `id_gerencia` int NOT NULL,
  `salario` decimal(10,0) DEFAULT NULL,
  `educacion_id` int NOT NULL,
  PRIMARY KEY (`id`,`educacion_id`,`id_gerencia`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleados`
--

LOCK TABLES `tbl_empleados` WRITE;
/*!40000 ALTER TABLE `tbl_empleados` DISABLE KEYS */;
INSERT INTO `tbl_empleados` VALUES (1,'Juan','Perez',1,100000,1),(2,'Pedro','García',1,150000,2),(3,'Mario','Gonzalez',1,200000,3),(4,'Laura','Gomez',1,220000,4),(5,'María','Rodríguez',2,100000,1),(6,'Pablo','González',2,150000,2),(7,'Julieta','López',3,200000,3),(8,'Carlos','Fernández',3,100000,1),(9,'Julia','Martínez',3,200000,2),(10,'Francisco','Díaz',4,200000,2);
/*!40000 ALTER TABLE `tbl_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_gerencias`
--

DROP TABLE IF EXISTS `tbl_gerencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_gerencias` (
  `id` int NOT NULL,
  `gerencia` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_gerencias`
--

LOCK TABLES `tbl_gerencias` WRITE;
/*!40000 ALTER TABLE `tbl_gerencias` DISABLE KEYS */;
INSERT INTO `tbl_gerencias` VALUES (1,'Gerencia 1','CABA'),(2,'Gerencia 2','San Martín'),(3,'Gerencia 3','Castellar'),(4,'Gerencia 4','Ramos');
/*!40000 ALTER TABLE `tbl_gerencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nivel_educacion`
--

DROP TABLE IF EXISTS `tbl_nivel_educacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_nivel_educacion` (
  `id` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nivel_educacion`
--

LOCK TABLES `tbl_nivel_educacion` WRITE;
/*!40000 ALTER TABLE `tbl_nivel_educacion` DISABLE KEYS */;
INSERT INTO `tbl_nivel_educacion` VALUES (0,'Ninguna'),(1,'Primaria'),(2,'Secundaria'),(3,'Terciaria'),(4,'Universitaria'),(5,'PHD');
/*!40000 ALTER TABLE `tbl_nivel_educacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26 11:52:00
