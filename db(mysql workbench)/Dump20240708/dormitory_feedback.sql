-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dormitory
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `admin_id` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `number_room` int DEFAULT NULL,
  `send_date` date DEFAULT NULL,
  `status` int DEFAULT NULL,
  `student_id` int NOT NULL,
  `type` int DEFAULT NULL,
  `reponse` varchar(255) DEFAULT NULL,
  `request` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5v9179gg1j6dcf9udmxwdqhg4` (`admin_id`),
  KEY `FKqhtnddhm5a6vdnd0gytgaupnv` (`student_id`),
  CONSTRAINT `FK5v9179gg1j6dcf9udmxwdqhg4` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `FKqhtnddhm5a6vdnd0gytgaupnv` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,20,101,'2024-05-22',3,18,1,'Đã thay quạt trần senko có sẵn trong kho.Ngày mua 01/01/2024,ngày hết hạn bảo hành 01/07/2024','Hư quạt phòng',500000),(1,21,101,'2024-05-22',2,18,2,'ok','Bạn Nam gây mất trật tự',NULL),(1,22,101,'2024-05-22',3,18,1,'Đã mua và thay vòi nước','Hư vòi nước labo',50000),(1,23,101,'2024-05-22',3,18,1,'Thay bóng đèn giá 60.000đ,chi phí bóng đèn bạn tuấn phải chi trả','Bạn tuần cùng phòng làm vỡ 1 bóng đèn phòng',0),(NULL,24,202,'2024-07-05',0,20,2,NULL,'Hư bàn',0);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-08 20:53:48
