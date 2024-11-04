-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: adaptivelearning-db.c4wkmnksenvb.us-east-1.rds.amazonaws.com    Database: adaptive_learning
-- ------------------------------------------------------
-- Server version	8.0.39

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `admin_exercise`
--

DROP TABLE IF EXISTS `admin_exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_exercise` (
  `ID_ADMIN_EXERCISE` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID_LEVEL` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TITLE` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `QUESTION` text COLLATE utf8mb4_general_ci NOT NULL,
  `SCORE_WEIGHT` int NOT NULL DEFAULT '1',
  `QUESTION_TYPE` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `AUDIO` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `VIDEO` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IMAGE` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IS_DELETED` tinyint(1) DEFAULT '0',
  `TIME_ADMIN_EXC` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_ADMIN_EXERCISE`),
  KEY `FK_MEMBUTUHKAN` (`ID_LEVEL`),
  CONSTRAINT `FK_MEMBUTUHKAN` FOREIGN KEY (`ID_LEVEL`) REFERENCES `level` (`ID_LEVEL`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_exercise`
--

LOCK TABLES `admin_exercise` WRITE;
/*!40000 ALTER TABLE `admin_exercise` DISABLE KEYS */;
INSERT INTO `admin_exercise` VALUES ('043010bb-858b-4f35-a034-4731d4364292','42e0a7c2-9698-4f72-b868-a698fa9492c9','Question 1','Talking About Self\r\n\r\nHi, everyone. I am Nabil. I’m from Yogyakarta, but I currently stay in my grandma’s house, which is in Solo Baru.\r\n I was born in Bantul, Yogyakarta, on 21st December, 2015. Now I am a student in class 9A. This is my first time to have such a meeting with new friends.\r\n I join this basketball club because I love basketball and I play basketball since I was in elementary school. I am quite shy but I hope we can get along well. That’s all about myself, thank you for paying attention.\r\n\r\n\r\n\r\nWhat is Nabil’s hobby?\r\n',15,'MCQ',NULL,NULL,NULL,0,'2024-11-04 14:03:28'),('08a30eea-6a0b-4fa4-abae-57a85d13faf9','56f15554-b89c-457b-9d5e-7cddb5b054e1','Question 1','1.	What is one food people might eat in different cultures?',1,'MCQ','AUDIO-08a30eea-6a0b-4fa4-abae-57a85d13faf9-ffa832f5bb6fe874671e178f1d469add.mp3',NULL,NULL,0,'2024-11-04 14:07:37'),('08e0ff88-da4b-4e95-a786-c1eea120f1ed','42e0a7c2-9698-4f72-b868-a698fa9492c9','Question 4','Hi, everyone. I am Nabil. I’m from Yogyakarta, but I currently stay in my grandma’s house, which is in Solo Baru.\r\n I was born in Bantul, Yogyakarta, on 21st December, 2015. Now I am a student in class 9A. This is my first time to have such a meeting with new friends.\r\n I join this basketball club because I love basketball and I play basketball since I was in elementary school. I am quite shy but I hope we can get along well. That’s all about myself, thank you for paying attention.\r\n\r\nHow does Nabil feel about meeting new friends?',15,'MCQ',NULL,NULL,NULL,0,'2024-11-04 14:12:20'),('0a9c1898-d665-46f7-837b-d532e9838a11','893a77e6-bfe7-4cc1-96c2-3d5ff738d90d','Question 1','1.	What is one food people might eat in different cultures?',1,'MCQ','AUDIO-0a9c1898-d665-46f7-837b-d532e9838a11-2ec059a7207030b46fbf7c41f3a0b65c.mp3',NULL,NULL,1,'2024-11-04 14:26:03'),('215d5e79-c720-4073-a34c-e0ff06355690','56f15554-b89c-457b-9d5e-7cddb5b054e1','Question 7','7.	What do people in different places eat?',1,'MCQ','AUDIO-215d5e79-c720-4073-a34c-e0ff06355690-b23f9141384bec7472b9b322962f3200.mp3',NULL,NULL,0,'2024-11-04 14:19:15'),('2760eaaa-d591-426c-a657-fc2725eb9b60','f7c351b9-09f1-4e02-b2de-9c8fd531ce34','Question 2','He created a workshop where he worked on his ideas.',1,'TFQ',NULL,NULL,NULL,0,'2024-11-04 14:18:51'),('2b32d71d-2ef4-4591-8bbb-0cc3db9ba80f','42e0a7c2-9698-4f72-b868-a698fa9492c9','Question 2','Hi, everyone. I am Nabil. I’m from Yogyakarta, but I currently stay in my grandma’s house, which is in Solo Baru.\r\n I was born in Bantul, Yogyakarta, on 21st December, 2015. Now I am a student in class 9A. This is my first time to have such a meeting with new friends.\r\n I join this basketball club because I love basketball and I play basketball since I was in elementary school. I am quite shy but I hope we can get along well. That’s all about myself, thank you for paying attention.\r\n\r\nWhat is Nabil\'s current living situation?',15,'MCQ',NULL,NULL,NULL,0,'2024-11-04 14:05:35'),('2efcd1bb-c17e-43ce-8b9d-c6294f6254a7','42e0a7c2-9698-4f72-b868-a698fa9492c9','Question 3','Hi, everyone. I am Nabil. I’m from Yogyakarta, but I currently stay in my grandma’s house, which is in Solo Baru.\r\n I was born in Bantul, Yogyakarta, on 21st December, 2015. Now I am a student in class 9A. This is my first time to have such a meeting with new friends.\r\n I join this basketball club because I love basketball and I play basketball since I was in elementary school. I am quite shy but I hope we can get along well. That’s all about myself, thank you for paying attention.\r\n\r\nHow long has Nabil been playing basketball?',15,'MCQ',NULL,NULL,NULL,0,'2024-11-04 14:08:15'),('310ebe84-e899-4929-9bcf-ec08380318b6','0eb14a43-38e7-4470-be9c-7cc41d7f9b7e','Question 1','1.	What is one food people might eat in different cultures?',1,'MCQ','AUDIO-310ebe84-e899-4929-9bcf-ec08380318b6-c90b9506548dd87d346d1adcc664eb81.mp3',NULL,NULL,0,'2024-11-04 14:26:50'),('31f5d2e5-744b-4162-8f4f-e9eaea6b03df','09bd0ce3-697a-4efc-bbf4-b80c3eb1f80c','Question 2','Which is the plural of \"foot\"?',5,'MCQ',NULL,NULL,NULL,0,'2024-11-04 14:01:34'),('35ed40ef-e4b7-49fd-bab0-b62710296f96','09bd0ce3-697a-4efc-bbf4-b80c3eb1f80c','Question 5','Identify the correct plural for \"child\":\r\n',5,'MCQ',NULL,NULL,NULL,0,'2024-11-04 14:07:15'),('425d219a-f4c2-40ab-b317-e0174a68b290','56f15554-b89c-457b-9d5e-7cddb5b054e1','Question 5','5.	Why might people enjoy food from other cultures?',1,'MCQ','AUDIO-425d219a-f4c2-40ab-b317-e0174a68b290-9a15c197fbf122adbce50eee02906dc2.mp3',NULL,NULL,0,'2024-11-04 14:16:33'),('4d338095-df06-4c01-885c-ecbd5bcc3cb8','b07fff5b-590d-45d5-97af-f3712ca6a324','Question 1','Hello. My name is  Xaviera Putri. People usually call me Viera. I am 16 years old and I was born in Bandung on January 17, 2008. I have lived in Jakarta since I was a child, and now I am studying at Korea Science Academy.\r\nI love reading novels, and my favorite novel is Harry Potter. I also enjoy writing fiction, and sometimes I submit my work to various writing competitions. Because I have hobbies like that, my dream is to become a writer. I hope that one day I can publish my own novel and entertain many readers.\r\n\r\nWhen is Viera’s birthday?',15,'MCQ',NULL,NULL,NULL,0,'2024-11-04 14:33:36'),('52f2a4e6-2123-4b86-803b-60cb6548eb97','56f15554-b89c-457b-9d5e-7cddb5b054e1','Question 3','3.	What can you learn by eating different foods?',1,'MCQ','AUDIO-52f2a4e6-2123-4b86-803b-60cb6548eb97-aedae8237cb405eba0bab42b5095fa19.mp3',NULL,NULL,0,'2024-11-04 14:14:05'),('5f311a6b-41f1-4c8a-9dd0-46b0aed77668','f7c351b9-09f1-4e02-b2de-9c8fd531ce34','Question 3','Edison never failed while trying to make the light bulb.',1,'TFQ',NULL,NULL,NULL,0,'2024-11-04 14:19:25'),('858c7d7f-6f97-4b9b-abb7-48da59e7ed78','09bd0ce3-697a-4efc-bbf4-b80c3eb1f80c','Question 6','What is the plural form of \"tooth\"?',5,'MCQ',NULL,NULL,NULL,0,'2024-11-04 14:08:34'),('8da149f5-4cbc-4783-a4bf-ba4c71841826','f7c351b9-09f1-4e02-b2de-9c8fd531ce34','Question 4','His inventions helped people see in the dark. ',1,'TFQ',NULL,NULL,NULL,0,'2024-11-04 14:19:50'),('8ff74766-76e5-480a-a140-b00362b50d73','0eb14a43-38e7-4470-be9c-7cc41d7f9b7e','Question 4','4.	Which of these is NOT a food?',1,'MCQ','AUDIO-8ff74766-76e5-480a-a140-b00362b50d73-8562e89985bbda15d70455f2df25ae91.mp3',NULL,NULL,0,'2024-11-04 14:29:13'),('99d20578-5e6e-499a-9a5a-530b844fec69','f7c351b9-09f1-4e02-b2de-9c8fd531ce34','Question 5','Edison liked to read and learn new things. ',1,'TFQ',NULL,NULL,NULL,0,'2024-11-04 14:20:13'),('a98c1863-0cc8-4b2e-80a8-f61c2287074b','09bd0ce3-697a-4efc-bbf4-b80c3eb1f80c','Question 4','The plural of \"baby\" is:',5,'MCQ',NULL,NULL,NULL,0,'2024-11-04 14:05:43'),('aeb6e61a-2092-4110-ba19-a9883f4b7572','9ab2ce72-9b85-4405-a352-3a4d5b479d2d','Question 1','What does Mr. Harris want to discuss with Sarah?',100,'MCQ','AUDIO-aeb6e61a-2092-4110-ba19-a9883f4b7572-0a472311833c658bf5540da31385d4b0.mp3',NULL,NULL,0,'2024-11-04 14:18:31'),('b38682b6-d676-4267-a039-63f9b9f3eae9','0eb14a43-38e7-4470-be9c-7cc41d7f9b7e','Question 3','3.	What can you learn by eating different foods?',1,'MCQ','AUDIO-b38682b6-d676-4267-a039-63f9b9f3eae9-c56dab7f53ab52514bd0cfd745023a88.mp3',NULL,NULL,0,'2024-11-04 14:28:25'),('b3bdb8fe-3fb6-40bb-b25c-256642244415','56f15554-b89c-457b-9d5e-7cddb5b054e1','Question 4','4.	Which of these is NOT a food?',1,'MCQ','AUDIO-b3bdb8fe-3fb6-40bb-b25c-256642244415-0f86f3ed68cfd43b6eab8755041690af.mp3',NULL,NULL,0,'2024-11-04 14:14:59'),('b74789d2-e47d-42b6-a356-dc13da6b4108','56f15554-b89c-457b-9d5e-7cddb5b054e1','Question 6','6.	What happens when you try new foods?',1,'MCQ','AUDIO-b74789d2-e47d-42b6-a356-dc13da6b4108-d6f7a26e642abfe6ec8ea3fc653f7d89.mp3',NULL,NULL,0,'2024-11-04 14:17:24'),('b824f8ef-7502-4802-9e60-c1ff58e6660c','b07fff5b-590d-45d5-97af-f3712ca6a324','Question 2','Hello. My name is  Xaviera Putri. People usually call me Viera. I am 16 years old and I was born in Bandung on January 17, 2008. I have lived in Jakarta since I was a child, and now I am studying at Korea Science Academy.\r\nI love reading novels, and my favorite novel is Harry Potter. I also enjoy writing fiction, and sometimes I submit my work to various writing competitions. Because I have hobbies like that, my dream is to become a writer. I hope that one day I can publish my own novel and entertain many readers.\r\nIn which city was Viera born?',15,'MCQ',NULL,NULL,NULL,0,'2024-11-04 14:34:53'),('b9a041da-b17d-4867-bfb2-15d5efd4581d','0eb14a43-38e7-4470-be9c-7cc41d7f9b7e','Question 2',' 2.	Why is it fun to try new foods?',1,'MCQ','AUDIO-b9a041da-b17d-4867-bfb2-15d5efd4581d-1747ecf2789f3dfbb0df5990b2e7fdfe.mp3',NULL,NULL,0,'2024-11-04 14:27:34'),('bebf73b0-3577-442b-bd62-316bf8bf697e','09bd0ce3-697a-4efc-bbf4-b80c3eb1f80c','Question 7','Choose the plural form of \"lady\":',5,'MCQ',NULL,NULL,NULL,0,'2024-11-04 14:10:14'),('c42dcc67-481d-480a-9a14-8a53bd4c9f84','f7c351b9-09f1-4e02-b2de-9c8fd531ce34','Question 1','Edison was known for being lazy',1,'TFQ',NULL,NULL,NULL,0,'2024-11-04 14:17:25'),('c759a6e1-a2ba-446b-bd8d-d69d25d8ec0b','0eb14a43-38e7-4470-be9c-7cc41d7f9b7e','Question 5','5.	Why might people enjoy food from other cultures?',1,'MCQ','AUDIO-c759a6e1-a2ba-446b-bd8d-d69d25d8ec0b-792342d236e8160c9eba48ed929def51.mp3',NULL,NULL,0,'2024-11-04 14:29:53'),('e03adce8-866e-490b-aa47-0e7da631b3d8','09bd0ce3-697a-4efc-bbf4-b80c3eb1f80c','Question 3','Select the correct plural of \"bus\":',5,'MCQ',NULL,NULL,NULL,0,'2024-11-04 14:03:19'),('ecdfa871-c525-415b-9e80-4c1648aaa555','56f15554-b89c-457b-9d5e-7cddb5b054e1','Question 2','2.	Why is it fun to try new foods?',1,'MCQ','AUDIO-ecdfa871-c525-415b-9e80-4c1648aaa555-2328210a289f8f2c4b3f1a76443c4ae3.mp3',NULL,NULL,0,'2024-11-04 14:08:39'),('fb5de0e7-64b1-4be0-87e3-5afeeb8c56e5','09bd0ce3-697a-4efc-bbf4-b80c3eb1f80c','Question 1','Choose the correct plural form of \"leaf\":\r\n',5,'MCQ',NULL,NULL,NULL,0,'2024-11-04 13:58:34'),('fd9ea993-8139-4f09-a335-acdcca1042f9','9ab2ce72-9b85-4405-a352-3a4d5b479d2d','Question 2','What does Sarah’s expression ‘I’m eager to learn more’ probably mean?\r\n\r\n\r\n\r\n\r\n\r\n',100,'MCQ','AUDIO-fd9ea993-8139-4f09-a335-acdcca1042f9-0a472311833c658bf5540da31385d4b0.mp3',NULL,NULL,0,'2024-11-04 14:20:26');
/*!40000 ALTER TABLE `admin_exercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `ID_CLASS` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `NAME_CLASS` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `TOTAL_STUDENT` int DEFAULT NULL,
  `TIME_CLASS` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_CLASS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `level` (
  `ID_LEVEL` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID_TOPIC` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID_SECTION` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `NAME_LEVEL` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `CONTENT` longtext COLLATE utf8mb4_general_ci,
  `AUDIO` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IMAGE` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `VIDEO` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IS_PRETEST` tinyint(1) DEFAULT '0',
  `ROUTE_1` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `ROUTE_2` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `ROUTE_3` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `ROUTE_4` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `ROUTE_5` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `ROUTE_6` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `IS_DELETED` tinyint(1) DEFAULT '0',
  `TIME_LEVEL` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_LEVEL`),
  KEY `FK_BERHUBUNGAN` (`ID_TOPIC`),
  KEY `FK_MEMPUNYAI` (`ID_SECTION`),
  CONSTRAINT `FK_BERHUBUNGAN` FOREIGN KEY (`ID_TOPIC`) REFERENCES `topic` (`ID_TOPIC`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MEMPUNYAI` FOREIGN KEY (`ID_SECTION`) REFERENCES `section` (`ID_SECTION`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level`
--

LOCK TABLES `level` WRITE;
/*!40000 ALTER TABLE `level` DISABLE KEYS */;
INSERT INTO `level` VALUES ('044dd951-c81b-490d-a49b-225a00ef1bd0','a16c9974-397b-4811-bc0c-1a0f35476f38','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 3','material',NULL,NULL,NULL,0,'0eb14a43-38e7-4470-be9c-7cc41d7f9b7e','56f15554-b89c-457b-9d5e-7cddb5b054e1','4009ba1f-bba3-4fbf-b86a-fa94ce67e3ce','fb4e0fa7-e3ef-4b15-be62-31f0c7a1120f','7c902122-d6e2-4016-ab9b-186a7a4de03b','5b9b2750-dd76-4882-8c9a-92c3b8b8f637',0,'2024-11-04 13:51:51'),('04d3a793-1da4-467d-8c52-763a3039f450','746ad91a-03d6-4f3a-94ac-e751b58e2642','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 5','material',NULL,NULL,NULL,0,'6f5449a0-70e9-4502-a9d7-478d56fbebf2','184f89b9-fcaf-446d-9e3f-e085318ac802','b9bc4120-4797-4b8b-8256-16ef68276e44','c1a7ad47-5a3a-4d4e-a8a7-966e9cf60d71','2622d27d-5b07-43d1-922a-2391c188ee32','d4932d08-baf8-4183-816b-efe2b32b49bf',0,'2024-11-04 13:45:10'),('09bd0ce3-697a-4efc-bbf4-b80c3eb1f80c','41970cb7-0c83-4e45-812a-f340859d506e','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 4','material',NULL,NULL,NULL,0,'5afc44cd-d697-4d11-87d4-1fa9334e7f97','d49e5dcb-c578-4c47-858b-aafd77743437','d7de4c11-9ecc-4a31-90a0-ca1d74559a0e','a3ff4d37-f894-49fb-a9cf-eb55687ac345','5d379e80-7ee6-4f46-9de6-3d12a880c986','2b1f2deb-6f75-4cfe-99fd-6ea845f1e0d2',0,'2024-11-04 13:52:47'),('0eb14a43-38e7-4470-be9c-7cc41d7f9b7e','a16c9974-397b-4811-bc0c-1a0f35476f38','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Pretest','<p>Listen carefully to the following information regarding cultures. Question number 1 to 10 refers to the following information.</p><p><audio controls=\"\" src=\"http://18.213.12.22:3001/uploads/level/audio/AUDIO-0eb14a43-38e7-4470-be9c-7cc41d7f9b7e-bf0161a61755c4edc603b0086bf23529.mp3\"></audio></p>',NULL,NULL,NULL,1,'56f15554-b89c-457b-9d5e-7cddb5b054e1','4009ba1f-bba3-4fbf-b86a-fa94ce67e3ce','044dd951-c81b-490d-a49b-225a00ef1bd0','fb4e0fa7-e3ef-4b15-be62-31f0c7a1120f','7c902122-d6e2-4016-ab9b-186a7a4de03b','5b9b2750-dd76-4882-8c9a-92c3b8b8f637',0,'2024-11-04 13:51:51'),('10fe29f6-cd02-4ecc-910d-f3a75ebcd6a8','b121547a-0603-4c64-ae8b-802aacf0aed3','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 2','material',NULL,NULL,NULL,0,'617a7531-bac7-4d95-b8cb-41434e0c7e52','f7c351b9-09f1-4e02-b2de-9c8fd531ce34','6b1e8584-5f10-4cca-90ac-7996b5841970','bf4c2aa6-a174-48b8-a964-3c76904041c3','b8679527-054b-493b-a932-c9dc417d4ce1','c88b0063-dc8f-4b32-9308-3afcd7164c38',0,'2024-11-04 14:07:07'),('11fb64b4-9904-42d3-b83e-0ced63937f47','37c5b94f-f106-45ba-badc-be4af62aa0de','3f6feebe-ed90-41e9-8ff2-606100cd672c','Pretest','<p>Adjectives - Pretest</p>',NULL,NULL,NULL,1,'3b835b88-f728-4bdd-a64c-a8b3216ae147','19e966c5-52ca-45d9-a039-138594184e90','2932abf6-d182-4e65-9ba1-15eb356ff5fb','33f576e2-83dd-46be-9b45-cd91abe9d2dd','a27fd716-8c1a-4979-9a36-2d733a303eb8','7ee4721d-4a83-4173-86c0-a51bb2377ea1',0,'2024-11-04 14:04:50'),('184f89b9-fcaf-446d-9e3f-e085318ac802','746ad91a-03d6-4f3a-94ac-e751b58e2642','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 1','material',NULL,NULL,NULL,0,'6f5449a0-70e9-4502-a9d7-478d56fbebf2','b9bc4120-4797-4b8b-8256-16ef68276e44','c1a7ad47-5a3a-4d4e-a8a7-966e9cf60d71','2622d27d-5b07-43d1-922a-2391c188ee32','04d3a793-1da4-467d-8c52-763a3039f450','d4932d08-baf8-4183-816b-efe2b32b49bf',0,'2024-11-04 13:45:10'),('18c547b8-4f70-4034-82f0-f6ef2dea7719','b402dbf8-32c8-4315-b40e-a70888fdb107','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 1','material',NULL,NULL,NULL,0,'4bd479a0-c629-4f12-8908-023b6ee2d29a','4324ee52-2e30-4513-83ce-ac68b9a21ecc','c49793d2-f73b-49a7-9ba1-49c68b9d2b79','dbc84518-b9d6-4c9c-b406-a466f9ffcd1e','2687ba9c-ac94-424f-a35e-0283946e5506','41426465-c0af-4f11-bb66-c0e307279110',0,'2024-11-04 13:49:56'),('199fd7ff-54e3-4338-a63d-5d87d96781be','b22ba6d7-d8f0-4ce0-95c3-466478111f4e','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 4','material',NULL,NULL,NULL,0,'442e06c2-9ed7-4c77-a49e-087bbd13e810','d1f6cd37-fcbf-4359-b472-e5f088311d09','e0ef7134-1f09-44da-ba2d-48b385fc54fa','ffd95f3d-e727-4be6-b439-48598209ff14','d0137123-ec41-4e5d-9591-1f46113f1e31','c4c75be3-c388-4b28-9d71-4ab265b0be19',0,'2024-11-04 13:46:54'),('19e966c5-52ca-45d9-a039-138594184e90','37c5b94f-f106-45ba-badc-be4af62aa0de','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 2','material',NULL,NULL,NULL,0,'11fb64b4-9904-42d3-b83e-0ced63937f47','3b835b88-f728-4bdd-a64c-a8b3216ae147','2932abf6-d182-4e65-9ba1-15eb356ff5fb','33f576e2-83dd-46be-9b45-cd91abe9d2dd','a27fd716-8c1a-4979-9a36-2d733a303eb8','7ee4721d-4a83-4173-86c0-a51bb2377ea1',0,'2024-11-04 14:04:50'),('1b3e6ab8-a008-4d9f-a9ff-68e27156bcea','78df9cf6-7a60-45b3-a726-a98233022121','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 2',NULL,NULL,NULL,NULL,0,'893a77e6-bfe7-4cc1-96c2-3d5ff738d90d','a6279e83-15e2-4f5b-8fe6-4147346f4f93','27afae1a-803b-4ee3-a66e-bdc6805fe2fd','9a73f6c4-5a21-4e51-9391-4e24bf7f351b','8e32fdc1-dc1c-4ccf-bfc9-91c4c114d437','d1432109-e2a3-4730-8bc8-53c76ba43f9a',0,'2024-11-04 14:17:03'),('2622d27d-5b07-43d1-922a-2391c188ee32','746ad91a-03d6-4f3a-94ac-e751b58e2642','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 4','material',NULL,NULL,NULL,0,'6f5449a0-70e9-4502-a9d7-478d56fbebf2','184f89b9-fcaf-446d-9e3f-e085318ac802','b9bc4120-4797-4b8b-8256-16ef68276e44','c1a7ad47-5a3a-4d4e-a8a7-966e9cf60d71','04d3a793-1da4-467d-8c52-763a3039f450','d4932d08-baf8-4183-816b-efe2b32b49bf',0,'2024-11-04 13:45:10'),('2687ba9c-ac94-424f-a35e-0283946e5506','b402dbf8-32c8-4315-b40e-a70888fdb107','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 5','material',NULL,NULL,NULL,0,'4bd479a0-c629-4f12-8908-023b6ee2d29a','18c547b8-4f70-4034-82f0-f6ef2dea7719','4324ee52-2e30-4513-83ce-ac68b9a21ecc','c49793d2-f73b-49a7-9ba1-49c68b9d2b79','dbc84518-b9d6-4c9c-b406-a466f9ffcd1e','41426465-c0af-4f11-bb66-c0e307279110',0,'2024-11-04 13:49:56'),('2757e906-e864-4704-af6a-a92b588eef3d','5a55f428-4660-4a58-b092-b5cec2183d9a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 2','material',NULL,NULL,NULL,0,'fdc83ff7-c50f-447c-822d-1dedcc7b46f5','7696ba67-3d0a-481a-8f42-f852902d4adc','82216c60-51d6-424a-bf81-bc97b1e9ee30','63c67806-3492-4bb1-8ace-254db076af70','af44a4f8-7d01-4c47-bfe8-c4f7d77b9eee','f8adafd3-e1aa-4ec9-83ab-f760ec0a658e',0,'2024-11-04 13:42:46'),('27afae1a-803b-4ee3-a66e-bdc6805fe2fd','78df9cf6-7a60-45b3-a726-a98233022121','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 3',NULL,NULL,NULL,NULL,0,'893a77e6-bfe7-4cc1-96c2-3d5ff738d90d','a6279e83-15e2-4f5b-8fe6-4147346f4f93','1b3e6ab8-a008-4d9f-a9ff-68e27156bcea','9a73f6c4-5a21-4e51-9391-4e24bf7f351b','8e32fdc1-dc1c-4ccf-bfc9-91c4c114d437','d1432109-e2a3-4730-8bc8-53c76ba43f9a',0,'2024-11-04 14:17:03'),('2932abf6-d182-4e65-9ba1-15eb356ff5fb','37c5b94f-f106-45ba-badc-be4af62aa0de','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 3','material',NULL,NULL,NULL,0,'11fb64b4-9904-42d3-b83e-0ced63937f47','3b835b88-f728-4bdd-a64c-a8b3216ae147','19e966c5-52ca-45d9-a039-138594184e90','33f576e2-83dd-46be-9b45-cd91abe9d2dd','a27fd716-8c1a-4979-9a36-2d733a303eb8','7ee4721d-4a83-4173-86c0-a51bb2377ea1',0,'2024-11-04 14:04:50'),('2b1f2deb-6f75-4cfe-99fd-6ea845f1e0d2','41970cb7-0c83-4e45-812a-f340859d506e','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 6','material',NULL,NULL,NULL,0,'5afc44cd-d697-4d11-87d4-1fa9334e7f97','d49e5dcb-c578-4c47-858b-aafd77743437','d7de4c11-9ecc-4a31-90a0-ca1d74559a0e','a3ff4d37-f894-49fb-a9cf-eb55687ac345','09bd0ce3-697a-4efc-bbf4-b80c3eb1f80c','5d379e80-7ee6-4f46-9de6-3d12a880c986',0,'2024-11-04 13:52:47'),('2b662452-991d-41d7-989c-993cb37d0d3f','79e76ad6-94fb-4b0e-82bc-9094f4bc03b4','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 3','material',NULL,NULL,NULL,0,'e00294f9-004e-4d8c-b4e3-f89e563ec7e2','3702c9da-1b8a-4084-bb70-e7e539dc453d','f428bbc8-f11c-4493-bf0f-12b25e3b0042','5311525c-20a6-47d5-96e3-ab21d8c57c59','67737b19-b135-479a-b5b2-0ad70096592f','e83f652d-d269-43a1-8cd3-36396db96ae6',0,'2024-11-04 14:08:01'),('2cd70196-a9f9-47c5-82f6-6adf0e1ad834','e7e035e0-fd38-492f-8be4-5318b7c0a78a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 3','material',NULL,NULL,NULL,0,'c483eb13-3446-4d42-833f-cbc2fe5d7210','41ec844d-5db3-470f-8b36-96d6548bcef6','3aa2ce8a-8ef9-42eb-a787-a0aba47b2c60','5ca8148a-a318-4b65-8f98-3cfa161542e6','9ac80b51-67b5-43d3-b0d4-f7569cdb9192','ff825264-d21d-4612-821f-2f19f8044bc2',0,'2024-11-04 13:56:27'),('318b5f94-4a81-4c44-8372-cef8e0561833','cb457d60-d09f-48bf-87c2-64ab3ff14218','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 5','material',NULL,NULL,NULL,0,'ad662084-347c-416f-89de-05a5dd43da36','9ab2ce72-9b85-4405-a352-3a4d5b479d2d','acad3477-1006-4ed1-b432-985542a7c890','45b0268f-d278-4851-90d8-7f99001e6687','a1c3b791-5ae0-4b91-b6e9-4fb03f372245','8b69c1a9-0a15-4d6f-98e3-54bd61179b23',0,'2024-11-04 13:44:13'),('33f576e2-83dd-46be-9b45-cd91abe9d2dd','37c5b94f-f106-45ba-badc-be4af62aa0de','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 4','material',NULL,NULL,NULL,0,'11fb64b4-9904-42d3-b83e-0ced63937f47','3b835b88-f728-4bdd-a64c-a8b3216ae147','19e966c5-52ca-45d9-a039-138594184e90','2932abf6-d182-4e65-9ba1-15eb356ff5fb','a27fd716-8c1a-4979-9a36-2d733a303eb8','7ee4721d-4a83-4173-86c0-a51bb2377ea1',0,'2024-11-04 14:04:50'),('3702c9da-1b8a-4084-bb70-e7e539dc453d','79e76ad6-94fb-4b0e-82bc-9094f4bc03b4','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 1','material',NULL,NULL,NULL,0,'e00294f9-004e-4d8c-b4e3-f89e563ec7e2','f428bbc8-f11c-4493-bf0f-12b25e3b0042','2b662452-991d-41d7-989c-993cb37d0d3f','5311525c-20a6-47d5-96e3-ab21d8c57c59','67737b19-b135-479a-b5b2-0ad70096592f','e83f652d-d269-43a1-8cd3-36396db96ae6',0,'2024-11-04 14:08:01'),('38e17f75-142e-48a7-9d23-052fa6892fe6','cec0cb96-a3a7-4998-9c3c-57139fd635eb','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 1','material',NULL,NULL,NULL,0,'e786f602-8aee-4ef0-ac40-e1de5302f64e','bca743a7-446f-44f9-916f-9180ec988e90','f29c9b92-f01b-4ed4-a606-d14a26349065','e0ab7d2f-e33f-4041-8f5f-bbdab3874188','c0fa2898-ae4c-478e-bf8a-e0274e7f4f54','976f596f-834e-40e4-bb98-21b902f8a750',0,'2024-11-04 13:49:00'),('3aa2ce8a-8ef9-42eb-a787-a0aba47b2c60','e7e035e0-fd38-492f-8be4-5318b7c0a78a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 2','material',NULL,NULL,NULL,0,'c483eb13-3446-4d42-833f-cbc2fe5d7210','41ec844d-5db3-470f-8b36-96d6548bcef6','2cd70196-a9f9-47c5-82f6-6adf0e1ad834','5ca8148a-a318-4b65-8f98-3cfa161542e6','9ac80b51-67b5-43d3-b0d4-f7569cdb9192','ff825264-d21d-4612-821f-2f19f8044bc2',0,'2024-11-04 13:56:27'),('3b835b88-f728-4bdd-a64c-a8b3216ae147','37c5b94f-f106-45ba-badc-be4af62aa0de','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 1','material',NULL,NULL,NULL,0,'11fb64b4-9904-42d3-b83e-0ced63937f47','19e966c5-52ca-45d9-a039-138594184e90','2932abf6-d182-4e65-9ba1-15eb356ff5fb','33f576e2-83dd-46be-9b45-cd91abe9d2dd','a27fd716-8c1a-4979-9a36-2d733a303eb8','7ee4721d-4a83-4173-86c0-a51bb2377ea1',0,'2024-11-04 14:04:50'),('4009ba1f-bba3-4fbf-b86a-fa94ce67e3ce','a16c9974-397b-4811-bc0c-1a0f35476f38','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 2','material',NULL,NULL,NULL,0,'0eb14a43-38e7-4470-be9c-7cc41d7f9b7e','56f15554-b89c-457b-9d5e-7cddb5b054e1','044dd951-c81b-490d-a49b-225a00ef1bd0','fb4e0fa7-e3ef-4b15-be62-31f0c7a1120f','7c902122-d6e2-4016-ab9b-186a7a4de03b','5b9b2750-dd76-4882-8c9a-92c3b8b8f637',0,'2024-11-04 13:51:51'),('41426465-c0af-4f11-bb66-c0e307279110','b402dbf8-32c8-4315-b40e-a70888fdb107','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 6','material',NULL,NULL,NULL,0,'4bd479a0-c629-4f12-8908-023b6ee2d29a','18c547b8-4f70-4034-82f0-f6ef2dea7719','4324ee52-2e30-4513-83ce-ac68b9a21ecc','c49793d2-f73b-49a7-9ba1-49c68b9d2b79','dbc84518-b9d6-4c9c-b406-a466f9ffcd1e','2687ba9c-ac94-424f-a35e-0283946e5506',0,'2024-11-04 13:49:56'),('41ec844d-5db3-470f-8b36-96d6548bcef6','e7e035e0-fd38-492f-8be4-5318b7c0a78a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 1','material',NULL,NULL,NULL,0,'c483eb13-3446-4d42-833f-cbc2fe5d7210','3aa2ce8a-8ef9-42eb-a787-a0aba47b2c60','2cd70196-a9f9-47c5-82f6-6adf0e1ad834','5ca8148a-a318-4b65-8f98-3cfa161542e6','9ac80b51-67b5-43d3-b0d4-f7569cdb9192','ff825264-d21d-4612-821f-2f19f8044bc2',0,'2024-11-04 13:56:27'),('42e0a7c2-9698-4f72-b868-a698fa9492c9','47303ebe-5407-44a8-8a8f-c43aa73477f6','b63a66f7-20aa-4221-b6cf-2b7725fc896c','Level 1','<p><span style=\"background-color:transparent;color:#000000;font-family:Arial,sans-serif;font-size:11pt;\">Talking about self is a personal introduction. A&nbsp;<strong>personal introduction</strong> is a short text where someone shares basic information about themselves, including their background, interests, and aspirations. In this context, Xaviera shares details about her life and what she enjoys doing. The&nbsp;<strong>topic</strong> is&nbsp;<i>self-introduction</i>, focusing on Xaviera’s name, age, place of birth, where she has lived, and her current studies. She also mentions her&nbsp;<strong>hobbies</strong>, like reading novels and writing fiction, and shares her dream of becoming a published writer.</span></p><p><span style=\"background-color:transparent;color:#000000;font-family:Arial,sans-serif;font-size:11pt;\">The key features of this self-talk include:</span></p><ol><li><span style=\"background-color:transparent;color:#000000;font-family:Arial,sans-serif;font-size:11pt;\">Providing&nbsp;<strong>personal information</strong>, such as Xaviera’s name, age, and birthplace.</span></li><li><span style=\"background-color:transparent;color:#000000;font-family:Arial,sans-serif;font-size:11pt;\">Discussing&nbsp;<strong>hobbies and interests</strong>, like her love for reading \"Harry Potter\" and writing stories.</span></li><li><span style=\"background-color:transparent;color:#000000;font-family:Arial,sans-serif;font-size:11pt;\">Expressing&nbsp;<strong>future goals and ambitions</strong>, which in Xaviera’s case is her desire to become a writer and publish her own novel.</span></li></ol><p><span style=\"background-color:transparent;color:#000000;font-family:Arial,sans-serif;font-size:11pt;\">Talking about self uses several important&nbsp;<strong>language elements</strong>. It includes&nbsp;<strong>introductory elements</strong>, like “Hello, my name is Xaviera Putri,” to start the introduction politely and engage the reader. The&nbsp;<strong>present simple tense</strong> is used to describe current facts and routines, as seen in “I love reading novels” and “People usually call me Viera.” The&nbsp;<strong>past simple tense</strong> is used to describe past events, like “I was born in Bandung.” There is also the use of the&nbsp;<strong>present perfect tense</strong>, such as “I have lived in Jakarta since I was a child,” to describe an action that started in the past and continues in the present. This self-talk features&nbsp;<strong>personal pronouns</strong> like \"I\" and \"my,\" and uses expressions of hope, such as “I hope that one day I can publish my own novel,” to share future intentions.</span></p>',NULL,NULL,NULL,0,'b07fff5b-590d-45d5-97af-f3712ca6a324','54ae104f-7d71-48fc-918a-8c3e341bc9ad','cabc6b65-686f-4175-ba6e-6e0d2c003784','a07c29ce-95a7-4fd2-84df-43f6d36af407','94de3108-eb46-4a5e-b039-962392a500e6','6f8e5299-a7b8-44c5-a63e-31280ab0fdfb',0,'2024-11-04 11:21:31'),('4324ee52-2e30-4513-83ce-ac68b9a21ecc','b402dbf8-32c8-4315-b40e-a70888fdb107','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 2','material',NULL,NULL,NULL,0,'4bd479a0-c629-4f12-8908-023b6ee2d29a','18c547b8-4f70-4034-82f0-f6ef2dea7719','c49793d2-f73b-49a7-9ba1-49c68b9d2b79','dbc84518-b9d6-4c9c-b406-a466f9ffcd1e','2687ba9c-ac94-424f-a35e-0283946e5506','41426465-c0af-4f11-bb66-c0e307279110',0,'2024-11-04 13:49:56'),('442e06c2-9ed7-4c77-a49e-087bbd13e810','b22ba6d7-d8f0-4ce0-95c3-466478111f4e','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Pretest','material',NULL,NULL,NULL,1,'d1f6cd37-fcbf-4359-b472-e5f088311d09','e0ef7134-1f09-44da-ba2d-48b385fc54fa','ffd95f3d-e727-4be6-b439-48598209ff14','199fd7ff-54e3-4338-a63d-5d87d96781be','d0137123-ec41-4e5d-9591-1f46113f1e31','c4c75be3-c388-4b28-9d71-4ab265b0be19',0,'2024-11-04 13:46:54'),('45b0268f-d278-4851-90d8-7f99001e6687','cb457d60-d09f-48bf-87c2-64ab3ff14218','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 3','material',NULL,NULL,NULL,0,'ad662084-347c-416f-89de-05a5dd43da36','9ab2ce72-9b85-4405-a352-3a4d5b479d2d','acad3477-1006-4ed1-b432-985542a7c890','a1c3b791-5ae0-4b91-b6e9-4fb03f372245','318b5f94-4a81-4c44-8372-cef8e0561833','8b69c1a9-0a15-4d6f-98e3-54bd61179b23',0,'2024-11-04 13:44:13'),('48be69cb-0ab7-415a-a890-931bfe960a29','c8c06652-9b43-418e-b371-a7ebd196fad0','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 5','material',NULL,NULL,NULL,0,'60373ff6-6c47-4c62-9bfe-6aa2bd007811','a71b942a-5467-4fed-8595-f3878ae66649','b744cc40-acf2-4cef-a209-d4c1d98b1986','e8ff69fc-b7f1-4fdd-90de-af0a0f955f10','69c27ea4-f30c-466a-99d7-3666f2842105','7135e07d-035f-44ed-a2d7-f35909297773',0,'2024-11-04 14:04:49'),('4bd479a0-c629-4f12-8908-023b6ee2d29a','b402dbf8-32c8-4315-b40e-a70888fdb107','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Pretest','material',NULL,NULL,NULL,1,'18c547b8-4f70-4034-82f0-f6ef2dea7719','4324ee52-2e30-4513-83ce-ac68b9a21ecc','c49793d2-f73b-49a7-9ba1-49c68b9d2b79','dbc84518-b9d6-4c9c-b406-a466f9ffcd1e','2687ba9c-ac94-424f-a35e-0283946e5506','41426465-c0af-4f11-bb66-c0e307279110',0,'2024-11-04 13:49:56'),('5311525c-20a6-47d5-96e3-ab21d8c57c59','79e76ad6-94fb-4b0e-82bc-9094f4bc03b4','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 4','material',NULL,NULL,NULL,0,'e00294f9-004e-4d8c-b4e3-f89e563ec7e2','3702c9da-1b8a-4084-bb70-e7e539dc453d','f428bbc8-f11c-4493-bf0f-12b25e3b0042','2b662452-991d-41d7-989c-993cb37d0d3f','67737b19-b135-479a-b5b2-0ad70096592f','e83f652d-d269-43a1-8cd3-36396db96ae6',0,'2024-11-04 14:08:01'),('54ae104f-7d71-48fc-918a-8c3e341bc9ad','47303ebe-5407-44a8-8a8f-c43aa73477f6','b63a66f7-20aa-4221-b6cf-2b7725fc896c','Level 2','material',NULL,NULL,NULL,0,'b07fff5b-590d-45d5-97af-f3712ca6a324','42e0a7c2-9698-4f72-b868-a698fa9492c9','cabc6b65-686f-4175-ba6e-6e0d2c003784','a07c29ce-95a7-4fd2-84df-43f6d36af407','94de3108-eb46-4a5e-b039-962392a500e6','6f8e5299-a7b8-44c5-a63e-31280ab0fdfb',0,'2024-11-04 11:21:31'),('56f15554-b89c-457b-9d5e-7cddb5b054e1','a16c9974-397b-4811-bc0c-1a0f35476f38','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 1','<p>Listen carefully to the speaker. Question number 1 until number 10 refers to the following information.</p><p><audio controls=\"\" src=\"http://18.213.12.22:3001/uploads/level/audio/AUDIO-56f15554-b89c-457b-9d5e-7cddb5b054e1-bf0161a61755c4edc603b0086bf23529.mp3\"></audio></p>',NULL,NULL,NULL,0,'0eb14a43-38e7-4470-be9c-7cc41d7f9b7e','4009ba1f-bba3-4fbf-b86a-fa94ce67e3ce','044dd951-c81b-490d-a49b-225a00ef1bd0','fb4e0fa7-e3ef-4b15-be62-31f0c7a1120f','7c902122-d6e2-4016-ab9b-186a7a4de03b','5b9b2750-dd76-4882-8c9a-92c3b8b8f637',0,'2024-11-04 13:51:51'),('5afc44cd-d697-4d11-87d4-1fa9334e7f97','41970cb7-0c83-4e45-812a-f340859d506e','3f6feebe-ed90-41e9-8ff2-606100cd672c','Pretest','material',NULL,NULL,NULL,1,'d49e5dcb-c578-4c47-858b-aafd77743437','d7de4c11-9ecc-4a31-90a0-ca1d74559a0e','a3ff4d37-f894-49fb-a9cf-eb55687ac345','09bd0ce3-697a-4efc-bbf4-b80c3eb1f80c','5d379e80-7ee6-4f46-9de6-3d12a880c986','2b1f2deb-6f75-4cfe-99fd-6ea845f1e0d2',0,'2024-11-04 13:52:47'),('5b9b2750-dd76-4882-8c9a-92c3b8b8f637','a16c9974-397b-4811-bc0c-1a0f35476f38','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 6','material',NULL,NULL,NULL,0,'0eb14a43-38e7-4470-be9c-7cc41d7f9b7e','56f15554-b89c-457b-9d5e-7cddb5b054e1','4009ba1f-bba3-4fbf-b86a-fa94ce67e3ce','044dd951-c81b-490d-a49b-225a00ef1bd0','fb4e0fa7-e3ef-4b15-be62-31f0c7a1120f','7c902122-d6e2-4016-ab9b-186a7a4de03b',0,'2024-11-04 13:51:51'),('5ca8148a-a318-4b65-8f98-3cfa161542e6','e7e035e0-fd38-492f-8be4-5318b7c0a78a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 4','material',NULL,NULL,NULL,0,'c483eb13-3446-4d42-833f-cbc2fe5d7210','41ec844d-5db3-470f-8b36-96d6548bcef6','3aa2ce8a-8ef9-42eb-a787-a0aba47b2c60','2cd70196-a9f9-47c5-82f6-6adf0e1ad834','9ac80b51-67b5-43d3-b0d4-f7569cdb9192','ff825264-d21d-4612-821f-2f19f8044bc2',0,'2024-11-04 13:56:27'),('5d379e80-7ee6-4f46-9de6-3d12a880c986','41970cb7-0c83-4e45-812a-f340859d506e','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 5','material',NULL,NULL,NULL,0,'5afc44cd-d697-4d11-87d4-1fa9334e7f97','d49e5dcb-c578-4c47-858b-aafd77743437','d7de4c11-9ecc-4a31-90a0-ca1d74559a0e','a3ff4d37-f894-49fb-a9cf-eb55687ac345','09bd0ce3-697a-4efc-bbf4-b80c3eb1f80c','2b1f2deb-6f75-4cfe-99fd-6ea845f1e0d2',0,'2024-11-04 13:52:47'),('60373ff6-6c47-4c62-9bfe-6aa2bd007811','c8c06652-9b43-418e-b371-a7ebd196fad0','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Pretest','material',NULL,NULL,NULL,1,'a71b942a-5467-4fed-8595-f3878ae66649','b744cc40-acf2-4cef-a209-d4c1d98b1986','e8ff69fc-b7f1-4fdd-90de-af0a0f955f10','69c27ea4-f30c-466a-99d7-3666f2842105','48be69cb-0ab7-415a-a890-931bfe960a29','7135e07d-035f-44ed-a2d7-f35909297773',0,'2024-11-04 14:04:49'),('617a7531-bac7-4d95-b8cb-41434e0c7e52','b121547a-0603-4c64-ae8b-802aacf0aed3','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Pretest','material',NULL,NULL,NULL,1,'f7c351b9-09f1-4e02-b2de-9c8fd531ce34','10fe29f6-cd02-4ecc-910d-f3a75ebcd6a8','6b1e8584-5f10-4cca-90ac-7996b5841970','bf4c2aa6-a174-48b8-a964-3c76904041c3','b8679527-054b-493b-a932-c9dc417d4ce1','c88b0063-dc8f-4b32-9308-3afcd7164c38',0,'2024-11-04 14:07:07'),('63c67806-3492-4bb1-8ace-254db076af70','5a55f428-4660-4a58-b092-b5cec2183d9a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 4','material',NULL,NULL,NULL,0,'fdc83ff7-c50f-447c-822d-1dedcc7b46f5','7696ba67-3d0a-481a-8f42-f852902d4adc','2757e906-e864-4704-af6a-a92b588eef3d','82216c60-51d6-424a-bf81-bc97b1e9ee30','af44a4f8-7d01-4c47-bfe8-c4f7d77b9eee','f8adafd3-e1aa-4ec9-83ab-f760ec0a658e',0,'2024-11-04 13:42:46'),('67737b19-b135-479a-b5b2-0ad70096592f','79e76ad6-94fb-4b0e-82bc-9094f4bc03b4','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 5','material',NULL,NULL,NULL,0,'e00294f9-004e-4d8c-b4e3-f89e563ec7e2','3702c9da-1b8a-4084-bb70-e7e539dc453d','f428bbc8-f11c-4493-bf0f-12b25e3b0042','2b662452-991d-41d7-989c-993cb37d0d3f','5311525c-20a6-47d5-96e3-ab21d8c57c59','e83f652d-d269-43a1-8cd3-36396db96ae6',0,'2024-11-04 14:08:01'),('69c27ea4-f30c-466a-99d7-3666f2842105','c8c06652-9b43-418e-b371-a7ebd196fad0','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 4','material',NULL,NULL,NULL,0,'60373ff6-6c47-4c62-9bfe-6aa2bd007811','a71b942a-5467-4fed-8595-f3878ae66649','b744cc40-acf2-4cef-a209-d4c1d98b1986','e8ff69fc-b7f1-4fdd-90de-af0a0f955f10','48be69cb-0ab7-415a-a890-931bfe960a29','7135e07d-035f-44ed-a2d7-f35909297773',0,'2024-11-04 14:04:49'),('6b1e8584-5f10-4cca-90ac-7996b5841970','b121547a-0603-4c64-ae8b-802aacf0aed3','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 3','material',NULL,NULL,NULL,0,'617a7531-bac7-4d95-b8cb-41434e0c7e52','f7c351b9-09f1-4e02-b2de-9c8fd531ce34','10fe29f6-cd02-4ecc-910d-f3a75ebcd6a8','bf4c2aa6-a174-48b8-a964-3c76904041c3','b8679527-054b-493b-a932-c9dc417d4ce1','c88b0063-dc8f-4b32-9308-3afcd7164c38',0,'2024-11-04 14:07:07'),('6f5449a0-70e9-4502-a9d7-478d56fbebf2','746ad91a-03d6-4f3a-94ac-e751b58e2642','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Pretest','material',NULL,NULL,NULL,1,'184f89b9-fcaf-446d-9e3f-e085318ac802','b9bc4120-4797-4b8b-8256-16ef68276e44','c1a7ad47-5a3a-4d4e-a8a7-966e9cf60d71','2622d27d-5b07-43d1-922a-2391c188ee32','04d3a793-1da4-467d-8c52-763a3039f450','d4932d08-baf8-4183-816b-efe2b32b49bf',0,'2024-11-04 13:45:10'),('6f8e5299-a7b8-44c5-a63e-31280ab0fdfb','47303ebe-5407-44a8-8a8f-c43aa73477f6','b63a66f7-20aa-4221-b6cf-2b7725fc896c','Level 6','material',NULL,NULL,NULL,0,'b07fff5b-590d-45d5-97af-f3712ca6a324','42e0a7c2-9698-4f72-b868-a698fa9492c9','54ae104f-7d71-48fc-918a-8c3e341bc9ad','cabc6b65-686f-4175-ba6e-6e0d2c003784','a07c29ce-95a7-4fd2-84df-43f6d36af407','94de3108-eb46-4a5e-b039-962392a500e6',0,'2024-11-04 11:21:32'),('7135e07d-035f-44ed-a2d7-f35909297773','c8c06652-9b43-418e-b371-a7ebd196fad0','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 6','material',NULL,NULL,NULL,0,'60373ff6-6c47-4c62-9bfe-6aa2bd007811','a71b942a-5467-4fed-8595-f3878ae66649','b744cc40-acf2-4cef-a209-d4c1d98b1986','e8ff69fc-b7f1-4fdd-90de-af0a0f955f10','69c27ea4-f30c-466a-99d7-3666f2842105','48be69cb-0ab7-415a-a890-931bfe960a29',0,'2024-11-04 14:04:49'),('7696ba67-3d0a-481a-8f42-f852902d4adc','5a55f428-4660-4a58-b092-b5cec2183d9a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 1','material',NULL,NULL,NULL,0,'fdc83ff7-c50f-447c-822d-1dedcc7b46f5','2757e906-e864-4704-af6a-a92b588eef3d','82216c60-51d6-424a-bf81-bc97b1e9ee30','63c67806-3492-4bb1-8ace-254db076af70','af44a4f8-7d01-4c47-bfe8-c4f7d77b9eee','f8adafd3-e1aa-4ec9-83ab-f760ec0a658e',0,'2024-11-04 13:42:46'),('7c902122-d6e2-4016-ab9b-186a7a4de03b','a16c9974-397b-4811-bc0c-1a0f35476f38','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 5','material',NULL,NULL,NULL,0,'0eb14a43-38e7-4470-be9c-7cc41d7f9b7e','56f15554-b89c-457b-9d5e-7cddb5b054e1','4009ba1f-bba3-4fbf-b86a-fa94ce67e3ce','044dd951-c81b-490d-a49b-225a00ef1bd0','fb4e0fa7-e3ef-4b15-be62-31f0c7a1120f','5b9b2750-dd76-4882-8c9a-92c3b8b8f637',0,'2024-11-04 13:51:51'),('7ee4721d-4a83-4173-86c0-a51bb2377ea1','37c5b94f-f106-45ba-badc-be4af62aa0de','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 6','material',NULL,NULL,NULL,0,'11fb64b4-9904-42d3-b83e-0ced63937f47','3b835b88-f728-4bdd-a64c-a8b3216ae147','19e966c5-52ca-45d9-a039-138594184e90','2932abf6-d182-4e65-9ba1-15eb356ff5fb','33f576e2-83dd-46be-9b45-cd91abe9d2dd','a27fd716-8c1a-4979-9a36-2d733a303eb8',0,'2024-11-04 14:04:50'),('82216c60-51d6-424a-bf81-bc97b1e9ee30','5a55f428-4660-4a58-b092-b5cec2183d9a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 3','material',NULL,NULL,NULL,0,'fdc83ff7-c50f-447c-822d-1dedcc7b46f5','7696ba67-3d0a-481a-8f42-f852902d4adc','2757e906-e864-4704-af6a-a92b588eef3d','63c67806-3492-4bb1-8ace-254db076af70','af44a4f8-7d01-4c47-bfe8-c4f7d77b9eee','f8adafd3-e1aa-4ec9-83ab-f760ec0a658e',0,'2024-11-04 13:42:46'),('893a77e6-bfe7-4cc1-96c2-3d5ff738d90d','78df9cf6-7a60-45b3-a726-a98233022121','3f6feebe-ed90-41e9-8ff2-606100cd672c','Pretest',NULL,NULL,NULL,NULL,1,'a6279e83-15e2-4f5b-8fe6-4147346f4f93','1b3e6ab8-a008-4d9f-a9ff-68e27156bcea','27afae1a-803b-4ee3-a66e-bdc6805fe2fd','9a73f6c4-5a21-4e51-9391-4e24bf7f351b','8e32fdc1-dc1c-4ccf-bfc9-91c4c114d437','d1432109-e2a3-4730-8bc8-53c76ba43f9a',0,'2024-11-04 14:17:03'),('8b69c1a9-0a15-4d6f-98e3-54bd61179b23','cb457d60-d09f-48bf-87c2-64ab3ff14218','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 6','material',NULL,NULL,NULL,0,'ad662084-347c-416f-89de-05a5dd43da36','9ab2ce72-9b85-4405-a352-3a4d5b479d2d','acad3477-1006-4ed1-b432-985542a7c890','45b0268f-d278-4851-90d8-7f99001e6687','a1c3b791-5ae0-4b91-b6e9-4fb03f372245','318b5f94-4a81-4c44-8372-cef8e0561833',0,'2024-11-04 13:44:13'),('8e32fdc1-dc1c-4ccf-bfc9-91c4c114d437','78df9cf6-7a60-45b3-a726-a98233022121','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 5',NULL,NULL,NULL,NULL,0,'893a77e6-bfe7-4cc1-96c2-3d5ff738d90d','a6279e83-15e2-4f5b-8fe6-4147346f4f93','1b3e6ab8-a008-4d9f-a9ff-68e27156bcea','27afae1a-803b-4ee3-a66e-bdc6805fe2fd','9a73f6c4-5a21-4e51-9391-4e24bf7f351b','d1432109-e2a3-4730-8bc8-53c76ba43f9a',0,'2024-11-04 14:17:03'),('94de3108-eb46-4a5e-b039-962392a500e6','47303ebe-5407-44a8-8a8f-c43aa73477f6','b63a66f7-20aa-4221-b6cf-2b7725fc896c','Level 5','material',NULL,NULL,NULL,0,'b07fff5b-590d-45d5-97af-f3712ca6a324','42e0a7c2-9698-4f72-b868-a698fa9492c9','54ae104f-7d71-48fc-918a-8c3e341bc9ad','cabc6b65-686f-4175-ba6e-6e0d2c003784','a07c29ce-95a7-4fd2-84df-43f6d36af407','6f8e5299-a7b8-44c5-a63e-31280ab0fdfb',0,'2024-11-04 11:21:32'),('976f596f-834e-40e4-bb98-21b902f8a750','cec0cb96-a3a7-4998-9c3c-57139fd635eb','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 6','material',NULL,NULL,NULL,0,'e786f602-8aee-4ef0-ac40-e1de5302f64e','38e17f75-142e-48a7-9d23-052fa6892fe6','bca743a7-446f-44f9-916f-9180ec988e90','f29c9b92-f01b-4ed4-a606-d14a26349065','e0ab7d2f-e33f-4041-8f5f-bbdab3874188','c0fa2898-ae4c-478e-bf8a-e0274e7f4f54',0,'2024-11-04 13:49:00'),('9a73f6c4-5a21-4e51-9391-4e24bf7f351b','78df9cf6-7a60-45b3-a726-a98233022121','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 4',NULL,NULL,NULL,NULL,0,'893a77e6-bfe7-4cc1-96c2-3d5ff738d90d','a6279e83-15e2-4f5b-8fe6-4147346f4f93','1b3e6ab8-a008-4d9f-a9ff-68e27156bcea','27afae1a-803b-4ee3-a66e-bdc6805fe2fd','8e32fdc1-dc1c-4ccf-bfc9-91c4c114d437','d1432109-e2a3-4730-8bc8-53c76ba43f9a',0,'2024-11-04 14:17:03'),('9ab2ce72-9b85-4405-a352-3a4d5b479d2d','cb457d60-d09f-48bf-87c2-64ab3ff14218','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 1','<p>Intention…</p>',NULL,NULL,NULL,0,'ad662084-347c-416f-89de-05a5dd43da36','acad3477-1006-4ed1-b432-985542a7c890','45b0268f-d278-4851-90d8-7f99001e6687','a1c3b791-5ae0-4b91-b6e9-4fb03f372245','318b5f94-4a81-4c44-8372-cef8e0561833','8b69c1a9-0a15-4d6f-98e3-54bd61179b23',0,'2024-11-04 13:44:13'),('9ac80b51-67b5-43d3-b0d4-f7569cdb9192','e7e035e0-fd38-492f-8be4-5318b7c0a78a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 5','material',NULL,NULL,NULL,0,'c483eb13-3446-4d42-833f-cbc2fe5d7210','41ec844d-5db3-470f-8b36-96d6548bcef6','3aa2ce8a-8ef9-42eb-a787-a0aba47b2c60','2cd70196-a9f9-47c5-82f6-6adf0e1ad834','5ca8148a-a318-4b65-8f98-3cfa161542e6','ff825264-d21d-4612-821f-2f19f8044bc2',0,'2024-11-04 13:56:27'),('a07c29ce-95a7-4fd2-84df-43f6d36af407','47303ebe-5407-44a8-8a8f-c43aa73477f6','b63a66f7-20aa-4221-b6cf-2b7725fc896c','Level 4','material',NULL,NULL,NULL,0,'b07fff5b-590d-45d5-97af-f3712ca6a324','42e0a7c2-9698-4f72-b868-a698fa9492c9','54ae104f-7d71-48fc-918a-8c3e341bc9ad','cabc6b65-686f-4175-ba6e-6e0d2c003784','94de3108-eb46-4a5e-b039-962392a500e6','6f8e5299-a7b8-44c5-a63e-31280ab0fdfb',0,'2024-11-04 11:21:31'),('a1c3b791-5ae0-4b91-b6e9-4fb03f372245','cb457d60-d09f-48bf-87c2-64ab3ff14218','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 4','material',NULL,NULL,NULL,0,'ad662084-347c-416f-89de-05a5dd43da36','9ab2ce72-9b85-4405-a352-3a4d5b479d2d','acad3477-1006-4ed1-b432-985542a7c890','45b0268f-d278-4851-90d8-7f99001e6687','318b5f94-4a81-4c44-8372-cef8e0561833','8b69c1a9-0a15-4d6f-98e3-54bd61179b23',0,'2024-11-04 13:44:13'),('a27fd716-8c1a-4979-9a36-2d733a303eb8','37c5b94f-f106-45ba-badc-be4af62aa0de','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 5','material',NULL,NULL,NULL,0,'11fb64b4-9904-42d3-b83e-0ced63937f47','3b835b88-f728-4bdd-a64c-a8b3216ae147','19e966c5-52ca-45d9-a039-138594184e90','2932abf6-d182-4e65-9ba1-15eb356ff5fb','33f576e2-83dd-46be-9b45-cd91abe9d2dd','7ee4721d-4a83-4173-86c0-a51bb2377ea1',0,'2024-11-04 14:04:50'),('a3ff4d37-f894-49fb-a9cf-eb55687ac345','41970cb7-0c83-4e45-812a-f340859d506e','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 3','material',NULL,NULL,NULL,0,'5afc44cd-d697-4d11-87d4-1fa9334e7f97','d49e5dcb-c578-4c47-858b-aafd77743437','d7de4c11-9ecc-4a31-90a0-ca1d74559a0e','09bd0ce3-697a-4efc-bbf4-b80c3eb1f80c','5d379e80-7ee6-4f46-9de6-3d12a880c986','2b1f2deb-6f75-4cfe-99fd-6ea845f1e0d2',0,'2024-11-04 13:52:47'),('a6279e83-15e2-4f5b-8fe6-4147346f4f93','78df9cf6-7a60-45b3-a726-a98233022121','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 1',NULL,NULL,NULL,NULL,0,'893a77e6-bfe7-4cc1-96c2-3d5ff738d90d','1b3e6ab8-a008-4d9f-a9ff-68e27156bcea','27afae1a-803b-4ee3-a66e-bdc6805fe2fd','9a73f6c4-5a21-4e51-9391-4e24bf7f351b','8e32fdc1-dc1c-4ccf-bfc9-91c4c114d437','d1432109-e2a3-4730-8bc8-53c76ba43f9a',0,'2024-11-04 14:17:03'),('a71b942a-5467-4fed-8595-f3878ae66649','c8c06652-9b43-418e-b371-a7ebd196fad0','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 1','material',NULL,NULL,NULL,0,'60373ff6-6c47-4c62-9bfe-6aa2bd007811','b744cc40-acf2-4cef-a209-d4c1d98b1986','e8ff69fc-b7f1-4fdd-90de-af0a0f955f10','69c27ea4-f30c-466a-99d7-3666f2842105','48be69cb-0ab7-415a-a890-931bfe960a29','7135e07d-035f-44ed-a2d7-f35909297773',0,'2024-11-04 14:04:49'),('acad3477-1006-4ed1-b432-985542a7c890','cb457d60-d09f-48bf-87c2-64ab3ff14218','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 2','material',NULL,NULL,NULL,0,'ad662084-347c-416f-89de-05a5dd43da36','9ab2ce72-9b85-4405-a352-3a4d5b479d2d','45b0268f-d278-4851-90d8-7f99001e6687','a1c3b791-5ae0-4b91-b6e9-4fb03f372245','318b5f94-4a81-4c44-8372-cef8e0561833','8b69c1a9-0a15-4d6f-98e3-54bd61179b23',0,'2024-11-04 13:44:13'),('ad662084-347c-416f-89de-05a5dd43da36','cb457d60-d09f-48bf-87c2-64ab3ff14218','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Pretest','material',NULL,NULL,NULL,1,'9ab2ce72-9b85-4405-a352-3a4d5b479d2d','acad3477-1006-4ed1-b432-985542a7c890','45b0268f-d278-4851-90d8-7f99001e6687','a1c3b791-5ae0-4b91-b6e9-4fb03f372245','318b5f94-4a81-4c44-8372-cef8e0561833','8b69c1a9-0a15-4d6f-98e3-54bd61179b23',0,'2024-11-04 13:44:13'),('af44a4f8-7d01-4c47-bfe8-c4f7d77b9eee','5a55f428-4660-4a58-b092-b5cec2183d9a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 5','material',NULL,NULL,NULL,0,'fdc83ff7-c50f-447c-822d-1dedcc7b46f5','7696ba67-3d0a-481a-8f42-f852902d4adc','2757e906-e864-4704-af6a-a92b588eef3d','82216c60-51d6-424a-bf81-bc97b1e9ee30','63c67806-3492-4bb1-8ace-254db076af70','f8adafd3-e1aa-4ec9-83ab-f760ec0a658e',0,'2024-11-04 13:42:46'),('b07fff5b-590d-45d5-97af-f3712ca6a324','47303ebe-5407-44a8-8a8f-c43aa73477f6','b63a66f7-20aa-4221-b6cf-2b7725fc896c','Pretest','<p><span style=\"background-color:transparent;color:#000000;font-family:Arial,sans-serif;font-size:11pt;\">Talking about self is a personal introduction. A&nbsp;<strong>personal introduction</strong> is a short text where someone shares basic information about themselves, including their background, interests, and aspirations. In this context, Xaviera shares details about her life and what she enjoys doing. The&nbsp;<strong>topic</strong> is&nbsp;<i>self-introduction</i>, focusing on Xaviera’s name, age, place of birth, where she has lived, and her current studies. She also mentions her&nbsp;<strong>hobbies</strong>, like reading novels and writing fiction, and shares her dream of becoming a published writer.</span></p><p><span style=\"background-color:transparent;color:#000000;font-family:Arial,sans-serif;font-size:11pt;\">The key features of this self-talk include:</span></p><ol><li><span style=\"background-color:transparent;color:#000000;font-family:Arial,sans-serif;font-size:11pt;\">Providing&nbsp;<strong>personal information</strong>, such as Xaviera’s name, age, and birthplace.</span></li><li><span style=\"background-color:transparent;color:#000000;font-family:Arial,sans-serif;font-size:11pt;\">Discussing&nbsp;<strong>hobbies and interests</strong>, like her love for reading \"Harry Potter\" and writing stories.</span></li><li><span style=\"background-color:transparent;color:#000000;font-family:Arial,sans-serif;font-size:11pt;\">Expressing&nbsp;<strong>future goals and ambitions</strong>, which in Xaviera’s case is her desire to become a writer and publish her own novel.</span></li></ol><p><span style=\"background-color:transparent;color:#000000;font-family:Arial,sans-serif;font-size:11pt;\">Talking about self uses several important&nbsp;<strong>language elements</strong>. It includes&nbsp;<strong>introductory elements</strong>, like “Hello, my name is Xaviera Putri,” to start the introduction politely and engage the reader. The&nbsp;<strong>present simple tense</strong> is used to describe current facts and routines, as seen in “I love reading novels” and “People usually call me Viera.” The&nbsp;<strong>past simple tense</strong> is used to describe past events, like “I was born in Bandung.” There is also the use of the&nbsp;<strong>present perfect tense</strong>, such as “I have lived in Jakarta since I was a child,” to describe an action that started in the past and continues in the present. This self-talk features&nbsp;<strong>personal pronouns</strong> like \"I\" and \"my,\" and uses expressions of hope, such as “I hope that one day I can publish my own novel,” to share future intentions.</span></p>',NULL,NULL,NULL,1,'42e0a7c2-9698-4f72-b868-a698fa9492c9','54ae104f-7d71-48fc-918a-8c3e341bc9ad','cabc6b65-686f-4175-ba6e-6e0d2c003784','a07c29ce-95a7-4fd2-84df-43f6d36af407','94de3108-eb46-4a5e-b039-962392a500e6','6f8e5299-a7b8-44c5-a63e-31280ab0fdfb',0,'2024-11-04 11:21:31'),('b744cc40-acf2-4cef-a209-d4c1d98b1986','c8c06652-9b43-418e-b371-a7ebd196fad0','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 2','material',NULL,NULL,NULL,0,'60373ff6-6c47-4c62-9bfe-6aa2bd007811','a71b942a-5467-4fed-8595-f3878ae66649','e8ff69fc-b7f1-4fdd-90de-af0a0f955f10','69c27ea4-f30c-466a-99d7-3666f2842105','48be69cb-0ab7-415a-a890-931bfe960a29','7135e07d-035f-44ed-a2d7-f35909297773',0,'2024-11-04 14:04:49'),('b8679527-054b-493b-a932-c9dc417d4ce1','b121547a-0603-4c64-ae8b-802aacf0aed3','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 5','material',NULL,NULL,NULL,0,'617a7531-bac7-4d95-b8cb-41434e0c7e52','f7c351b9-09f1-4e02-b2de-9c8fd531ce34','10fe29f6-cd02-4ecc-910d-f3a75ebcd6a8','6b1e8584-5f10-4cca-90ac-7996b5841970','bf4c2aa6-a174-48b8-a964-3c76904041c3','c88b0063-dc8f-4b32-9308-3afcd7164c38',0,'2024-11-04 14:07:07'),('b9bc4120-4797-4b8b-8256-16ef68276e44','746ad91a-03d6-4f3a-94ac-e751b58e2642','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 2','material',NULL,NULL,NULL,0,'6f5449a0-70e9-4502-a9d7-478d56fbebf2','184f89b9-fcaf-446d-9e3f-e085318ac802','c1a7ad47-5a3a-4d4e-a8a7-966e9cf60d71','2622d27d-5b07-43d1-922a-2391c188ee32','04d3a793-1da4-467d-8c52-763a3039f450','d4932d08-baf8-4183-816b-efe2b32b49bf',0,'2024-11-04 13:45:10'),('bca743a7-446f-44f9-916f-9180ec988e90','cec0cb96-a3a7-4998-9c3c-57139fd635eb','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 2','material',NULL,NULL,NULL,0,'e786f602-8aee-4ef0-ac40-e1de5302f64e','38e17f75-142e-48a7-9d23-052fa6892fe6','f29c9b92-f01b-4ed4-a606-d14a26349065','e0ab7d2f-e33f-4041-8f5f-bbdab3874188','c0fa2898-ae4c-478e-bf8a-e0274e7f4f54','976f596f-834e-40e4-bb98-21b902f8a750',0,'2024-11-04 13:49:00'),('bf4c2aa6-a174-48b8-a964-3c76904041c3','b121547a-0603-4c64-ae8b-802aacf0aed3','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 4','material',NULL,NULL,NULL,0,'617a7531-bac7-4d95-b8cb-41434e0c7e52','f7c351b9-09f1-4e02-b2de-9c8fd531ce34','10fe29f6-cd02-4ecc-910d-f3a75ebcd6a8','6b1e8584-5f10-4cca-90ac-7996b5841970','b8679527-054b-493b-a932-c9dc417d4ce1','c88b0063-dc8f-4b32-9308-3afcd7164c38',0,'2024-11-04 14:07:07'),('c0fa2898-ae4c-478e-bf8a-e0274e7f4f54','cec0cb96-a3a7-4998-9c3c-57139fd635eb','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 5','material',NULL,NULL,NULL,0,'e786f602-8aee-4ef0-ac40-e1de5302f64e','38e17f75-142e-48a7-9d23-052fa6892fe6','bca743a7-446f-44f9-916f-9180ec988e90','f29c9b92-f01b-4ed4-a606-d14a26349065','e0ab7d2f-e33f-4041-8f5f-bbdab3874188','976f596f-834e-40e4-bb98-21b902f8a750',0,'2024-11-04 13:49:00'),('c1a7ad47-5a3a-4d4e-a8a7-966e9cf60d71','746ad91a-03d6-4f3a-94ac-e751b58e2642','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 3','material',NULL,NULL,NULL,0,'6f5449a0-70e9-4502-a9d7-478d56fbebf2','184f89b9-fcaf-446d-9e3f-e085318ac802','b9bc4120-4797-4b8b-8256-16ef68276e44','2622d27d-5b07-43d1-922a-2391c188ee32','04d3a793-1da4-467d-8c52-763a3039f450','d4932d08-baf8-4183-816b-efe2b32b49bf',0,'2024-11-04 13:45:10'),('c483eb13-3446-4d42-833f-cbc2fe5d7210','e7e035e0-fd38-492f-8be4-5318b7c0a78a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Pretest','<p>material</p><figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=bV7vby6e04Y\"></oembed></figure>',NULL,NULL,NULL,1,'41ec844d-5db3-470f-8b36-96d6548bcef6','3aa2ce8a-8ef9-42eb-a787-a0aba47b2c60','2cd70196-a9f9-47c5-82f6-6adf0e1ad834','5ca8148a-a318-4b65-8f98-3cfa161542e6','9ac80b51-67b5-43d3-b0d4-f7569cdb9192','ff825264-d21d-4612-821f-2f19f8044bc2',0,'2024-11-04 13:56:27'),('c49793d2-f73b-49a7-9ba1-49c68b9d2b79','b402dbf8-32c8-4315-b40e-a70888fdb107','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 3','material',NULL,NULL,NULL,0,'4bd479a0-c629-4f12-8908-023b6ee2d29a','18c547b8-4f70-4034-82f0-f6ef2dea7719','4324ee52-2e30-4513-83ce-ac68b9a21ecc','dbc84518-b9d6-4c9c-b406-a466f9ffcd1e','2687ba9c-ac94-424f-a35e-0283946e5506','41426465-c0af-4f11-bb66-c0e307279110',0,'2024-11-04 13:49:56'),('c4c75be3-c388-4b28-9d71-4ab265b0be19','b22ba6d7-d8f0-4ce0-95c3-466478111f4e','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 6','material',NULL,NULL,NULL,0,'442e06c2-9ed7-4c77-a49e-087bbd13e810','d1f6cd37-fcbf-4359-b472-e5f088311d09','e0ef7134-1f09-44da-ba2d-48b385fc54fa','ffd95f3d-e727-4be6-b439-48598209ff14','199fd7ff-54e3-4338-a63d-5d87d96781be','d0137123-ec41-4e5d-9591-1f46113f1e31',0,'2024-11-04 13:46:54'),('c88b0063-dc8f-4b32-9308-3afcd7164c38','b121547a-0603-4c64-ae8b-802aacf0aed3','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 6','material',NULL,NULL,NULL,0,'617a7531-bac7-4d95-b8cb-41434e0c7e52','f7c351b9-09f1-4e02-b2de-9c8fd531ce34','10fe29f6-cd02-4ecc-910d-f3a75ebcd6a8','6b1e8584-5f10-4cca-90ac-7996b5841970','bf4c2aa6-a174-48b8-a964-3c76904041c3','b8679527-054b-493b-a932-c9dc417d4ce1',0,'2024-11-04 14:07:07'),('cabc6b65-686f-4175-ba6e-6e0d2c003784','47303ebe-5407-44a8-8a8f-c43aa73477f6','b63a66f7-20aa-4221-b6cf-2b7725fc896c','Level 3','material',NULL,NULL,NULL,0,'b07fff5b-590d-45d5-97af-f3712ca6a324','42e0a7c2-9698-4f72-b868-a698fa9492c9','54ae104f-7d71-48fc-918a-8c3e341bc9ad','a07c29ce-95a7-4fd2-84df-43f6d36af407','94de3108-eb46-4a5e-b039-962392a500e6','6f8e5299-a7b8-44c5-a63e-31280ab0fdfb',0,'2024-11-04 11:21:31'),('d0137123-ec41-4e5d-9591-1f46113f1e31','b22ba6d7-d8f0-4ce0-95c3-466478111f4e','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 5','material',NULL,NULL,NULL,0,'442e06c2-9ed7-4c77-a49e-087bbd13e810','d1f6cd37-fcbf-4359-b472-e5f088311d09','e0ef7134-1f09-44da-ba2d-48b385fc54fa','ffd95f3d-e727-4be6-b439-48598209ff14','199fd7ff-54e3-4338-a63d-5d87d96781be','c4c75be3-c388-4b28-9d71-4ab265b0be19',0,'2024-11-04 13:46:54'),('d1432109-e2a3-4730-8bc8-53c76ba43f9a','78df9cf6-7a60-45b3-a726-a98233022121','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 6',NULL,NULL,NULL,NULL,0,'893a77e6-bfe7-4cc1-96c2-3d5ff738d90d','a6279e83-15e2-4f5b-8fe6-4147346f4f93','1b3e6ab8-a008-4d9f-a9ff-68e27156bcea','27afae1a-803b-4ee3-a66e-bdc6805fe2fd','9a73f6c4-5a21-4e51-9391-4e24bf7f351b','8e32fdc1-dc1c-4ccf-bfc9-91c4c114d437',0,'2024-11-04 14:17:03'),('d1f6cd37-fcbf-4359-b472-e5f088311d09','b22ba6d7-d8f0-4ce0-95c3-466478111f4e','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 1','material',NULL,NULL,NULL,0,'442e06c2-9ed7-4c77-a49e-087bbd13e810','e0ef7134-1f09-44da-ba2d-48b385fc54fa','ffd95f3d-e727-4be6-b439-48598209ff14','199fd7ff-54e3-4338-a63d-5d87d96781be','d0137123-ec41-4e5d-9591-1f46113f1e31','c4c75be3-c388-4b28-9d71-4ab265b0be19',0,'2024-11-04 13:46:54'),('d4932d08-baf8-4183-816b-efe2b32b49bf','746ad91a-03d6-4f3a-94ac-e751b58e2642','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 6','material',NULL,NULL,NULL,0,'6f5449a0-70e9-4502-a9d7-478d56fbebf2','184f89b9-fcaf-446d-9e3f-e085318ac802','b9bc4120-4797-4b8b-8256-16ef68276e44','c1a7ad47-5a3a-4d4e-a8a7-966e9cf60d71','2622d27d-5b07-43d1-922a-2391c188ee32','04d3a793-1da4-467d-8c52-763a3039f450',0,'2024-11-04 13:45:10'),('d49e5dcb-c578-4c47-858b-aafd77743437','41970cb7-0c83-4e45-812a-f340859d506e','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 1','material',NULL,NULL,NULL,0,'5afc44cd-d697-4d11-87d4-1fa9334e7f97','d7de4c11-9ecc-4a31-90a0-ca1d74559a0e','a3ff4d37-f894-49fb-a9cf-eb55687ac345','09bd0ce3-697a-4efc-bbf4-b80c3eb1f80c','5d379e80-7ee6-4f46-9de6-3d12a880c986','2b1f2deb-6f75-4cfe-99fd-6ea845f1e0d2',0,'2024-11-04 13:52:47'),('d7de4c11-9ecc-4a31-90a0-ca1d74559a0e','41970cb7-0c83-4e45-812a-f340859d506e','3f6feebe-ed90-41e9-8ff2-606100cd672c','Level 2','material',NULL,NULL,NULL,0,'5afc44cd-d697-4d11-87d4-1fa9334e7f97','d49e5dcb-c578-4c47-858b-aafd77743437','a3ff4d37-f894-49fb-a9cf-eb55687ac345','09bd0ce3-697a-4efc-bbf4-b80c3eb1f80c','5d379e80-7ee6-4f46-9de6-3d12a880c986','2b1f2deb-6f75-4cfe-99fd-6ea845f1e0d2',0,'2024-11-04 13:52:47'),('dbc84518-b9d6-4c9c-b406-a466f9ffcd1e','b402dbf8-32c8-4315-b40e-a70888fdb107','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 4','material',NULL,NULL,NULL,0,'4bd479a0-c629-4f12-8908-023b6ee2d29a','18c547b8-4f70-4034-82f0-f6ef2dea7719','4324ee52-2e30-4513-83ce-ac68b9a21ecc','c49793d2-f73b-49a7-9ba1-49c68b9d2b79','2687ba9c-ac94-424f-a35e-0283946e5506','41426465-c0af-4f11-bb66-c0e307279110',0,'2024-11-04 13:49:56'),('e00294f9-004e-4d8c-b4e3-f89e563ec7e2','79e76ad6-94fb-4b0e-82bc-9094f4bc03b4','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Pretest','material',NULL,NULL,NULL,1,'3702c9da-1b8a-4084-bb70-e7e539dc453d','f428bbc8-f11c-4493-bf0f-12b25e3b0042','2b662452-991d-41d7-989c-993cb37d0d3f','5311525c-20a6-47d5-96e3-ab21d8c57c59','67737b19-b135-479a-b5b2-0ad70096592f','e83f652d-d269-43a1-8cd3-36396db96ae6',0,'2024-11-04 14:08:01'),('e0ab7d2f-e33f-4041-8f5f-bbdab3874188','cec0cb96-a3a7-4998-9c3c-57139fd635eb','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 4','material',NULL,NULL,NULL,0,'e786f602-8aee-4ef0-ac40-e1de5302f64e','38e17f75-142e-48a7-9d23-052fa6892fe6','bca743a7-446f-44f9-916f-9180ec988e90','f29c9b92-f01b-4ed4-a606-d14a26349065','c0fa2898-ae4c-478e-bf8a-e0274e7f4f54','976f596f-834e-40e4-bb98-21b902f8a750',0,'2024-11-04 13:49:00'),('e0ef7134-1f09-44da-ba2d-48b385fc54fa','b22ba6d7-d8f0-4ce0-95c3-466478111f4e','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 2','material',NULL,NULL,NULL,0,'442e06c2-9ed7-4c77-a49e-087bbd13e810','d1f6cd37-fcbf-4359-b472-e5f088311d09','ffd95f3d-e727-4be6-b439-48598209ff14','199fd7ff-54e3-4338-a63d-5d87d96781be','d0137123-ec41-4e5d-9591-1f46113f1e31','c4c75be3-c388-4b28-9d71-4ab265b0be19',0,'2024-11-04 13:46:54'),('e786f602-8aee-4ef0-ac40-e1de5302f64e','cec0cb96-a3a7-4998-9c3c-57139fd635eb','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Pretest','material',NULL,NULL,NULL,1,'38e17f75-142e-48a7-9d23-052fa6892fe6','bca743a7-446f-44f9-916f-9180ec988e90','f29c9b92-f01b-4ed4-a606-d14a26349065','e0ab7d2f-e33f-4041-8f5f-bbdab3874188','c0fa2898-ae4c-478e-bf8a-e0274e7f4f54','976f596f-834e-40e4-bb98-21b902f8a750',0,'2024-11-04 13:49:00'),('e83f652d-d269-43a1-8cd3-36396db96ae6','79e76ad6-94fb-4b0e-82bc-9094f4bc03b4','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 6','material',NULL,NULL,NULL,0,'e00294f9-004e-4d8c-b4e3-f89e563ec7e2','3702c9da-1b8a-4084-bb70-e7e539dc453d','f428bbc8-f11c-4493-bf0f-12b25e3b0042','2b662452-991d-41d7-989c-993cb37d0d3f','5311525c-20a6-47d5-96e3-ab21d8c57c59','67737b19-b135-479a-b5b2-0ad70096592f',0,'2024-11-04 14:08:01'),('e8ff69fc-b7f1-4fdd-90de-af0a0f955f10','c8c06652-9b43-418e-b371-a7ebd196fad0','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 3','material',NULL,NULL,NULL,0,'60373ff6-6c47-4c62-9bfe-6aa2bd007811','a71b942a-5467-4fed-8595-f3878ae66649','b744cc40-acf2-4cef-a209-d4c1d98b1986','69c27ea4-f30c-466a-99d7-3666f2842105','48be69cb-0ab7-415a-a890-931bfe960a29','7135e07d-035f-44ed-a2d7-f35909297773',0,'2024-11-04 14:04:49'),('f29c9b92-f01b-4ed4-a606-d14a26349065','cec0cb96-a3a7-4998-9c3c-57139fd635eb','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 3','material',NULL,NULL,NULL,0,'e786f602-8aee-4ef0-ac40-e1de5302f64e','38e17f75-142e-48a7-9d23-052fa6892fe6','bca743a7-446f-44f9-916f-9180ec988e90','e0ab7d2f-e33f-4041-8f5f-bbdab3874188','c0fa2898-ae4c-478e-bf8a-e0274e7f4f54','976f596f-834e-40e4-bb98-21b902f8a750',0,'2024-11-04 13:49:00'),('f428bbc8-f11c-4493-bf0f-12b25e3b0042','79e76ad6-94fb-4b0e-82bc-9094f4bc03b4','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 2','material',NULL,NULL,NULL,0,'e00294f9-004e-4d8c-b4e3-f89e563ec7e2','3702c9da-1b8a-4084-bb70-e7e539dc453d','2b662452-991d-41d7-989c-993cb37d0d3f','5311525c-20a6-47d5-96e3-ab21d8c57c59','67737b19-b135-479a-b5b2-0ad70096592f','e83f652d-d269-43a1-8cd3-36396db96ae6',0,'2024-11-04 14:08:01'),('f7c351b9-09f1-4e02-b2de-9c8fd531ce34','b121547a-0603-4c64-ae8b-802aacf0aed3','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 1','<p><strong>Life of Famous People</strong></p><p>Thomas Edison was a famous man who helped change the world. He was born in the United States in 1847. As a child, he was curious and loved to learn new things. He did not go to school for long, but he read many books and did his own experiments. Even when he failed, he did not give up. This hard work helped him later in life.</p><p>Edison is best known for making the light bulb work. Before that, people used candles or gas lamps for light. His work made homes, streets, and buildings brighter and safer at night. Edison also made other inventions, like the phonograph, which played music. He showed people that with ideas and effort, they could make great changes in the world.</p>',NULL,NULL,NULL,0,'617a7531-bac7-4d95-b8cb-41434e0c7e52','10fe29f6-cd02-4ecc-910d-f3a75ebcd6a8','6b1e8584-5f10-4cca-90ac-7996b5841970','bf4c2aa6-a174-48b8-a964-3c76904041c3','b8679527-054b-493b-a932-c9dc417d4ce1','c88b0063-dc8f-4b32-9308-3afcd7164c38',0,'2024-11-04 14:07:07'),('f8adafd3-e1aa-4ec9-83ab-f760ec0a658e','5a55f428-4660-4a58-b092-b5cec2183d9a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 6','material',NULL,NULL,NULL,0,'fdc83ff7-c50f-447c-822d-1dedcc7b46f5','7696ba67-3d0a-481a-8f42-f852902d4adc','2757e906-e864-4704-af6a-a92b588eef3d','82216c60-51d6-424a-bf81-bc97b1e9ee30','63c67806-3492-4bb1-8ace-254db076af70','af44a4f8-7d01-4c47-bfe8-c4f7d77b9eee',0,'2024-11-04 13:42:46'),('fb4e0fa7-e3ef-4b15-be62-31f0c7a1120f','a16c9974-397b-4811-bc0c-1a0f35476f38','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 4','material',NULL,NULL,NULL,0,'0eb14a43-38e7-4470-be9c-7cc41d7f9b7e','56f15554-b89c-457b-9d5e-7cddb5b054e1','4009ba1f-bba3-4fbf-b86a-fa94ce67e3ce','044dd951-c81b-490d-a49b-225a00ef1bd0','7c902122-d6e2-4016-ab9b-186a7a4de03b','5b9b2750-dd76-4882-8c9a-92c3b8b8f637',0,'2024-11-04 13:51:51'),('fdc83ff7-c50f-447c-822d-1dedcc7b46f5','5a55f428-4660-4a58-b092-b5cec2183d9a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Pretest','material',NULL,NULL,NULL,1,'7696ba67-3d0a-481a-8f42-f852902d4adc','2757e906-e864-4704-af6a-a92b588eef3d','82216c60-51d6-424a-bf81-bc97b1e9ee30','63c67806-3492-4bb1-8ace-254db076af70','af44a4f8-7d01-4c47-bfe8-c4f7d77b9eee','f8adafd3-e1aa-4ec9-83ab-f760ec0a658e',0,'2024-11-04 13:42:46'),('ff825264-d21d-4612-821f-2f19f8044bc2','e7e035e0-fd38-492f-8be4-5318b7c0a78a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Level 6','material',NULL,NULL,NULL,0,'c483eb13-3446-4d42-833f-cbc2fe5d7210','41ec844d-5db3-470f-8b36-96d6548bcef6','3aa2ce8a-8ef9-42eb-a787-a0aba47b2c60','2cd70196-a9f9-47c5-82f6-6adf0e1ad834','5ca8148a-a318-4b65-8f98-3cfa161542e6','9ac80b51-67b5-43d3-b0d4-f7569cdb9192',0,'2024-11-04 13:56:27'),('ffd95f3d-e727-4be6-b439-48598209ff14','b22ba6d7-d8f0-4ce0-95c3-466478111f4e','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Level 3','material',NULL,NULL,NULL,0,'442e06c2-9ed7-4c77-a49e-087bbd13e810','d1f6cd37-fcbf-4359-b472-e5f088311d09','e0ef7134-1f09-44da-ba2d-48b385fc54fa','199fd7ff-54e3-4338-a63d-5d87d96781be','d0137123-ec41-4e5d-9591-1f46113f1e31','c4c75be3-c388-4b28-9d71-4ab265b0be19',0,'2024-11-04 13:46:54');
/*!40000 ALTER TABLE `level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matching_pairs`
--

DROP TABLE IF EXISTS `matching_pairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matching_pairs` (
  `ID_MATCHING_PAIRS` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID_ADMIN_EXERCISE` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `LEFT_PAIR` text COLLATE utf8mb4_general_ci,
  `RIGHT_PAIR` text COLLATE utf8mb4_general_ci,
  `TIME_MATCHING_PAIRS` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_MATCHING_PAIRS`),
  KEY `FK_MP_TERDAPAT` (`ID_ADMIN_EXERCISE`),
  CONSTRAINT `FK_MP_TERDAPAT` FOREIGN KEY (`ID_ADMIN_EXERCISE`) REFERENCES `admin_exercise` (`ID_ADMIN_EXERCISE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matching_pairs`
--

LOCK TABLES `matching_pairs` WRITE;
/*!40000 ALTER TABLE `matching_pairs` DISABLE KEYS */;
/*!40000 ALTER TABLE `matching_pairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitoring`
--

DROP TABLE IF EXISTS `monitoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitoring` (
  `ID_MONITORING` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID_STUDENT_LEARNING` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID_CLASS` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ID_GURU` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `FEEDBACK_GURU` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TIME_MONITORING` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_MONITORING`),
  KEY `FK_MENGACU` (`ID_STUDENT_LEARNING`),
  KEY `FK_MENDAPATKAN` (`ID_CLASS`),
  KEY `FK_DILAKUKAN` (`ID_GURU`),
  CONSTRAINT `FK_DILAKUKAN` FOREIGN KEY (`ID_GURU`) REFERENCES `teacher` (`ID_GURU`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_MENDAPATKAN` FOREIGN KEY (`ID_CLASS`) REFERENCES `class` (`ID_CLASS`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_MENGACU` FOREIGN KEY (`ID_STUDENT_LEARNING`) REFERENCES `student_learning` (`ID_STUDENT_LEARNING`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitoring`
--

LOCK TABLES `monitoring` WRITE;
/*!40000 ALTER TABLE `monitoring` DISABLE KEYS */;
/*!40000 ALTER TABLE `monitoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multiple_choices`
--

DROP TABLE IF EXISTS `multiple_choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multiple_choices` (
  `ID_MULTIPLE_CHOICES` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID_ADMIN_EXERCISE` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `OPTION_A` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `OPTION_B` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `OPTION_C` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `OPTION_D` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `OPTION_E` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ANSWER_KEY` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `TIME_MULTIPLE_CHOICES` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_MULTIPLE_CHOICES`),
  KEY `FK_MC_TERDAPAT` (`ID_ADMIN_EXERCISE`),
  CONSTRAINT `FK_MC_TERDAPAT` FOREIGN KEY (`ID_ADMIN_EXERCISE`) REFERENCES `admin_exercise` (`ID_ADMIN_EXERCISE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multiple_choices`
--

LOCK TABLES `multiple_choices` WRITE;
/*!40000 ALTER TABLE `multiple_choices` DISABLE KEYS */;
INSERT INTO `multiple_choices` VALUES ('022e3fdc-b000-4153-bbdc-8f38b042f69e','043010bb-858b-4f35-a034-4731d4364292','Playing football','Playing basketball','Reading books','Painting','Playing guitar','B','2024-11-04 14:03:28'),('047492ff-f44c-4922-ba1f-2a609736133d','858c7d7f-6f97-4b9b-abb7-48da59e7ed78',' tooths',' teeth','toothies','toothed',' toots','B','2024-11-04 14:08:34'),('0cb55273-3371-4940-b9af-933e59de6253','31f5d2e5-744b-4162-8f4f-e9eaea6b03df','foots',' feets','footes','feet',' footies','D','2024-11-04 14:01:34'),('26a9e96f-9b8d-45bd-b90c-8ba0785ebf5d','b9a041da-b17d-4867-bfb2-15d5efd4581d','It makes people sad','It is boring','It makes people tired','It tastes interesting','It is scary','D','2024-11-04 14:27:34'),('285af9c1-b5e8-4eff-8f10-9c9d324a86f6','e03adce8-866e-490b-aa47-0e7da631b3d8','buss','buses','bus','bus\'s','busses','B','2024-11-04 14:03:19'),('3f476431-21ab-4189-933b-899a2bc4fc1b','bebf73b0-3577-442b-bd62-316bf8bf697e',' ladys','ladies','ladyes','ladys\'','ladiese','B','2024-11-04 14:10:14'),('45391195-b2b3-42a4-b266-52da16834a36','8ff74766-76e5-480a-a140-b00362b50d73','Bread','Rice','Fruit','Vegetables','Chair','E','2024-11-04 14:29:13'),('47b88de6-ba07-4406-9db9-1a179d67c3a4','b74789d2-e47d-42b6-a356-dc13da6b4108','You learn something new','You get sad','You feel sleepy','You get lost','You get bored','A','2024-11-04 14:17:24'),('492860fc-d464-4e19-b911-a7c674914f13','fd9ea993-8139-4f09-a335-acdcca1042f9','Sarah is still learning at school.','Sarah needs to learn her job.','Sarah is paying full attention to the explanation.','Sarah is taking a note while listening.','Sarah has high motivation to learn.','C','2024-11-04 14:20:26'),('5041ae49-d6ef-4e71-90cf-441bed35f109','fb5de0e7-64b1-4be0-87e3-5afeeb8c56e5',' leafs','leaves','leafes','leavs','leafies','B','2024-11-04 13:58:34'),('51e73bc9-1ac6-4d71-abd8-f746a435b0e4','4d338095-df06-4c01-885c-ecbd5bcc3cb8','January 17, 2008','January 7, 2008','February 17, 2008','December 17, 2008','February 7, 2008','A','2024-11-04 14:33:36'),('53bde665-fb02-40d6-b197-2276cf942406','35ed40ef-e4b7-49fd-bab0-b62710296f96','childs','childrens','childes','children',' childen','D','2024-11-04 14:07:15'),('62ccd54c-c6c8-432a-95a7-af6e72b2d1eb','ecdfa871-c525-415b-9e80-4c1648aaa555','It is boring','It tastes interesting','It makes people sad','It is scary','It makes people tired','B','2024-11-04 14:08:39'),('6bfe6cc7-b864-4da5-9e24-5843ffa35b31','2efcd1bb-c17e-43ce-8b9d-c6294f6254a7','Since high school','Since he was in elementary school','Since he was in middle school','Since he was a baby','Since he was in university','B','2024-11-04 14:08:15'),('6ec8b2c6-9045-415c-86f5-47ffd1e7edb8','310ebe84-e899-4929-9bcf-ec08380318b6','Sand','Books','Rice','Water','Trees','C','2024-11-04 14:26:50'),('7c863437-e488-46f1-ad74-c4a73c226d5c','08a30eea-6a0b-4fa4-abae-57a85d13faf9','Sand','Book','Rice','Water','Trees','C','2024-11-04 14:07:37'),('7ecafaae-4753-42b9-9144-eec08f233726','b38682b6-d676-4267-a039-63f9b9f3eae9','How to play a game','How to sleep','About other people’s lives','About math','Nothing at all','C','2024-11-04 14:28:25'),('842bcafa-cbb0-426c-bd66-bdb08c2b8a49','aeb6e61a-2092-4110-ba19-a9883f4b7572','Greeting guests','Understanding guests\' intentions','Managing bookings','Promoting amenities','Excellent service','B','2024-11-04 14:18:31'),('8a8fa7b8-7611-485d-8f0e-538594821f91','b3bdb8fe-3fb6-40bb-b25c-256642244415','Chair','Bread','Rice','Fruit','Vegetables','A','2024-11-04 14:14:59'),('9d066f6f-4163-4a38-af62-5fb376a786c5','215d5e79-c720-4073-a34c-e0ff06355690','Different foods','Only rice','Only vegetables','Only fruits','Only bread','A','2024-11-04 14:19:15'),('9dfa7866-2b13-48f1-84a9-2ebf9952a5fd','0a9c1898-d665-46f7-837b-d532e9838a11','Sand','Books','Rice','Water','Trees','C','2024-11-04 14:26:03'),('a3d6a924-76f9-4090-aa9b-de1d40faadeb','a98c1863-0cc8-4b2e-80a8-f61c2287074b','babys','babies','babyes','babi','babys\'','B','2024-11-04 14:05:43'),('b0c4e16d-66b3-4b14-8887-a71a44cccd87','08e0ff88-da4b-4e95-a786-c1eea120f1ed','Very excited','A little nervous','Not interested','Very confident','Bored','B','2024-11-04 14:12:20'),('b58561fb-b535-4ffa-a813-17a705a83011','c759a6e1-a2ba-446b-bd8d-d69d25d8ec0b','It tastes bad','It looks scary','It is always the same','It is different','It is hard to eat','D','2024-11-04 14:29:53'),('d265cae0-9551-4c20-becb-f17adcaa8ef2','52f2a4e6-2123-4b86-803b-60cb6548eb97','How to play a game','About math','How to sleep','About other people’s lives','Nothing at all','D','2024-11-04 14:14:05'),('e16cdcfb-4827-48b9-ad05-e915ccc4e1bf','b824f8ef-7502-4802-9e60-c1ff58e6660c','Jakarta','Bandung','Seoul','Surabaya','Malang','B','2024-11-04 14:34:53'),('e2f107ce-2497-4b2e-8953-c650fb93ac14','425d219a-f4c2-40ab-b317-e0174a68b290','It is always the same','It tastes bad','It looks scary','It is hard to eat','It is different','E','2024-11-04 14:16:33'),('ed30fb8b-4029-40de-b441-4f04985fdaa9','2b32d71d-2ef4-4591-8bbb-0cc3db9ba80f','He lives in his own house.','He stays at his friend’s house.','He stays at his grandma’s house.','He lives in a dormitory.','He lives in his parent\'s house.','C','2024-11-04 14:05:35');
/*!40000 ALTER TABLE `multiple_choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `ID_REPORT` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `REPORTS` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `TIME_REPORT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_REPORT`),
  KEY `FK_MELAPORKAN` (`ID`),
  CONSTRAINT `FK_MELAPORKAN` FOREIGN KEY (`ID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `ID_SECTION` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `NAME_SECTION` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `DESCRIPTION_SECTION` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `THUMBNAIL` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IS_DELETED` tinyint(1) DEFAULT '0',
  `TIME_SECTION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_SECTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES ('3f6feebe-ed90-41e9-8ff2-606100cd672c','Grammar','In this section, the students will learn and do exercises on English grammar. This section comprises 13 topics, with each topic consists of 6 levels.','THUMBNAIL-3f6feebe-ed90-41e9-8ff2-606100cd672c-edafcf0774a43764554eaed9b068e978.png',0,'2024-11-04 10:15:11'),('5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Vocabulary','In this section, students will learn and do practices on vocabulary learning. This section comprises 10 topics, with each topic consists of 6 levels. ','THUMBNAIL-5d345bbf-0cf9-4bfe-8ccb-585124d2d455-3083df1fac34e5cf59e298ee9fea112d.jpg',0,'2024-11-04 10:12:28'),('87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Listening','In this section, you will be exposed to speech or conversation about tourism. The topics covered in this section are.... In each topic you will...',NULL,0,'2024-11-04 10:14:05'),('b63a66f7-20aa-4221-b6cf-2b7725fc896c','Reading','In this section, SEALS allows students to read different kinds of texts across 11 chosen topics. Each topic is designed to help students develop important reading skills and improve their understanding of the English language.',NULL,0,'2024-11-04 10:13:57');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20241012202559-create-users.cjs'),('20241014033659-create-teacher.cjs'),('20241014063413-create-report.cjs'),('20241014063944-create-class.cjs'),('20241014064557-create-student.cjs'),('20241014065005-create-section.cjs'),('20241014065621-create-topic.cjs'),('20241014070248-create-level.cjs'),('20241014070802-create-exercise.cjs'),('20241014071514-create-multiple-choices.cjs'),('20241014072116-create-matching-pairs.cjs'),('20241014072654-create-true-false.cjs'),('20241014080340-create-student-learning.cjs'),('20241014082006-create-student-exercise.cjs'),('20241014082720-create-monitoring.cjs');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `ID_SISWA` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID_CLASS` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ID` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `NISN` bigint NOT NULL,
  PRIMARY KEY (`ID_SISWA`),
  UNIQUE KEY `student_unique_nisn` (`NISN`),
  KEY `FK_MENAMPUNG` (`ID_CLASS`),
  KEY `FK_MENJADI` (`ID`),
  CONSTRAINT `FK_MENAMPUNG` FOREIGN KEY (`ID_CLASS`) REFERENCES `class` (`ID_CLASS`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_MENJADI` FOREIGN KEY (`ID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('0b2f4086-a30f-4511-8671-06fe0306f296',NULL,'fd9bf1bd-6d1c-4612-8bb1-c2c6385738fc',2141720074),('11413a33-6de7-4c65-b0ba-a1e64005d68c',NULL,'e6e601d1-c13a-436e-bd79-a7a803d73b73',2174646461);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_exercise`
--

DROP TABLE IF EXISTS `student_exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_exercise` (
  `ID_STUDENT_EXERCISE` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID_ADMIN_EXERCISE` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID_STUDENT_LEARNING` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ANSWER_STUDENT` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `IS_CORRECT` tinyint(1) NOT NULL DEFAULT '0',
  `RESULT_SCORE_STUDENT` float DEFAULT NULL,
  `TIME_STUDENT_EXC` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_STUDENT_EXERCISE`),
  KEY `FK_MENGERJAKAN` (`ID_ADMIN_EXERCISE`),
  KEY `FK_MELIBATKAN` (`ID_STUDENT_LEARNING`),
  CONSTRAINT `FK_MELIBATKAN` FOREIGN KEY (`ID_STUDENT_LEARNING`) REFERENCES `student_learning` (`ID_STUDENT_LEARNING`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MENGERJAKAN` FOREIGN KEY (`ID_ADMIN_EXERCISE`) REFERENCES `admin_exercise` (`ID_ADMIN_EXERCISE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_exercise`
--

LOCK TABLES `student_exercise` WRITE;
/*!40000 ALTER TABLE `student_exercise` DISABLE KEYS */;
INSERT INTO `student_exercise` VALUES ('a8fca8d7-02d2-4cc1-9bd4-e4abea70a691','b824f8ef-7502-4802-9e60-c1ff58e6660c','d1619125-5b52-4192-a77e-e36958f613df','A',0,0,'2024-11-04 14:38:36'),('e81078e0-fc33-43cd-9322-4351650a1fa3','4d338095-df06-4c01-885c-ecbd5bcc3cb8','d1619125-5b52-4192-a77e-e36958f613df','A',1,15,'2024-11-04 14:38:36');
/*!40000 ALTER TABLE `student_exercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_learning`
--

DROP TABLE IF EXISTS `student_learning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_learning` (
  `ID_STUDENT_LEARNING` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID_LEVEL` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `STUDENT_START` datetime NOT NULL,
  `STUDENT_FINISH` datetime DEFAULT NULL,
  `SCORE` int DEFAULT NULL,
  `IS_PASS` tinyint(1) NOT NULL DEFAULT '0',
  `NEXT_LEARNING` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `FEEDBACK_STUDENT` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TIME_LEARNING` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_STUDENT_LEARNING`),
  KEY `FK_MENGAKSES` (`ID`),
  KEY `FK_DIGUNAKAN` (`ID_LEVEL`),
  KEY `FK_MELANJUTKAN` (`NEXT_LEARNING`),
  CONSTRAINT `FK_DIGUNAKAN` FOREIGN KEY (`ID_LEVEL`) REFERENCES `level` (`ID_LEVEL`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MELANJUTKAN` FOREIGN KEY (`NEXT_LEARNING`) REFERENCES `level` (`ID_LEVEL`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MENGAKSES` FOREIGN KEY (`ID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_learning`
--

LOCK TABLES `student_learning` WRITE;
/*!40000 ALTER TABLE `student_learning` DISABLE KEYS */;
INSERT INTO `student_learning` VALUES ('d1619125-5b52-4192-a77e-e36958f613df','b6f5e1be-3ea8-46fc-bd17-ad396ca94fbf','b07fff5b-590d-45d5-97af-f3712ca6a324','2024-11-04 14:38:16',NULL,NULL,0,NULL,NULL,'2024-11-04 14:38:16');
/*!40000 ALTER TABLE `student_learning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `ID_GURU` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `NIP` bigint NOT NULL,
  PRIMARY KEY (`ID_GURU`),
  UNIQUE KEY `teacher_unique_nip` (`NIP`),
  KEY `FK_MERANGKAP` (`ID`),
  CONSTRAINT `FK_MERANGKAP` FOREIGN KEY (`ID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `ID_TOPIC` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID_SECTION` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `NAME_TOPIC` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `DESCRIPTION_TOPIC` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IS_DELETED` tinyint(1) DEFAULT '0',
  `TIME_TOPIC` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_TOPIC`),
  KEY `FK_MEMILIKI` (`ID_SECTION`),
  CONSTRAINT `FK_MEMILIKI` FOREIGN KEY (`ID_SECTION`) REFERENCES `section` (`ID_SECTION`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES ('37c5b94f-f106-45ba-badc-be4af62aa0de','3f6feebe-ed90-41e9-8ff2-606100cd672c','Adjectives','Adjectives',0,'2024-11-04 14:04:50'),('41970cb7-0c83-4e45-812a-f340859d506e','3f6feebe-ed90-41e9-8ff2-606100cd672c','Noun','In this topic, the students will learn and do practices about noun.',0,'2024-11-04 13:52:47'),('47303ebe-5407-44a8-8a8f-c43aa73477f6','b63a66f7-20aa-4221-b6cf-2b7725fc896c','Talking About Self (Email)','In this topic, students will learn how to write a personal email introducing themselves. They will practice including important information such as their name, age, hobbies, and interests. Students will also learn how to greet the reader and end the email politely. ',0,'2024-11-04 11:21:31'),('5a55f428-4660-4a58-b092-b5cec2183d9a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Giving information to the Public','In this section, you will hear some statements by a speaker containing information that is needed to answer the questions. The statements are about giving information to the public which is necessary for you to understand the topic as related to daily and professional environment.',0,'2024-11-04 13:42:46'),('746ad91a-03d6-4f3a-94ac-e751b58e2642','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Talking about Self','This topic deals with ...',0,'2024-11-04 13:45:10'),('78df9cf6-7a60-45b3-a726-a98233022121','3f6feebe-ed90-41e9-8ff2-606100cd672c','Present Simple Tense','Present Simple Tense',0,'2024-11-04 14:17:03'),('79e76ad6-94fb-4b0e-82bc-9094f4bc03b4','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Culinary','This topic of \'Culinary\' offers students to explore, learn, and do vocabulary building practices on the topic. This topic consists of 6 levels, namely:\n- Level 1 & 2, containing the first 1,000 words of Paul Nation\'s List\n- Level 3 & 4, containing the first 1,500 words of Paul Nation\'s List\n- Level 5 & 6, containing the first 2,000 words of Paul Nation\'s List\n',0,'2024-11-04 14:08:01'),('a16c9974-397b-4811-bc0c-1a0f35476f38','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Appreciating Cultures','In this section, you will hear some statements by a speaker containing information that is needed to answer the questions. The statements are about appreciating cultures which is necessary for you to understand the topic as it relates to daily and professional environments.',0,'2024-11-04 13:51:51'),('b121547a-0603-4c64-ae8b-802aacf0aed3','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Life of Famous People','This topic of \'Life of Famous People\' offers students to explore, learn, and do vocabulary building practices on the topic. This topic consists of 6 levels, namely:\n- Level 1 & 2, containing the first 1,000 words of Paul Nation\'s List\n- Level 3 & 4, containing the first 1,500 words of Paul Nation\'s List\n- Level 5 & 6, containing the first 2,000 words of Paul Nation\'s List\n',0,'2024-11-04 14:07:07'),('b22ba6d7-d8f0-4ce0-95c3-466478111f4e','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Talking about Self','In this topic of \'Talking about Self\', students can explore, learn, and do practices to enrich vocabulary related to the topic. The topic consists of 6 levels, namely:\n- Level 1, consisting of the use of the first 1,000 words of the Paul Nation\'s list. \n- Level 2, consisting of the use of the first 1,500 words of the Paul Nation\'s list. \n- Level 3, consisting of the use of the first 2,000 words of the Paul Nation\'s list. ',0,'2024-11-04 13:46:54'),('b402dbf8-32c8-4315-b40e-a70888fdb107','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Entertaining','In this section, you will hear some statements by a speaker containing information that is needed to answer the questions. The statements are about entertaining which is necessary for you to understand the topic as it relates to daily and professional environments.',0,'2024-11-04 13:49:56'),('c8c06652-9b43-418e-b371-a7ebd196fad0','5d345bbf-0cf9-4bfe-8ccb-585124d2d455','Folktales','This topic of \'Folktales\' offers students to explore, learn, and do vocabulary building practices on the topic. This topic consists of 6 levels, namely:\n- Level 1 & 2, containing the first 1,000 words of Paul Nation\'s List\n- Level 3 & 4, containing the first 1,500 words of Paul Nation\'s List\n- Level 5 & 6, containing the first 2,000 words of Paul Nation\'s List\n',0,'2024-11-04 14:04:49'),('cb457d60-d09f-48bf-87c2-64ab3ff14218','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Talking about Intentions','This topic deals with ....',0,'2024-11-04 13:44:13'),('cec0cb96-a3a7-4998-9c3c-57139fd635eb','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Retelling Past Events','In this section, you will hear some statements by a speaker containing information that is needed to answer the questions. The statements are about retelling past events which is necessary for you to understand the topic as it relates to daily and professional environments.',0,'2024-11-04 13:49:00'),('e7e035e0-fd38-492f-8be4-5318b7c0a78a','87d4d5e2-b7bb-428c-a5ca-1cb022e4e8cb','Congratulating and Complimenting Others','This topic deals with ...',0,'2024-11-04 13:56:27');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `true_false`
--

DROP TABLE IF EXISTS `true_false`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `true_false` (
  `ID_TRUE_FALSE` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ID_ADMIN_EXERCISE` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `IS_TRUE` tinyint(1) NOT NULL,
  `TIME_TRUE_FALSE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_TRUE_FALSE`),
  KEY `FK_TF_TERDAPAT` (`ID_ADMIN_EXERCISE`),
  CONSTRAINT `FK_TF_TERDAPAT` FOREIGN KEY (`ID_ADMIN_EXERCISE`) REFERENCES `admin_exercise` (`ID_ADMIN_EXERCISE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `true_false`
--

LOCK TABLES `true_false` WRITE;
/*!40000 ALTER TABLE `true_false` DISABLE KEYS */;
INSERT INTO `true_false` VALUES ('70175932-613f-4f47-9fa8-3b0d56ed2cac','2760eaaa-d591-426c-a657-fc2725eb9b60',0,'2024-11-04 14:18:51'),('b021a071-9a25-469b-bdaa-3c2b8057f81a','5f311a6b-41f1-4c8a-9dd0-46b0aed77668',0,'2024-11-04 14:19:25'),('ce489c80-8daa-4cb1-b93e-8f4d2f96e423','8da149f5-4cbc-4783-a4bf-ba4c71841826',1,'2024-11-04 14:19:50'),('d504fbc5-b395-4552-aefa-e8f8a553dcd7','99d20578-5e6e-499a-9a5a-530b844fec69',1,'2024-11-04 14:20:13'),('e2181ee2-e604-4b53-aec1-93688f96e902','c42dcc67-481d-480a-9a14-8a53bd4c9f84',0,'2024-11-04 14:17:25');
/*!40000 ALTER TABLE `true_false` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `NAME_USERS` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `EMAIL` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `PASSWORD` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `ROLE` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PICTURE` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `REFRESH_TOKEN` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TIME_USERS` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `user_unique_email` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('b6f5e1be-3ea8-46fc-bd17-ad396ca94fbf','Administrator','adminseals@gmail.com','$2a$10$63jUPJ5QRsRg2gSvKHqhNOz7TtAcdh/qzx8/MkIJReWJ/xoyzsR9.','admin',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJRCI6ImI2ZjVlMWJlLTNlYTgtNDZmYy1iZDE3LWFkMzk2Y2E5NGZiZiIsIlJPTEUiOiJhZG1pbiIsImlhdCI6MTczMDcwNTI5NiwiZXhwIjoxNzMxMzEwMDk2fQ.Q8M2pcUgZbS_fsjYjbyWXYz3bNZj4PbSihVA6cSqBPg','2024-11-01 13:26:59'),('e6e601d1-c13a-436e-bd79-a7a803d73b73','test aja','testaja@gmail.com','$2b$10$EcoRwzpmR0Eib3FojyquW.TcXeTMexEVCl1/ZWQRb6WSKVgUpoTTe','student',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJRCI6ImU2ZTYwMWQxLWMxM2EtNDM2ZS1iZDc5LWE3YTgwM2Q3M2I3MyIsIlJPTEUiOiJzdHVkZW50IiwiaWF0IjoxNzMwNjg4MzEyLCJleHAiOjE3MzEyOTMxMTJ9.lRQerJZAI_-T59eDkD1xVwbMjW0OFZkB00ZeHIDOSg8','2024-11-04 09:45:01'),('fd9bf1bd-6d1c-4612-8bb1-c2c6385738fc','elangptra','elangptra17@gmail.com','$2b$10$z72qAUzLWsiD9H9BBac3U.T1edi3M2G.VafOzlnoDX1A5gAfgzxN6','student',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJRCI6ImZkOWJmMWJkLTZkMWMtNDYxMi04YmIxLWMyYzYzODU3MzhmYyIsIlJPTEUiOiJzdHVkZW50IiwiaWF0IjoxNzMwNzA1NTEyLCJleHAiOjE3MzEzMTAzMTJ9.Selw1YMLYsancfyir8Ogt2QGJk4DPrnM3pfdYfvC6-Y','2024-11-04 07:55:44');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-04  7:39:07
