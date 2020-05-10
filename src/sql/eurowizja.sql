-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: eurowizja
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `artists` (
  `ID_artist` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ID_country` int(11) NOT NULL,
  `ID_points` int(11) NOT NULL,
  `ID_song` int(11) NOT NULL,
  PRIMARY KEY (`ID_artist`),
  KEY `Artist_ibfk_1` (`ID_country`),
  KEY `Artist_ibfk_2` (`ID_points`),
  KEY `Artist_ibfk_3` (`ID_song`),
  CONSTRAINT `Artist_ibfk_1` FOREIGN KEY (`ID_country`) REFERENCES `countries` (`ID_country`),
  CONSTRAINT `Artist_ibfk_2` FOREIGN KEY (`ID_points`) REFERENCES `points` (`ID_points`),
  CONSTRAINT `Artist_ibfk_3` FOREIGN KEY (`ID_song`) REFERENCES `songs` (`ID_song`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Michela Pace',1,1,1),(2,'Jonida Maliqi',2,2,2),(3,'Lake Malawi',3,3,3),(4,'S!sters',4,4,4),(5,'Siergiej Łazariew',5,5,5),(6,'Leonora',6,6,6),(7,'Serhat',7,7,7),(8,'Tamara Todewska',8,8,8),(9,'John Lundvik',9,9,9),(10,'Zala Kralj & Gašper',10,10,10),(11,'Tamta',11,11,11),(12,'Duncan Laurence',12,12,12),(13,'Katerine Duska',13,13,13),(14,'Kobi Marimi',14,14,14),(15,'KEiiNO',15,15,15),(16,'Michael Rice',16,16,16),(17,'Hatari',17,17,17),(18,'Victor Crone',18,18,18),(19,'Zena',19,19,19),(20,'Chingiz',20,20,20),(21,'Bilal Hassani',21,21,21),(22,'Mahmood',22,22,22),(23,'Nevena Božović',23,23,23),(24,'Luca Hänni',24,24,24),(25,'Kate Miller-Heidke',25,25,25),(26,'Miki',26,26,26),(27,'Krzysztof',1,1,1);
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `countries` (
  `ID_country` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID_country`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Malta'),(2,'Albania'),(3,'Czechy'),(4,'Niemcy'),(5,'Rosja'),(6,'Dania'),(7,'San Marino'),(8,'Macedonia Północna'),(9,'Szwecja'),(10,'Słowienia'),(11,'Cypr'),(12,'Holandia'),(13,'Grecja'),(14,'Izrael'),(15,'Norwegia'),(16,'Wielka Brytania'),(17,'Islandia'),(18,'Estonia'),(19,'Białoruś'),(20,'Azerbejdżan'),(21,'Francja'),(22,'Włochy'),(23,'Serbia'),(24,'Szwajcaria'),(25,'Australia'),(26,'Hiszpania');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `people` (
  `ID_people` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Surname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ID_artist` int(11) NOT NULL,
  PRIMARY KEY (`ID_people`),
  KEY `People_ibfk_1` (`ID_artist`),
  CONSTRAINT `People_ibfk_1` FOREIGN KEY (`ID_artist`) REFERENCES `artists` (`ID_artist`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'Michela','Pace',1),(2,'Jonida','Maliqi',2),(3,'Lake','Malawi',3),(4,'Laurita','Spinelli',4),(5,'Carlotta','Truman',4),(6,'Siergiej','Łazariew',5),(7,'Leonora','Jepsen',6),(8,'Ahmet','Hacıpaşalıoğlu',7),(9,'Tamara','Todewska',8),(10,'John','Lundvik',9),(11,'Zala','Kralj',10),(12,'Gašper','Šantl',10),(13,'Tamta','Goduadze',11),(14,'Duncan','Laurence',12),(15,'Katerine','Duska',13),(16,'Kobi','Marimi',14),(17,'Tom','Hugo',15),(18,'Fred','Buljo',15),(19,'Alexandra','Rotan',15),(20,'Michael','Rice',16),(21,'Klemens','Hannigan',17),(22,'Matthias','Haraldsson',17),(23,'Einar','Stefánsson',17),(24,'Victor','Crone',18),(25,'Zinaida','Kuprianowicz ',19),(26,'Chingiz','Mustafayev',20),(27,'Chingiz','Mustafayev',20),(28,'Bilal','Hassani',21),(29,'Alessandro','Mahmoud',22),(30,'Nevena','Božović',23),(31,'Luca','Hänni',24),(32,'Kate','Miller-Heidke',25),(33,'Miguel','Pozo',26);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `points`
--

DROP TABLE IF EXISTS `points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `points` (
  `ID_points` int(11) NOT NULL AUTO_INCREMENT,
  `Score` int(11) NOT NULL,
  PRIMARY KEY (`ID_points`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `points`
--

LOCK TABLES `points` WRITE;
/*!40000 ALTER TABLE `points` DISABLE KEYS */;
INSERT INTO `points` VALUES (1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(18,0),(19,0),(20,0),(21,0),(22,0),(23,0),(24,0),(25,0),(26,10);
/*!40000 ALTER TABLE `points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `songs` (
  `ID_song` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Gendre` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID_song`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Chameleon','Pop'),(2,'Ktheju tokës','Pop'),(3,'Friend of a Friend','Pop'),(4,'Sister','Pop'),(5,'Scream','Pop'),(6,'Love Is Forever','Pop'),(7,'Say Na Na Na','Pop'),(8,'Proud','Pop'),(9,'Too Late for Love','Pop'),(10,'Sebi','Pop'),(11,'Replay','Pop'),(12,'Arcade','Pop'),(13,'Better Love','Pop'),(14,'Home','Pop'),(15,'Spirit in the Sky','Pop'),(16,'Bigger than Us','Pop'),(17,'Hatrið mun sigra','Pop'),(18,'Storm','Pop'),(19,'Like It','Pop'),(20,'Truth','Pop'),(21,'Roi','Roi'),(22,'Soldi','Pop'),(23,'Kruna','Pop'),(24,'She Got Me','Pop'),(25,'Zero Gravity','Pop'),(26,'La venda','Pop');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'eurowizja'
--

--
-- Dumping routines for database 'eurowizja'
--
/*!50003 DROP PROCEDURE IF EXISTS `addArtist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addArtist`(IN new_Name varchar(20), IN country_Name varchar(20), IN new_Score int, IN new_Song varchar(20))
BEGIN
DECLARE ID_country_copy int;
DECLARE ID_points_copy int;
DECLARE ID_song_copy int;

select ID_country into ID_country_copy from countries where Name=country_Name;
select ID_points into ID_points_copy from points where Score=new_Score;
select ID_song into ID_song_copy from songs where Name=new_Song;

INSERT INTO artists
(Name, ID_country, ID_points, ID_song)
VALUES
(new_Name, ID_country_copy, ID_points_copy, ID_song_copy);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteArtist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteArtist`(IN artist_name varchar(20))
BEGIN
DELETE FROM artists
WHERE Name = artist_name
LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `readBestTrio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `readBestTrio`()
BEGIN
SELECT artists.Name, points.Score
from (points
INNER JOIN artists on artists.ID_points = points.ID_points)
order by points.Score limit 3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `readWinner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `readWinner`()
BEGIN
SELECT artists.Name 
from (points
INNER JOIN artists on artists.ID_points = points.ID_points)
order by points.Score limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatePeopleData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePeopleData`(IN old_name varchar(20), IN old_surname varchar(20), IN new_name varchar(20), IN new_surname varchar(20))
BEGIN
SET SQL_SAFE_UPDATES=0;
UPDATE people
SET Name = new_name, Surname = new_surname
WHERE (Name = old_name AND Surname = old_surname);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatePoints` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePoints`(IN artistName varchar(20), IN new_score int)
BEGIN
UPDATE (points
LEFT JOIN artists on artists.ID_points = points.ID_points)
SET points.Score = new_score
WHERE artists.Name = artistName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-11  0:39:59
