use `bbteszngpt3rqriqfapi`;


-- MySQL dump 10.13  Distrib 5.5.29, for Win64 (x86)
--
-- Host: localhost    Database: Acme-Handy-Worker
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `suspicious` bit(1) NOT NULL,
  `user_account` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_i7xei45auwq1f6vu25985riuh` (`user_account`),
  CONSTRAINT `FK_i7xei45auwq1f6vu25985riuh` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `suspicious` bit(1) NOT NULL,
  `user_account` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7ohwsa2usmvu0yxb44je2lge` (`user_account`),
  CONSTRAINT `FK_7ohwsa2usmvu0yxb44je2lge` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (34,0,'c/Tarfia','luc@gmail.com','NueveConDosDerecho','Luis','639854163','https://cdnb.20m.es/sites/76/2015/07/La-an%C3%A9cdota-sobre-la-famosa-e-ic%C3%B3nica-foto-de-Albert-Einstein-sacando-la-lengua.jpeg','Lucanlun','\0',33);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `cvv` int(11) DEFAULT NULL,
  `exp_month` int(11) DEFAULT NULL,
  `exp_year` int(11) DEFAULT NULL,
  `holder` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  `offered_price` double DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `fix_up_task` int(11) NOT NULL,
  `handy_worker` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_i544pbdabjdesit0c4afue6pl` (`fix_up_task`),
  KEY `FK_ldpicm7in0u6b3qjcdo0v8n4c` (`handy_worker`),
  CONSTRAINT `FK_ldpicm7in0u6b3qjcdo0v8n4c` FOREIGN KEY (`handy_worker`) REFERENCES `handy_worker` (`id`),
  CONSTRAINT `FK_i544pbdabjdesit0c4afue6pl` FOREIGN KEY (`fix_up_task`) REFERENCES `fix_up_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `box`
--

DROP TABLE IF EXISTS `box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `system` bit(1) NOT NULL,
  `actor` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2byqkm71y34wbwpwr7s5m0enc` (`parent`),
  CONSTRAINT `FK_2byqkm71y34wbwpwr7s5m0enc` FOREIGN KEY (`parent`) REFERENCES `box` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box`
--

LOCK TABLES `box` WRITE;
/*!40000 ALTER TABLE `box` DISABLE KEYS */;
INSERT INTO `box` VALUES (35,0,'In box','',34,NULL),(36,0,'Out box','',34,NULL),(37,0,'Trash box','',34,NULL),(38,0,'Spam box','',34,NULL);
/*!40000 ALTER TABLE `box` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `box_messages`
--

DROP TABLE IF EXISTS `box_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box_messages` (
  `box` int(11) NOT NULL,
  `messages` int(11) NOT NULL,
  KEY `FK_acfjrqu1jeixjmv14c0386o0s` (`messages`),
  KEY `FK_e6boieojekgfg919on0dci4na` (`box`),
  CONSTRAINT `FK_e6boieojekgfg919on0dci4na` FOREIGN KEY (`box`) REFERENCES `box` (`id`),
  CONSTRAINT `FK_acfjrqu1jeixjmv14c0386o0s` FOREIGN KEY (`messages`) REFERENCES `message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_messages`
--

LOCK TABLES `box_messages` WRITE;
/*!40000 ALTER TABLE `box_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `box_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `namees` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d285hl23ejq8efmum8hbvqrt2` (`parent`),
  CONSTRAINT `FK_d285hl23ejq8efmum8hbvqrt2` FOREIGN KEY (`parent`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (40,0,'CATEGORY','CATEGORIA',NULL),(41,0,'Carpentry','CarpinterÃ­a',40),(42,0,'Ceiling repair','ReparaciÃ³n de techo',40),(43,0,'Cleaning','Limpieza',40),(44,0,'Concrete work','Trabajo especÃ­fico',40),(45,0,'Doors','Puertas',40),(46,0,'Electrical wiring','Cableado elÃ©ctrico',40),(47,0,'Fan installation','InstalaciÃ³n de ventiladores',40),(48,0,'Fence fixing','Arreglo de valla',40),(49,0,'Home security systems','Sistemas de seguridad',40),(50,0,'Insulation installation','InstalaciÃ³n de aislamientos',40),(51,0,'Lamp repairs','Reparaciones de lÃ¡mparas',40),(52,0,'Moving','Motor',40),(53,0,'Painting','Pintura',40),(54,0,'Pest control','Control de pestes',40),(55,0,'Plumbing repairs','Reparaciones de tuberÃ­as',40),(56,0,'Roofing','Techumbres',40),(57,0,'Shelf installation','Auto-instalaciÃ³n',40),(58,0,'Solar panels','Paneles solares',40),(59,0,'Soundproofing','Prueba de sonido',40),(60,0,'Sprinkler repair','ReparaciÃ³n de aspersores',40),(61,0,'Window repair','ReparaciÃ³n de ventana',40);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `customer` int(11) NOT NULL,
  `fix_up_task` int(11) NOT NULL,
  `referee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jlpo668tu0b8mmsjsg8g13inu` (`ticker`),
  KEY `FK_f3jhv2pg69qixbskj7vl99pm9` (`customer`),
  KEY `FK_2st2n707bxgd2pp9w7wkpptt0` (`fix_up_task`),
  KEY `FK_n7kqs8a7c2q1jwjcc44oticll` (`referee`),
  CONSTRAINT `FK_n7kqs8a7c2q1jwjcc44oticll` FOREIGN KEY (`referee`) REFERENCES `referee` (`id`),
  CONSTRAINT `FK_2st2n707bxgd2pp9w7wkpptt0` FOREIGN KEY (`fix_up_task`) REFERENCES `fix_up_task` (`id`),
  CONSTRAINT `FK_f3jhv2pg69qixbskj7vl99pm9` FOREIGN KEY (`customer`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_reports`
--

DROP TABLE IF EXISTS `complaint_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint_reports` (
  `complaint` int(11) NOT NULL,
  `reports` int(11) NOT NULL,
  UNIQUE KEY `UK_abhpypt5e4lj9ejnnnmtfgfgq` (`reports`),
  KEY `FK_jlu8msrlw5xna943pmpss96l4` (`complaint`),
  CONSTRAINT `FK_jlu8msrlw5xna943pmpss96l4` FOREIGN KEY (`complaint`) REFERENCES `complaint` (`id`),
  CONSTRAINT `FK_abhpypt5e4lj9ejnnnmtfgfgq` FOREIGN KEY (`reports`) REFERENCES `report` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_reports`
--

LOCK TABLES `complaint_reports` WRITE;
/*!40000 ALTER TABLE `complaint_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `expire_finder_minutes` int(11) DEFAULT NULL,
  `max_finder_results` int(11) DEFAULT NULL,
  `system_name` varchar(255) DEFAULT NULL,
  `vat` double NOT NULL,
  `welcomeen` varchar(255) DEFAULT NULL,
  `welcomees` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES (39,0,'https://tinyurl.com/acme-handy-worker-logo','+34',60,10,'Acme Handy Worker',21,'Welcome to Acme Handy Worker! Price, quality, and trust in a single place','¡Bienvenidos a Acme Handy Worker! Precio, calidad y confianza en el mismo sitio');
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_credit_card_list`
--

DROP TABLE IF EXISTS `configuration_credit_card_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration_credit_card_list` (
  `configuration` int(11) NOT NULL,
  `credit_card_list` varchar(255) DEFAULT NULL,
  KEY `FK_qa87b9crpnos7bbnsok9e5fcy` (`configuration`),
  CONSTRAINT `FK_qa87b9crpnos7bbnsok9e5fcy` FOREIGN KEY (`configuration`) REFERENCES `configuration` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_credit_card_list`
--

LOCK TABLES `configuration_credit_card_list` WRITE;
/*!40000 ALTER TABLE `configuration_credit_card_list` DISABLE KEYS */;
INSERT INTO `configuration_credit_card_list` VALUES (39,'VISA'),(39,'MASTER'),(39,'DINNERS'),(39,'AMEX');
/*!40000 ALTER TABLE `configuration_credit_card_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_negative_words`
--

DROP TABLE IF EXISTS `configuration_negative_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration_negative_words` (
  `configuration` int(11) NOT NULL,
  `negative_words` varchar(255) DEFAULT NULL,
  KEY `FK_r0hxth0ts0p4clt0dqj8ox9ct` (`configuration`),
  CONSTRAINT `FK_r0hxth0ts0p4clt0dqj8ox9ct` FOREIGN KEY (`configuration`) REFERENCES `configuration` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_negative_words`
--

LOCK TABLES `configuration_negative_words` WRITE;
/*!40000 ALTER TABLE `configuration_negative_words` DISABLE KEYS */;
INSERT INTO `configuration_negative_words` VALUES (39,'not'),(39,'bad'),(39,'horrible'),(39,'average'),(39,'disaster'),(39,'no'),(39,'malo'),(39,'mediocre'),(39,'desastre');
/*!40000 ALTER TABLE `configuration_negative_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_positive_words`
--

DROP TABLE IF EXISTS `configuration_positive_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration_positive_words` (
  `configuration` int(11) NOT NULL,
  `positive_words` varchar(255) DEFAULT NULL,
  KEY `FK_9p1bsuhu2pk7a0epfi8ujogct` (`configuration`),
  CONSTRAINT `FK_9p1bsuhu2pk7a0epfi8ujogct` FOREIGN KEY (`configuration`) REFERENCES `configuration` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_positive_words`
--

LOCK TABLES `configuration_positive_words` WRITE;
/*!40000 ALTER TABLE `configuration_positive_words` DISABLE KEYS */;
INSERT INTO `configuration_positive_words` VALUES (39,'good'),(39,'fantastic'),(39,'excellent'),(39,'amazing'),(39,'great'),(39,'terrific'),(39,'beautiful'),(39,'bueno'),(39,'fantástico'),(39,'excelente'),(39,'increíble'),(39,'genial'),(39,'estupendo'),(39,'hermoso');
/*!40000 ALTER TABLE `configuration_positive_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_spam_words`
--

DROP TABLE IF EXISTS `configuration_spam_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration_spam_words` (
  `configuration` int(11) NOT NULL,
  `spam_words` varchar(255) DEFAULT NULL,
  KEY `FK_qk3m1jkx4rq87ofjee19f3b33` (`configuration`),
  CONSTRAINT `FK_qk3m1jkx4rq87ofjee19f3b33` FOREIGN KEY (`configuration`) REFERENCES `configuration` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_spam_words`
--

LOCK TABLES `configuration_spam_words` WRITE;
/*!40000 ALTER TABLE `configuration_spam_words` DISABLE KEYS */;
INSERT INTO `configuration_spam_words` VALUES (39,'sex'),(39,'viagra'),(39,'cialis'),(39,'one million'),(39,'you’ve been selected'),(39,'Nigeria'),(39,'sexo'),(39,'un millón'),(39,'ha sido seleccionado');
/*!40000 ALTER TABLE `configuration_spam_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum`
--

DROP TABLE IF EXISTS `curriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculum` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `handy_worker` int(11) NOT NULL,
  `personal_record` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_brf0xbdpl3ahb3onlbfvfswcq` (`handy_worker`),
  UNIQUE KEY `UK_3ai7h3tynp97g8r0g93r84m8w` (`ticker`),
  KEY `FK_of5n83aytom6e52721o6k6ae` (`personal_record`),
  CONSTRAINT `FK_of5n83aytom6e52721o6k6ae` FOREIGN KEY (`personal_record`) REFERENCES `personal_record` (`id`),
  CONSTRAINT `FK_brf0xbdpl3ahb3onlbfvfswcq` FOREIGN KEY (`handy_worker`) REFERENCES `handy_worker` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum`
--

LOCK TABLES `curriculum` WRITE;
/*!40000 ALTER TABLE `curriculum` DISABLE KEYS */;
/*!40000 ALTER TABLE `curriculum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `suspicious` bit(1) NOT NULL,
  `user_account` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mbvdes9ypo1yu76so76owiyqx` (`user_account`),
  CONSTRAINT `FK_mbvdes9ypo1yu76so76owiyqx` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_record`
--

DROP TABLE IF EXISTS `education_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `diploma` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `period_end` date DEFAULT NULL,
  `period_start` date DEFAULT NULL,
  `curriculum` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_h0wf5vr7xcybl2dck9xgmir4d` (`curriculum`),
  CONSTRAINT `FK_h0wf5vr7xcybl2dck9xgmir4d` FOREIGN KEY (`curriculum`) REFERENCES `curriculum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_record`
--

LOCK TABLES `education_record` WRITE;
/*!40000 ALTER TABLE `education_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `education_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endorsement`
--

DROP TABLE IF EXISTS `endorsement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endorsement` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `customer_to_handy` bit(1) DEFAULT NULL,
  `moment` date DEFAULT NULL,
  `customer` int(11) NOT NULL,
  `handy_worker` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_csalxlpkf3hcomq3b6j4lk7qi` (`customer`),
  KEY `FK_sihwxpfj0ec5xeki24b1nn0i3` (`handy_worker`),
  CONSTRAINT `FK_sihwxpfj0ec5xeki24b1nn0i3` FOREIGN KEY (`handy_worker`) REFERENCES `handy_worker` (`id`),
  CONSTRAINT `FK_csalxlpkf3hcomq3b6j4lk7qi` FOREIGN KEY (`customer`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endorsement`
--

LOCK TABLES `endorsement` WRITE;
/*!40000 ALTER TABLE `endorsement` DISABLE KEYS */;
/*!40000 ALTER TABLE `endorsement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endorser_record`
--

DROP TABLE IF EXISTS `endorser_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endorser_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `curriculum` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_y7b9ucmqjmuaj6uvqv8mfoak` (`curriculum`),
  CONSTRAINT `FK_y7b9ucmqjmuaj6uvqv8mfoak` FOREIGN KEY (`curriculum`) REFERENCES `curriculum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endorser_record`
--

LOCK TABLES `endorser_record` WRITE;
/*!40000 ALTER TABLE `endorser_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `endorser_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finder`
--

DROP TABLE IF EXISTS `finder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finder` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `date_end` date DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `key_word` varchar(255) DEFAULT NULL,
  `max_price` double DEFAULT NULL,
  `min_price` double DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `warranty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_n9t1ayk0x7h5vrsfuhygo043j` (`category`),
  KEY `FK_fsgvely8c4othsty26jul4qfl` (`warranty`),
  CONSTRAINT `FK_fsgvely8c4othsty26jul4qfl` FOREIGN KEY (`warranty`) REFERENCES `warranty` (`id`),
  CONSTRAINT `FK_n9t1ayk0x7h5vrsfuhygo043j` FOREIGN KEY (`category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finder`
--

LOCK TABLES `finder` WRITE;
/*!40000 ALTER TABLE `finder` DISABLE KEYS */;
/*!40000 ALTER TABLE `finder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finder_fix_up_tasks`
--

DROP TABLE IF EXISTS `finder_fix_up_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finder_fix_up_tasks` (
  `finder` int(11) NOT NULL,
  `fix_up_tasks` int(11) NOT NULL,
  KEY `FK_mxx0exr9sl0tqpfmt67rn9ntw` (`fix_up_tasks`),
  KEY `FK_3lx1mc9naw2l6iynabqyqm46m` (`finder`),
  CONSTRAINT `FK_3lx1mc9naw2l6iynabqyqm46m` FOREIGN KEY (`finder`) REFERENCES `finder` (`id`),
  CONSTRAINT `FK_mxx0exr9sl0tqpfmt67rn9ntw` FOREIGN KEY (`fix_up_tasks`) REFERENCES `fix_up_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finder_fix_up_tasks`
--

LOCK TABLES `finder_fix_up_tasks` WRITE;
/*!40000 ALTER TABLE `finder_fix_up_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `finder_fix_up_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fix_up_task`
--

DROP TABLE IF EXISTS `fix_up_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fix_up_task` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `max_price` double DEFAULT NULL,
  `period_end_date` datetime DEFAULT NULL,
  `period_start_date` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `warranty` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1ucy18fywvpk17lfcafstl8p` (`ticker`),
  KEY `FK_rraseqm4xixdwpi08ac3s0wo5` (`category`),
  KEY `FK_a3nekh0t15hcur166hb4snvjg` (`customer`),
  KEY `FK_eeisx1c0ohidkpqgqbib91s6x` (`warranty`),
  CONSTRAINT `FK_eeisx1c0ohidkpqgqbib91s6x` FOREIGN KEY (`warranty`) REFERENCES `warranty` (`id`),
  CONSTRAINT `FK_a3nekh0t15hcur166hb4snvjg` FOREIGN KEY (`customer`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_rraseqm4xixdwpi08ac3s0wo5` FOREIGN KEY (`category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fix_up_task`
--

LOCK TABLES `fix_up_task` WRITE;
/*!40000 ALTER TABLE `fix_up_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `fix_up_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `handy_worker`
--

DROP TABLE IF EXISTS `handy_worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `handy_worker` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `suspicious` bit(1) NOT NULL,
  `user_account` int(11) DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `curriculum` int(11) DEFAULT NULL,
  `finder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qilb1l0o66abqy9o4fk8accvs` (`curriculum`),
  KEY `FK_s80hn9dk7bcwsqotvtoo6wxr3` (`finder`),
  KEY `FK_jpa4nvxb706tgsd90160obc6r` (`user_account`),
  CONSTRAINT `FK_jpa4nvxb706tgsd90160obc6r` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`),
  CONSTRAINT `FK_qilb1l0o66abqy9o4fk8accvs` FOREIGN KEY (`curriculum`) REFERENCES `curriculum` (`id`),
  CONSTRAINT `FK_s80hn9dk7bcwsqotvtoo6wxr3` FOREIGN KEY (`finder`) REFERENCES `finder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `handy_worker`
--

LOCK TABLES `handy_worker` WRITE;
/*!40000 ALTER TABLE `handy_worker` DISABLE KEYS */;
/*!40000 ALTER TABLE `handy_worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('domain_entity',1);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `sent` datetime DEFAULT NULL,
  `spam` bit(1) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `recipient` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_boxes`
--

DROP TABLE IF EXISTS `message_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_boxes` (
  `message` int(11) NOT NULL,
  `boxes` int(11) NOT NULL,
  KEY `FK_bf36nibl7ymvifphn4schu94q` (`boxes`),
  KEY `FK_9bwxxmrh9dknwx32c43s1e6hf` (`message`),
  CONSTRAINT `FK_9bwxxmrh9dknwx32c43s1e6hf` FOREIGN KEY (`message`) REFERENCES `message` (`id`),
  CONSTRAINT `FK_bf36nibl7ymvifphn4schu94q` FOREIGN KEY (`boxes`) REFERENCES `box` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_boxes`
--

LOCK TABLES `message_boxes` WRITE;
/*!40000 ALTER TABLE `message_boxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscellaneous_record`
--

DROP TABLE IF EXISTS `miscellaneous_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscellaneous_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `curriculum` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3mq29bbajg41upi4mc7k16hns` (`curriculum`),
  CONSTRAINT `FK_3mq29bbajg41upi4mc7k16hns` FOREIGN KEY (`curriculum`) REFERENCES `curriculum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscellaneous_record`
--

LOCK TABLES `miscellaneous_record` WRITE;
/*!40000 ALTER TABLE `miscellaneous_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscellaneous_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `customer_comment` varchar(255) DEFAULT NULL,
  `handy_worker_comment` varchar(255) DEFAULT NULL,
  `mandatory_comment` varchar(255) DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  `referee_comment` varchar(255) DEFAULT NULL,
  `report` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jk2abb4f3s4qx304y1uwq59pi` (`report`),
  CONSTRAINT `FK_jk2abb4f3s4qx304y1uwq59pi` FOREIGN KEY (`report`) REFERENCES `report` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_record`
--

DROP TABLE IF EXISTS `personal_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `curriculum` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t1kgutt5uk0bkqt5r8dvrihmy` (`curriculum`),
  CONSTRAINT `FK_t1kgutt5uk0bkqt5r8dvrihmy` FOREIGN KEY (`curriculum`) REFERENCES `curriculum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_record`
--

LOCK TABLES `personal_record` WRITE;
/*!40000 ALTER TABLE `personal_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phase`
--

DROP TABLE IF EXISTS `phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phase` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_moment` datetime DEFAULT NULL,
  `start_moment` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `application` int(11) NOT NULL,
  `handy_worker` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_48mnd0acd19rytjmprnywihea` (`application`),
  KEY `FK_8grrekeqjokn919je63yr0gif` (`handy_worker`),
  CONSTRAINT `FK_8grrekeqjokn919je63yr0gif` FOREIGN KEY (`handy_worker`) REFERENCES `handy_worker` (`id`),
  CONSTRAINT `FK_48mnd0acd19rytjmprnywihea` FOREIGN KEY (`application`) REFERENCES `application` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phase`
--

LOCK TABLES `phase` WRITE;
/*!40000 ALTER TABLE `phase` DISABLE KEYS */;
/*!40000 ALTER TABLE `phase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professional_record`
--

DROP TABLE IF EXISTS `professional_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professional_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `period_end` date DEFAULT NULL,
  `period_start` date DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `curriculum` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_662j8w9utcg58ouatw9vaicie` (`curriculum`),
  CONSTRAINT `FK_662j8w9utcg58ouatw9vaicie` FOREIGN KEY (`curriculum`) REFERENCES `curriculum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professional_record`
--

LOCK TABLES `professional_record` WRITE;
/*!40000 ALTER TABLE `professional_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `professional_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referee`
--

DROP TABLE IF EXISTS `referee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referee` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `suspicious` bit(1) NOT NULL,
  `user_account` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_303c1oipw0t6mbnnpvtfv70w5` (`user_account`),
  CONSTRAINT `FK_303c1oipw0t6mbnnpvtfv70w5` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referee`
--

LOCK TABLES `referee` WRITE;
/*!40000 ALTER TABLE `referee` DISABLE KEYS */;
/*!40000 ALTER TABLE `referee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `final_mode` bit(1) DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  `complaint` int(11) NOT NULL,
  `referee` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_48rqaecflpcs8unotw4drrtfw` (`complaint`),
  KEY `FK_tdhsgxfp2kgx2mqkwh1l51x8j` (`referee`),
  CONSTRAINT `FK_tdhsgxfp2kgx2mqkwh1l51x8j` FOREIGN KEY (`referee`) REFERENCES `referee` (`id`),
  CONSTRAINT `FK_48rqaecflpcs8unotw4drrtfw` FOREIGN KEY (`complaint`) REFERENCES `complaint` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `pictures` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tutorial` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6tcpk427cxiaiglbxvybc9fjh` (`tutorial`),
  CONSTRAINT `FK_6tcpk427cxiaiglbxvybc9fjh` FOREIGN KEY (`tutorial`) REFERENCES `tutorial` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_profile`
--

DROP TABLE IF EXISTS `social_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_profile` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `nick` varchar(255) DEFAULT NULL,
  `profile_link` varchar(255) DEFAULT NULL,
  `social_network` varchar(255) DEFAULT NULL,
  `actor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_profile`
--

LOCK TABLES `social_profile` WRITE;
/*!40000 ALTER TABLE `social_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `suspicious` bit(1) NOT NULL,
  `user_account` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_du2w5ldt8rvlvxvtr7vyxk7g3` (`user_account`),
  CONSTRAINT `FK_du2w5ldt8rvlvxvtr7vyxk7g3` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsorship`
--

DROP TABLE IF EXISTS `sponsorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsorship` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `cvv` int(11) DEFAULT NULL,
  `exp_month` int(11) DEFAULT NULL,
  `exp_year` int(11) DEFAULT NULL,
  `holder` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sponsor` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_huglhkud0ihqdljyou4eshra6` (`sponsor`),
  CONSTRAINT `FK_huglhkud0ihqdljyou4eshra6` FOREIGN KEY (`sponsor`) REFERENCES `sponsor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsorship`
--

LOCK TABLES `sponsorship` WRITE;
/*!40000 ALTER TABLE `sponsorship` DISABLE KEYS */;
/*!40000 ALTER TABLE `sponsorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorial`
--

DROP TABLE IF EXISTS `tutorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutorial` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `moment` date DEFAULT NULL,
  `pictures` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `handy_worker` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_h3kf333e47c4tsjbt69k121gv` (`handy_worker`),
  CONSTRAINT `FK_h3kf333e47c4tsjbt69k121gv` FOREIGN KEY (`handy_worker`) REFERENCES `handy_worker` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial`
--

LOCK TABLES `tutorial` WRITE;
/*!40000 ALTER TABLE `tutorial` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `banned` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_castjbvpeeus0r8lbpehiu0e4` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (33,0,'\0','21232f297a57a5a743894a0e4a801fc3','admin');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account_authorities`
--

DROP TABLE IF EXISTS `user_account_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_account_authorities` (
  `user_account` int(11) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  KEY `FK_pao8cwh93fpccb0bx6ilq6gsl` (`user_account`),
  CONSTRAINT `FK_pao8cwh93fpccb0bx6ilq6gsl` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account_authorities`
--

LOCK TABLES `user_account_authorities` WRITE;
/*!40000 ALTER TABLE `user_account_authorities` DISABLE KEYS */;
INSERT INTO `user_account_authorities` VALUES (33,'ADMIN');
/*!40000 ALTER TABLE `user_account_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warranty`
--

DROP TABLE IF EXISTS `warranty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warranty` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `final_mode` bit(1) DEFAULT NULL,
  `laws` varchar(255) DEFAULT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warranty`
--

LOCK TABLES `warranty` WRITE;
/*!40000 ALTER TABLE `warranty` DISABLE KEYS */;
INSERT INTO `warranty` VALUES (62,0,'','Law 23/2003, 10 of july','the product is free from defects in materials and workmanship.','Defects In Materials and Workmanship'),(63,0,'','Law 23/2003, 10 of july','The advertiser must refund the full purchase price regardless of the reason for dissatisfaction.','Satisfaction guarantee'),(64,0,'\0','Law 23/2003, 10 of july','The actual time that product can be expected to perform.','One year warranty.');
/*!40000 ALTER TABLE `warranty` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-17 11:33:07