-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: carss
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add car',9,'add_car'),(26,'Can change car',9,'change_car'),(27,'Can delete car',9,'delete_car');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'admin','','','admin@admin.com','sha1$10c32$2fa0938b7a1a7961523f2f63aaa334ba1d8a3bde',1,1,1,'2011-11-25 08:28:10','2011-11-25 08:28:10');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_scraper_car`
--

DROP TABLE IF EXISTS `car_scraper_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_scraper_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL,
  `price` double NOT NULL,
  `currency_symbol` varchar(7) NOT NULL,
  `description` longtext,
  `listed_date` datetime NOT NULL,
  `address` longtext,
  `for_sale_by` varchar(50) DEFAULT NULL,
  `make` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `trim` varchar(50) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `kms` int(11) NOT NULL,
  `transmission` varchar(15) DEFAULT NULL,
  `colour` varchar(15) DEFAULT NULL,
  `bodytype` varchar(50) DEFAULT NULL,
  `drivetrain` varchar(50) DEFAULT NULL,
  `usage_type` varchar(10) DEFAULT NULL,
  `fuel_type` varchar(10) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `img_link1` varchar(500) NOT NULL,
  `img_link2` varchar(500) NOT NULL,
  `img_link3` varchar(500) NOT NULL,
  `img_link4` varchar(500) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `publish_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_scraper_car`
--

LOCK TABLES `car_scraper_car` WRITE;
/*!40000 ALTER TABLE `car_scraper_car` DISABLE KEYS */;
INSERT INTO `car_scraper_car` VALUES (6,'2008 smart fortwo 1.0 COUPE MSQ','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2008-smart-fortwo-1-0-COUPE-MSQ-W0QQAdIdZ304074264',9995,'$','This <strong>2008 smart fortwo</strong> available from Lancaster Vehicle Center with Stock #159502 is priced at $9995.00.\n\n<p> Powered by a 1.0L Inline3, this 3 door, Black Coupe has 28000 kms on it and features a Gray interior and a 5 Spd Automatic with Manual transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Smart','Fortwo','1.0 COUPE MSQ',2008,28000,'','Black','Coupe (2 door)','Rear-wheel drive (RWD)',NULL,'Gasoline',159502,'http://imgc.classistatic.com/cps/kjc/111112/072r1/676515m_18.jpeg','','','',1,'2011-11-25 08:29:36'),(5,'2008 Jeep Compass Sport','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2008-Jeep-Compass-Sport-W0QQAdIdZ320672208',8995,'$','This <strong>2008 Jeep Compass</strong> available from Lancaster Vehicle Center with Stock #520725 is priced at $8995.00.\n\n<p> Powered by a 2.4L Inline4, this 5 door, Silver SUV has 147000 kms on it and features a Gray interior and a 5 Spd Manual transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Jeep','Compass','Sport',2008,147000,'Manual','Silver','SUV, Crossover','Front-wheel drive (FWD)',NULL,'Gasoline',520725,'http://imgc.classistatic.com/cps/kjc/111111/220r1/0819lnk_18.jpeg','','','',1,'2011-11-25 08:29:36'),(4,'2004 Toyota Echo -','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2004-Toyota-Echo-W0QQAdIdZ320674325',6995,'$','This <strong>2004 Toyota Echo</strong> available from Lancaster Vehicle Center with Stock #344294 is priced at $6995.00.\n\n<p> Powered by a 1.5L Inline4, this 4 door, Silver Sedan has 148000 kms on it and features a Gray interior and an Automatic transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Toyota','Echo','-',2004,148000,'Automatic','Silver','Sedan','Front-wheel drive (FWD)',NULL,'Gasoline',344294,'http://imgc.classistatic.com/cps/kjc/111111/225r1/2494kg0_18.jpeg','','','',1,'2011-11-25 08:29:36'),(7,'2007 Chrysler Sebring -','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Chrysler-Sebring-W0QQAdIdZ314576329',9995,'$','This <strong>2007 Chrysler Sebring</strong> available from Lancaster Vehicle Center with Stock #656104 is priced at $9995.00.\n\n<p> Powered by a 2.4L Inline4, this 4 door, Burgundy Sedan has 68000 kms on it and features a Gray interior and a 4 Spd Automatic transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Chrysler','Sebring','-',2007,68000,'Automatic','Burgundy','Sedan','Front-wheel drive (FWD)',NULL,'Gasoline',656104,'http://imgc.classistatic.com/cps/kjc/111119/139r1/5946b93_18.jpeg','','','',1,'2011-11-25 08:29:36'),(8,'2007 Saturn VUE 2.2 FWD AUTO','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Saturn-VUE-2-2-FWD-AUTO-W0QQAdIdZ304072248',10995,'$','This <strong>2007 Saturn VUE</strong> available from Lancaster Vehicle Center with Stock #822823 is priced at $10995.00.\n\n<p> Powered by a 2.2L Inline4, this 5 door, Silver SUV has 73000 kms on it and features a Gray interior and a 4 Spd Automatic transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Saturn','VUE','2.2L FWD 4AT',2007,73000,'Automatic','Silver','SUV, Crossover','Front-wheel drive (FWD)',NULL,'Gasoline',822823,'http://imgc.classistatic.com/cps/kjc/111112/067r1/086030d_18.jpeg','','','',1,'2011-11-25 08:29:36'),(9,'2007 Ford Focus 2.0 SES','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Ford-Focus-2-0-SES-W0QQAdIdZ308188283',10995,'$','This <strong>2007 Ford Focus</strong> available from Lancaster Vehicle Center with Stock #165353 is priced at $10995.00.\n\n<p> Powered by a 2.0L Inline4, this 5 door, Black Wagon has 73000 kms on it and features a Gray interior and a 5 Spd Automatic transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Ford','Focus','SES Wagon',2007,73000,'Automatic','Black','Wagon','Front-wheel drive (FWD)',NULL,'Gasoline',165353,'http://imgc.classistatic.com/cps/kjc/111111/214r1/3226h2l_18.jpeg','','','',1,'2011-11-25 08:29:36'),(10,'2007 Volkswagen City Jetta 2.0','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Volkswagen-City-Jetta-2-0-W0QQAdIdZ308191622',10995,'$','This <strong>2007 Volkswagen City Jetta</strong> available from Lancaster Vehicle Center with Stock #643120 is priced at $10995.00.\n\n<p> Powered by a 2.0L Inline4, this 4 door, Dark Blue Sedan has 83000 kms on it and features a Charcoal interior and a 5 Spd Manual transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Volkswagen','Other','2.0L 5MT',2007,83000,'Manual','','Sedan','Front-wheel drive (FWD)',NULL,'Gasoline',643120,'http://imgc.classistatic.com/cps/kjc/111111/221r1/73028ai_18.jpeg','','','',1,'2011-11-25 08:29:36'),(11,'2007 Dodge Caliber SXT FWD','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Dodge-Caliber-SXT-FWD-W0QQAdIdZ314579145',10995,'$','This <strong>2007 Dodge Caliber</strong> available from Lancaster Vehicle Center with Stock #208281 is priced at $10995.00.\n\n<p> Powered by a 1.8L Inline4, this 5 door, Blue Hatchback has 87000 kms on it and features a Gray interior and an Automatic transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Dodge','Caliber','SXT FWD',2007,87000,'Automatic','Blue','Hatchback','Front-wheel drive (FWD)',NULL,'Gasoline',208281,'http://imgc.classistatic.com/cps/kjc/111119/146r1/9762744_18.jpeg','','','',1,'2011-11-25 08:29:36'),(12,'2009 Nissan Sentra 2.0 CVT','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2009-Nissan-Sentra-2-0-CVT-W0QQAdIdZ327377775',10995,'$','This <strong>2009 Nissan Sentra</strong> available from Lancaster Vehicle Center with Stock #633950 is priced at $10995.00.\n\n<p> Powered by a 2.0L Inline4, this 4 door, Sedan has 87000 kms on it and features a CVT transmission. </p>','2011-11-25 08:29:36','790 Fairville Blvd, St John, NB E2M 3V1, Canada',NULL,'Nissan','Sentra','2.0 CVT',2009,87000,'','','Sedan','Front-wheel drive (FWD)',NULL,'Gasoline',633950,'http://imgc.classistatic.com/cps/kjc/111103/369r1/4774bld_18.jpeg','','','',1,'2011-11-25 08:29:36'),(13,'2008 Jeep Compass Sport','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2008-Jeep-Compass-Sport-W0QQAdIdZ314579901',11995,'$','This <strong>2008 Jeep Compass</strong> available from Lancaster Vehicle Center with Stock #654555 is priced at $11995.00.\n\n<p> Powered by a 2.4L Inline4, this 5 door, Green SUV has 52000 kms on it and features a Gray interior and an Automatic transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Jeep','Compass','Sport',2008,52000,'Automatic','Green','SUV, Crossover','Front-wheel drive (FWD)',NULL,'Gasoline',654555,'http://imgc.classistatic.com/cps/kjc/111119/146r1/8712j3n_18.jpeg','','','',1,'2011-11-25 08:29:36'),(14,'2007 Mazda Mazda3 GT Sport 5MT','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Mazda-Mazda3-GT-Sport-5MT-W0QQAdIdZ324405154',11995,'$','This <strong>2007 Mazda Mazda3</strong> available from Lancaster Vehicle Center with Stock #756226 is priced at $11995.00.\n\n<p> Powered by a 2.3L Inline4, this 5 door, Silver Hatchback has 60000 kms on it and features a Gray interior and a 5 Spd Manual transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Mazda','Mazda3','GT Sport 5MT',2007,60000,'Manual','Silver','Hatchback','Front-wheel drive (FWD)',NULL,'Gasoline',756226,'http://imgc.classistatic.com/cps/kjc/111124/439r1/6721jcn_18.jpeg','','','',1,'2011-11-25 08:29:36'),(15,'2004 Chevrolet Express Cargo G30 14ft Cube Van','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2004-Chevrolet-Express-Cargo-G30-14ft-Cube-Van-W0QQAdIdZ324405523',11995,'$','This <strong>2004 Chevrolet Express Cargo</strong> available from Lancaster Vehicle Center with Stock #126557 is priced at $11995.00.\n\n<p> Powered by a 6.0L V8, this 3 door, Red Cutaway has 110110 kms on it and features a Grey interior and a 4 Spd Automatic transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Chevrolet','Other','',2004,110110,'Automatic','Red','Minivan, Van','Rear-wheel drive (RWD)',NULL,'Gasoline',126557,'http://imgc.classistatic.com/cps/kjc/111124/441r1/2078dhn_18.jpeg','','','',1,'2011-11-25 08:29:36'),(16,'2007 Toyota Sienna CE 7-Passenger','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Toyota-Sienna-CE-7-Passenger-W0QQAdIdZ314578449',15995,'$','This <strong>2007 Toyota Sienna</strong> available from Lancaster Vehicle Center with Stock #038797 is priced at $15995.00.\n\n<p> Powered by a 3.5L V6, this 5 door, Burgundy Minivan has 99000 kms on it and features a Grey interior and a 5 Spd Automatic transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Toyota','Sienna','CE 7-Passenger',2007,99000,'Automatic','Burgundy','Minivan, Van','Front-wheel drive (FWD)',NULL,'Gasoline',38797,'http://imgc.classistatic.com/cps/kjc/111119/143r1/5936kij_18.jpeg','','','',1,'2011-11-25 08:29:36'),(17,'2007 Jeep Commander Sport','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Jeep-Commander-Sport-W0QQAdIdZ324404361',16995,'$','This <strong>2007 Jeep Commander</strong> available from Lancaster Vehicle Center with Stock #555569 is priced at $16995.00.\n\n<p> Powered by a 4.7L V8, this 5 door, Silver SUV has 93000 kms on it and features a Charcoal interior and a 5 Spd Automatic transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Jeep','Commander','Sport',2007,93000,'Automatic','Silver','SUV, Crossover','4 x 4',NULL,'Gasoline',555569,'http://imgc.classistatic.com/cps/kjc/111124/437r1/066581c_18.jpeg','','','',1,'2011-11-25 08:29:36'),(18,'2008 Cadillac CTS 3.6','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2008-Cadillac-CTS-3-6-W0QQAdIdZ290514566',19995,'$','This <strong>2008 Cadillac CTS</strong> available from Lancaster Vehicle Center with Stock #171327 is priced at $19995.00.\n\n<p> Powered by a 3.6L V6, this 4 door, Burgundy Sedan has 107000 kms on it and features a Tan interior and a 6 Spd Automatic with Manual transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Cadillac','CTS','3.6L',2008,107000,'','Burgundy','Sedan','All-wheel drive (AWD)',NULL,'Gasoline',171327,'http://imgc.classistatic.com/cps/kjc/111111/181r1/133182j_18.jpeg','','','',1,'2011-11-25 08:29:36'),(19,'2007 Saturn Sky 2.4 BASE','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Saturn-Sky-2-4-BASE-W0QQAdIdZ290526958',19995,'$','This <strong>2007 Saturn Sky</strong> available from Lancaster Vehicle Center with Stock #102816 is priced at $19995.00.\n\n<p> Powered by a 2.4L Inline4, this 2 door, Black Convertible has 135000 kms on it and features a Black interior and an Automatic transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Saturn','Sky','Base',2007,135000,'Automatic','Black','Convertible','Rear-wheel drive (RWD)',NULL,'Gasoline',102816,'http://imgc.classistatic.com/cps/kjc/111121/843r1/01305bl_18.jpeg','','','',1,'2011-11-25 08:29:36'),(20,'2009 Nissan Pathfinder 4.0 SE 4WD AUTO','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2009-Nissan-Pathfinder-4-0-SE-4WD-AUTO-W0QQAdIdZ298583356',26995,'$','This <strong>2009 Nissan Pathfinder</strong> available from Lancaster Vehicle Center with Stock #600471 is priced at $26995.00.\n\n<p> Powered by a 4.0L V6, this 5 door, Grey SUV has 85000 kms on it and features a Grey interior and a 5 Spd Automatic transmission. </p>','2011-11-25 08:29:36','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Nissan','Pathfinder','SE 4WD 5AT',2009,85000,'Automatic','Grey','SUV, Crossover','4 x 4',NULL,'Gasoline',600471,'http://imgc.classistatic.com/cps/kjc/111122/714r1/4542937_18.jpeg','','','',1,'2011-11-25 08:29:36'),(21,'2004 Toyota Echo -','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2004-Toyota-Echo-W0QQAdIdZ320674325',6995,'$','This <strong>2004 Toyota Echo</strong> available from Lancaster Vehicle Center with Stock #344294 is priced at $6995.00.\n\n<p> Powered by a 1.5L Inline4, this 4 door, Silver Sedan has 148000 kms on it and features a Gray interior and an Automatic transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Toyota','Echo','-',2004,148000,'Automatic','Silver','Sedan','Front-wheel drive (FWD)',NULL,'Gasoline',344294,'http://imgc.classistatic.com/cps/kjc/111111/225r1/2494kg0_18.jpeg','','','',1,'2011-11-25 08:41:25'),(22,'2008 Jeep Compass Sport','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2008-Jeep-Compass-Sport-W0QQAdIdZ320672208',8995,'$','This <strong>2008 Jeep Compass</strong> available from Lancaster Vehicle Center with Stock #520725 is priced at $8995.00.\n\n<p> Powered by a 2.4L Inline4, this 5 door, Silver SUV has 147000 kms on it and features a Gray interior and a 5 Spd Manual transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Jeep','Compass','Sport',2008,147000,'Manual','Silver','SUV, Crossover','Front-wheel drive (FWD)',NULL,'Gasoline',520725,'http://imgc.classistatic.com/cps/kjc/111111/220r1/0819lnk_18.jpeg','','','',1,'2011-11-25 08:41:25'),(23,'2008 smart fortwo 1.0 COUPE MSQ','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2008-smart-fortwo-1-0-COUPE-MSQ-W0QQAdIdZ304074264',9995,'$','This <strong>2008 smart fortwo</strong> available from Lancaster Vehicle Center with Stock #159502 is priced at $9995.00.\n\n<p> Powered by a 1.0L Inline3, this 3 door, Black Coupe has 28000 kms on it and features a Gray interior and a 5 Spd Automatic with Manual transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Smart','Fortwo','1.0 COUPE MSQ',2008,28000,'','Black','Coupe (2 door)','Rear-wheel drive (RWD)',NULL,'Gasoline',159502,'http://imgc.classistatic.com/cps/kjc/111112/072r1/676515m_18.jpeg','','','',1,'2011-11-25 08:41:25'),(24,'2007 Chrysler Sebring -','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Chrysler-Sebring-W0QQAdIdZ314576329',9995,'$','This <strong>2007 Chrysler Sebring</strong> available from Lancaster Vehicle Center with Stock #656104 is priced at $9995.00.\n\n<p> Powered by a 2.4L Inline4, this 4 door, Burgundy Sedan has 68000 kms on it and features a Gray interior and a 4 Spd Automatic transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Chrysler','Sebring','-',2007,68000,'Automatic','Burgundy','Sedan','Front-wheel drive (FWD)',NULL,'Gasoline',656104,'http://imgc.classistatic.com/cps/kjc/111119/139r1/5946b93_18.jpeg','','','',1,'2011-11-25 08:41:25'),(25,'2007 Saturn VUE 2.2 FWD AUTO','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Saturn-VUE-2-2-FWD-AUTO-W0QQAdIdZ304072248',10995,'$','This <strong>2007 Saturn VUE</strong> available from Lancaster Vehicle Center with Stock #822823 is priced at $10995.00.\n\n<p> Powered by a 2.2L Inline4, this 5 door, Silver SUV has 73000 kms on it and features a Gray interior and a 4 Spd Automatic transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Saturn','VUE','2.2L FWD 4AT',2007,73000,'Automatic','Silver','SUV, Crossover','Front-wheel drive (FWD)',NULL,'Gasoline',822823,'http://imgc.classistatic.com/cps/kjc/111112/067r1/086030d_18.jpeg','','','',1,'2011-11-25 08:41:25'),(26,'2007 Ford Focus 2.0 SES','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Ford-Focus-2-0-SES-W0QQAdIdZ308188283',10995,'$','This <strong>2007 Ford Focus</strong> available from Lancaster Vehicle Center with Stock #165353 is priced at $10995.00.\n\n<p> Powered by a 2.0L Inline4, this 5 door, Black Wagon has 73000 kms on it and features a Gray interior and a 5 Spd Automatic transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Ford','Focus','SES Wagon',2007,73000,'Automatic','Black','Wagon','Front-wheel drive (FWD)',NULL,'Gasoline',165353,'http://imgc.classistatic.com/cps/kjc/111111/214r1/3226h2l_18.jpeg','','','',1,'2011-11-25 08:41:25'),(27,'2007 Volkswagen City Jetta 2.0','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Volkswagen-City-Jetta-2-0-W0QQAdIdZ308191622',10995,'$','This <strong>2007 Volkswagen City Jetta</strong> available from Lancaster Vehicle Center with Stock #643120 is priced at $10995.00.\n\n<p> Powered by a 2.0L Inline4, this 4 door, Dark Blue Sedan has 83000 kms on it and features a Charcoal interior and a 5 Spd Manual transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Volkswagen','Other','2.0L 5MT',2007,83000,'Manual','','Sedan','Front-wheel drive (FWD)',NULL,'Gasoline',643120,'http://imgc.classistatic.com/cps/kjc/111111/221r1/73028ai_18.jpeg','','','',1,'2011-11-25 08:41:25'),(28,'2007 Dodge Caliber SXT FWD','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Dodge-Caliber-SXT-FWD-W0QQAdIdZ314579145',10995,'$','This <strong>2007 Dodge Caliber</strong> available from Lancaster Vehicle Center with Stock #208281 is priced at $10995.00.\n\n<p> Powered by a 1.8L Inline4, this 5 door, Blue Hatchback has 87000 kms on it and features a Gray interior and an Automatic transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Dodge','Caliber','SXT FWD',2007,87000,'Automatic','Blue','Hatchback','Front-wheel drive (FWD)',NULL,'Gasoline',208281,'http://imgc.classistatic.com/cps/kjc/111119/146r1/9762744_18.jpeg','','','',1,'2011-11-25 08:41:25'),(29,'2009 Nissan Sentra 2.0 CVT','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2009-Nissan-Sentra-2-0-CVT-W0QQAdIdZ327377775',10995,'$','This <strong>2009 Nissan Sentra</strong> available from Lancaster Vehicle Center with Stock #633950 is priced at $10995.00.\n\n<p> Powered by a 2.0L Inline4, this 4 door, Sedan has 87000 kms on it and features a CVT transmission. </p>','2011-11-25 08:41:25','790 Fairville Blvd, St John, NB E2M 3V1, Canada',NULL,'Nissan','Sentra','2.0 CVT',2009,87000,'','','Sedan','Front-wheel drive (FWD)',NULL,'Gasoline',633950,'http://imgc.classistatic.com/cps/kjc/111103/369r1/4774bld_18.jpeg','','','',1,'2011-11-25 08:41:25'),(30,'2008 Jeep Compass Sport','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2008-Jeep-Compass-Sport-W0QQAdIdZ314579901',11995,'$','This <strong>2008 Jeep Compass</strong> available from Lancaster Vehicle Center with Stock #654555 is priced at $11995.00.\n\n<p> Powered by a 2.4L Inline4, this 5 door, Green SUV has 52000 kms on it and features a Gray interior and an Automatic transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Jeep','Compass','Sport',2008,52000,'Automatic','Green','SUV, Crossover','Front-wheel drive (FWD)',NULL,'Gasoline',654555,'http://imgc.classistatic.com/cps/kjc/111119/146r1/8712j3n_18.jpeg','','','',1,'2011-11-25 08:41:25'),(31,'2007 Mazda Mazda3 GT Sport 5MT','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Mazda-Mazda3-GT-Sport-5MT-W0QQAdIdZ324405154',11995,'$','This <strong>2007 Mazda Mazda3</strong> available from Lancaster Vehicle Center with Stock #756226 is priced at $11995.00.\n\n<p> Powered by a 2.3L Inline4, this 5 door, Silver Hatchback has 60000 kms on it and features a Gray interior and a 5 Spd Manual transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Mazda','Mazda3','GT Sport 5MT',2007,60000,'Manual','Silver','Hatchback','Front-wheel drive (FWD)',NULL,'Gasoline',756226,'http://imgc.classistatic.com/cps/kjc/111124/439r1/6721jcn_18.jpeg','','','',1,'2011-11-25 08:41:25'),(32,'2004 Chevrolet Express Cargo G30 14ft Cube Van','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2004-Chevrolet-Express-Cargo-G30-14ft-Cube-Van-W0QQAdIdZ324405523',11995,'$','This <strong>2004 Chevrolet Express Cargo</strong> available from Lancaster Vehicle Center with Stock #126557 is priced at $11995.00.\n\n<p> Powered by a 6.0L V8, this 3 door, Red Cutaway has 110110 kms on it and features a Grey interior and a 4 Spd Automatic transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Chevrolet','Other','',2004,110110,'Automatic','Red','Minivan, Van','Rear-wheel drive (RWD)',NULL,'Gasoline',126557,'http://imgc.classistatic.com/cps/kjc/111124/441r1/2078dhn_18.jpeg','','','',1,'2011-11-25 08:41:25'),(33,'2007 Toyota Sienna CE 7-Passenger','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Toyota-Sienna-CE-7-Passenger-W0QQAdIdZ314578449',15995,'$','This <strong>2007 Toyota Sienna</strong> available from Lancaster Vehicle Center with Stock #038797 is priced at $15995.00.\n\n<p> Powered by a 3.5L V6, this 5 door, Burgundy Minivan has 99000 kms on it and features a Grey interior and a 5 Spd Automatic transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Toyota','Sienna','CE 7-Passenger',2007,99000,'Automatic','Burgundy','Minivan, Van','Front-wheel drive (FWD)',NULL,'Gasoline',38797,'http://imgc.classistatic.com/cps/kjc/111119/143r1/5936kij_18.jpeg','','','',1,'2011-11-25 08:41:25'),(34,'2007 Jeep Commander Sport','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Jeep-Commander-Sport-W0QQAdIdZ324404361',16995,'$','This <strong>2007 Jeep Commander</strong> available from Lancaster Vehicle Center with Stock #555569 is priced at $16995.00.\n\n<p> Powered by a 4.7L V8, this 5 door, Silver SUV has 93000 kms on it and features a Charcoal interior and a 5 Spd Automatic transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Jeep','Commander','Sport',2007,93000,'Automatic','Silver','SUV, Crossover','4 x 4',NULL,'Gasoline',555569,'http://imgc.classistatic.com/cps/kjc/111124/437r1/066581c_18.jpeg','','','',1,'2011-11-25 08:41:25'),(35,'2008 Cadillac CTS 3.6','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2008-Cadillac-CTS-3-6-W0QQAdIdZ290514566',19995,'$','This <strong>2008 Cadillac CTS</strong> available from Lancaster Vehicle Center with Stock #171327 is priced at $19995.00.\n\n<p> Powered by a 3.6L V6, this 4 door, Burgundy Sedan has 107000 kms on it and features a Tan interior and a 6 Spd Automatic with Manual transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Cadillac','CTS','3.6L',2008,107000,'','Burgundy','Sedan','All-wheel drive (AWD)',NULL,'Gasoline',171327,'http://imgc.classistatic.com/cps/kjc/111111/181r1/133182j_18.jpeg','','','',1,'2011-11-25 08:41:25'),(36,'2007 Saturn Sky 2.4 BASE','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2007-Saturn-Sky-2-4-BASE-W0QQAdIdZ290526958',19995,'$','This <strong>2007 Saturn Sky</strong> available from Lancaster Vehicle Center with Stock #102816 is priced at $19995.00.\n\n<p> Powered by a 2.4L Inline4, this 2 door, Black Convertible has 135000 kms on it and features a Black interior and an Automatic transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Saturn','Sky','Base',2007,135000,'Automatic','Black','Convertible','Rear-wheel drive (RWD)',NULL,'Gasoline',102816,'http://imgc.classistatic.com/cps/kjc/111121/843r1/01305bl_18.jpeg','','','',1,'2011-11-25 08:41:25'),(37,'2009 Nissan Pathfinder 4.0 SE 4WD AUTO','http://saintjohn.kijiji.ca/c-cars-vehicles-cars-trucks-2009-Nissan-Pathfinder-4-0-SE-4WD-AUTO-W0QQAdIdZ298583356',26995,'$','This <strong>2009 Nissan Pathfinder</strong> available from Lancaster Vehicle Center with Stock #600471 is priced at $26995.00.\n\n<p> Powered by a 4.0L V6, this 5 door, Grey SUV has 85000 kms on it and features a Grey interior and a 5 Spd Automatic transmission. </p>','2011-11-25 08:41:25','790 Fairville Boulevard, Saint John, E2M 5T4, Canada',NULL,'Nissan','Pathfinder','SE 4WD 5AT',2009,85000,'Automatic','Grey','SUV, Crossover','4 x 4',NULL,'Gasoline',600471,'http://imgc.classistatic.com/cps/kjc/111122/714r1/4542937_18.jpeg','','','',1,'2011-11-25 08:41:25');
/*!40000 ALTER TABLE `car_scraper_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'car','car_scraper','car');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-11-25 20:13:02
