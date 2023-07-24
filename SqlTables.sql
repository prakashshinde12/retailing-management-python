-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `ain`
--

DROP TABLE IF EXISTS `ain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ain` (
  `ain2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ain`
--

LOCK TABLES `ain` WRITE;
/*!40000 ALTER TABLE `ain` DISABLE KEYS */;
/*!40000 ALTER TABLE `ain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ain2`
--

DROP TABLE IF EXISTS `ain2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ain2` (
  `ain1` varchar(10) DEFAULT NULL,
  `ain2` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ain2`
--

LOCK TABLES `ain2` WRITE;
/*!40000 ALTER TABLE `ain2` DISABLE KEYS */;
/*!40000 ALTER TABLE `ain2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levis`
--

DROP TABLE IF EXISTS `levis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levis` (
  `sr` int DEFAULT NULL,
  `wearType` varchar(20) NOT NULL,
  `size` varchar(15) NOT NULL,
  `pricePerUnit` int DEFAULT NULL,
  `sellingPrice` int DEFAULT NULL,
  `totalUnits` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levis`
--

LOCK TABLES `levis` WRITE;
/*!40000 ALTER TABLE `levis` DISABLE KEYS */;
/*!40000 ALTER TABLE `levis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levis2`
--

DROP TABLE IF EXISTS `levis2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levis2` (
  `sr` int NOT NULL AUTO_INCREMENT,
  `wearType` varchar(20) NOT NULL,
  `size` varchar(15) NOT NULL,
  `pricePerUnit` int DEFAULT NULL,
  `sellingPrice` int DEFAULT NULL,
  `totalUnits` int DEFAULT NULL,
  PRIMARY KEY (`sr`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levis2`
--

LOCK TABLES `levis2` WRITE;
/*!40000 ALTER TABLE `levis2` DISABLE KEYS */;
INSERT INTO `levis2` VALUES (2,'Casual','All',20,40,2),(3,'Formal','Small',1000,6000,1),(4,'Casual','All',20,40,2),(5,'Casual','Medium',300,1200,5);
/*!40000 ALTER TABLE `levis2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peter_england`
--

DROP TABLE IF EXISTS `peter_england`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peter_england` (
  `sr` int DEFAULT NULL,
  `wearType` varchar(20) NOT NULL,
  `size` varchar(15) NOT NULL,
  `pricePerUnit` int DEFAULT NULL,
  `sellingPrice` int DEFAULT NULL,
  `totalUnits` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peter_england`
--

LOCK TABLES `peter_england` WRITE;
/*!40000 ALTER TABLE `peter_england` DISABLE KEYS */;
/*!40000 ALTER TABLE `peter_england` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peterengland`
--

DROP TABLE IF EXISTS `peterengland`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peterengland` (
  `sr` int NOT NULL AUTO_INCREMENT,
  `wearType` varchar(20) NOT NULL,
  `size` varchar(15) NOT NULL,
  `pricePerUnit` int DEFAULT NULL,
  `sellingPrice` int DEFAULT NULL,
  `totalUnits` int DEFAULT NULL,
  PRIMARY KEY (`sr`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peterengland`
--

LOCK TABLES `peterengland` WRITE;
/*!40000 ALTER TABLE `peterengland` DISABLE KEYS */;
/*!40000 ALTER TABLE `peterengland` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polo`
--

DROP TABLE IF EXISTS `polo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polo` (
  `sr` int DEFAULT NULL,
  `wearType` varchar(20) NOT NULL,
  `size` varchar(15) NOT NULL,
  `pricePerUnit` int DEFAULT NULL,
  `sellingPrice` int DEFAULT NULL,
  `totalUnits` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polo`
--

LOCK TABLES `polo` WRITE;
/*!40000 ALTER TABLE `polo` DISABLE KEYS */;
/*!40000 ALTER TABLE `polo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polo2`
--

DROP TABLE IF EXISTS `polo2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polo2` (
  `sr` int NOT NULL AUTO_INCREMENT,
  `wearType` varchar(20) NOT NULL,
  `size` varchar(15) NOT NULL,
  `pricePerUnit` int DEFAULT NULL,
  `sellingPrice` int DEFAULT NULL,
  `totalUnits` int DEFAULT NULL,
  PRIMARY KEY (`sr`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polo2`
--

LOCK TABLES `polo2` WRITE;
/*!40000 ALTER TABLE `polo2` DISABLE KEYS */;
/*!40000 ALTER TABLE `polo2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_c_benelton`
--

DROP TABLE IF EXISTS `u_c_benelton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `u_c_benelton` (
  `sr` int DEFAULT NULL,
  `wearType` varchar(20) NOT NULL,
  `size` varchar(15) NOT NULL,
  `pricePerUnit` int DEFAULT NULL,
  `sellingPrice` int DEFAULT NULL,
  `totalUnits` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_c_benelton`
--

LOCK TABLES `u_c_benelton` WRITE;
/*!40000 ALTER TABLE `u_c_benelton` DISABLE KEYS */;
/*!40000 ALTER TABLE `u_c_benelton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ucbenelton`
--

DROP TABLE IF EXISTS `ucbenelton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ucbenelton` (
  `sr` int NOT NULL AUTO_INCREMENT,
  `wearType` varchar(20) NOT NULL,
  `size` varchar(15) NOT NULL,
  `pricePerUnit` int DEFAULT NULL,
  `sellingPrice` int DEFAULT NULL,
  `totalUnits` int DEFAULT NULL,
  PRIMARY KEY (`sr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ucbenelton`
--

LOCK TABLES `ucbenelton` WRITE;
/*!40000 ALTER TABLE `ucbenelton` DISABLE KEYS */;
/*!40000 ALTER TABLE `ucbenelton` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-25 14:19:36
