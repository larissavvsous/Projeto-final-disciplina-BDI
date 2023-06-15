CREATE DATABASE  IF NOT EXISTS `projeto_final` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projeto_final`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: projeto_final
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `carros`
--

DROP TABLE IF EXISTS `carros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `ano` int NOT NULL,
  `cor` varchar(20) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `capacidade_motor` float NOT NULL,
  `transmissao` varchar(20) NOT NULL,
  `filial_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `carros_ibfk_1` FOREIGN KEY (`filial_id`) REFERENCES `filiais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carros`
--

LOCK TABLES `carros` WRITE;
/*!40000 ALTER TABLE `carros` DISABLE KEYS */;
INSERT INTO `carros` VALUES (1,'Volkswagen','Golf',2020,'Preto',75000.00,1.4,'Automática',1),(2,'Ford','Fiesta',2018,'Branco',45000.00,1,'Manual',1),(3,'Chevrolet','Onix',2022,'Vermelho',60000.00,1.2,'Automática',1),(4,'Fiat','Palio',2017,'Prata',40000.00,1,'Manual',2),(5,'Toyota','Corolla',2021,'Cinza',90000.00,2,'Automática',2),(6,'Renault','Kwid',2019,'Azul',35000.00,1,'Manual',2),(7,'Volkswagen','Polo',2020,'Prata',65000.00,1.6,'Automática',3),(8,'Ford','Ka',2019,'Branco',38000.00,1,'Manual',3),(9,'Chevrolet','Cruze',2021,'Vermelho',85000.00,1.8,'Automática',3),(10,'Fiat','Uno',2016,'Preto',30000.00,1,'Manual',4),(11,'Toyota','Yaris',2020,'Branco',60000.00,1.5,'Automática',4),(12,'Renault','Sandero',2018,'Prata',42000.00,1.6,'Manual',4),(13,'Volkswagen','Fox',2019,'Vermelho',45000.00,1,'Manual',5),(14,'Ford','EcoSport',2021,'Preto',80000.00,1.5,'Automática',5),(15,'Chevrolet','Spin',2017,'Cinza',50000.00,1.8,'Manual',5),(16,'Fiat','Mobi',2020,'Azul',35000.00,1,'Manual',6),(17,'Toyota','Hilux',2021,'Branco',120000.00,3,'Automática',6),(18,'Renault','Captur',2019,'Prata',65000.00,1.6,'Manual',6),(19,'Nissan','March',2017,'Prata',32000.00,1,'Manual',1),(20,'Hyundai','HB20',2019,'Preto',45000.00,1,'Manual',1),(21,'Chevrolet','Celta',2015,'Branco',28000.00,1,'Manual',1),(22,'Volkswagen','Virtus',2020,'Cinza',55000.00,1.6,'Automática',2),(23,'Ford','Ranger',2021,'Prata',110000.00,2.2,'Automática',2),(24,'Renault','Logan',2018,'Vermelho',38000.00,1.6,'Manual',2),(25,'Fiat','Argo',2020,'Preto',50000.00,1.3,'Manual',3),(26,'Toyota','Etios',2019,'Branco',42000.00,1.5,'Manual',3),(27,'Chevrolet','Prisma',2017,'Cinza',38000.00,1.4,'Manual',3),(28,'Volkswagen','Saveiro',2021,'Azul',60000.00,1.6,'Manual',4),(29,'Ford','Fusion',2022,'Prata',95000.00,2,'Automática',4),(30,'Renault','Duster',2019,'Preto',58000.00,1.6,'Manual',4),(31,'Fiat','Siena',2016,'Branco',32000.00,1.4,'Manual',5),(32,'Toyota','Rav4',2020,'Cinza',85000.00,2.5,'Automática',5),(33,'Chevrolet','Cobalt',2018,'Vermelho',45000.00,1.8,'Manual',5),(34,'Volkswagen','Amarok',2021,'Prata',125000.00,3,'Automática',6),(35,'Ford','Edge',2022,'Preto',105000.00,2.7,'Automática',6),(36,'Renault','Clio',2017,'Azul',32000.00,1,'Manual',6),(37,'Nissan','Versa',2020,'Prata',50000.00,1.6,'Automática',1),(38,'Hyundai','Creta',2019,'Branco',65000.00,1.6,'Manual',1),(39,'Chevrolet','Camaro',2022,'Vermelho',180000.00,6.2,'Automática',1),(40,'Volkswagen','T-Cross',2021,'Prata',75000.00,1.4,'Automática',2),(41,'Ford','Mustang',2022,'Preto',190000.00,5,'Automática',2),(42,'Renault','Fluence',2018,'Cinza',48000.00,2,'Manual',2),(43,'Fiat','Cronos',2020,'Azul',55000.00,1.8,'Automática',3),(44,'Toyota','Camry',2021,'Prata',98000.00,2.5,'Automática',3),(45,'Chevrolet','Tracker',2019,'Preto',65000.00,1.4,'Manual',3),(46,'Volkswagen','Tiguan',2020,'Branco',95000.00,2,'Automática',4),(47,'Ford','Focus',2018,'Prata',48000.00,2,'Manual',4),(48,'Renault','Megane',2017,'Azul',42000.00,1.6,'Manual',4),(49,'Fiat','Uno',2016,'Branco',25000.00,1,'Manual',5),(50,'Toyota','Corolla',2022,'Preto',105000.00,2,'Automática',5);
/*!40000 ALTER TABLE `carros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `carros_acima_media`
--

DROP TABLE IF EXISTS `carros_acima_media`;
/*!50001 DROP VIEW IF EXISTS `carros_acima_media`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `carros_acima_media` AS SELECT 
 1 AS `marca`,
 1 AS `modelo`,
 1 AS `preco`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `CEP` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'São Paulo','01000-000'),(2,'Rio de Janeiro','20000-000'),(3,'Belo Horizonte','30000-000');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `idade` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `historico_credito` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Luisa Silva','34567098765','345670987',29,'luisa.rodrigues@example.com','bom'),(2,'Paulo Oliveira','45678109876','456781098',37,'paulo.oliveira@example.com','razoável'),(3,'Amanda Santos','56789010987','567890109',24,'amanda.santos@example.com','ruim'),(4,'Rafaela Costa','67890121098','678901210',41,'rafaela.costa@example.com','bom'),(5,'Guilherme Souza','78901232109','789012321',22,'guilherme.souza@example.com','razoável'),(6,'Camila Lima','89012343210','890123432',36,'camila.lima@example.com','ruim'),(7,'Lucas Oliveira','90123454321','901234543',31,'lucas.oliveira@example.com','bom'),(8,'Mariana Castro','01234565432','012345654',28,'mariana.castro@example.com','razoável'),(9,'Thiago Santos','12345676543','123456765',35,'thiago.santos@example.com','ruim'),(10,'Carolina Gomes','23456787654','234567876',27,'carolina.gomes@example.com','bom'),(11,'Rodrigo Sousa','34567898765','345678987',34,'rodrigo.sousa@example.com','razoável'),(12,'Aline Mendes','45678909876','456789098',26,'aline.mendes@example.com','ruim'),(13,'Diego Gomes','56789010987','567890109',33,'diego.gomes@example.com','bom'),(14,'Bianca Rodrigues','67890121098','678901210',25,'bianca.rodrigues@example.com','razoável'),(15,'Renan Silva','78901232109','789012321',30,'renan.silva@example.com','ruim'),(16,'Juliana Costa','89012343210','890123432',37,'juliana.costa@example.com','bom'),(17,'Henrique Santos','90123454321','901234543',23,'henrique.santos@example.com','razoável'),(18,'Fernanda Lima','01234565432','012345654',32,'fernanda.lima@example.com','ruim'),(19,'Alexandre Oliveira','12345676543','123456765',29,'alexandre.oliveira@example.com','bom'),(20,'Beatriz Castro','23456787654','234567876',38,'beatriz.castro@example.com','razoável'),(21,'Giovanni Sousa','34567898765','345678987',27,'giovanni.sousa@example.com','ruim'),(22,'Larissa Mendes','45678909876','456789098',36,'larissa.mendes@example.com','bom'),(23,'Ricardo Gomes','56789010987','567890109',31,'ricardo.gomes@example.com','razoável'),(24,'Sabrina Silva','67890121098','678901210',24,'sabrina.silva@example.com','ruim'),(25,'Leonardo Costa','78901232109','789012321',33,'leonardo.costa@example.com','bom'),(26,'Ana Oliveira','89012343210','890123432',28,'ana.oliveira@example.com','razoável'),(27,'Matheus Santos','90123454321','901234543',35,'matheus.santos@example.com','ruim'),(28,'Gabriela Lima','01234565432','012345654',26,'gabriela.lima@example.com','bom'),(29,'Daniel Rodrigues','12345676543','123456765',34,'daniel.rodrigues@example.com','razoável'),(30,'Letícia Castro','23456787654','234567876',27,'leticia.castro@example.com','ruim'),(31,'Felipe Sousa','34567898765','345678987',30,'felipe.sousa@example.com','bom'),(32,'Manuela Mendes','45678909876','456789098',25,'manuela.mendes@example.com','razoável'),(33,'Eduardo Gomes','56789010987','567890109',32,'eduardo.gomes@example.com','ruim'),(34,'Isabela Silva','67890121098','678901210',29,'isabela.silva@example.com','bom'),(35,'Vitor Costa','78901232109','789012321',38,'vitor.costa@example.com','razoável'),(36,'Laura Oliveira','89012343210','890123432',27,'laura.oliveira@example.com','ruim'),(37,'Gustavo Santos','90123454321','901234543',34,'gustavo.santos@example.com','bom'),(38,'Camila Lima','01234565432','012345654',31,'camila.lima@example.com','razoável'),(39,'Luiza Rodrigues','89098709876','890987098',25,'luiza.rodrigues@example.com','bom'),(40,'Pedro Oliveira','90109810987','901098109',32,'pedro.oliveira@example.com','razoável'),(41,'Sofia Santos','01210921098','012109210',28,'sofia.santos@example.com','ruim'),(42,'Enzo Costa','12321032109','123210321',37,'enzo.costa@example.com','bom'),(43,'Valentina Lima','23432143210','234321432',24,'valentina.lima@example.com','razoável'),(44,'Gabriel Silva','34543254321','345432543',33,'gabriel.silva@example.com','ruim'),(45,'Helena Gomes','45654365432','456543654',29,'helena.gomes@example.com','bom'),(46,'Bernardo Sousa','56765476543','567654765',36,'bernardo.sousa@example.com','razoável'),(47,'Lara Mendes','67876587654','678765876',31,'lara.mendes@example.com','ruim'),(48,'Arthur Gomes','78987698765','789876987',27,'arthur.gomes@example.com','bom'),(49,'Isabella Rodrigues','89098709876','890987098',34,'isabella.rodrigues@example.com','razoável'),(50,'Davi Oliveira','90109810987','901098109',26,'davi.oliveira@example.com','ruim');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filiais`
--

DROP TABLE IF EXISTS `filiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filiais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `numero_funcionarios` int NOT NULL,
  `cidade_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cidade_id` (`cidade_id`),
  CONSTRAINT `filiais_ibfk_1` FOREIGN KEY (`cidade_id`) REFERENCES `cidade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filiais`
--

LOCK TABLES `filiais` WRITE;
/*!40000 ALTER TABLE `filiais` DISABLE KEYS */;
INSERT INTO `filiais` VALUES (1,'Filial 1','Rua A, 12',10,1),(2,'Filial 2','Rua B, 40',15,1),(3,'Filial 3','Rua C, 50',8,2),(4,'Filial 4','Rua D, 70',12,2),(5,'Filial 5','Rua E, 40',10,3),(6,'Filial 6','Rua F, 70',15,3);
/*!40000 ALTER TABLE `filiais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `idade` int NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `data_contratacao` date NOT NULL,
  `id_filial` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_filial` (`id_filial`),
  CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`id_filial`) REFERENCES `filiais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'João Silva','111111111',30,'Rua A, 123','Vendedor','2022-01-01',1),(2,'Maria Santos','222222222',28,'Rua B, 456','Gerente','2021-05-15',2),(3,'Pedro Rocha','333333333',35,'Rua C, 789','Vendedor','2022-03-10',3),(4,'Ana Costa','444444444',32,'Rua D, 321','Vendedor','2022-02-18',4),(5,'Carlos Oliveira','555555555',27,'Rua E, 654','Gerente','2021-08-22',5),(6,'Mariana Rodrigues','666666666',29,'Rua F, 987','Vendedor','2022-04-05',6),(7,'Laura Mendes','777777777',26,'Rua G, 753','Vendedor','2022-06-20',1),(8,'Rafael Santos','888888888',31,'Rua H, 456','Gerente','2021-10-05',2),(9,'Isabela Oliveira','999999999',29,'Rua I, 987','Vendedor','2022-07-15',3),(10,'Gabriel Costa','101010101',27,'Rua J, 321','Vendedor','2022-09-18',4),(11,'Carolina Rodrigues','111111111',33,'Rua K, 654','Gerente','2021-12-22',5),(12,'Fernando Pereira','121212121',28,'Rua L, 987','Vendedor','2022-08-05',6),(13,'Luisa Ferreira','131313131',24,'Rua M, 852','Vendedor','2022-11-10',1),(14,'Gustavo Almeida','141414141',30,'Rua N, 753','Gerente','2021-09-05',2),(15,'Camila Santos','151515151',27,'Rua O, 654','Vendedor','2022-12-18',3),(16,'Diego Lima','161616161',29,'Rua P, 321','Vendedor','2022-10-22',4),(17,'Juliana Fernandes','171717171',26,'Rua Q, 852','Gerente','2021-11-15',5),(18,'Roberto Silva','181818181',32,'Rua R, 753','Vendedor','2022-12-05',6),(19,'Renata Souza','191919191',28,'Rua S, 987','Vendedor','2023-01-10',1),(20,'Marcelo Costa','202020202',33,'Rua T, 456','Gerente','2022-07-05',2),(21,'Amanda Santos','212121212',26,'Rua U, 852','Vendedor','2023-02-18',3),(22,'Ricardo Lima','222222222',29,'Rua V, 321','Vendedor','2023-03-22',4),(23,'Carla Fernandes','232323232',27,'Rua X, 654','Gerente','2022-12-15',5),(24,'Luiz Pereira','242424242',32,'Rua Y, 987','Vendedor','2023-04-05',6),(25,'Fernanda Rodrigues','252525252',28,'Rua Z, 753','Vendedor','2023-05-10',1),(26,'Rodrigo Alves','262626262',30,'Rua AA, 456','Gerente','2022-08-05',2),(27,'Leticia Mendes','272727272',26,'Rua BB, 852','Vendedor','2023-06-18',3),(28,'Eduardo Lima','282828282',29,'Rua CC, 321','Vendedor','2023-07-22',4),(29,'Beatriz Fernandes','292929292',27,'Rua DD, 654','Gerente','2023-05-15',5),(30,'André Pereira','303030303',32,'Rua EE, 987','Vendedor','2023-08-05',6),(31,'Mariana Costa','313131313',28,'Rua FF, 753','Vendedor','2023-09-10',1),(32,'Guilherme Almeida','323232323',30,'Rua GG, 456','Gerente','2022-09-05',2),(33,'Carolina Lima','333333333',26,'Rua HH, 852','Vendedor','2023-10-18',3),(34,'Rafael Fernandes','343434343',29,'Rua II, 321','Vendedor','2023-11-22',4),(35,'Isabella Oliveira','353535353',27,'Rua JJ, 654','Gerente','2023-09-15',5),(36,'Lucas Pereira','363636363',32,'Rua KK, 987','Vendedor','2023-12-05',6),(37,'Ana Santos','373737373',28,'Rua LL, 753','Vendedor','2024-01-10',1),(38,'Felipe Almeida','383838383',30,'Rua MM, 456','Gerente','2022-10-05',2),(39,'Giovanna Mendes','393939393',26,'Rua NN, 852','Vendedor','2024-02-18',3),(40,'Ricardo Lima','404040404',29,'Rua OO, 321','Vendedor','2024-03-22',4),(41,'Larissa Fernandes','414141414',27,'Rua PP, 654','Gerente','2024-01-15',5),(42,'Renan Pereira','424242424',32,'Rua QQ, 987','Vendedor','2024-04-05',6),(43,'Mariana Santos','434343434',28,'Rua RR, 753','Vendedor','2024-05-10',1),(44,'Pedro Alves','444444444',30,'Rua SS, 456','Gerente','2022-11-05',2),(45,'Julia Lima','454545454',26,'Rua TT, 852','Vendedor','2024-06-18',3),(46,'Vinicius Fernandes','464646464',29,'Rua UU, 321','Vendedor','2024-07-22',4),(47,'Leticia Oliveira','474747474',27,'Rua VV, 654','Gerente','2024-05-15',5),(48,'Rafael Pereira','484848484',32,'Rua XX, 987','Vendedor','2024-08-05',6),(49,'Amanda Santos','494949494',28,'Rua YY, 753','Vendedor','2024-09-10',1),(50,'Matheus Almeida','505050505',30,'Rua ZZ, 456','Gerente','2022-12-05',2);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `marca_mais_vendida_por_filial`
--

DROP TABLE IF EXISTS `marca_mais_vendida_por_filial`;
/*!50001 DROP VIEW IF EXISTS `marca_mais_vendida_por_filial`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `marca_mais_vendida_por_filial` AS SELECT 
 1 AS `filial`,
 1 AS `marca`,
 1 AS `total_carros_vendidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `marcas_mais_vendidas_por_filial`
--

DROP TABLE IF EXISTS `marcas_mais_vendidas_por_filial`;
/*!50001 DROP VIEW IF EXISTS `marcas_mais_vendidas_por_filial`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `marcas_mais_vendidas_por_filial` AS SELECT 
 1 AS `filial`,
 1 AS `marca`,
 1 AS `total_carros_vendidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `programa_fidelidade`
--

DROP TABLE IF EXISTS `programa_fidelidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programa_fidelidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `data_inscricao` date NOT NULL,
  `nivel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `programa_fidelidade_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa_fidelidade`
--

LOCK TABLES `programa_fidelidade` WRITE;
/*!40000 ALTER TABLE `programa_fidelidade` DISABLE KEYS */;
INSERT INTO `programa_fidelidade` VALUES (1,1,'2022-01-01','Bronze'),(2,2,'2022-02-05','Bronze'),(3,3,'2022-03-10','Prata'),(4,4,'2022-04-15','Prata'),(5,5,'2022-05-20','Ouro'),(6,6,'2022-06-25','Ouro'),(7,7,'2022-07-30','Bronze'),(8,8,'2022-08-01','Bronze'),(9,9,'2022-09-03','Prata'),(10,10,'2022-10-05','Prata'),(11,11,'2022-11-07','Ouro'),(12,12,'2022-12-09','Ouro'),(13,13,'2023-01-12','Bronze'),(14,14,'2023-02-14','Bronze'),(15,15,'2023-03-17','Prata'),(16,16,'2023-04-19','Prata'),(17,17,'2023-05-22','Ouro'),(18,18,'2023-06-24','Ouro'),(19,19,'2023-07-27','Bronze'),(20,20,'2023-08-29','Bronze'),(21,21,'2023-09-01','Prata'),(22,22,'2023-10-03','Prata'),(23,23,'2023-11-05','Ouro'),(24,24,'2023-12-07','Ouro'),(25,25,'2024-01-10','Bronze'),(26,26,'2024-02-12','Bronze'),(27,27,'2024-03-15','Prata'),(28,28,'2024-04-17','Prata'),(29,29,'2024-05-20','Ouro'),(30,30,'2024-06-22','Ouro'),(31,31,'2024-07-25','Bronze'),(32,32,'2024-08-27','Bronze'),(33,33,'2024-09-30','Prata'),(34,34,'2024-10-02','Prata'),(35,35,'2024-11-04','Ouro'),(36,36,'2024-12-06','Ouro'),(37,37,'2025-01-09','Bronze'),(38,38,'2025-02-11','Bronze'),(39,39,'2025-03-14','Prata'),(40,40,'2025-04-16','Prata'),(41,41,'2025-05-19','Ouro'),(42,42,'2025-06-21','Ouro'),(43,43,'2025-07-24','Bronze'),(44,44,'2025-08-26','Bronze'),(45,45,'2025-09-29','Prata'),(46,46,'2025-10-01','Prata'),(47,47,'2025-11-03','Ouro'),(48,48,'2025-12-05','Ouro'),(49,49,'2026-01-08','Bronze'),(50,50,'2026-02-10','Bronze');
/*!40000 ALTER TABLE `programa_fidelidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `carro_id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `funcionario_id` int NOT NULL,
  `data_venda` date NOT NULL,
  `metodo_pagamento` varchar(50) NOT NULL,
  `valor_venda` decimal(10,2) NOT NULL,
  `filial_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `carro_id` (`carro_id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `funcionario_id` (`funcionario_id`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`carro_id`) REFERENCES `carros` (`id`),
  CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`),
  CONSTRAINT `vendas_ibfk_4` FOREIGN KEY (`filial_id`) REFERENCES `filiais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,1,1,1,'2023-07-15','Cartão de Crédito',50000.00,1),(2,2,2,2,'2023-08-20','Dinheiro',35000.00,2),(3,3,3,3,'2023-06-05','Financiamento',40000.00,3),(4,4,4,4,'2023-09-10','Leasing',45000.00,4),(5,5,5,5,'2023-10-25','Cartão de Crédito',55000.00,5),(6,6,6,6,'2023-11-30','Dinheiro',38000.00,6),(7,7,7,7,'2023-12-15','Financiamento',42000.00,1),(8,8,8,8,'2024-01-10','Leasing',47000.00,2),(9,9,9,9,'2024-02-25','Cartão de Crédito',52000.00,3),(10,10,10,10,'2024-03-20','Dinheiro',37000.00,4),(11,11,11,11,'2024-04-05','Financiamento',41000.00,5),(12,12,12,12,'2024-05-15','Leasing',46000.00,6),(13,13,13,13,'2024-06-10','Cartão de Crédito',51000.00,1),(14,14,14,14,'2024-07-25','Dinheiro',36000.00,2),(15,15,15,15,'2024-08-20','Financiamento',40000.00,3),(16,16,16,16,'2024-09-05','Leasing',45000.00,4),(17,17,17,17,'2024-10-10','Cartão de Crédito',55000.00,5),(18,18,18,18,'2024-11-25','Dinheiro',38000.00,6),(19,19,19,19,'2024-12-20','Financiamento',42000.00,1),(20,20,20,20,'2025-01-05','Leasing',47000.00,2),(21,21,21,21,'2025-02-10','Cartão de Crédito',52000.00,3),(22,22,22,22,'2025-03-25','Dinheiro',37000.00,4),(23,23,23,23,'2025-04-20','Financiamento',41000.00,5),(24,24,24,24,'2025-05-05','Leasing',46000.00,6),(25,25,25,25,'2025-06-10','Cartão de Crédito',51000.00,1),(26,26,26,26,'2025-07-25','Dinheiro',36000.00,2),(27,27,27,27,'2025-08-20','Financiamento',40000.00,3),(28,28,28,28,'2025-09-05','Leasing',45000.00,4),(29,29,29,29,'2025-10-10','Cartão de Crédito',55000.00,5),(30,30,30,30,'2025-11-25','Dinheiro',38000.00,6),(31,31,31,31,'2025-12-20','Financiamento',42000.00,1),(32,32,32,32,'2026-01-05','Leasing',47000.00,2),(33,33,33,33,'2026-02-10','Cartão de Crédito',52000.00,3),(34,34,34,34,'2026-03-25','Dinheiro',37000.00,4),(35,35,35,35,'2026-04-20','Financiamento',41000.00,5),(36,36,36,36,'2026-05-05','Leasing',46000.00,6),(37,37,37,37,'2026-06-10','Cartão de Crédito',51000.00,1),(38,38,38,38,'2026-07-25','Dinheiro',36000.00,2),(39,39,39,39,'2026-08-20','Financiamento',40000.00,3),(40,40,40,40,'2026-09-05','Leasing',45000.00,4),(41,41,41,41,'2026-10-10','Cartão de Crédito',55000.00,5),(42,42,42,42,'2026-11-25','Dinheiro',38000.00,6),(43,43,43,43,'2026-12-20','Financiamento',42000.00,1),(44,44,44,44,'2027-01-05','Leasing',47000.00,2),(45,45,45,45,'2027-02-10','Cartão de Crédito',52000.00,3),(46,46,46,46,'2027-03-25','Dinheiro',37000.00,4),(47,47,47,47,'2027-04-20','Financiamento',41000.00,5),(48,48,48,48,'2027-05-05','Leasing',46000.00,6),(49,49,49,49,'2027-06-10','Cartão de Crédito',51000.00,1),(50,50,50,50,'2027-07-25','Dinheiro',36000.00,2);
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_media_preco_carros_marca`
--

DROP TABLE IF EXISTS `vw_media_preco_carros_marca`;
/*!50001 DROP VIEW IF EXISTS `vw_media_preco_carros_marca`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_media_preco_carros_marca` AS SELECT 
 1 AS `marca`,
 1 AS `media_preco`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_media_preco_carros_por_ano`
--

DROP TABLE IF EXISTS `vw_media_preco_carros_por_ano`;
/*!50001 DROP VIEW IF EXISTS `vw_media_preco_carros_por_ano`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_media_preco_carros_por_ano` AS SELECT 
 1 AS `ano`,
 1 AS `media_preco`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_vendas_mensais_filial`
--

DROP TABLE IF EXISTS `vw_vendas_mensais_filial`;
/*!50001 DROP VIEW IF EXISTS `vw_vendas_mensais_filial`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_vendas_mensais_filial` AS SELECT 
 1 AS `filial`,
 1 AS `mes`,
 1 AS `quantidade_vendas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_vendas_por_filial_pagamento`
--

DROP TABLE IF EXISTS `vw_vendas_por_filial_pagamento`;
/*!50001 DROP VIEW IF EXISTS `vw_vendas_por_filial_pagamento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_vendas_por_filial_pagamento` AS SELECT 
 1 AS `filial`,
 1 AS `metodo_pagamento`,
 1 AS `quantidade_vendas`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `carros_acima_media`
--

/*!50001 DROP VIEW IF EXISTS `carros_acima_media`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `carros_acima_media` AS select `c`.`marca` AS `marca`,`c`.`modelo` AS `modelo`,`c`.`preco` AS `preco` from `carros` `c` where (`c`.`preco` > (select avg(`carros`.`preco`) from `carros` where (`carros`.`marca` = `c`.`marca`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `marca_mais_vendida_por_filial`
--

/*!50001 DROP VIEW IF EXISTS `marca_mais_vendida_por_filial`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `marca_mais_vendida_por_filial` AS select `marcas_mais_vendidas_por_filial`.`filial` AS `filial`,`marcas_mais_vendidas_por_filial`.`marca` AS `marca`,`marcas_mais_vendidas_por_filial`.`total_carros_vendidos` AS `total_carros_vendidos` from `marcas_mais_vendidas_por_filial` group by `marcas_mais_vendidas_por_filial`.`filial` having (`marcas_mais_vendidas_por_filial`.`total_carros_vendidos` = max(`marcas_mais_vendidas_por_filial`.`total_carros_vendidos`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `marcas_mais_vendidas_por_filial`
--

/*!50001 DROP VIEW IF EXISTS `marcas_mais_vendidas_por_filial`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `marcas_mais_vendidas_por_filial` AS select `f`.`nome` AS `filial`,`c`.`marca` AS `marca`,count(0) AS `total_carros_vendidos` from ((`vendas` `v` join `carros` `c` on((`v`.`carro_id` = `c`.`id`))) join `filiais` `f` on((`v`.`filial_id` = `f`.`id`))) group by `f`.`nome`,`c`.`marca` order by `f`.`nome`,`total_carros_vendidos` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_media_preco_carros_marca`
--

/*!50001 DROP VIEW IF EXISTS `vw_media_preco_carros_marca`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_media_preco_carros_marca` AS select `carros`.`marca` AS `marca`,avg(`carros`.`preco`) AS `media_preco` from `carros` group by `carros`.`marca` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_media_preco_carros_por_ano`
--

/*!50001 DROP VIEW IF EXISTS `vw_media_preco_carros_por_ano`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_media_preco_carros_por_ano` AS select `carros`.`ano` AS `ano`,avg(`carros`.`preco`) AS `media_preco` from `carros` group by `carros`.`ano` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vendas_mensais_filial`
--

/*!50001 DROP VIEW IF EXISTS `vw_vendas_mensais_filial`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vendas_mensais_filial` AS select `filiais`.`nome` AS `filial`,date_format(`vendas`.`data_venda`,'%Y-%m') AS `mes`,count(0) AS `quantidade_vendas` from (`vendas` join `filiais` on((`vendas`.`filial_id` = `filiais`.`id`))) group by `filiais`.`nome`,`mes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vendas_por_filial_pagamento`
--

/*!50001 DROP VIEW IF EXISTS `vw_vendas_por_filial_pagamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vendas_por_filial_pagamento` AS select `filiais`.`nome` AS `filial`,`vendas`.`metodo_pagamento` AS `metodo_pagamento`,count(0) AS `quantidade_vendas` from (`vendas` join `filiais` on((`vendas`.`filial_id` = `filiais`.`id`))) group by `filiais`.`nome`,`vendas`.`metodo_pagamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-14 20:25:52
