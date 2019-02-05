-- MySQL dump 10.13  Distrib 5.7.23, for osx10.9 (x86_64)
--
-- Host: 192.168.0.70    Database: OpenHAB
-- ------------------------------------------------------
-- Server version	5.5.60-MariaDB

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
-- Table structure for table `dashboard_sessions`
--

DROP TABLE IF EXISTS `dashboard_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_sessions`
--

LOCK TABLES `dashboard_sessions` WRITE;
/*!40000 ALTER TABLE `dashboard_sessions` DISABLE KEYS */;
INSERT INTO `dashboard_sessions` VALUES ('1kvvlla6klns1nt759a6476kcq54heb8','::1',1549160075,_binary '__ci_last_regenerate|i:1549160071;'),('3bbs83ju2vh5sa14an19imnvj67k5p77','::1',1549149854,_binary '__ci_last_regenerate|i:1549149854;'),('4mrvv018edgtvvbf57umc2euhtjn0ark','::1',1549394720,_binary '__ci_last_regenerate|i:1549393716;'),('7koubt6ut585ffruvpkbkrs4ea5jre47','::1',1549149883,_binary 'identity|s:5:\"admin\";username|s:5:\"admin\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1549149267\";last_check|i:1549149649;__ci_last_regenerate|i:1549149649;'),('99sv357v7uce0mm21kdpsuvf7bs8btq5','::1',1549160095,_binary '__ci_last_regenerate|i:1549160095;identity|s:5:\"admin\";username|s:5:\"admin\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1549159759\";last_check|i:1549160095;'),('9lcnqkvhfcf1706vsndurt0m9kjqafjg','::1',1549150468,_binary '__ci_last_regenerate|i:1549150468;'),('co83r7jj8pe9qt6jm76a3uqf74vjq0na','::1',1549160833,_binary '__ci_last_regenerate|i:1549160833;identity|s:5:\"admin\";username|s:5:\"admin\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1549160095\";last_check|i:1549160832;'),('d7ekffbna6a7trmd0goi428ftkocbgb8','::1',1549150463,_binary '__ci_last_regenerate|i:1549150463;identity|s:5:\"admin\";username|s:5:\"admin\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1549150064\";last_check|i:1549150463;'),('dhsj0bhq3cpq1s5okt1fq9u4n588vcbs','::1',1549150065,_binary '__ci_last_regenerate|i:1549150065;identity|s:5:\"admin\";username|s:5:\"admin\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1549149995\";last_check|i:1549150064;'),('dvfic4rcm16vd92ta1ugug6eihqraq4o','::1',1549160967,_binary '__ci_last_regenerate|i:1549160833;identity|s:5:\"admin\";username|s:5:\"admin\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1549160095\";last_check|i:1549160832;'),('f4dngs9k9q9lcrccnm1b3uj2cb24nhhs','::1',1549149849,_binary '__ci_last_regenerate|i:1549149688;identity|s:5:\"admin\";username|s:5:\"admin\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1549149649\";last_check|i:1549149688;'),('ge616dp2bikaidp4qhkms31aj7gspmi9','::1',1549149819,_binary '__ci_last_regenerate|i:1549149613;'),('k6vtbomhffv71tdt617dn2cajrlorh4u','::1',1549151492,_binary '__ci_last_regenerate|i:1549151492;'),('l4d752kq1iuc030j9cethsn1d6ferpet','::1',1549149854,_binary '__ci_last_regenerate|i:1549149854;'),('lihb46vq8kfjlheir58b52ua4tjbfdaa','::1',1549398405,_binary '__ci_last_regenerate|i:1549398389;'),('o28emdrudkbk451v0gjrnpjpd60qqhkh','::1',1549149649,_binary 'identity|s:5:\"admin\";username|s:5:\"admin\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1549149267\";last_check|i:1549149649;__ci_last_regenerate|i:1549149649;'),('rotouve5m8dqrpgu8pmjubt1bsknl1kg','::1',1549159716,_binary '__ci_last_regenerate|i:1549159716;identity|s:5:\"admin\";username|s:5:\"admin\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1549150463\";last_check|i:1549159716;'),('scirrvvahnkc29ponvlrt8niu16hard6','::1',1549149996,_binary '__ci_last_regenerate|i:1549149996;identity|s:5:\"admin\";username|s:5:\"admin\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1549149688\";last_check|i:1549149995;'),('tqf8tv61fkvciq8u8c1tebl1episeas0','::1',1549159759,_binary '__ci_last_regenerate|i:1549159759;identity|s:5:\"admin\";username|s:5:\"admin\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1549159716\";last_check|i:1549159759;');
/*!40000 ALTER TABLE `dashboard_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'admin','Administrator'),(2,'members','General User');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `ItemId` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(500) NOT NULL,
  PRIMARY KEY (`ItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'EnergyMeter_ElectricMeter_amp'),(2,'EnergyMeter_kWh'),(3,'EnergyMeter_ElectricMeter_volt'),(4,'EnergyMeter_ElectricMeter_watt'),(5,'EnergyMeter_Leg1_Amp'),(6,'EnergyMeter_Leg1_kwH'),(7,'EnergyMeter_Leg1_volt'),(8,'EnergyMeter_Leg1_watt'),(9,'EnergyMeter_Leg2_kwH'),(10,'EnergyMeter_Leg2_watt'),(11,'EnergyMeter_Leg2_amp'),(12,'EnergyMeter_Leg_volt'),(13,'MainFloor_actualTemperature'),(14,'UpperFloor_actualTemperature'),(15,'MainFloor_equipmentStatus'),(16,'UpperFloor_equipmentStatus'),(17,'MainFloor_actualHumidity'),(18,'UpperFloor_actualHumidity'),(19,'weather_forecasts0_temperature'),(20,'weather_forecasts0_relativeHumidity');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
INSERT INTO `login_attempts` VALUES (1,'::1','dh',1549149625),(2,'::1','4rtw4t',1549149641),(3,'::1','wefwfe',1549149985),(4,'::1','we4',1549150444),(5,'::1','wer',1549159707),(6,'::1','ryan_w_frank@mac.com',1549159732);
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`),
  UNIQUE KEY `uc_email` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  UNIQUE KEY `uc_remember_selector` (`remember_selector`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'127.0.0.1','admin','$2y$12$cLpU/v/OI3trGkTmUD4/oeUVZpk5p/4m5i/nIL8Fau9ka0EQxqbyy','admin@admin.com',NULL,'',NULL,NULL,NULL,'1cd56bb4fad0f7c83943c1b13c5d0e5c3cf21504','$2y$10$bHW.1Nyo09yM2SEaVDxVM./6etfKJ8qDwCyQ8N3587aqvjbkdguBm',1268889823,1549160832,1,'Admin','istrator','ADMIN','0');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'OpenHAB'
--

--
-- Dumping routines for database 'OpenHAB'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 15:44:03
