-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `equip`
--

DROP TABLE IF EXISTS `equip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equip` (
  `itemId` varchar(50) NOT NULL,
  `itemType` varchar(50) NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `itemPrice` int NOT NULL,
  `itemLevel` int NOT NULL,
  `itemInfo` varchar(500) DEFAULT NULL,
  `weaponWeight` int DEFAULT NULL,
  `weaponEnergy` int DEFAULT NULL,
  `weaponSpeed` float DEFAULT NULL,
  `weaponDamage` int DEFAULT NULL,
  `weaponCD` float DEFAULT NULL,
  `weaponArea` int DEFAULT '360',
  `weaponRadius` int DEFAULT '1',
  `weaponFunc` varchar(500) DEFAULT NULL,
  `shipType` varchar(50) DEFAULT NULL,
  `shipCapacity` int DEFAULT NULL,
  `shipWeight` int DEFAULT NULL,
  `shipEnergy` float DEFAULT NULL,
  `shipRefuel` float DEFAULT NULL,
  `shipHP` int DEFAULT NULL,
  `shipFunc` varchar(500) DEFAULT NULL,
  `engineSpeed` float DEFAULT NULL,
  `enginePower` float DEFAULT NULL,
  `engineGrad` float DEFAULT NULL,
  `engineEnergy` int DEFAULT NULL,
  `engineBoostSpeedRate` float DEFAULT NULL,
  `engineBoostEnergyRate` float DEFAULT NULL,
  `altFunc` varchar(500) DEFAULT NULL,
  `deviceFunc` varchar(500) DEFAULT NULL,
  `weaponRange` int DEFAULT NULL,
  `weaponCharge` float DEFAULT NULL,
  `altWeight` float DEFAULT NULL,
  `deviceWeight` float DEFAULT NULL,
  `engineWeight` float DEFAULT NULL,
  `itemWeight` int DEFAULT NULL,
  `altEnergy` int DEFAULT NULL,
  `deviceEnergy` int DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equip`
--

LOCK TABLES `equip` WRITE;
/*!40000 ALTER TABLE `equip` DISABLE KEYS */;
INSERT INTO `equip` VALUES ('anti_matter_bomb','weapon','反物质炸弹',10,1,'武器示例4',30,90,0,155,2,0,64,'每次投出两枚大范围杀伤炸弹','-1',-1,-1,-1,-1,-1,'-1',-1,-1,-1,-1,-1,-1,'-1','-1',200,1,-1,-1,-1,30,-1,-1),('bishop','ship','主教',10,1,'为轰炸任务而设计的空中堡垒',-1,-1,-1,-1,-1,-1,-1,'-1','轰炸机',220,330,250,15,220,'暂无',-1,-1,-1,-1,-1,-1,'-1','-1',-1,-1,-1,-1,-1,200,-1,-1),('blackKnight','ship','黑骑士',10,1,'优越的操控性，适合于空中缠斗',-1,-1,-1,-1,-1,-1,-1,'-1','截击机',140,200,250,15,180,'暂无',-1,-1,-1,-1,-1,-1,'-1','-1',-1,-1,-1,-1,-1,200,-1,-1),('interceptor','ship','拦截者',10,1,'整个殖民地最高速的机型',-1,-1,-1,-1,-1,-1,-1,'-1','截击机',160,180,250,15,180,'暂无',-1,-1,-1,-1,-1,-1,'-1','-1',-1,-1,-1,-1,-1,200,-1,-1),('jellyFish','ship','水母',10,1,'异星文明存在的证据之一',-1,-1,-1,-1,-1,-1,-1,'-1','电子战机',160,200,250,15,180,'暂无',-1,-1,-1,-1,-1,-1,'-1','-1',-1,-1,-1,-1,-1,200,-1,-1),('laser','weapon','镭射炮',10,1,'武器示例',50,90,128,130,1.5,0,0,'光束能够穿透多架敌机','-1',-1,-1,-1,-1,-1,'-1',-1,-1,-1,-1,-1,-1,'-1','-1',3000,0.5,-1,-1,-1,50,-1,-1),('nano_bot','device','纳米机器人',10,1,'-1',-1,-1,-1,-1,-1,-1,-1,'-1','-1',-1,-1,-1,-1,-1,'-1',-1,-1,-1,-1,-1,-1,'-1','-1',-1,-1,-1,-1,-1,25,-1,-1),('predator','ship','杜鹃',10,1,'前身是一种多用途农业飞行器,后来由于出色的性价比,良好的操控性和稳定性被抵抗组织改为攻击机,并量产',-1,-1,-1,-1,-1,-1,-1,'-1','攻击机',140,200,250,15,180,'幻影飞行,在10秒内被击中后受到伤害的概率减半',-1,-1,-1,-1,-1,-1,'-1','-1',-1,-1,-1,-1,-1,200,-1,-1),('racoon','ship','晨星',10,1,'优势火力学说的产物，阵地战中表现十分突出，在多次战役中成为联邦的主力机型',-1,-1,-1,-1,-1,-1,-1,'-1','驱逐舰',200,280,300,20,220,'攻击防御在5秒内加成15%',-1,-1,-1,-1,-1,-1,'-1','-1',-1,-1,-1,-1,-1,280,-1,-1),('radioCoil','alt','附加辐能线圈',10,1,'-1',-1,-1,-1,-1,-1,-1,-1,'-1','-1',-1,-1,-1,-1,-1,'-1',-1,-1,-1,-1,-1,-1,'暂无','-1',-1,-1,-1,-1,-1,30,10,-1),('space_time','engine','时空之枢',10,1,'操控性良好的中等推力引擎',40,-1,-1,-1,-1,-1,-1,'-1','-1',-1,-1,-1,-1,-1,'-1',850,578,612,8,1.4,3,'-1','-1',-1,-1,-1,-1,-1,40,-1,-1),('target_core','device','目标锁定核心',10,1,'-1',-1,-1,-1,-1,-1,-1,-1,'-1','-1',-1,-1,-1,-1,-1,'-1',-1,-1,-1,-1,-1,-1,'-1','-1',-1,-1,-1,-1,-1,25,-1,-1),('twins','weapon','双子炮',10,1,'武器示例3',20,20,10,20,0.3,90,0,'从两翼分别射出一束子弹','-1',-1,-1,-1,-1,-1,'-1',-1,-1,-1,-1,-1,-1,'-1','-1',500,0,-1,-1,-1,20,-1,-1),('vulcan','weapon','机关炮',10,1,'武器示例2',10,3,20,7,0.1,360,0,'无','-1',-1,-1,-1,-1,-1,'-1',-1,-1,-1,-1,-1,-1,'-1','-1',300,0,-1,-1,-1,10,-1,-1);
/*!40000 ALTER TABLE `equip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_test`
--

DROP TABLE IF EXISTS `register_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_test` (
  `userId` int NOT NULL,
  `userName` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `Lv` int DEFAULT NULL,
  `crystal` int DEFAULT NULL,
  PRIMARY KEY (`userId`,`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_test`
--

LOCK TABLES `register_test` WRITE;
/*!40000 ALTER TABLE `register_test` DISABLE KEYS */;
INSERT INTO `register_test` VALUES (10001,'cheetahburg','abc123','cheetah@mail.com',1,0),(10002,'newborn','abc123','newborn@mail.com',1,0),(10003,'','','',1,0),(10003,'CrazyCat','asd@1.com','asd@1.com',1,0),(10003,'ymh','abc123','asdasd@asd.com',1,0),(10004,'test6','test6@test.com','test6@test.com',1,0),(10005,'test7','abc123','test7@test.com',1,0);
/*!40000 ALTER TABLE `register_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'张三'),(2,'李四'),(3,'王五'),(4,'周六'),(5,'bj'),(6,'{\r\n    \"name\":\"asd\"\r\n}'),(7,''),(8,''),(9,''),(10,''),(11,'cheetah II'),(12,'panda'),(13,'panda'),(14,'panda'),(15,'panda123'),(16,'panda123'),(17,'panda'),(18,'cheetahburg'),(19,'cheetahburg'),(20,'cheetahburg'),(21,'cheetahburg'),(22,'cheetahburg'),(23,'cheetahburg'),(24,'wisirdi');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_equip`
--

DROP TABLE IF EXISTS `user_equip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_equip` (
  `userId` int NOT NULL,
  `EquipId` int NOT NULL,
  PRIMARY KEY (`EquipId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_equip`
--

LOCK TABLES `user_equip` WRITE;
/*!40000 ALTER TABLE `user_equip` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_equip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-02 21:22:45
