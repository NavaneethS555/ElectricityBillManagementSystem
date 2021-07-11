-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: ebms
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `acc_id` int NOT NULL,
  `cust_id` int DEFAULT NULL,
  `account_no` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`acc_id`),
  KEY `cust_id` (`cust_id`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (401,111,'11345','Abhay'),(403,112,'12455','Vishnu'),(405,113,'98754','Anant'),(407,211,'34557','Vijay'),(409,212,'24567','Deekshith'),(411,311,'76314','Farhaan'),(413,312,'54327','Ajay'),(415,313,'74123','Nikhil'),(417,411,'43567','Preetham'),(419,412,'98764','Sridhar'),(421,345,'43561','Rohanjit'),(423,325,'78654','Ayushman'),(425,347,'67452','Anwesh'),(427,367,'91294','Devash'),(429,324,'89123','Tushar');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `cust_id` int DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `cust_id` (`cust_id`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Sahil',111),(2,'Karan',112),(3,'Rahul',113),(4,'Nikhil',211),(5,'Sushmitha',212),(6,'Priyanka',311),(7,'Shikha',312),(8,'Ritesh',313),(9,'Aman',411),(10,'Nitin',412),(11,'Akshat',345),(12,'Ankit',325),(13,'Shashi',347),(14,'Ritika',367),(15,'Kamchin',324);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `meter_number` varchar(10) NOT NULL,
  `acc_id` int DEFAULT NULL,
  `cust_id` int DEFAULT NULL,
  `monthly_units` int DEFAULT NULL,
  `amount_per_unit` int DEFAULT NULL,
  `total_amount` int DEFAULT NULL,
  PRIMARY KEY (`meter_number`),
  KEY `acc_id` (`acc_id`),
  KEY `cust_id` (`cust_id`),
  CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `account` (`acc_id`),
  CONSTRAINT `billing_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES ('101',401,111,500,10,5000),('102',403,112,390,10,3900),('103',405,113,208,10,2080),('104',407,211,800,10,8000),('105',409,212,200,10,2000),('106',411,311,600,10,6000),('107',413,312,250,10,2500),('108',415,313,400,10,4000),('109',417,411,450,10,4500),('110',419,412,550,10,5500),('111',421,345,320,10,3200),('112',423,325,590,10,5900),('113',425,347,670,10,6700),('114',427,367,230,10,2300),('115',429,324,650,10,6500);
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cust_id` int NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `pincode` int NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (111,'Abhay','MG Road','Karnataka','Mysore\n',570008),(112,'Vishnu','Basaveshwara Nagar','Karnataka','Bangalore',570042),(113,'Anant','HD Kote Road','Karnataka','Mysore',570009),(211,'Vijay','Devaraja Urs Road','Karnataka','Mysore',570034),(212,'Deekshith','RK Block','Karnataka','Tumkur',580054),(311,'Farhaan','KG Koppal','Karnataka','Mysore',570046),(312,'Ajay','Pamban Bridge Road','Tamil Nadu','Rameshwaram',590065),(313,'Nikhil','HSR Layout','Karnataka','Bangalore',570075),(324,'Tushar','MS Raod','Uttar Pradesh','Lucknow',640092),(325,'Ayushman','Kanakapura Road','Karnataka','Bangalore',570049),(345,'Rohanjit','Kuvempunagar','Karnataka','Mysore',570048),(347,'Anwesh','DFG Layout','Madhya Pradesh','Indore ',620089),(367,'Devash','Chambal Road','Tamil Nadu','Chennai',590068),(411,'Preetham','AB Block','Uttar Pradesh','Ayodhya',640055),(412,'Sridhar','Gwalior Road','Madhya Pradesh','Gwalior',620067);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elec_board`
--

DROP TABLE IF EXISTS `elec_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elec_board` (
  `eboard_id` int NOT NULL,
  `board_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`eboard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elec_board`
--

LOCK TABLES `elec_board` WRITE;
/*!40000 ALTER TABLE `elec_board` DISABLE KEYS */;
INSERT INTO `elec_board` VALUES (1010,'Chamundeshwari Power Corporation'),(2010,'Karnataka Power Corporation'),(3010,'Bangalore Power Corporation'),(4010,'Tamil Nadu Power Corporation'),(5010,'Uttar Pradesh Power Corporation'),(6010,'Madhya Pradesh Power Corporation');
/*!40000 ALTER TABLE `elec_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoice_id` int NOT NULL,
  `eboard_id` int DEFAULT NULL,
  `account_no` varchar(50) DEFAULT NULL,
  `tariff_id` int DEFAULT NULL,
  `reading_date` date DEFAULT NULL,
  `Meter_number` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `eboard_id` (`eboard_id`),
  KEY `tariff_id` (`tariff_id`),
  KEY `Meter_number` (`Meter_number`),
  CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`eboard_id`) REFERENCES `elec_board` (`eboard_id`),
  CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`tariff_id`) REFERENCES `tariff` (`tariff_id`),
  CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`Meter_number`) REFERENCES `billing` (`meter_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1000,6010,'98764',12,'2020-06-10','110'),(1047,4010,'91294',15,'2020-06-03','114'),(1111,1010,'11345',12,'2020-06-23','101'),(1888,1010,'43561',15,'2020-06-26','111'),(1999,3010,'78654',13,'2020-06-18','112'),(2017,6010,'67452',12,'2020-06-09','113'),(2222,3010,'12455',13,'2020-06-17','102'),(3333,1010,'98754',12,'2020-06-22','103'),(4444,1010,'34557',14,'2020-06-14','104'),(5555,2010,'24567',15,'2020-06-21','105'),(6666,1010,'76314',13,'2020-06-05','106'),(7777,4010,'54327',14,'2020-06-11','107'),(8014,5010,'89123',15,'2020-06-06','115'),(8888,3010,'74123',12,'2020-06-12','108'),(9999,5010,'43567',14,'2020-06-13','109');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff`
--

DROP TABLE IF EXISTS `tariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tariff` (
  `tariff_id` int NOT NULL,
  `tariff_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tariff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff`
--

LOCK TABLES `tariff` WRITE;
/*!40000 ALTER TABLE `tariff` DISABLE KEYS */;
INSERT INTO `tariff` VALUES (12,'Power factor tariff'),(13,'Peak Load tariff'),(14,'Two part tariff'),(15,'Three part tariff');
/*!40000 ALTER TABLE `tariff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-29 12:31:55
