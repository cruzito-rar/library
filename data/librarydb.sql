-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: librarydb
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idCliente` varchar(250) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `metodoPago` varchar(50) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idCliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'cd1ec7aadaa626b4de50b309a5c7ee11','Alejandro','Cruz','efectivo','2024-05-06',NULL),(2,'3925b05716f218fff0722c94518460c4','Alejandro','Cruz','efectivo','2024-05-06',NULL),(3,'3a3a4add2b8d6bce562c6163a9de7364','Michelle','Bonilla','efectivo','2024-05-06',NULL),(4,'d8d3312cf66a69ffb9b5510e870a93b5','Michelle','Bonilla','efectivo','2024-05-06',NULL),(5,'9f22c790b09ff771698667da370cbb3d','Gisselle','Muñoz','efectivo','2024-05-06',NULL),(6,'ccf470b805c073c46f5c1dca3367659f','Andrea','Meléndez','efectivo','2024-05-06',NULL),(7,'60f898b46c0ddc58e610a2b16ee7de76','Lázaro','Reyes','efectivo','2024-05-06',NULL),(8,'abd64315f0095e1d79418a98c4105a84','Lázaro','Reyes','efectivo','2024-05-06',NULL),(9,'cc746da6fd6526404c8da66603e4820f','Rocío','Cruz','efectivo','2024-05-06',NULL),(10,'5971e5471fdabbe8e2b955ed5f49148c','Rocío','Cruz','efectivo','2024-05-06',NULL),(11,'1977171350af0fc6b2d4e4aaf4fa1c2e','Mario','Ortíz','efectivo','2024-05-06',NULL),(12,'a239b519757755d1715eaeff3fcf1ee5','Mario','Ortíz','efectivo','2024-05-06',NULL),(13,'f25b5b0aa5d44fea48f86e88e60ab1da','Juan','Pérez','efectivo','2024-05-06',NULL),(14,'d89420b5253a5c22b17cdcff67482c9b','Juan','Pérez','efectivo','2024-05-06',NULL),(15,'66114d08bfb74a77908abaaa686f7e56','Alejandro','Cruz','efectivo','2024-05-06',NULL),(16,'c3de5df541def7b700f77ed26f4f2c71','Alejandro','Cruz','efectivo','2024-05-06',NULL),(17,'29441c63488a6351d96e955d500dc4c4','María','Andrade','efectivo','2024-05-06',NULL),(18,'6d5d50a92814bcd0053654c1b79d660a','María','Andrade','efectivo','2024-05-06',NULL),(19,'b29d0e3fd0f2e8b4cc32d166c65b4061',NULL,NULL,'efectivo','2024-05-06',NULL),(20,'46f3dfb8a47974b7e35960d611a31fff','Jorge','Pinzón','efectivo','2024-05-06',NULL),(21,'c07cb715d8e6e9b90ae96c7621103f86','José','Molina','efectivo','2024-05-06',NULL),(22,'faf85a836f00298e6326b72420f11811','José','Molina','efectivo','2024-05-06',NULL),(23,'188c2542a37940e5e487e5f5fae6ff12','José','Molina','efectivo','2024-05-06',NULL),(24,'3eca207948c6166200de95335cbf5e76','Manuel','Gallegos','efectivo','2024-05-06',NULL),(25,'ff19215c4330744f67bd3d4478423de0','Manuel','Gallegos','efectivo','2024-05-06',NULL),(26,'9adad6df0886f0524bb04fb60c39ac2f','Manuel','Gallegos','efectivo','2024-05-06',NULL),(27,'bb91d7d12a987a0e7e616106167afb93','Manuel','Gallegos','efectivo','2024-05-06',NULL),(28,'2f4d4decb598851a56c4731eba1236a4','Manuel','Gallegos','efectivo','2024-05-06',NULL),(29,'36322646fa0211137d3d5b9917d1cf95','Manuel','Gallegos','efectivo','2024-05-06',NULL),(30,'ce6eb83deff4a16a45ac28fcefeee3d9','Manuel','Gallegos','efectivo','2024-05-06',NULL),(31,'43f8f1bb7609812e8626eacff22ab97d','Manuel','Gallegos','efectivo','2024-05-06',NULL),(32,'f2e90456f6b88e481cb3367c926263c6','Manuel','Gallegos','efectivo','2024-05-06',NULL),(33,'6cd640295270e386374229d16f1aa0b6','Manuel','Gallegos','efectivo','2024-05-06',NULL),(34,'c76179d4bcd2b43688939d7eec1fd86c','Manuel','Gallegos','efectivo','2024-05-06',NULL),(35,'eaf2b77d80c90984be9782fd973f9d08','Manuel','Gallegos','efectivo','2024-05-06',NULL),(36,'9e32e4aabede20dd74e436226b61b084','Manuel','Gallegos','efectivo','2024-05-06',NULL),(37,'9409a6117c11ef14fd5e8d955ad03a8b','Manuel','Gallegos','efectivo','2024-05-06',NULL),(38,'e4a6487e0c388aa2153982c604399b7a','Manuel','Gallegos','efectivo','2024-05-06',NULL),(39,'bb81dd56cd68faf191acec0a141f593c','Manuel','Gallegos','efectivo','2024-05-06',NULL),(40,'a1a003a73703bc6623f8ebe1f846900f','Manuel','Gallegos','efectivo','2024-05-06',NULL),(41,'a11ed11639f88b6403ee365f34822007','Manuel','Gallegos','efectivo','2024-05-06',NULL),(42,'662b5bbe6e6db98081171f3945725fe7','Manuel','Gallegos','efectivo','2024-05-06',NULL),(43,'36d24f7e5565fe141ebdee584429292d','Manuel','Gallegos','efectivo','2024-05-06',NULL),(44,'a1add028a9bcb92c0238f60de36c9809','Manuel','Gallegos','efectivo','2024-05-06',NULL),(45,'cafff7824745a01d0204650ee582a5a8','Manuel','Gallegos','efectivo','2024-05-06',NULL),(46,'c4cc161cde2c563dc78468115b7fc8b5','Arturo','Biagi','efectivo','2024-05-06',NULL),(47,'b1b0ec4deb82c91ce4e72e2bab79ac83','Arturo','Biagi','efectivo','2024-05-06',NULL),(48,'8030549908d98758438e0243cb5b9b5e','Arturo','Biagi','efectivo','2024-05-06',NULL),(49,'675d945ab7407a56af5853295a161b4d','Arturo','Biagi','efectivo','2024-05-06',NULL),(50,'548fd9c0bb7b4f8dfd700f49dcbc076d','Esther','Gómez','efectivo','2024-05-06',NULL),(51,'88ce2a4e407ea1bd35714884c51eeb22','Raquel','Fuentes','efectivo','2024-05-06',NULL),(52,'34134aed54f085d89cb82742917c7714','Luis','Vásquez','efectivo','2024-05-07',NULL),(53,'a076948143e7c8259783035f40f0dab0','Margarita','Flores','efectivo','2024-05-07',NULL),(54,'3db9496cd57aec0e7bff87b201b579f7','Lucas','Andrade','efectivo','2024-05-07',NULL),(55,'c15da8bcfc4d4287a0598a55871e3851','Marcos','Leiva','efectivo','2024-05-07',NULL),(56,'b3d15bfa44cf24f1901198c27c66e65d','Vanessa','González','efectivo','2024-05-07',NULL),(57,'e7c50d9543681e48fd007ed94ba0f9ba','Miguel','Fernández','efectivo','2024-05-07',NULL),(58,'c9678541822f1a5069eaba9ff397d64a','Miguel','Fernández','efectivo','2024-05-07',NULL),(59,'41447e7ece6d59a9e24d57fa590d56b5','Miguel','Fernández','efectivo','2024-05-07',NULL),(60,'477aa61659bae013f60043b60931716a','Elizabeth','Gutiérrez','efectivo','2024-05-07',NULL),(61,'b94f853170377704e262d3066a94262f','Elizabeth','Gutiérrez','efectivo','2024-05-07',NULL),(62,'5ccf1f83bfb6a31a5200a76f6f56fc50','Elizabeth','Gutiérrez','efectivo','2024-05-07',NULL),(63,'a7ecc95321ffca8b262bcc7ce7b758aa','Carolina','Andrade','efectivo','2024-05-07',NULL),(64,'117fad8bd15d7c3cf94257e0d0237321','Carolina','Andrade','efectivo','2024-05-07',NULL),(65,'2911ac7c62260e2eb6041fff5cf6a066','Carlos','Aguirre','efectivo','2024-05-07',NULL),(67,'a9e9bd34afd23540fd42889e390cc63d','Katherine','Galdámez','efectivo','2024-05-07',NULL),(68,'4db988e4d958f564193c31a91d614085','Katherine','Galdámez','efectivo','2024-05-07',NULL),(69,'7e695a08a9541eba5a891ccb9138dbc4','Katherine','Galdámez','efectivo','2024-05-07',NULL),(70,'cfe7e4fa41bf90e0be6cb2185fc8b1a3','Joaquín','Hernández','efectivo','2024-05-07',NULL),(71,'fc7279ddc54ff7a8a47becf598b07da3','Otoniel','Escobar','efectivo','2024-05-07',NULL),(72,'6dcef9a523cdaffaf3baea9c7cf12d78','Alejandro','Martínez','efectivo','2024-05-07',NULL),(73,'b292940fe0150dc5a1acb3f67ceba02f','Roberto','Linares','efectivo','2024-05-07',NULL),(74,'c149a0f456ef79eab114abdd06173e43','Emmanuel','López','efectivo','2024-05-07',NULL),(75,'a4410cb8b6a164807314a6d8d4fe0f12','Guillermo','Pineda','efectivo','2024-05-07',NULL),(76,'02b0505ac97c7ebcdba9d7c1e60a2cf4','Marcela','Cruz','efectivo','2024-05-07',NULL),(77,'d9aecf7e10316cdef9d4cd22a7715bfc','Jonathan','Ruíz','efectivo','2024-05-07',NULL),(78,'79a34b881de1e0636f090bc2b2876b9d','Katia','Ramírez','efectivo','2024-05-07',NULL),(79,'6c498a88c90b4b2fe6ee5c66da0cb23f','Katia','Ramírez','efectivo','2024-05-07',NULL),(80,'5688111e994bd5141729545383d90f6e',NULL,NULL,'efectivo','2024-05-07',NULL),(81,'b261e26cd4f9f5621c2e1599a2d68a5d',NULL,NULL,'efectivo','2024-05-07',NULL),(82,'d19740d09aa6533c33aeaf3c2721df94','Luis','Iraheta','efectivo','2024-05-07',NULL),(83,'1e145ef1048ce02f149c887793a78351','Juan','Urrutia','efectivo','2024-05-07',NULL),(84,'8d2b3e0798eca81385d3a0813be74d0e','Mariela','Muñoz','efectivo','2024-05-07',NULL),(85,'de4bc21961d2a7815fa0dba686db3716','Julian','Solo','efectivo','2024-05-07',NULL),(86,'391e0776adeb2db8b483d07ebf4b0041','Ruben','Ordoñez','efectivo','2024-05-07',NULL),(87,'8fe266a10599b25ecf2bd8798ac6271f','Daniel','Alvarado','efectivo','2024-05-07',NULL),(88,'322fb191e8ea8b57d7fe06518f14192f','Gerardo','Herrera','efectivo','2024-05-07',NULL),(89,'65f2bbd029594d38c41aac50c8cb1281','Estela','Roque','efectivo','2024-05-07',NULL),(90,'5a098b705091c2e3b08c609c359a25a0','Martín','Guerra','efectivo','2024-05-07',NULL),(91,'17acf21f32bb77afaeeaf935ade75e15','Alfredo','Duran','efectivo','2024-05-07',NULL),(92,'603c2d80d1361f4af5d23be51d60c6c7','Daniela','Ortíz','efectivo','2024-05-07',NULL),(93,'de5c72dc003ed72a25ff9f13b79da544','Sofía','Landaverde','efectivo','2024-05-07',NULL),(94,'3117b4bd690a498c395f4ad35e2f1af2','Miguel','Coreas','efectivo','2024-05-08',NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_venta`
--

DROP TABLE IF EXISTS `detalles_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_venta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idDetalleVenta` varchar(250) DEFAULT NULL,
  `idVenta` varchar(250) DEFAULT NULL,
  `idCliente` varchar(250) DEFAULT NULL,
  `idLibro` varchar(250) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precioUnitario` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `estadoEntrega` varchar(20) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idVenta` (`idVenta`),
  KEY `idLibro` (`idLibro`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `detalles_venta_ibfk_1` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`idVenta`),
  CONSTRAINT `detalles_venta_ibfk_2` FOREIGN KEY (`idLibro`) REFERENCES `libros` (`idLibro`),
  CONSTRAINT `detalles_venta_ibfk_3` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_venta`
--

LOCK TABLES `detalles_venta` WRITE;
/*!40000 ALTER TABLE `detalles_venta` DISABLE KEYS */;
INSERT INTO `detalles_venta` VALUES (1,'cd1ec7aadaa626b4de50b309a5c7ee11','cd1ec7aadaa626b4de50b309a5c7ee11','cd1ec7aadaa626b4de50b309a5c7ee11','a4a3530822ba217b8405f1cd03dc65f7',2,17.50,35.00,0.00,NULL,'2024-05-06',NULL),(2,'3925b05716f218fff0722c94518460c4','3925b05716f218fff0722c94518460c4','3925b05716f218fff0722c94518460c4','a4a3530822ba217b8405f1cd03dc65f7',2,17.50,35.00,0.00,NULL,'2024-05-06',NULL),(3,'3925b05716f218fff0722c94518460c4','3925b05716f218fff0722c94518460c4','3925b05716f218fff0722c94518460c4','48d73b6dd38f6332244d3e7f66b9ea1c',1,4.95,4.95,0.00,NULL,'2024-05-06',NULL),(4,'3a3a4add2b8d6bce562c6163a9de7364','3a3a4add2b8d6bce562c6163a9de7364','3a3a4add2b8d6bce562c6163a9de7364','9bfcacc59fb139dd7b011075a40542c3',3,19.95,59.85,0.00,NULL,'2024-05-06',NULL),(5,'d8d3312cf66a69ffb9b5510e870a93b5','d8d3312cf66a69ffb9b5510e870a93b5','d8d3312cf66a69ffb9b5510e870a93b5','9bfcacc59fb139dd7b011075a40542c3',3,19.95,59.85,0.00,NULL,'2024-05-06',NULL),(6,'9f22c790b09ff771698667da370cbb3d','9f22c790b09ff771698667da370cbb3d','9f22c790b09ff771698667da370cbb3d','4d214f36756f168fe08e0cd459bf6c31',9,13.40,120.60,0.00,NULL,'2024-05-06',NULL),(7,'9f22c790b09ff771698667da370cbb3d','9f22c790b09ff771698667da370cbb3d','9f22c790b09ff771698667da370cbb3d','d5655ff5950e7a42aaab0f000262b298',3,29.00,87.00,0.00,NULL,'2024-05-06',NULL),(8,'ccf470b805c073c46f5c1dca3367659f','ccf470b805c073c46f5c1dca3367659f','ccf470b805c073c46f5c1dca3367659f','a4a3530822ba217b8405f1cd03dc65f7',6,17.50,105.00,0.00,NULL,'2024-05-06',NULL),(9,'ccf470b805c073c46f5c1dca3367659f','ccf470b805c073c46f5c1dca3367659f','ccf470b805c073c46f5c1dca3367659f','9bfcacc59fb139dd7b011075a40542c3',3,19.95,59.85,0.00,NULL,'2024-05-06',NULL),(10,'60f898b46c0ddc58e610a2b16ee7de76','60f898b46c0ddc58e610a2b16ee7de76','60f898b46c0ddc58e610a2b16ee7de76','23c63aace70067c61c3f474a85c34331',2,5.50,11.00,0.00,NULL,'2024-05-06',NULL),(11,'abd64315f0095e1d79418a98c4105a84','abd64315f0095e1d79418a98c4105a84','abd64315f0095e1d79418a98c4105a84','23c63aace70067c61c3f474a85c34331',2,5.50,11.00,0.00,NULL,'2024-05-06',NULL),(12,'cc746da6fd6526404c8da66603e4820f','cc746da6fd6526404c8da66603e4820f','cc746da6fd6526404c8da66603e4820f','d5655ff5950e7a42aaab0f000262b298',2,29.00,58.00,0.00,NULL,'2024-05-06',NULL),(13,'5971e5471fdabbe8e2b955ed5f49148c','5971e5471fdabbe8e2b955ed5f49148c','5971e5471fdabbe8e2b955ed5f49148c','d5655ff5950e7a42aaab0f000262b298',2,29.00,58.00,0.00,NULL,'2024-05-06',NULL),(14,'1977171350af0fc6b2d4e4aaf4fa1c2e','1977171350af0fc6b2d4e4aaf4fa1c2e','1977171350af0fc6b2d4e4aaf4fa1c2e','23c63aace70067c61c3f474a85c34331',1,5.50,5.50,0.00,NULL,'2024-05-06',NULL),(15,'a239b519757755d1715eaeff3fcf1ee5','a239b519757755d1715eaeff3fcf1ee5','a239b519757755d1715eaeff3fcf1ee5','23c63aace70067c61c3f474a85c34331',1,5.50,5.50,0.00,NULL,'2024-05-06',NULL),(16,'f25b5b0aa5d44fea48f86e88e60ab1da','f25b5b0aa5d44fea48f86e88e60ab1da','f25b5b0aa5d44fea48f86e88e60ab1da','48d73b6dd38f6332244d3e7f66b9ea1c',1,4.95,4.95,0.00,NULL,'2024-05-06',NULL),(17,'d89420b5253a5c22b17cdcff67482c9b','d89420b5253a5c22b17cdcff67482c9b','d89420b5253a5c22b17cdcff67482c9b','48d73b6dd38f6332244d3e7f66b9ea1c',1,4.95,4.95,0.00,NULL,'2024-05-06',NULL),(18,'a6595c8b6d8b25bc68193192be2a3e17','a6595c8b6d8b25bc68193192be2a3e17','66114d08bfb74a77908abaaa686f7e56','4d214f36756f168fe08e0cd459bf6c31',1,13.40,13.40,0.00,NULL,'2024-05-06',NULL),(19,'c3de5df541def7b700f77ed26f4f2c71','c3de5df541def7b700f77ed26f4f2c71','c3de5df541def7b700f77ed26f4f2c71','4d214f36756f168fe08e0cd459bf6c31',1,13.40,13.40,0.00,NULL,'2024-05-06',NULL),(20,'29441c63488a6351d96e955d500dc4c4','29441c63488a6351d96e955d500dc4c4','29441c63488a6351d96e955d500dc4c4','9bfcacc59fb139dd7b011075a40542c3',2,19.95,39.90,0.00,NULL,'2024-05-06',NULL),(21,'6d5d50a92814bcd0053654c1b79d660a','6d5d50a92814bcd0053654c1b79d660a','6d5d50a92814bcd0053654c1b79d660a','9bfcacc59fb139dd7b011075a40542c3',2,19.95,39.90,0.00,NULL,'2024-05-06',NULL),(22,'b29d0e3fd0f2e8b4cc32d166c65b4061','b29d0e3fd0f2e8b4cc32d166c65b4061','b29d0e3fd0f2e8b4cc32d166c65b4061','9bfcacc59fb139dd7b011075a40542c3',1,19.95,19.95,0.00,NULL,'2024-05-06',NULL),(23,'46f3dfb8a47974b7e35960d611a31fff','46f3dfb8a47974b7e35960d611a31fff','46f3dfb8a47974b7e35960d611a31fff','9bfcacc59fb139dd7b011075a40542c3',1,19.95,19.95,0.00,NULL,'2024-05-06',NULL),(24,'c07cb715d8e6e9b90ae96c7621103f86','c07cb715d8e6e9b90ae96c7621103f86','c07cb715d8e6e9b90ae96c7621103f86','d5655ff5950e7a42aaab0f000262b298',1,29.00,29.00,0.00,NULL,'2024-05-06',NULL),(25,'faf85a836f00298e6326b72420f11811','faf85a836f00298e6326b72420f11811','faf85a836f00298e6326b72420f11811','d5655ff5950e7a42aaab0f000262b298',1,29.00,29.00,0.00,NULL,'2024-05-06',NULL),(26,'188c2542a37940e5e487e5f5fae6ff12','188c2542a37940e5e487e5f5fae6ff12','188c2542a37940e5e487e5f5fae6ff12','d5655ff5950e7a42aaab0f000262b298',1,29.00,29.00,0.00,NULL,'2024-05-06',NULL),(27,'3eca207948c6166200de95335cbf5e76','3eca207948c6166200de95335cbf5e76','3eca207948c6166200de95335cbf5e76','a4a3530822ba217b8405f1cd03dc65f7',4,17.50,70.00,0.00,NULL,'2024-05-06',NULL),(28,'ff19215c4330744f67bd3d4478423de0','ff19215c4330744f67bd3d4478423de0','ff19215c4330744f67bd3d4478423de0','a4a3530822ba217b8405f1cd03dc65f7',4,17.50,70.00,0.00,NULL,'2024-05-06',NULL),(29,'9adad6df0886f0524bb04fb60c39ac2f','9adad6df0886f0524bb04fb60c39ac2f','9adad6df0886f0524bb04fb60c39ac2f','a4a3530822ba217b8405f1cd03dc65f7',4,17.50,70.00,0.00,NULL,'2024-05-06',NULL),(30,'bb91d7d12a987a0e7e616106167afb93','bb91d7d12a987a0e7e616106167afb93','bb91d7d12a987a0e7e616106167afb93','a4a3530822ba217b8405f1cd03dc65f7',4,17.50,70.00,0.00,NULL,'2024-05-06',NULL),(31,'2f4d4decb598851a56c4731eba1236a4','2f4d4decb598851a56c4731eba1236a4','2f4d4decb598851a56c4731eba1236a4','a4a3530822ba217b8405f1cd03dc65f7',4,17.50,70.00,0.00,NULL,'2024-05-06',NULL),(32,'36322646fa0211137d3d5b9917d1cf95','36322646fa0211137d3d5b9917d1cf95','36322646fa0211137d3d5b9917d1cf95','a4a3530822ba217b8405f1cd03dc65f7',4,17.50,70.00,0.00,NULL,'2024-05-06',NULL),(33,'36322646fa0211137d3d5b9917d1cf95','36322646fa0211137d3d5b9917d1cf95','36322646fa0211137d3d5b9917d1cf95','23c63aace70067c61c3f474a85c34331',3,5.50,16.50,0.00,NULL,'2024-05-06',NULL),(34,'ce6eb83deff4a16a45ac28fcefeee3d9','ce6eb83deff4a16a45ac28fcefeee3d9','ce6eb83deff4a16a45ac28fcefeee3d9','a4a3530822ba217b8405f1cd03dc65f7',4,17.50,70.00,0.00,NULL,'2024-05-06',NULL),(35,'ce6eb83deff4a16a45ac28fcefeee3d9','ce6eb83deff4a16a45ac28fcefeee3d9','ce6eb83deff4a16a45ac28fcefeee3d9','23c63aace70067c61c3f474a85c34331',3,5.50,16.50,0.00,NULL,'2024-05-06',NULL),(36,'43f8f1bb7609812e8626eacff22ab97d','43f8f1bb7609812e8626eacff22ab97d','43f8f1bb7609812e8626eacff22ab97d','a4a3530822ba217b8405f1cd03dc65f7',4,17.50,70.00,0.00,NULL,'2024-05-06',NULL),(37,'43f8f1bb7609812e8626eacff22ab97d','43f8f1bb7609812e8626eacff22ab97d','43f8f1bb7609812e8626eacff22ab97d','23c63aace70067c61c3f474a85c34331',3,5.50,16.50,0.00,NULL,'2024-05-06',NULL),(38,'f2e90456f6b88e481cb3367c926263c6','f2e90456f6b88e481cb3367c926263c6','f2e90456f6b88e481cb3367c926263c6','a4a3530822ba217b8405f1cd03dc65f7',4,17.50,70.00,0.00,NULL,'2024-05-06',NULL),(39,'f2e90456f6b88e481cb3367c926263c6','f2e90456f6b88e481cb3367c926263c6','f2e90456f6b88e481cb3367c926263c6','23c63aace70067c61c3f474a85c34331',3,5.50,16.50,0.00,NULL,'2024-05-06',NULL),(40,'6cd640295270e386374229d16f1aa0b6','6cd640295270e386374229d16f1aa0b6','6cd640295270e386374229d16f1aa0b6','a4a3530822ba217b8405f1cd03dc65f7',4,17.50,70.00,0.00,NULL,'2024-05-06',NULL),(41,'6cd640295270e386374229d16f1aa0b6','6cd640295270e386374229d16f1aa0b6','6cd640295270e386374229d16f1aa0b6','23c63aace70067c61c3f474a85c34331',3,5.50,16.50,0.00,NULL,'2024-05-06',NULL),(42,'c76179d4bcd2b43688939d7eec1fd86c','c76179d4bcd2b43688939d7eec1fd86c','c76179d4bcd2b43688939d7eec1fd86c','a4a3530822ba217b8405f1cd03dc65f7',4,17.50,70.00,0.00,NULL,'2024-05-06',NULL),(43,'c76179d4bcd2b43688939d7eec1fd86c','c76179d4bcd2b43688939d7eec1fd86c','c76179d4bcd2b43688939d7eec1fd86c','23c63aace70067c61c3f474a85c34331',3,5.50,16.50,0.00,NULL,'2024-05-06',NULL),(44,'eaf2b77d80c90984be9782fd973f9d08','eaf2b77d80c90984be9782fd973f9d08','eaf2b77d80c90984be9782fd973f9d08','a4a3530822ba217b8405f1cd03dc65f7',4,17.50,70.00,0.00,NULL,'2024-05-06',NULL),(45,'eaf2b77d80c90984be9782fd973f9d08','eaf2b77d80c90984be9782fd973f9d08','eaf2b77d80c90984be9782fd973f9d08','23c63aace70067c61c3f474a85c34331',3,5.50,16.50,0.00,NULL,'2024-05-06',NULL),(46,'de5c72dc003ed72a25ff9f13b79da544','de5c72dc003ed72a25ff9f13b79da544','de5c72dc003ed72a25ff9f13b79da544','7f9ffad74f2ab584a4517a67ab5e4d7e',4,10.95,43.80,0.00,NULL,'2024-05-07',NULL),(47,'3117b4bd690a498c395f4ad35e2f1af2','3117b4bd690a498c395f4ad35e2f1af2','3117b4bd690a498c395f4ad35e2f1af2','7f9ffad74f2ab584a4517a67ab5e4d7e',5,10.95,54.75,0.00,NULL,'2024-05-08',NULL);
/*!40000 ALTER TABLE `detalles_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idEmpleado` varchar(250) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idEmpleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'8c0840b028532c28a381e8a59f01b0db','David','Cruz','supervisor',400.00,'TI','2024-05-06',NULL),(2,'a2d9cde146b217b3a455d9f4b94d3788','Alexander','Sánchez','supervisor',400.00,'TI','2024-05-07','2024-05-08');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `existencias`
--

DROP TABLE IF EXISTS `existencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `existencias` (
  `idExistencia` int NOT NULL AUTO_INCREMENT,
  `idLibro` varchar(250) DEFAULT NULL,
  `existencia` int DEFAULT NULL,
  `ubicacionFisica` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`idExistencia`),
  KEY `idLibro` (`idLibro`),
  CONSTRAINT `existencias_ibfk_1` FOREIGN KEY (`idLibro`) REFERENCES `libros` (`idLibro`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `existencias`
--

LOCK TABLES `existencias` WRITE;
/*!40000 ALTER TABLE `existencias` DISABLE KEYS */;
INSERT INTO `existencias` VALUES (1,'48d73b6dd38f6332244d3e7f66b9ea1c',45,NULL,'2024-05-06',NULL),(2,'23c63aace70067c61c3f474a85c34331',89,NULL,'2024-05-06',NULL),(3,'a4a3530822ba217b8405f1cd03dc65f7',74,NULL,'2024-05-06',NULL),(4,'d5655ff5950e7a42aaab0f000262b298',8,NULL,'2024-05-06',NULL),(5,'9bfcacc59fb139dd7b011075a40542c3',61,NULL,'2024-05-06',NULL),(6,'4d214f36756f168fe08e0cd459bf6c31',100,NULL,'2024-05-06',NULL),(7,'7f9ffad74f2ab584a4517a67ab5e4d7e',81,NULL,'2024-05-07',NULL),(8,'6d38fd42946556eb146c00c4971de97e',75,NULL,'2024-05-08',NULL);
/*!40000 ALTER TABLE `existencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idGenero` varchar(255) DEFAULT NULL,
  `nombreGenero` varchar(50) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idGenero` (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'b324f2f24436784b4036c95b4071fa4f','Novela','2024-05-06',NULL),(2,'30b273693e003ffa0514d9cdc4f97748','Poesía','2024-05-06',NULL),(3,'f10628e63015920218ba1433b5c02e8b','Terror','2024-05-06',NULL),(4,'a071079b0d1ef80612343d59a3cb134d','Suspenso','2024-05-06',NULL),(5,'7ccca6f1b27e5c45eabefa289c88b937','Comedia','2024-05-06',NULL),(6,'d55c4c87356c9c4f27d483a06ac026bb','Tragedia','2024-05-06',NULL),(7,'b57e43f887fcf16ce94406fd5dc36f4b','Tragicomedia','2024-05-06',NULL),(8,'56f04f8f556e929c52f2fc7cb811ec74','Educativo','2024-05-06',NULL),(9,'aa882d936adbc9fb6bfdb04f5c7734e1','Fantasía','2024-05-06',NULL),(10,'e1e6123db811da45cc661901ab3ca235','Comedia romantica','2024-05-06',NULL),(11,'086aef8c4810b4bb1258dbb3ba27e092','Sci-Fi','2024-05-06',NULL),(12,'2597cb7b602ceeea3aba0ab82ecc3b87','Infantil','2024-05-07',NULL),(13,'f5cb37bfee91a5d25ed832ca5d881fb8','Clásicos','2024-05-08','2024-05-08');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idLibro` varchar(250) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `fechaPublicacion` date DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `portada` varchar(255) DEFAULT NULL,
  `sinopsis` text,
  `idioma` varchar(50) DEFAULT NULL,
  `editorial` varchar(100) DEFAULT NULL,
  `numeroPaginas` int DEFAULT NULL,
  `formato` varchar(20) DEFAULT NULL,
  `fechaAdquisicion` date DEFAULT NULL,
  `calificacionPromedio` decimal(3,2) DEFAULT NULL,
  `comentarios` text,
  `created_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idLibro` (`idLibro`),
  KEY `genero` (`genero`),
  CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`genero`) REFERENCES `genero` (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'48d73b6dd38f6332244d3e7f66b9ea1c','Don Quijote de la Mancha','Miguel de Cervantes Saavedra','978-9996152115','2015-01-01','b324f2f24436784b4036c95b4071fa4f',4.95,'/uploads/85202444444.jpg','Narra las aventuras de Alonso Quijano, un hidalgo pobre que de tanto leer novelas de caballería acaba enloqueciendo y creyendo ser un caballero andante, nombrándose a sí mismo como don Quijote de la Mancha.',NULL,NULL,NULL,NULL,'2024-05-06',NULL,NULL,'2024-05-06',NULL),(2,'23c63aace70067c61c3f474a85c34331','Jicaras Tristes','Alfredo Espino','978-9992349687','2023-01-01','30b273693e003ffa0514d9cdc4f97748',5.50,'/uploads/85202415906.jpg','Los 96 poemas de Jícaras Tristes se salvan del fuego crítico por la emoción desnuda del joven poeta. Su lirismo se recrea en la “indiana musa” y el amor se traslada, en sencillos madrigales, romances, letrillas y sonetos, a las cosas rurales.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-06',NULL),(3,'a4a3530822ba217b8405f1cd03dc65f7','Boku no kokoro no yabai yatsu','Norio Sakurai','978-1648274251','2018-03-08','e1e6123db811da45cc661901ab3ca235',17.50,'/uploads/85202444428.jpg','La historia se desarrolla alrededor de Kyoutarou Ichikawa, una persona que se encuentra al fondo del nivel de popularidad de su escuela, y que se esfuerza por limitar el impulso asesino que constantemente acosa a su alma.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-06',NULL),(4,'d5655ff5950e7a42aaab0f000262b298','It','Stephen King','978-1501142970','1986-09-15','f10628e63015920218ba1433b5c02e8b',29.00,'/uploads/85202412659.jpg','Tras veintisiete años de tranquilidad y lejanía, una antigua promesa infantil les hace volver al lugar en el que vivieron su infancia y juventud como una terrible pesadilla. Regresan a Derry para enfrentarse con su pasado y enterrar definitivamente todo.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-06',NULL),(5,'9bfcacc59fb139dd7b011075a40542c3','100 años de soledad','Gabriel García Márquez','978-6070728792','1967-05-12','b324f2f24436784b4036c95b4071fa4f',19.95,'/uploads/85202444433.png','Cuenta la saga de la familia Buendía y su maldición, que castiga el matrimonio entre parientes dándoles hijos con cola de cerdo. Como un río desbordante, a lo largo de un siglo se entretejerán sus destinos por medio de sucesos maravillosos.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-06',NULL),(6,'4d214f36756f168fe08e0cd459bf6c31','Eloquent JavaScript','Marijn Haverbeke','978-1593279509','2011-01-01','56f04f8f556e929c52f2fc7cb811ec74',13.40,'/uploads/85202444423.jpg','Va más allá de los guiones de cortar y pegar de los libros de recetas y te enseña a escribir código que es elegante y eficaz. Comenzará con los conceptos básicos de la programación y aprenderá a usar variables, estructuras de control, funciones y demás.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-06',NULL),(7,'7f9ffad74f2ab584a4517a67ab5e4d7e','Robinson Crusoe','Daniel Dafoe','978-9996154591','1719-04-25','086aef8c4810b4bb1258dbb3ba27e092',10.95,'/uploads/85202423014.jpg','El único superviviente de un naufragio, Robinson Crusoe, acaba varado en una isla desierta. En su diario, relata su batalla diaria para mantenerse con vida, mientras conquista el aislamiento.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-07',NULL),(8,'6d38fd42946556eb146c00c4971de97e','Alicia en el país de las maravillas','Lewis Carroll','978-8414002162','1865-01-01','aa882d936adbc9fb6bfdb04f5c7734e1',25.00,'/uploads/852024155604.jpg','Un día aburrido como tantos, Alicia se duerme y de este modo entra en el País de las Maravillas de la mano del Conejo Blanco. Allí conocerá a la Falsa Tortuga, la Reina de Corazones, el Gato de Chester, la Duquesa, el Sombrerero Loco a la Liebre y demás.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-08',NULL);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idUsuario` varchar(250) DEFAULT NULL,
  `idEmpleado` varchar(250) DEFAULT NULL,
  `nombreUsuario` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `rol` enum('superadmin','admin','cliente') DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idEmpleado` (`idEmpleado`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'8c0840b028532c28a381e8a59f01b0db','8c0840b028532c28a381e8a59f01b0db','David Cruz','e805cbba152a17e3ab2eb1b367c16f97','superadmin','2024-05-06',NULL),(2,'6152019c9a167d099134b4148f4d2aec','a2d9cde146b217b3a455d9f4b94d3788','Alexander Sánchez','f853fd6521ef88d68be4a1de5d8bdd9c','admin','2024-05-07','2024-05-08');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idVenta` varchar(250) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `notaPedido` text,
  `created_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idVenta` (`idVenta`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'cd1ec7aadaa626b4de50b309a5c7ee11','2024-05-06',35.00,'completado',NULL,'2024-05-06',NULL),(2,'3925b05716f218fff0722c94518460c4','2024-05-06',39.95,'completado',NULL,'2024-05-06',NULL),(3,'3a3a4add2b8d6bce562c6163a9de7364','2024-05-06',59.85,'completado',NULL,'2024-05-06',NULL),(4,'d8d3312cf66a69ffb9b5510e870a93b5','2024-05-06',59.85,'completado',NULL,'2024-05-06',NULL),(5,'9f22c790b09ff771698667da370cbb3d','2024-05-06',207.60,'completado',NULL,'2024-05-06',NULL),(6,'ccf470b805c073c46f5c1dca3367659f','2024-05-06',164.85,'completado',NULL,'2024-05-06',NULL),(7,'60f898b46c0ddc58e610a2b16ee7de76','2024-05-06',11.00,'completado',NULL,'2024-05-06',NULL),(8,'abd64315f0095e1d79418a98c4105a84','2024-05-06',11.00,'completado',NULL,'2024-05-06',NULL),(9,'cc746da6fd6526404c8da66603e4820f','2024-05-06',58.00,'completado',NULL,'2024-05-06',NULL),(10,'5971e5471fdabbe8e2b955ed5f49148c','2024-05-06',58.00,'completado',NULL,'2024-05-06',NULL),(11,'1977171350af0fc6b2d4e4aaf4fa1c2e','2024-05-06',5.50,'completado',NULL,'2024-05-06',NULL),(12,'a239b519757755d1715eaeff3fcf1ee5','2024-05-06',5.50,'completado',NULL,'2024-05-06',NULL),(13,'f25b5b0aa5d44fea48f86e88e60ab1da','2024-05-06',4.95,'completado',NULL,'2024-05-06',NULL),(14,'d89420b5253a5c22b17cdcff67482c9b','2024-05-06',4.95,'completado',NULL,'2024-05-06',NULL),(15,'a6595c8b6d8b25bc68193192be2a3e17','2024-05-06',13.40,'completado',NULL,'2024-05-06',NULL),(16,'c3de5df541def7b700f77ed26f4f2c71','2024-05-06',13.40,'completado',NULL,'2024-05-06',NULL),(17,'29441c63488a6351d96e955d500dc4c4','2024-05-06',39.90,'completado',NULL,'2024-05-06',NULL),(18,'6d5d50a92814bcd0053654c1b79d660a','2024-05-06',39.90,'completado',NULL,'2024-05-06',NULL),(19,'b29d0e3fd0f2e8b4cc32d166c65b4061','2024-05-06',19.95,'completado',NULL,'2024-05-06',NULL),(20,'46f3dfb8a47974b7e35960d611a31fff','2024-05-06',19.95,'completado',NULL,'2024-05-06',NULL),(21,'c07cb715d8e6e9b90ae96c7621103f86','2024-05-06',29.00,'completado',NULL,'2024-05-06',NULL),(22,'faf85a836f00298e6326b72420f11811','2024-05-06',29.00,'completado',NULL,'2024-05-06',NULL),(23,'188c2542a37940e5e487e5f5fae6ff12','2024-05-06',29.00,'completado',NULL,'2024-05-06',NULL),(24,'3eca207948c6166200de95335cbf5e76','2024-05-06',70.00,'completado',NULL,'2024-05-06',NULL),(25,'ff19215c4330744f67bd3d4478423de0','2024-05-06',70.00,'completado',NULL,'2024-05-06',NULL),(26,'9adad6df0886f0524bb04fb60c39ac2f','2024-05-06',70.00,'completado',NULL,'2024-05-06',NULL),(27,'bb91d7d12a987a0e7e616106167afb93','2024-05-06',70.00,'completado',NULL,'2024-05-06',NULL),(28,'2f4d4decb598851a56c4731eba1236a4','2024-05-06',70.00,'completado',NULL,'2024-05-06',NULL),(29,'36322646fa0211137d3d5b9917d1cf95','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(30,'ce6eb83deff4a16a45ac28fcefeee3d9','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(31,'43f8f1bb7609812e8626eacff22ab97d','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(32,'f2e90456f6b88e481cb3367c926263c6','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(33,'6cd640295270e386374229d16f1aa0b6','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(34,'c76179d4bcd2b43688939d7eec1fd86c','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(35,'eaf2b77d80c90984be9782fd973f9d08','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(36,'9e32e4aabede20dd74e436226b61b084','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(37,'9409a6117c11ef14fd5e8d955ad03a8b','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(38,'e4a6487e0c388aa2153982c604399b7a','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(39,'bb81dd56cd68faf191acec0a141f593c','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(40,'a1a003a73703bc6623f8ebe1f846900f','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(41,'a11ed11639f88b6403ee365f34822007','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(42,'662b5bbe6e6db98081171f3945725fe7','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(43,'36d24f7e5565fe141ebdee584429292d','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(44,'a1add028a9bcb92c0238f60de36c9809','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(45,'cafff7824745a01d0204650ee582a5a8','2024-05-06',86.50,'completado',NULL,'2024-05-06',NULL),(46,'de5c72dc003ed72a25ff9f13b79da544','2024-05-07',43.80,'completado',NULL,'2024-05-07',NULL),(47,'3117b4bd690a498c395f4ad35e2f1af2','2024-05-08',54.75,'completado',NULL,'2024-05-08',NULL);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-08 10:22:11