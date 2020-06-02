-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: miaosha
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `price` decimal(64,2) NOT NULL DEFAULT '0.00',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `sales` int(100) NOT NULL DEFAULT '0',
  `img_url` varchar(5000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'iphone99',80000.00,'最好用的iphone',3,'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563645867825&di=65cbf1d86165f7185ce7772e2e8a4bca&imgtype=0&src=http%3A%2F%2Fp0.ifengimg.com%2Fpmop%2F2017%2F1127%2F753C746E59ACA849F681F4FC5B75ACD494092110_size15_w600_h400.jpeg'),(3,'iphone8',5000.00,'第二好用的iphone',3,'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2259344707,860548047&fm=26&gp=0.jpg'),(5,'iphone6s',4000.00,'最经典的苹果手机',4,'https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3775038282,654832400&fm=26&gp=0.jpg');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_stock`
--

DROP TABLE IF EXISTS `item_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_stock`
--

LOCK TABLES `item_stock` WRITE;
/*!40000 ALTER TABLE `item_stock` DISABLE KEYS */;
INSERT INTO `item_stock` VALUES (9,95,1),(11,97,3),(13,46,5);
/*!40000 ALTER TABLE `item_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_info`
--

DROP TABLE IF EXISTS `order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_info` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` int(11) NOT NULL DEFAULT '0',
  `order_price` decimal(40,2) NOT NULL DEFAULT '0.00',
  `promo_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_info`
--

LOCK TABLES `order_info` WRITE;
/*!40000 ALTER TABLE `order_info` DISABLE KEYS */;
INSERT INTO `order_info` VALUES ('2020041700000600',63,1,800.00,1,800.00,0),('2020041700000700',63,1,800.00,1,800.00,0),('2020041700000800',63,5,4000.00,1,4000.00,0),('2020041700000900',63,5,4000.00,1,4000.00,0),('2020041700001000',63,5,100.00,1,100.00,2),('2020041700001100',63,5,100.00,1,100.00,2);
/*!40000 ALTER TABLE `order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo`
--

DROP TABLE IF EXISTS `promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promo` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `promo_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `promo_item_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo`
--

LOCK TABLES `promo` WRITE;
/*!40000 ALTER TABLE `promo` DISABLE KEYS */;
INSERT INTO `promo` VALUES (1,'iphone99大减价','2020-04-01 19:55:47','2020-05-01 19:55:52',1,200.00),(2,'iphone6s大减价','2020-04-01 20:17:17','2020-05-01 20:18:18',5,100.00),(3,'iphone11大减价','2020-05-01 20:17:17','2020-06-01 20:18:18',3,300.00);
/*!40000 ALTER TABLE `promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_info`
--

DROP TABLE IF EXISTS `sequence_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequence_info` (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `current_value` int(11) NOT NULL DEFAULT '0',
  `step` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence_info`
--

LOCK TABLES `sequence_info` WRITE;
/*!40000 ALTER TABLE `sequence_info` DISABLE KEYS */;
INSERT INTO `sequence_info` VALUES ('order_info',12,1);
/*!40000 ALTER TABLE `sequence_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `gender` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1代表男性\r\n',
  `age` int(11) NOT NULL DEFAULT '0',
  `telphone` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `regisit_mode` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '//byphone,bywechat,byalipay,',
  `third_party_id` int(64) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `telphone_unique_index` (`telphone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (40,'lyy',1,1,'123','byphone',0),(52,'1',1,1,'111111','byphone',0),(53,'1',1,11111111,'11','byphone',0),(55,'1',1,1,'111','byphone',0),(61,'lyy',1,18,'15512345611','byphone',0),(63,'nico',1,18,'123456789','byphone',0);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_password`
--

DROP TABLE IF EXISTS `user_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrpt_password` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `use_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_password`
--

LOCK TABLES `user_password` WRITE;
/*!40000 ALTER TABLE `user_password` DISABLE KEYS */;
INSERT INTO `user_password` VALUES (18,'ICy5YqxZB1uWSwcVLSNLcA==',40),(19,'xMpCOKC5I4INzFCab3WEmw==',0),(20,'xMpCOKC5I4INzFCab3WEmw==',0),(21,'ICy5YqxZB1uWSwcVLSNLcA==',0),(22,'xMpCOKC5I4INzFCab3WEmw==',52),(23,'xMpCOKC5I4INzFCab3WEmw==',53),(24,'xMpCOKC5I4INzFCab3WEmw==',55),(28,'mQ8SMb7vluZ2eC5z186IMw==',61),(29,'4QrcOUm6Wau+VuBX8g+IPg==',63);
/*!40000 ALTER TABLE `user_password` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-17 16:14:56
