-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: test1dbprogramming
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `Clientno` char(6) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Pin` int DEFAULT NULL,
  `Mobile` char(10) DEFAULT NULL,
  PRIMARY KEY (`Clientno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES ('C00001','Ivan Bayross','Bombay',400054,'3456212343'),('C00002','Vandana Saitwal','Madras',780001,'8976532322'),('C00003','Pramada Jaguste','Bombay',400007,'9090898765'),('C00004','Ravi Shreedharan','Delhi',110020,'8727121232'),('C00005','Rukmani','Kolkata',340003,'2312376543'),('C00006','Pradeep Singhania','Jaipur',130102,'1222132333'),('C00007','Geoge Paul','Kolkata',340010,'3323211232'),('C00008','D Ravichandran','Bombay',400014,'2212387896');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club` (
  `Coachid` int NOT NULL,
  `Coachname` varchar(20) NOT NULL,
  `Age` int DEFAULT NULL,
  `Sport` varchar(20) NOT NULL,
  `Dateofapp` date DEFAULT NULL,
  `Pay` int DEFAULT NULL,
  `Gender` varchar(1) NOT NULL,
  PRIMARY KEY (`Coachid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
INSERT INTO `club` VALUES (1,'Karan',35,'Karate','2019-03-27',10000,'M'),(2,'Ravina',34,'Karate','2020-01-20',12000,'F'),(3,'Kamal',34,'Squash','2020-02-19',20000,'M'),(4,'Tarun',33,'Basketball','2020-01-01',15000,'M'),(5,'Sumeru',36,'Swimming','2020-01-12',7500,'M'),(6,'Anjani',36,'Swimming','2020-02-24',8000,'F'),(7,'Shamima',37,'Squqah','2020-02-20',22000,'F'),(8,'Soumya',30,'Karate','2020-02-22',11000,'F');
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 17:01:01
