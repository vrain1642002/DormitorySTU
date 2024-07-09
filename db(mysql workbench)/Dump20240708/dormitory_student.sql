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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `birthday` date DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `status` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `classroom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number_student` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `prioritize` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_bkix9btnoi1n917ll7bplkvg5` (`user_id`),
  UNIQUE KEY `UK_rdsdut9esprkwrmv2v57oqc10` (`number_student`),
  CONSTRAINT `FKk0thg920a3xk3v59yjbsatw1l` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('2002-05-27',1,18,0,24,'Phú Yên','D20_TH05','DH52006823@student.stu.edu.vn','CNTT','Nguyễn Huỳnh Quốc Việt','DH52006823','0866715211','Bình Thường'),('2002-05-26',1,19,0,25,'HCM','D20_TH07','DH52006821@student.stu.edu.vn','CNTT','Nguyễn Văn Nam','DH52006821','0866715210','Bình Thường'),('2005-04-10',0,20,0,26,'Đồng Nai','D23_TK3DH3','DH92300939@student.stu.edu.vn','DESIGN','Châu Thanh Quỳnh Kim','DH92300939','0866715210','Bình Thường'),('2005-03-30',1,21,0,27,'Quảng Ngãi','D23_TH02','DH52300298@student.stu.edu.vn','CNTT','Trần Đức Duy','DH52300298','0342103197','Chính Sách'),('2005-01-20',1,22,0,28,'Long An','D23_TH11','DH52301640@student.stu.edu.vn','CNTT','Nguyễn Minh Quốc','DH52301640','0327696969','Đặc Biệt'),('2005-01-20',1,24,0,29,'Long An','D23_TH11','DH52302091@student.stu.edu.vn','CNTT','Lê Minh Trí','DH52302091','0327696960','Mồ côi');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-08 20:53:50
