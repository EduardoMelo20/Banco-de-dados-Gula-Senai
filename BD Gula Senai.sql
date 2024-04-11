CREATE DATABASE  IF NOT EXISTS `super_mercado` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `super_mercado`;
-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: super_mercado
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedores` (
  `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `fornecedor` varchar(50) NOT NULL,
  `produto_fornecido` varchar(50) NOT NULL,
  `telefone_fornecedor` varchar(50) NOT NULL,
  `email_fornecedor` varchar(50) NOT NULL,
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'TIROL','LEITE','41998556532','tirolltda@email.com'),(2,'PANCO','PAES','41995636522','pancoltda@email.com'),(3,'NESCAU','ACHOCOLATADO EM PO','41995632532','nescalltda@email.com'),(4,'COCA COLA','REFRIGERANTE','4155623863','cocacolaltda@email.com'),(5,'BURITI','ARROZ','41223598565','buritiltda@email.com'),(6,'KELLOGGS','CERAL MATINAL','41998563253','kelloggsltda@email.com'),(7,'TIROL','LEITE','41998556532','tirolltda@email.com'),(8,'PANCO','PAES','41995636522','pancoltda@email.com'),(9,'NESCAU','ACHOCOLATADO EM PO','41995632532','nescalltda@email.com'),(10,'COCA COLA','REFRIGERANTE','4155623863','cocacolaltda@email.com'),(11,'BURITI','ARROZ','41223598565','buritiltda@email.com'),(12,'KELLOGGS','CERAL MATINAL','41998563253','kelloggsltda@email.com');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionarios` (
  `id_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `CPF` char(11) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  UNIQUE KEY `CPF` (`CPF`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'CAIXA 1','MARIA','41226558223','maria@gmail.com','45675638533','RUA 27'),(2,'CAIXA 2','HELENA','41665395653','helena@gmail.com','45889856855','RUA 25'),(3,'CAIXA 3','VITORIA','41995632326','vitoria@gmail.com','55456662565','RUA 98'),(4,'CAIXA 4','FERNANDA','41995632897','fernada@gmail.com','12345678954','RUA 57'),(5,'ESTOQUISTA','VALTER','9874533210','valter@email.com','53568951232','Rua calabreso, 78'),(6,'ADMINISTRADOR','EDUARDO','41998513653','eduardo@email.com','14090665922','Edward Granger, 55'),(7,'PADEIRO','VICTOR','4190028922','vitindasilva@gmail.com','00002555588','RUA 46'),(8,'ATENDENTE DE BALCÃO','Ana','9876543210','ana@gemail.com','99988877766','Rua C, 789'),(9,'AÇOUGUEIRO','CEZAR','9874533210','cezar@email.com','04156277766','Rua Leopoldo, 59'),(10,'REPOSITOR','VINICIUS','568533210','vinicius@email.com','41995632659','Rua Jose Ferreira, 55'),(11,'SEGURANÇA','CARLOS','9874534210','carlos@email.com','4524865766','Rua guardian, 77'),(12,'LIMPEZA','MARIA','9856983210','maria@email.com','4156598766','Rua Doroteia, 99'),(13,'ALMOXARIFADO','TIAGO','9874533210','tiago@email.com','44150000066','Rua bertao, 98'),(92,'CAIXA 1','MARIA','41226512223','maria@gmail.com','45678998693','RUA 27'),(93,'CAIXA 2','HELENA','41665395653','helena@gmail.com','45626956855','RUA 25'),(94,'CAIXA 3','VITORIA','41995632326','vitoria@gmail.com','55556662565','RUA 98'),(95,'CAIXA 4','FERNANDA','41995632897','fernada@gmail.com','45645669565','RUA 57'),(96,'ESTOQUISTA','VALTER','9874533210','valter@email.com','44169265926','Rua calabreso, 78'),(97,'ADMINISTRADOR','EDUARDO','41998513653','eduardo@email.com','16990665922','Edward Granger, 55'),(98,'PADEIRO','VICTOR','4192228922','vitindasilva@gmail.com','06902555588','RUA 46'),(99,'ATENDENTE DE BALCÃO','Ana','9876543210','ana@gemail.com','99698877766','Rua C, 789'),(100,'AÇOUGUEIRO','CEZAR','9874533210','cezar@email.com','04156276966','Rua Leopoldo, 59'),(101,'REPOSITOR','VINICIUS','568533210','vinicius@email.com','41969632659','Rua Jose Ferreira, 55'),(102,'SEGURANÇA','CARLOS','9874554210','carlos@email.com','4524869766','Rua guardian, 77'),(103,'LIMPEZA','MARIA','9856983210','maria@email.com','4156596966','Rua Doroteia, 99'),(104,'ALMOXARIFADO','TIAGO','9874533210','tiago@email.com','44169000066','Rua bertao, 98');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logins` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password_` varchar(100) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  PRIMARY KEY (`id_login`),
  UNIQUE KEY `username` (`username`),
  KEY `id_funcionario` (`id_funcionario`),
  CONSTRAINT `logins_ibfk_1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logins`
--

LOCK TABLES `logins` WRITE;
/*!40000 ALTER TABLE `logins` DISABLE KEYS */;
INSERT INTO `logins` VALUES (1,'user_caixa1','senha123',1),(2,'user_caixa2','senha123',2),(3,'user_caixa3','senha123',3),(4,'user_caixa4','senha123',4),(5,'user_estoquista','senha456',5),(6,'user_administrador','adm102030',6);
/*!40000 ALTER TABLE `logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_de_compras`
--

DROP TABLE IF EXISTS `notas_de_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_de_compras` (
  `id_notac` int(11) NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int(11) NOT NULL,
  `data_hora_compra` varchar(50) NOT NULL,
  `total_transacaoc` decimal(10,2) NOT NULL,
  `chegada_da_remessa` varchar(100) NOT NULL,
  PRIMARY KEY (`id_notac`),
  KEY `id_fornecedor` (`id_fornecedor`),
  CONSTRAINT `notas_de_compras_ibfk_1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores` (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=421 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_de_compras`
--

LOCK TABLES `notas_de_compras` WRITE;
/*!40000 ALTER TABLE `notas_de_compras` DISABLE KEYS */;
INSERT INTO `notas_de_compras` VALUES (301,1,'2024-03-25 08:00:00',500.00,'Via Transportadora ABC'),(302,3,'2024-03-28 12:30:00',700.00,'Entrega Própria'),(303,1,'2024-04-02 10:00:00',900.00,'Correios'),(304,2,'2024-04-05 09:45:00',600.00,'Entrega Própria'),(305,4,'2024-04-08 11:20:00',800.00,'Correios'),(306,5,'2024-04-11 14:00:00',750.00,'Via Transportadora ABC'),(307,5,'2024-04-14 09:30:00',650.00,'Entrega Própria'),(308,6,'2024-04-17 11:15:00',850.00,'Correios'),(309,4,'2024-04-20 12:00:00',700.00,'Via Transportadora ABC'),(310,4,'2024-04-23 10:30:00',550.00,'Entrega Própria'),(311,3,'2024-04-26 08:45:00',950.00,'Correios'),(312,3,'2024-04-29 14:20:00',720.00,'Via Transportadora ABC'),(313,2,'2024-05-02 11:00:00',680.00,'Entrega Própria'),(314,1,'2024-05-05 09:25:00',820.00,'Correios'),(315,4,'2024-05-08 10:40:00',730.00,'Via Transportadora ABC'),(316,5,'2024-05-11 12:15:00',570.00,'Entrega Própria'),(317,6,'2024-05-14 13:50:00',890.00,'Correios'),(318,5,'2024-05-17 08:30:00',640.00,'Via Transportadora ABC'),(319,6,'2024-05-20 11:10:00',920.00,'Entrega Própria'),(320,6,'2024-05-23 14:00:00',680.00,'Correios'),(401,6,'2024-07-10 08:00:00',650.00,'Via Transportadora ABC'),(402,5,'2024-07-11 10:30:00',720.00,'Entrega Própria'),(403,4,'2024-07-12 13:00:00',590.00,'Correios'),(404,4,'2024-07-13 09:45:00',850.00,'Entrega Própria'),(405,4,'2024-07-14 11:20:00',930.00,'Correios'),(406,4,'2024-07-15 14:00:00',780.00,'Via Transportadora ABC'),(407,5,'2024-07-16 09:30:00',670.00,'Entrega Própria'),(408,5,'2024-07-17 12:15:00',890.00,'Correios'),(409,3,'2024-07-18 08:30:00',720.00,'Via Transportadora ABC'),(410,3,'2024-07-19 10:45:00',610.00,'Entrega Própria'),(411,2,'2024-07-20 13:20:00',940.00,'Correios'),(412,1,'2024-07-21 08:50:00',830.00,'Via Transportadora ABC'),(413,4,'2024-07-22 11:00:00',770.00,'Entrega Própria'),(414,5,'2024-07-23 14:25:00',690.00,'Correios'),(415,2,'2024-07-24 09:40:00',810.00,'Via Transportadora ABC'),(416,1,'2024-07-25 12:10:00',920.00,'Entrega Própria'),(417,2,'2024-07-26 08:30:00',740.00,'Correios'),(418,3,'2024-07-27 11:45:00',670.00,'Via Transportadora ABC'),(419,1,'2024-07-28 13:50:00',880.00,'Entrega Própria'),(420,1,'2024-07-29 10:20:00',930.00,'Correios');
/*!40000 ALTER TABLE `notas_de_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_de_vendas`
--

DROP TABLE IF EXISTS `notas_de_vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_de_vendas` (
  `id_notav` int(11) NOT NULL AUTO_INCREMENT,
  `data_hora_venda` varchar(50) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `total_transacao` decimal(10,2) DEFAULT NULL,
  `metodo_de_pagamento` varchar(50) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `preco_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_notav`),
  KEY `id_funcionario` (`id_funcionario`),
  CONSTRAINT `notas_de_vendas_ibfk_1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_de_vendas`
--

LOCK TABLES `notas_de_vendas` WRITE;
/*!40000 ALTER TABLE `notas_de_vendas` DISABLE KEYS */;
INSERT INTO `notas_de_vendas` VALUES (1,'2024-04-01 10:30:00',4,150.00,'Cartão de Crédito',5,25.00),(2,'2024-04-02 14:45:00',2,200.00,'Dinheiro',2,30.00),(3,'2024-04-03 11:15:00',3,100.00,'Transferência Bancária',2,10.00),(4,'2024-04-04 09:20:00',2,250.00,'Cartão de Crédito',3,20.00),(5,'2024-04-05 16:00:00',1,180.00,'Dinheiro',5,15.00),(6,'2024-04-06 13:30:00',4,300.00,'Cartão de Débito',6,25.00),(7,'2024-04-07 12:00:00',3,220.00,'Transferência Bancária',4,22.00),(8,'2024-04-08 09:45:00',4,400.00,'Cartão de Crédito',3,40.00),(9,'2024-04-09 11:00:00',1,120.00,'Dinheiro',2,12.00),(10,'2024-04-10 08:30:00',1,350.00,'Cartão de Débito',1,35.00),(11,'2024-04-11 14:20:00',1,280.00,'Transferência Bancária',2,28.00),(12,'2024-04-12 16:15:00',2,180.00,'Cartão de Crédito',4,18.00),(13,'2024-04-13 10:10:00',2,200.00,'Dinheiro',5,20.00),(14,'2024-04-14 11:30:00',3,150.00,'Cartão de Débito',6,15.00),(15,'2024-04-15 09:00:00',4,320.00,'Transferência Bancária',6,32.00),(16,'2024-04-16 12:40:00',1,260.00,'Cartão de Crédito',2,26.00),(17,'2024-04-17 14:50:00',2,140.00,'Dinheiro',3,14.00),(18,'2024-04-18 08:15:00',1,180.00,'Cartão de Débito',4,18.00),(19,'2024-04-19 10:25:00',1,400.00,'Transferência Bancária',5,40.00),(20,'2024-04-20 13:20:00',2,210.00,'Cartão de Crédito',6,21.00),(21,'2024-07-10 09:30:00',4,220.00,'Dinheiro',3,22.00),(22,'2024-07-11 11:15:00',2,180.00,'Cartão de Débito',2,18.00),(23,'2024-07-12 12:00:00',2,400.00,'Transferência Bancária',3,40.00),(24,'2024-07-13 13:45:00',3,350.00,'Cartão de Crédito',4,35.00),(25,'2024-07-14 14:30:00',1,280.00,'Dinheiro',5,28.00),(26,'2024-07-15 10:20:00',4,190.00,'Cartão de Crédito',6,19.00),(27,'2024-07-16 09:10:00',2,310.00,'Dinheiro',4,31.00),(28,'2024-07-17 08:00:00',1,240.00,'Cartão de Débito',2,24.00),(29,'2024-07-18 12:45:00',3,420.00,'Transferência Bancária',6,42.00),(30,'2024-07-19 13:30:00',4,270.00,'Cartão de Crédito',3,27.00),(31,'2024-07-20 15:00:00',2,330.00,'Dinheiro',6,33.00),(32,'2024-07-21 11:40:00',1,380.00,'Cartão de Débito',4,38.00),(33,'2024-07-22 10:15:00',2,290.00,'Transferência Bancária',6,29.00),(34,'2024-07-23 09:30:00',4,260.00,'Dinheiro',4,26.00),(35,'2024-07-24 12:20:00',2,180.00,'Cartão de Crédito',1,18.00),(36,'2024-07-25 14:10:00',2,310.00,'Dinheiro',2,31.00),(37,'2024-07-26 08:50:00',3,250.00,'Cartão de Débito',3,25.00),(38,'2024-07-27 10:40:00',1,370.00,'Transferência Bancária',2,37.00),(39,'2024-07-28 13:20:00',2,190.00,'Dinheiro',1,19.00),(40,'2024-07-29 11:05:00',4,220.00,'Cartão de Crédito',2,22.00),(41,'2024-04-01 10:30:00',4,150.00,'Cartão de Crédito',5,25.00),(42,'2024-04-02 14:45:00',2,200.00,'Dinheiro',2,30.00),(43,'2024-04-03 11:15:00',3,100.00,'Transferência Bancária',2,10.00),(44,'2024-04-04 09:20:00',2,250.00,'Cartão de Crédito',3,20.00),(45,'2024-04-05 16:00:00',1,180.00,'Dinheiro',5,15.00),(46,'2024-04-06 13:30:00',4,300.00,'Cartão de Débito',6,25.00),(47,'2024-04-07 12:00:00',3,220.00,'Transferência Bancária',4,22.00),(48,'2024-04-08 09:45:00',4,400.00,'Cartão de Crédito',3,40.00),(49,'2024-04-09 11:00:00',1,120.00,'Dinheiro',2,12.00),(50,'2024-04-10 08:30:00',1,350.00,'Cartão de Débito',1,35.00),(51,'2024-04-11 14:20:00',1,280.00,'Transferência Bancária',2,28.00),(52,'2024-04-12 16:15:00',2,180.00,'Cartão de Crédito',4,18.00),(53,'2024-04-13 10:10:00',2,200.00,'Dinheiro',5,20.00),(54,'2024-04-14 11:30:00',3,150.00,'Cartão de Débito',6,15.00),(55,'2024-04-15 09:00:00',4,320.00,'Transferência Bancária',6,32.00),(56,'2024-04-16 12:40:00',1,260.00,'Cartão de Crédito',2,26.00),(57,'2024-04-17 14:50:00',2,140.00,'Dinheiro',3,14.00),(58,'2024-04-18 08:15:00',1,180.00,'Cartão de Débito',4,18.00),(59,'2024-04-19 10:25:00',1,400.00,'Transferência Bancária',5,40.00),(60,'2024-04-20 13:20:00',2,210.00,'Cartão de Crédito',6,21.00),(61,'2024-07-10 09:30:00',4,220.00,'Dinheiro',3,22.00),(62,'2024-07-11 11:15:00',2,180.00,'Cartão de Débito',2,18.00),(63,'2024-07-12 12:00:00',2,400.00,'Transferência Bancária',3,40.00),(64,'2024-07-13 13:45:00',3,350.00,'Cartão de Crédito',4,35.00),(65,'2024-07-14 14:30:00',1,280.00,'Dinheiro',5,28.00),(66,'2024-07-15 10:20:00',4,190.00,'Cartão de Crédito',6,19.00),(67,'2024-07-16 09:10:00',2,310.00,'Dinheiro',4,31.00),(68,'2024-07-17 08:00:00',1,240.00,'Cartão de Débito',2,24.00),(69,'2024-07-18 12:45:00',3,420.00,'Transferência Bancária',6,42.00),(70,'2024-07-19 13:30:00',4,270.00,'Cartão de Crédito',3,27.00),(71,'2024-07-20 15:00:00',2,330.00,'Dinheiro',6,33.00),(72,'2024-07-21 11:40:00',1,380.00,'Cartão de Débito',4,38.00),(73,'2024-07-22 10:15:00',2,290.00,'Transferência Bancária',6,29.00),(74,'2024-07-23 09:30:00',4,260.00,'Dinheiro',4,26.00),(75,'2024-07-24 12:20:00',2,180.00,'Cartão de Crédito',1,18.00),(76,'2024-07-25 14:10:00',2,310.00,'Dinheiro',2,31.00),(77,'2024-07-26 08:50:00',3,250.00,'Cartão de Débito',3,25.00),(78,'2024-07-27 10:40:00',1,370.00,'Transferência Bancária',2,37.00),(79,'2024-07-28 13:20:00',2,190.00,'Dinheiro',1,19.00),(80,'2024-07-29 11:05:00',4,220.00,'Cartão de Crédito',2,22.00),(81,'2024-04-01 10:30:00',4,150.00,'Cartão de Crédito',5,25.00),(82,'2024-04-02 14:45:00',2,200.00,'Dinheiro',2,30.00),(83,'2024-04-03 11:15:00',3,100.00,'Transferência Bancária',2,10.00),(84,'2024-04-04 09:20:00',2,250.00,'Cartão de Crédito',3,20.00),(85,'2024-04-05 16:00:00',1,180.00,'Dinheiro',5,15.00),(86,'2024-04-06 13:30:00',4,300.00,'Cartão de Débito',6,25.00),(87,'2024-04-07 12:00:00',3,220.00,'Transferência Bancária',4,22.00),(88,'2024-04-08 09:45:00',4,400.00,'Cartão de Crédito',3,40.00),(89,'2024-04-09 11:00:00',1,120.00,'Dinheiro',2,12.00),(90,'2024-04-10 08:30:00',1,350.00,'Cartão de Débito',1,35.00),(91,'2024-04-11 14:20:00',1,280.00,'Transferência Bancária',2,28.00),(92,'2024-04-12 16:15:00',2,180.00,'Cartão de Crédito',4,18.00),(93,'2024-04-13 10:10:00',2,200.00,'Dinheiro',5,20.00),(94,'2024-04-14 11:30:00',3,150.00,'Cartão de Débito',6,15.00),(95,'2024-04-15 09:00:00',4,320.00,'Transferência Bancária',6,32.00),(96,'2024-04-16 12:40:00',1,260.00,'Cartão de Crédito',2,26.00),(97,'2024-04-17 14:50:00',2,140.00,'Dinheiro',3,14.00),(98,'2024-04-18 08:15:00',1,180.00,'Cartão de Débito',4,18.00),(99,'2024-04-19 10:25:00',1,400.00,'Transferência Bancária',5,40.00),(100,'2024-04-20 13:20:00',2,210.00,'Cartão de Crédito',6,21.00),(101,'2024-07-10 09:30:00',4,220.00,'Dinheiro',3,22.00),(102,'2024-07-11 11:15:00',2,180.00,'Cartão de Débito',2,18.00),(103,'2024-07-12 12:00:00',2,400.00,'Transferência Bancária',3,40.00),(104,'2024-07-13 13:45:00',3,350.00,'Cartão de Crédito',4,35.00),(105,'2024-07-14 14:30:00',1,280.00,'Dinheiro',5,28.00),(106,'2024-07-15 10:20:00',4,190.00,'Cartão de Crédito',6,19.00),(107,'2024-07-16 09:10:00',2,310.00,'Dinheiro',4,31.00),(108,'2024-07-17 08:00:00',1,240.00,'Cartão de Débito',2,24.00),(109,'2024-07-18 12:45:00',3,420.00,'Transferência Bancária',6,42.00),(110,'2024-07-19 13:30:00',4,270.00,'Cartão de Crédito',3,27.00),(111,'2024-07-20 15:00:00',2,330.00,'Dinheiro',6,33.00),(112,'2024-07-21 11:40:00',1,380.00,'Cartão de Débito',4,38.00),(113,'2024-07-22 10:15:00',2,290.00,'Transferência Bancária',6,29.00),(114,'2024-07-23 09:30:00',4,260.00,'Dinheiro',4,26.00),(115,'2024-07-24 12:20:00',2,180.00,'Cartão de Crédito',1,18.00),(116,'2024-07-25 14:10:00',2,310.00,'Dinheiro',2,31.00),(117,'2024-07-26 08:50:00',3,250.00,'Cartão de Débito',3,25.00),(118,'2024-07-27 10:40:00',1,370.00,'Transferência Bancária',2,37.00),(119,'2024-07-28 13:20:00',2,190.00,'Dinheiro',1,19.00),(120,'2024-07-29 11:05:00',4,220.00,'Cartão de Crédito',2,22.00);
/*!40000 ALTER TABLE `notas_de_vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `preco_unitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Leite TIROL 1LT',50,5.00),(2,'Pao PANCO 500g',50,8.00),(3,'Nescau NESTLE 670g',50,18.00),(4,'Arroz BURITI 5KG',50,42.00),(5,'Cereal Original Kelloggs 240g',50,8.00),(6,'Coca Cola 2L',50,9.00),(7,'Leite TIROL 1LT',50,5.00),(8,'Pao PANCO 500g',50,8.00),(9,'Nescau NESTLE 670g',50,18.00),(10,'Arroz BURITI 5KG',50,42.00),(11,'Cereal Original Kelloggs 240g',50,8.00),(12,'Coca Cola 2L',50,9.00);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-10 21:26:54
