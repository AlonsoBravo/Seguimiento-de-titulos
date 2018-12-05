CREATE DATABASE  IF NOT EXISTS `seguimiento_titulos` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `seguimiento_titulos`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: seguimiento_titulos
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `CUR_ID` varchar(20) NOT NULL COMMENT 'Codigo del Curso',
  `CUR_NOMBRE` varchar(80) DEFAULT NULL COMMENT 'Nombre del Curso ',
  `CUR_SEMESTRE` varchar(2) DEFAULT NULL COMMENT 'Semestre que se dicta el curso ',
  `CUR_ANO` varchar(4) DEFAULT NULL COMMENT 'Año en que se dicta el curso\n',
  `CUR_ID_PROF` int(11) DEFAULT NULL,
  PRIMARY KEY (`CUR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES ('TP401','TALLER DE TITULO I','I','2018',51),('TP405','TALLER DE TITULO II','II','2018',51);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_cursos`
--

DROP TABLE IF EXISTS `detalle_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_cursos` (
  `DET_CUR_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CUR_ID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `USU_ID` int(11) NOT NULL,
  `CUR_SECCION` int(2) DEFAULT NULL,
  PRIMARY KEY (`DET_CUR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_cursos`
--

LOCK TABLES `detalle_cursos` WRITE;
/*!40000 ALTER TABLE `detalle_cursos` DISABLE KEYS */;
INSERT INTO `detalle_cursos` VALUES (1,'TP401',3,6),(2,'TP401',6,6),(3,'TP401',7,6),(4,'TP401',8,6),(5,'TP401',9,6),(6,'TP401',10,6),(7,'TP401',11,6),(8,'TP401',12,6),(9,'TP401',13,6),(10,'TP401',14,6),(11,'TP401',15,6),(12,'TP401',16,6),(13,'TP401',17,6),(14,'TP401',18,6),(15,'TP401',19,6),(16,'TP401',20,7),(17,'TP401',21,7),(18,'TP401',22,7),(19,'TP401',23,7),(20,'TP401',24,7),(21,'TP401',25,7),(22,'TP401',26,7),(23,'TP401',27,7),(24,'TP401',28,7),(25,'TP401',29,7),(26,'TP401',30,7),(27,'TP401',31,7),(28,'TP401',32,7),(29,'TP401',33,7),(30,'TP401',34,7),(31,'TP405',35,6),(32,'TP405',36,6),(33,'TP405',37,6),(34,'TP405',38,6),(35,'TP405',39,6),(36,'TP405',40,6),(37,'TP405',41,6),(38,'TP405',42,6),(39,'TP405',43,6),(40,'TP405',44,6),(41,'TP405',45,6),(42,'TP405',46,6),(43,'TP405',47,6),(44,'TP405',48,6),(45,'TP405',49,6),(46,'TP404',50,6);
/*!40000 ALTER TABLE `detalle_cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_proyectos`
--

DROP TABLE IF EXISTS `detalle_proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_proyectos` (
  `DET_PRO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DET_ALU_ID` int(11) NOT NULL,
  `PRO_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`DET_PRO_ID`),
  KEY `fk_PROYECTOS_has_ALUMNOS_ALUMNOS1_idx` (`DET_ALU_ID`),
  KEY `fk_PROYECTOS_has_ALUMNOS_PROYECTOS1_idx` (`DET_PRO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_proyectos`
--

LOCK TABLES `detalle_proyectos` WRITE;
/*!40000 ALTER TABLE `detalle_proyectos` DISABLE KEYS */;
INSERT INTO `detalle_proyectos` VALUES (1,3,1),(2,32,2),(3,14,3),(4,16,4),(5,40,5);
/*!40000 ALTER TABLE `detalle_proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hitos`
--

DROP TABLE IF EXISTS `hitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hitos` (
  `HIT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `HIT_PRO_ID` int(11) DEFAULT NULL,
  `HIT_FECHA_ENTREGA` varchar(45) DEFAULT NULL,
  `HIT_ESTADO` varchar(45) DEFAULT NULL,
  `HIT_PORCENTAJE` decimal(3,0) DEFAULT NULL,
  `HIT_FEEDBACK` text,
  `HIT_SEMANA_ENTREGA` int(2) DEFAULT NULL,
  PRIMARY KEY (`HIT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hitos`
--

LOCK TABLES `hitos` WRITE;
/*!40000 ALTER TABLE `hitos` DISABLE KEYS */;
INSERT INTO `hitos` VALUES (1,1,NULL,NULL,NULL,NULL,1),(2,1,NULL,NULL,NULL,NULL,2),(3,1,NULL,NULL,NULL,NULL,3),(4,1,NULL,NULL,NULL,NULL,4),(5,1,NULL,NULL,NULL,NULL,5),(6,1,NULL,NULL,NULL,NULL,6),(7,1,NULL,NULL,NULL,NULL,7),(8,1,NULL,NULL,NULL,NULL,8),(9,1,NULL,NULL,NULL,NULL,9),(10,1,NULL,NULL,NULL,NULL,10),(11,1,NULL,NULL,NULL,NULL,11),(12,1,NULL,NULL,NULL,NULL,12),(13,1,NULL,NULL,NULL,NULL,13),(14,1,NULL,NULL,NULL,NULL,14),(15,1,NULL,NULL,NULL,NULL,15),(16,1,NULL,NULL,NULL,NULL,16),(17,1,NULL,NULL,NULL,NULL,17),(18,1,NULL,NULL,NULL,NULL,18),(19,2,NULL,NULL,NULL,NULL,1),(20,2,NULL,NULL,NULL,NULL,2),(21,2,NULL,NULL,NULL,NULL,3),(22,2,NULL,NULL,NULL,NULL,4),(23,2,NULL,NULL,NULL,NULL,5),(24,2,NULL,NULL,NULL,NULL,6),(25,2,NULL,NULL,NULL,NULL,7),(26,2,NULL,NULL,NULL,NULL,8),(27,2,NULL,NULL,NULL,NULL,9),(28,2,NULL,NULL,NULL,NULL,10),(29,2,NULL,NULL,NULL,NULL,11),(30,2,NULL,NULL,NULL,NULL,12),(31,2,NULL,NULL,NULL,NULL,13),(32,2,NULL,NULL,NULL,NULL,14),(33,2,NULL,NULL,NULL,NULL,15),(34,2,NULL,NULL,NULL,NULL,16),(35,2,NULL,NULL,NULL,NULL,17),(36,2,NULL,NULL,NULL,NULL,18),(37,3,NULL,NULL,NULL,NULL,1),(38,3,NULL,NULL,NULL,NULL,2),(39,3,NULL,NULL,NULL,NULL,3),(40,3,NULL,NULL,NULL,NULL,4),(41,3,NULL,NULL,NULL,NULL,5),(42,3,NULL,NULL,NULL,NULL,6),(43,3,NULL,NULL,NULL,NULL,7),(44,3,NULL,NULL,NULL,NULL,8),(45,3,NULL,NULL,NULL,NULL,9),(46,3,NULL,NULL,NULL,NULL,10),(47,3,NULL,NULL,NULL,NULL,11),(48,3,NULL,NULL,NULL,NULL,12),(49,3,NULL,NULL,NULL,NULL,13),(50,3,NULL,NULL,NULL,NULL,14),(51,3,NULL,NULL,NULL,NULL,15),(52,3,NULL,NULL,NULL,NULL,16),(53,3,NULL,NULL,NULL,NULL,17),(54,3,NULL,NULL,NULL,NULL,18),(55,4,NULL,NULL,NULL,NULL,1),(56,4,NULL,NULL,NULL,NULL,2),(57,4,NULL,NULL,NULL,NULL,3),(58,4,NULL,NULL,NULL,NULL,4),(59,4,NULL,NULL,NULL,NULL,5),(60,4,NULL,NULL,NULL,NULL,6),(61,4,NULL,NULL,NULL,NULL,7),(62,4,NULL,NULL,NULL,NULL,8),(63,4,NULL,NULL,NULL,NULL,9),(64,4,NULL,NULL,NULL,NULL,10),(65,4,NULL,NULL,NULL,NULL,11),(66,4,NULL,NULL,NULL,NULL,12),(67,4,NULL,NULL,NULL,NULL,13),(68,4,NULL,NULL,NULL,NULL,14),(69,4,NULL,NULL,NULL,NULL,15),(70,4,NULL,NULL,NULL,NULL,16),(71,4,NULL,NULL,NULL,NULL,17),(72,4,NULL,NULL,NULL,NULL,18),(73,5,NULL,NULL,NULL,NULL,1),(74,5,NULL,NULL,NULL,NULL,2),(75,5,NULL,NULL,NULL,NULL,3),(76,5,NULL,NULL,NULL,NULL,4),(77,5,NULL,NULL,NULL,NULL,5),(78,5,NULL,NULL,NULL,NULL,6),(79,5,NULL,NULL,NULL,NULL,7),(80,5,NULL,NULL,NULL,NULL,8),(81,5,NULL,NULL,NULL,NULL,9),(82,5,NULL,NULL,NULL,NULL,10),(83,5,NULL,NULL,NULL,NULL,11),(84,5,NULL,NULL,NULL,NULL,12),(85,5,NULL,NULL,NULL,NULL,13),(86,5,NULL,NULL,NULL,NULL,14),(87,5,NULL,NULL,NULL,NULL,15),(88,5,NULL,NULL,NULL,NULL,16),(89,5,NULL,NULL,NULL,NULL,17),(90,5,NULL,NULL,NULL,NULL,18);
/*!40000 ALTER TABLE `hitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_11_21_224240_create_detalle_curso_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectos` (
  `PRO_ID` int(11) NOT NULL COMMENT 'ID correlativo de proyectos',
  `PRO_CUR_ID` int(11) DEFAULT NULL,
  `PRO_PROF_ID` int(11) DEFAULT NULL COMMENT 'ID Profesor Guia - FK tabla Usuarios',
  `PRO_NOMBRE` varchar(128) DEFAULT NULL,
  `PRO_DESCRIPCION` text,
  `PRO_FECHA_INICIO` date DEFAULT NULL,
  `PRO_SEMESTRE` varchar(2) DEFAULT NULL,
  `PRO_PORCENTAJE_ACT` varchar(3) DEFAULT NULL,
  `PRO_ESTADO` int(1) DEFAULT NULL COMMENT 'Estado del Proyecto\n0:Activo\n1:Inactivo',
  `PRO_SECCION` int(2) DEFAULT NULL,
  PRIMARY KEY (`PRO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES (1,NULL,1,'prueba','prueba','2018-11-30','I','0',1,6),(2,7,1,'prueba 2','prueba 2','2018-11-30','I','0',1,7),(3,6,1,'prueba 3','prueba 3','2018-11-30','I','0',1,6),(4,6,1,'prueba 4','prueba 4','2018-11-30','I','0',1,6),(5,6,1,'prueba 5','prueba 5','2018-11-30','I','0',1,6);
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `USU_ID` int(11) NOT NULL COMMENT 'ID del Usuario',
  `USU_RUT` varchar(12) DEFAULT NULL COMMENT 'Rut del Usuario \nFormato: 11.111.111-1\n',
  `USU_NOMBRE` varchar(50) DEFAULT NULL COMMENT 'Nombre completo del Usuario',
  `USU_APATERNO` varchar(50) DEFAULT NULL COMMENT 'Apellido Paterno Usuario',
  `USU_AMATERNO` varchar(50) DEFAULT NULL COMMENT 'Apellido Materno Usuario',
  `USU_CORREO` varchar(100) DEFAULT NULL COMMENT 'Correo electronico del Usuario',
  `USU_TELEFONO` varchar(20) DEFAULT NULL COMMENT 'Teléfono del Usuario',
  `password` varchar(255) DEFAULT NULL COMMENT 'Contraseña para ingreso al sistema \\\\\\\\nA guardar en MD5\\\\\\\\n',
  `USU_ESTADO` varchar(15) DEFAULT NULL COMMENT 'Estados: \nMatriculad\nNo Matriculado\nActivo\nInactivo\n ',
  `USU_TIPO` int(1) DEFAULT NULL COMMENT 'Tipo de Usuario: \n0:Alumno\n1:Profesor\n2:Administrativo\n',
  PRIMARY KEY (`USU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'17.821.160-9','Alonso','Bravo','Alegria','iOvCblxeAn@gmail.com','912345678','$2y$10$e1Ma7dXXExt1t.irdhfu4etNyP9lXvnF1SJxQ9RPQTKGqkiXfVRZ.','activo',0),(2,'16.143.858-8','Karina','Morales','Mora','yCYfSIKwPu@gmail.com','912345678','$2y$10$1IWzLyL0Zm97gAIugHjfuOmwCAb160VMN8vSSbeC3hRfhzbLKHBHa','activo',1),(3,'24.950.456-4','Ignacio','Bravo','Morales','j0DYRJc8Xb@gmail.com','912345678','$2y$10$dz1qzXyCZk/3wUiFpaE9GeqHjZD2qioNWNwc9Jre34yshBwx3MRxe','activo',2),(4,'3-5','Diego','Marquisio','Caceres','diegomarquisiocaceres@ciisa.cl','610732332','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',1),(5,'4-3','Rodrigo','Riccardi','Michelini','rodrigoriccardimichelini@ciisa.cl','525062083','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',1),(6,'5-1','Cristofer','Rodriguez','Cabrera','cristoferrodriguezcabrera@ciisa.cl','840978455','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(7,'6-k','Andres','Rodriguez','Cabrera','andresrodriguezcabrera@ciisa.cl','565916908','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(8,'7-8','Alonso','Toscano','Rodriguez','alonsotoscanorodriguez@ciisa.cl','775471566','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(9,'8-6','Renato','Umpierrez','Gonzalez','renatoumpierrezgonzalez@ciisa.cl','502341936','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(10,'9-4','Gonzalo','Graziuso','Piccini','gonzalograziusopiccini@ciisa.cl','476094219','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(11,'10-8','Roman','Rocha','Baldi','romanrochabaldi@ciisa.cl','382213394','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(12,'11-6','Damian','Arturo','Loureiro','damianarturoloureiro@ciisa.cl','779336935','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(13,'12-4','Mario','Odazzio','Cuadra','marioodazziocuadra@ciisa.cl','372658758','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(14,'13-2','Felipe','Cittadino','Preti','felipecittadinopreti@ciisa.cl','391959932','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(15,'14-0','Marco','Gonzalez','Banfi','marcogonzalezbanfi@ciisa.cl','428687158','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(16,'15-9','Alejandro','Bozzolasco','Romero','alejandrobozzolascoromero@ciisa.cl','840136479','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(17,'16-7','Esteban','Echevarria','Olmos','estebanechevarriaolmos@ciisa.cl','635252671','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(18,'17-5','Diego','De Aziz','Foliadoso','diegode azizfoliadoso@ciisa.cl','669247135','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(19,'18-3','Pablo','Brescia','Rodriguez','pablobresciarodriguez@ciisa.cl','425662781','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(20,'19-1','Ricardo','Arenas','Barreiro','ricardoarenasbarreiro@ciisa.cl','538217419','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(21,'20-5','Nadia','Deleo','Mas','nadiadeleomas@ciisa.cl','963257675','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(22,'21-3','Maria','Carriquiry','Mendiola','mariacarriquirymendiola@ciisa.cl','767515140','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(23,'22-1','Helena','Chaves','Miraballes','helenachavesmiraballes@ciisa.cl','503640769','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(24,'23-k','Rocio','Gonzalez','Zas','rociogonzalezzas@ciisa.cl','881145821','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(25,'24-8','Alberto','Vera','Barreto','albertoverabarreto@ciisa.cl','678108837','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(26,'25-6','Juan','Eccher','Machado','juanecchermachado@ciisa.cl','312007140','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(27,'26-4','Pedro','Sanchez','Rodriguez','pedrosanchezrodriguez@ciisa.cl','602337469','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(28,'27-2','Diego','Centurion','Arballo','diegocenturionarballo@ciisa.cl','891169155','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(29,'28-0','Rodrigo','Bonino','Peirano','rodrigoboninopeirano@ciisa.cl','518208007','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(30,'29-9','Cristofer','Echeverry','Cuenca','cristoferecheverrycuenca@ciisa.cl','991849595','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(31,'30-2','Andres','Betolaza','Cafferata','andresbetolazacafferata@ciisa.cl','535707378','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(32,'31-0','Alonso','Corral','Ferreira','alonsocorralferreira@ciisa.cl','921673182','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(33,'32-9','Renato','Balostro','Campos','renatobalostrocampos@ciisa.cl','775482391','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(34,'33-7','Gonzalo','Brause','Berreta','gonzalobrauseberreta@ciisa.cl','734157456','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(35,'34-5','Roman','Castelar','Rodriguez','romancastelarrodriguez@ciisa.cl','475833333','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(36,'35-3','Damian','Couriel','Curiel','damiancourielcuriel@ciisa.cl','865779287','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(37,'36-1','Mario','Diaz','Acosta','mariodiazacosta@ciisa.cl','878041533','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(38,'37-k','Felipe','Diaz','Acosta','felipediazacosta@ciisa.cl','443038993','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(39,'38-8','Marco','Zunino','Monserrat','marcozuninomonserrat@ciisa.cl','476438034','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(40,'39-6','Alejandro','Garcia','Rivero','alejandrogarciarivero@ciisa.cl','717747881','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(41,'40-k','Esteban','De La Iglesia','Medina','estebande la iglesiamedina@ciisa.cl','694063002','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(42,'41-8','Diego','Reyes','Oehninger','diegoreyesoehninger@ciisa.cl','613389350','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(43,'42-6','Pablo','Casas','Menditeguy','pablocasasmenditeguy@ciisa.cl','559934403','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(44,'43-4','Ricardo','Andrade','Valdez','ricardoandradevaldez@ciisa.cl','617548917','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(45,'44-2','Nadia','Gonzalez','Buceta','nadiagonzalezbuceta@ciisa.cl','793515447','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(46,'45-0','Maria','Queijo','Nougue','mariaqueijonougue@ciisa.cl','634971897','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(47,'46-9','Helena','Boix','Vilaro','helenaboixvilaro@ciisa.cl','948585682','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(48,'47-7','Rocio','Brusa','Gonzalez','rociobrusagonzalez@ciisa.cl','825501712','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(49,'48-5','Alberto','Perdomo','Gamarra','albertoperdomogamarra@ciisa.cl','788727621','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(50,'49-3','Dionicio','Giambruno','Volpi','dioniciogiambrunovolpi@ciisa.cl','977747351','$2y$12$EgYKayHshHlRbRgxCsJd2.xPQaKZnNk.RlUZXL8mjagNpxZHUr0dm','Activo',2),(51,'11-1','Patricio','Sorich','Sorich','iOvCblxeAn@gmail.com','912345678','$2y$10$e1Ma7dXXExt1t.irdhfu4etNyP9lXvnF1SJxQ9RPQTKGqkiXfVRZ.','Activo',0);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-05 12:07:09
