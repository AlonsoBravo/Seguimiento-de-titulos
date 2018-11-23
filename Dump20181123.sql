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
  `CUR_ID` int(11) NOT NULL COMMENT 'Codigo del Curso',
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
INSERT INTO `cursos` VALUES (100001,'Proyecto Titulo I','7','2018',1),(100002,'Proyecto Titulo I','7','2018',1),(100003,'Proyecto Titulo I','7','2018',1),(100004,'Proyecto Titulo I','7','2018',1),(100005,'Proyecto Titulo I','7','2018',1),(100006,'Proyecto Titulo II','8','2018',51),(100007,'Proyecto Titulo II','8','2018',51),(100008,'Proyecto Titulo II','8','2018',51);
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
  `CUR_ID` int(11) NOT NULL,
  `USU_ID` int(11) NOT NULL,
  PRIMARY KEY (`DET_CUR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_cursos`
--

LOCK TABLES `detalle_cursos` WRITE;
/*!40000 ALTER TABLE `detalle_cursos` DISABLE KEYS */;
INSERT INTO `detalle_cursos` VALUES (1,100001,4),(2,100001,5),(3,100001,6),(4,100001,7),(5,100001,8),(6,100001,9),(7,100002,10),(8,100002,11),(9,100002,12),(10,100002,13),(11,100002,14),(12,100002,15),(13,100003,16),(14,100003,17),(15,100003,18),(16,100003,19),(17,100003,20),(18,100003,21),(19,100004,22),(20,100004,23),(21,100004,24),(22,100004,25),(23,100004,26),(24,100004,27),(25,100005,28),(26,100005,29),(27,100005,20),(28,100005,31),(29,100005,32),(30,100005,33),(31,100006,34),(32,100006,35),(33,100006,36),(34,100006,37),(35,100006,38),(36,100006,39),(37,100007,40),(38,100007,41),(39,100007,42),(40,100007,43),(41,100007,44),(42,100007,45),(43,100008,46),(44,100008,47),(45,100008,48),(46,100008,49),(47,100008,50);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_proyectos`
--

LOCK TABLES `detalle_proyectos` WRITE;
/*!40000 ALTER TABLE `detalle_proyectos` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hitos`
--

DROP TABLE IF EXISTS `hitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hitos` (
  `HIT_ID` int(11) NOT NULL,
  `HIT_PRO_ID` int(11) DEFAULT NULL,
  `HIT_FECHA` varchar(45) DEFAULT NULL,
  `HIT_ESTADO` varchar(45) DEFAULT NULL,
  `HIT_VALORIZACION` decimal(3,0) DEFAULT NULL,
  `HIT_PROCENTAJE` decimal(3,2) DEFAULT NULL,
  `HIT_FEEDBACK` text,
  PRIMARY KEY (`HIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hitos`
--

LOCK TABLES `hitos` WRITE;
/*!40000 ALTER TABLE `hitos` DISABLE KEYS */;
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
  `PRO_USU_ID` int(11) DEFAULT NULL COMMENT 'ID Profesor Guia - FK tabla Usuarios',
  `PRO_NOMBRE` varchar(128) DEFAULT NULL,
  `PRO_DESCRIPCION` text,
  `PRO_FECHA_INICIO` date DEFAULT NULL,
  `PRO_SEMESTRE` varchar(2) DEFAULT NULL,
  `PRO_PORCENTAJE_ACT` varchar(3) DEFAULT NULL,
  `PRO_ESTADO` int(1) DEFAULT NULL COMMENT 'Estado del Proyecto\n0:Activo\n1:Inactivo',
  PRIMARY KEY (`PRO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
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

-- Dump completed on 2018-11-23 15:08:03
