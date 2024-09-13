-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: mraadla
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` bigint DEFAULT NULL,
  `studentid` varchar(8) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (NULL,'1','Hea detektiiv'),(NULL,'1','Lai vana raisk'),(NULL,'2','Lai vana raisk'),(NULL,'3','Väga hea thaumatoloog'),(NULL,'4','Vihkan teda'),(NULL,'5','Rikkas pede'),(NULL,'6','Haiseb'),(NULL,'7','Oskusega draakoni neiu'),(NULL,'8','Kuradi Kosj'),(NULL,'9','Part'),(NULL,'10','Kääbus'),(NULL,'11','Minu lemmik');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!50001 DROP VIEW IF EXISTS `comments`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `comments` AS SELECT 
 1 AS `id`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `comment`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `code` bigint NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Martial'),(2,'Bard'),(3,'Specialist'),(4,'Arcana'),(5,'Extraordinary');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stgroup`
--

DROP TABLE IF EXISTS `stgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stgroup` (
  `code` bigint NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stgroup`
--

LOCK TABLES `stgroup` WRITE;
/*!40000 ALTER TABLE `stgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `stgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` bigint NOT NULL,
  `firstname` varchar(256) DEFAULT NULL,
  `lastname` varchar(256) DEFAULT NULL,
  `groupcode` varchar(8) DEFAULT NULL,
  `birthdate` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Dexter','Morgan','4','09.12.84'),(2,'Walter','Wide','4','21.10.79'),(3,'Silvun','Sapphone','4','01.01.08'),(4,'Taurur','Baurg','4','06.04.08'),(5,'Ttyyphuhkneeyy','Skingle','4','06.04.06'),(6,'Midge','Passerine','4','21.12.21'),(7,'Brimstone','Agnes','3','01.01.08'),(8,'Kosj','Kosj','3','01.02.08'),(9,'Quarr','Marad','3','01.02.21'),(10,'Silvy','Compsognathus','3','02.02.06'),(11,'Qildor','Safahr','3','21.5.06'),(12,'Dina','Hareken','5','09.08.06'),(13,'Xighaf',' Gobbledrum','5','14.03.06'),(14,'Maklam','Passerine','5','14.03.06'),(15,'Barbara','Monterbelt','5','05.05.05'),(16,'Kobie','Bold','5','04.12.08'),(17,'Seraphina','Passerine','5','04.01.20'),(18,'A\'Aahlliyagh','Ingold','5','06.06.06'),(19,'Angel','Seraphim','5','01.01.06'),(20,'Beatrice','Beigh','5','01.01.05');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `comments`
--

/*!50001 DROP VIEW IF EXISTS `comments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comments` AS select `comment`.`studentid` AS `id`,`student`.`firstname` AS `firstname`,`student`.`lastname` AS `lastname`,`comment`.`comment` AS `comment` from (`student` join `comment` on((`student`.`id` = `comment`.`studentid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-13  9:36:26
