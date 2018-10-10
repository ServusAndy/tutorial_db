--
-- Create database `bp_48`
--
DROP DATABASE IF EXISTS `bp_48`;
CREATE DATABASE  IF NOT EXISTS `bp_48`;
USE `bp_48`;

--
-- Table structure for table `manufacture`
--

DROP TABLE IF EXISTS `manufacture`;
CREATE TABLE `manufacture` (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manufacture`
--

LOCK TABLES `manufacture` WRITE;
/*!40000 ALTER TABLE `manufacture` DISABLE KEYS */;
INSERT INTO `manufacture` VALUES (1,'Honda','Japan','Kyoto'),(2,'Toyota','Japan','Yokohama'),(3,'VAZ','Russia','Taliati'),(4,'Opel','Germany','Berlin'),(5,'Kia','Korea','Seul'),(6,'Nissan','Japan','Tokyo');
/*!40000 ALTER TABLE `manufacture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;

CREATE TABLE `cars` (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `carCode` char(3) NOT NULL,
  `model` varchar(10) NOT NULL DEFAULT '',
  `price` decimal(11,2) DEFAULT NULL,
  `manufc_id` int(4) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `manufc_id` (`manufc_id`),
  CONSTRAINT `cars_ibfk_1` FOREIGN KEY(`manufc_id`) REFERENCES `manufacture` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'HND','Accord',220000.00,1),(2,'HND','Civic',170000.00,1),(3,'TYT','Corola',180000.00,2),(4,'TYT','Auris',140000.00,2),(5,'VAZ','2106',70000.00,3),(6,'OPL','Kaddet',80000.00,4),(7,'KIA','Ceratto',130000.00,5),(8,'NSX','Skyline',190000.00,6),(9,'HND','S2000',250000.00,1),(10,'TYT','Land Cruis',25000.00,2),(11,'TYT','Camry',170000.00,2),(12,'VAZ','Kalina',75000.00,3),(13,'OPL','Omega',120000.00,4),(14,'OPL','Vectra',100000.00,4),(15,'OPL','Astra',95000.00,4),(16,'KIA','Rio',105000.00,5),(17,'TYT','C-HR',25000.00,2);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John Doe','0545557676','Tel Aviv'),(2,'John Smith','0536787889','Rehovot'),(4,'Moshe Katz','089876543','Haifa'),(5,'Neil Armstrong','0551234567','Jerusalem'),(6,'Sergey Brin','123123123','Beer Sheva');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_cars`
--

DROP TABLE IF EXISTS `customer_cars`;

CREATE TABLE `customer_cars` (
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cars_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`customer_id`,`cars_id`),
  KEY `cars_id` (`cars_id`),
  CONSTRAINT `customer_cars_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `customer_cars_ibfk_2` FOREIGN KEY (`cars_id`) REFERENCES `cars` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `customer_cars`
--

LOCK TABLES `customer_cars` WRITE;
/*!40000 ALTER TABLE `customer_cars` DISABLE KEYS */;
INSERT INTO `customer_cars` VALUES (1,1),(2,1),(1,2),(1,4),(6,5),(2,9),(5,9),(6,11),(4,12),(4,15),(6,15),(1,17);
/*!40000 ALTER TABLE `customer_cars` ENABLE KEYS */;
UNLOCK TABLES;

