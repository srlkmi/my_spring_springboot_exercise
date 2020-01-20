-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: hpsreport
-- ------------------------------------------------------
-- Server version	5.6.23

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
-- Table structure for table `available_fields`
--

DROP TABLE IF EXISTS `available_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `available_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) NOT NULL,
  `feed_type_id` int(11) DEFAULT NULL,
  `field_identifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdet7xvcbb7el23j80awliy0kg` (`feed_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `available_fields`
--

LOCK TABLES `available_fields` WRITE;
/*!40000 ALTER TABLE `available_fields` DISABLE KEYS */;
INSERT INTO `available_fields`(id,description,field_name,feed_type_id,field_identifier) VALUES (1,'Policy/Insurance Number','Insurance Number',3,'Insurance_Number'),(2,'First Name of Member','Member First Name',3,'Member_First_Name'),(3,'Middle Name of Member\r\n','Member Middle Name',3,'Member_Middle_Name'),(4,'Last Name of Member','Member Last Name',3,'Member_Last_Name'),(5,'Name Suffix of Member such as Jr, Sr, I, II etc\r\n','Member Name Suffix',3,'Member_Name_Suffix'),(6,'Birth Date of Member - format YYYYMMDD','Member Birth Date',3,'Member_Birth_Date'),(7,'Gender of Member','Member Gender',3,'Member_Gender'),(8,'Social Security Number of Member','Member SSN',3,'Member_SSN'),(9,'Member\'s Medical/Benefit Plan','Member Benefit Plan',3,'Member_Benefit_Plan'),(10,'First Line of Member Address','Address Line 1',3,'Address_Line_1'),(11,'Second Line of Member Address','Address Line 2',3,'Address_Line_2'),(12,'City in which Member Lives','City',3,'City'),(13,'State in which Member Lives','State',3,'State'),(14,'Zip Code of Area in which Member Lives','Zip Code',3,'Zip_Code'),(15,'Telephone number of Member','Phone Number',3,'Phone_Number'),(16,'Start date of Coverage - Date when Insurance became effective for the member -?á format YYYYMMDD','Coverage start date',3,'Coverage_start_date'),(17,'End date of Coverage - Date when Insurance ended for the member -?á format YYYYMMDD','Coverage end date',3,'Coverage_end_date'),(18,'Provider Identifier - Provided associated to this member','Provider Identifier',3,'Provider_Identifier'),(19,'First insurance number that Member had','Member first insurance number',3,'Member_first_insurance_number'),(20,'First insurance policy number that Member had','Member first insurance policy number',3,'Member_first_insurance_policy_number'),(21,'County in which Member Lives\r\n','Member county',3,'Member_county');
/*!40000 ALTER TABLE `available_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_name`
--

DROP TABLE IF EXISTS `feed_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feed_format` varchar(255) DEFAULT NULL,
  `feed_name` varchar(255) NOT NULL,
  `feed_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqwnf1p3wf4qdmm6xt1wo5yqso` (`feed_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_name`
--

LOCK TABLES `feed_name` WRITE;
/*!40000 ALTER TABLE `feed_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `feed_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_type`
--

DROP TABLE IF EXISTS `feed_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  `feed_table_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_type`
--

LOCK TABLES `feed_type` WRITE;
/*!40000 ALTER TABLE `feed_type` DISABLE KEYS */;
INSERT INTO `feed_type`(id,type_name,feed_table_name) VALUES (1,'General','general'),(2,'Claim','claim'),(3,'Eligibility','eligibility');
/*!40000 ALTER TABLE `feed_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selected_fields`
--

DROP TABLE IF EXISTS `selected_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selected_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `available_field_id` int(11) DEFAULT NULL,
  `feed_name_id` int(11) DEFAULT NULL,
  `is_obsolete` tinyint(1) DEFAULT '0',
  `order_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKocxhfcgx1o92rw4rapa12eim6` (`available_field_id`),
  KEY `FKikunqsi0wq270xvp7qmds3jyg` (`feed_name_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selected_fields`
--

LOCK TABLES `selected_fields` WRITE;
/*!40000 ALTER TABLE `selected_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `selected_fields` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20 16:07:08
