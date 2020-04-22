CREATE DATABASE if not exists paperreviews;

USE paperreviews;

--
-- Table structure for table `AUTHOR`
--
DROP TABLE IF EXISTS `AUTHOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHOR` (
  `EmailAddr` varchar(50) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  PRIMARY KEY (`EmailAddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `AUTHOR` VALUES ('dolmalama@gmail.com','Dolma','Lama'),('esara@hotmail.com','Isha','Magar'),('karmapalma@gmail.com','David','Lama'),('lgurung@gmail.com','Lakpa','Gurung'),('paldengrg@hotmail.com','Palden','Gurung');
/*!40000 ALTER TABLE `AUTHOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paper1`
--
DROP TABLE IF EXISTS `paper1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paper1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `abstract` varchar(150) NOT NULL,
  `filename` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper1`
--
LOCK TABLES `paper1` WRITE;
/*!40000 ALTER TABLE `paper1` DISABLE KEYS */;
INSERT INTO `paper1` VALUES (1,'Algorithm theory','Programming Language','myprogramming'),(2,'Database System','Query and mysql','mysql'),(3,'Big Data','Data Mining','operatingsystem');
/*!40000 ALTER TABLE `paper1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review1`
--
DROP TABLE IF EXISTS `review1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `recommendation` varchar(150) DEFAULT NULL,
  `merit_score` int DEFAULT NULL,
  `paper_id` int NOT NULL,
  `readability_score` int DEFAULT NULL,
  `review_id` int NOT NULL,
  `originality_score` int DEFAULT NULL,
  `relevance_score` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review1`
--

LOCK TABLES `review1` WRITE;
/*!40000 ALTER TABLE `review1` DISABLE KEYS */;
INSERT INTO `review1` VALUES (1,'Very good',6,9876,10,8790,7,8),(2,'Good',9,9999,9,4566,9,6),(3,'Good',5,2345,5,4567,6,4);
/*!40000 ALTER TABLE `review1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewer`
--

DROP TABLE IF EXISTS `reviewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewer` (
  `EmailAddr` varchar(50) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `author_feedback` varchar(50) DEFAULT NULL,
  `committee_feedback` varchar(50) DEFAULT NULL,
  `affiliation` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EmailAddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewer`
--

LOCK TABLES `reviewer` WRITE;
/*!40000 ALTER TABLE `reviewer` DISABLE KEYS */;
INSERT INTO `reviewer` VALUES ('alexis@gmail.com','Raj','Lohani',NULL,NULL,'4698999977','Maths'),('smaskey@gmail.com','Sulav','Maskey',NULL,NULL,'4698999877','Physics');
/*!40000 ALTER TABLE `reviewer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'Android Programming'),(2,'Operating Systerm'),(3,'Computer Science');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

