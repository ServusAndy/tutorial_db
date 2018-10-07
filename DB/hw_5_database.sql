DROP DATABASE IF EXISTS `bp_48`;
CREATE DATABASE `bp_48`;
USE `bp_48`;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `carCode` char(3) NOT NULL,
  `model` varchar(10) NOT NULL DEFAULT '',
  `price` decimal(11,2) DEFAULT NULL,
  `manufc_id` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'HND','Accord',220000.00,1),(2,'HND','Civic',170000.00,1),(3,'TYT','Corola',180000.00,2),(4,'TYT','Auris',140000.00,2),(5,'VAZ','2106',70000.00,3),(6,'OPL','Kaddet',80000.00,4),(7,'KIA','Ceratto',130000.00,5),(8,'NSX','Skyline',190000.00,6),(9,'HND','S2000',250000.00,1),(10,'TYT','Land Cruis',25000.00,2),(11,'TYT','Camry',170000.00,2),(12,'VAZ','Kalina',75000.00,3),(13,'OPL','Omega',120000.00,4),(14,'OPL','Vectra',100000.00,4),(15,'OPL','Astra',95000.00,4),(16,'KIA','Rio',105000.00,5),(17,'TYT','C-HR',25000.00,2);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacture`
--

DROP TABLE IF EXISTS `manufacture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacture` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacture`
--

LOCK TABLES `manufacture` WRITE;
/*!40000 ALTER TABLE `manufacture` DISABLE KEYS */;
INSERT INTO `manufacture` VALUES (1,'Honda','Japan','Kyoto'),(2,'Toyota','Japan','Yokohama'),(3,'VAZ','Russia','Taliati'),(4,'Opel','Germany','Berlin'),(5,'Kia','Korea','Seul'),(6,'Nissan','Japan','Tokyo');
/*!40000 ALTER TABLE `manufacture` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-05 20:25:59
