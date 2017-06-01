-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: bd
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comprovantes`
--

DROP TABLE IF EXISTS `comprovantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprovantes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `recibo_id` int(10) unsigned NOT NULL,
  `payment` date NOT NULL,
  `Maturity` date NOT NULL,
  `aproved` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`),
  KEY `fk_recibo_id` (`recibo_id`),
  CONSTRAINT `fk_recibo_id` FOREIGN KEY (`recibo_id`) REFERENCES `files` (`id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprovantes`
--

LOCK TABLES `comprovantes` WRITE;
/*!40000 ALTER TABLE `comprovantes` DISABLE KEYS */;
INSERT INTO `comprovantes` VALUES (1,13,25,'2014-05-26','2017-05-26',1),(2,13,26,'2017-05-26','2017-05-26',1);
/*!40000 ALTER TABLE `comprovantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modfied` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 17:54:38','2017-05-19 17:54:38',0),(2,'historico_parcial_aluno_20151INFIG0091_2017-04-06-12-24-34.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 17:57:29','2017-05-19 17:57:29',0),(3,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:18:49','2017-05-19 18:18:49',0),(4,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:19:16','2017-05-19 18:19:16',0),(5,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:19:18','2017-05-19 18:19:18',0),(6,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:19:19','2017-05-19 18:19:19',0),(7,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:19:19','2017-05-19 18:19:19',0),(8,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:19:20','2017-05-19 18:19:20',0),(9,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:19:20','2017-05-19 18:19:20',0),(10,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:19:20','2017-05-19 18:19:20',0),(11,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:19:20','2017-05-19 18:19:20',0),(12,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:19:21','2017-05-19 18:19:21',0),(13,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:19:21','2017-05-19 18:19:21',0),(14,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:19:21','2017-05-19 18:19:21',0),(15,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:19:21','2017-05-19 18:19:21',0),(16,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:19:21','2017-05-19 18:19:21',0),(17,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:19:22','2017-05-19 18:19:22',0),(18,'Mini RelatÃ³rio - Programa Bolsa PermanÃªncia.pdf','/home/paulo/projectpi/webroot/uploads/files/','2017-05-19 18:20:47','2017-05-19 18:20:47',0),(19,'efwwefe','/home/paulo/projectpi/webroot/uploads/files/','2017-05-26 17:52:17','2017-05-26 17:52:17',0),(20,'efwwefe','/home/paulo/projectpi/webroot/uploads/files/','2017-05-26 18:05:24','2017-05-26 18:05:24',0),(21,'efwwefe','/home/paulo/projectpi/webroot/uploads/files/','2017-05-26 18:05:26','2017-05-26 18:05:26',0),(22,'efwwefe','/home/paulo/projectpi/webroot/uploads/files/','2017-05-26 18:05:26','2017-05-26 18:05:26',0),(23,'efwwefe','/home/paulo/projectpi/webroot/uploads/files/','2017-05-26 18:05:27','2017-05-26 18:05:27',0),(24,'efwwefe','/home/paulo/projectpi/webroot/uploads/files/','2017-05-26 18:05:28','2017-05-26 18:05:28',0),(25,'1. Exibir o nome do setor, a sigla e o nome do che','/home/paulo/projectpi/webroot/uploads/files/','2017-05-26 18:06:31','2017-05-26 18:06:31',0),(26,'1-Select set_nome, set_sigla , fun_nome','/home/paulo/projectpi/webroot/uploads/files/','2017-05-26 18:26:08','2017-05-26 18:26:08',0);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phinxlog`
--

DROP TABLE IF EXISTS `phinxlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phinxlog`
--

LOCK TABLES `phinxlog` WRITE;
/*!40000 ALTER TABLE `phinxlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `phinxlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siape` varchar(15) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `plano` varchar(70) NOT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `siape` (`siape`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (13,'123456','paulo','joaopaulo@gmail.com','paulo','$2y$10$zfKHjH4YzhdDi.7WMnzsC.9xlUEmqvfz3Mm.Ya7PUWFmLCNfVtgPS','sus','Servidor');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-01 15:19:15
