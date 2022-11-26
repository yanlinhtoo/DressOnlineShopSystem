-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dressdb
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jean`
--

DROP TABLE IF EXISTS `jean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jean` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jean`
--

LOCK TABLES `jean` WRITE;
/*!40000 ALTER TABLE `jean` DISABLE KEYS */;
INSERT INTO `jean` VALUES (3,'j103','M','blue',600),(4,'j910','M','white',8000),(9,'j222','L','blueblack',9000),(23,'j322','S','white',2333),(25,'j919','L','white',4999),(26,'j919','L','white',8511),(27,'j333','S','white',1000),(29,'j322','L','blueblack',10000),(35,'j333','L','white',1234),(37,'j919','L','white',23000),(47,'j919','S','white',5000),(49,'j322','S','white',5000),(52,'j919','S','white',5),(53,'j919','L','white',3),(54,'j91','L','white',7500);
/*!40000 ALTER TABLE `jean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (11,'yanyan','y@gmail.com','1000:cae532724632dd5ffa3940b78e717171:86693e7f381586c76f5797e31faaa884c468a8fbfed464437b20aff95e6b0bca1210eb98350ae097fdc835c2487c0ad77ca0806c282f758337d22de997d68bf0','admin'),(12,'tuntun','t@gmail.com','1000:da972b42419ecd3dc1c66ef0e66c0ded:730925c4905c60ab34329dba11bb5381f6f2b023d98bbfd3d841626de0a0b6534ca90bc405e93b7d8564cbc35a4521e0b1edab08e7196b8e928e1d8c2b1f79af','user'),(20,'hlanu','hla@gmail.com','1000:0133f5cc1eee1b70c23c269d472d56c5:04fb9feda4f3ad851cd211fa9b2dcdf55eeb26983f89962ed2cc43b0fba9f68f017c0b8eec5d930bcb635fe77999fb0092289d99341ca84e4da819dc2955dcda','admin'),(21,'mgmg','mg@gmail.com','1000:24c794171a4975534fa81099cbc51896:563c50574c8ebef6da4d106762880f281d221d9acb661a1a2ffb5462685c2c9feed5523f9f1149224d4ab6625fb31d267cdd7867ec92a09e480542315ea199bc','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 10:34:50
