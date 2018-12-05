CREATE DATABASE  IF NOT EXISTS `ventas` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */;
USE `ventas`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ventas
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `rut_cliente` varchar(8) COLLATE utf8_spanish2_ci NOT NULL,
  `dv` char(1) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellido1` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellido2` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fono_contacto` varchar(12) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion_particular` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`rut_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('1','1','cliente 1','apellido 1','apellido 1','1234','email@mail.com','direccion 1'),('2','2','cliente 2','apellido 2','apellido 2','1234','email@mail.com','direccion 2'),('3','3','cliente 3','apellido 3','apellido 3','1234','email@mail.com','direccion 3'),('4','4','cliente 4','apellido 4','apellido 4','1234','email@mail.com','direccion 4'),('5','5','cliente 5','apellido 5','apellido 5','1234','email@mail.com','direccion 5'),('6','6','cliente 6','apellido 6','apellido 6','1234','email@mail.com','direccion 6'),('7','7','cliente 7','apellido 7','apellido 7','1234','email@mail.com','direccion 7'),('8','8','cliente 8','apellido 8','apellido 8','1234','email@mail.com','direccion 8');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_oferta`
--

DROP TABLE IF EXISTS `detalle_oferta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_oferta` (
  `codigo_oferta` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `codigo_producto` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `descuento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_oferta`
--

LOCK TABLES `detalle_oferta` WRITE;
/*!40000 ALTER TABLE `detalle_oferta` DISABLE KEYS */;
INSERT INTO `detalle_oferta` VALUES ('1','702234349',3,5),('1','700622678',3,5),('2','701141036',1,10),('2','702268394',1,10);
/*!40000 ALTER TABLE `detalle_oferta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_ventas`
--

DROP TABLE IF EXISTS `detalle_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_ventas` (
  `id_detalle_venta` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_producto` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `valor_unitario` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_venta` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `codigo_producto` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_detalle_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_ventas`
--

LOCK TABLES `detalle_ventas` WRITE;
/*!40000 ALTER TABLE `detalle_ventas` DISABLE KEYS */;
INSERT INTO `detalle_ventas` VALUES ('dv01','BARRA RECTA MUUK',36,2,'v01','0700622678'),('dv02','VENDA DE BOX MUUK',5654,2,'v01','0700679287'),('dv03','PELOTA DE REACCION',7888,2,'v01','0700924864'),('dv04','LAPICES',1500,300,'v04','1');
/*!40000 ALTER TABLE `detalle_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_ordenes_de_compra`
--

DROP TABLE IF EXISTS `detalles_ordenes_de_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_ordenes_de_compra` (
  `codigo_detalle_orden` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `codigo_orden` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `codigo_producto` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_ordenes_de_compra`
--

LOCK TABLES `detalles_ordenes_de_compra` WRITE;
/*!40000 ALTER TABLE `detalles_ordenes_de_compra` DISABLE KEYS */;
INSERT INTO `detalles_ordenes_de_compra` VALUES ('dtp01','coc01','0700622678',2),('dtp02','coc02','0700924864',3),('dtp03','coc03','0702015092',1),('dtp04','coc04','0702755305',2),('dtp05','coc05','0700950637',5);
/*!40000 ALTER TABLE `detalles_ordenes_de_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familia_productos`
--

DROP TABLE IF EXISTS `familia_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familia_productos` (
  `codigo_Familia` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_familia` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`codigo_Familia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familia_productos`
--

LOCK TABLES `familia_productos` WRITE;
/*!40000 ALTER TABLE `familia_productos` DISABLE KEYS */;
INSERT INTO `familia_productos` VALUES ('1','ARTES MARCIALES '),('10','CUERDAS DE SALTO'),('11','VALLAS DE ENTRENAMIENTO '),('12','SET DE AGILIDAD'),('13','CONOS MUUK'),('14','CROSSFIT'),('15','FITNESS, YOGA Y PILATES'),('16','REDES '),('17','PSICOMOTRICIDAD'),('18','VOLEIBOL'),('19','TENIS, PING PONG Y BADMINTONG'),('2','ATLETISMO'),('20','GIMNASIA'),('21','BOLSOS DEPORIVOS '),('22','PENALTY'),('23','UTILES'),('3','BALONES'),('4','PENALTY'),('5','ENTRENAMIENTO'),('6','ENTRNAMIENTO CON PESO'),('7','ACCESORIOS'),('8','BARRAS'),('9','BANDAS ELASTICAS');
/*!40000 ALTER TABLE `familia_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medios_pagos`
--

DROP TABLE IF EXISTS `medios_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medios_pagos` (
  `codig_medio_pago` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_medio_pago` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`codig_medio_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medios_pagos`
--

LOCK TABLES `medios_pagos` WRITE;
/*!40000 ALTER TABLE `medios_pagos` DISABLE KEYS */;
INSERT INTO `medios_pagos` VALUES ('cmp01','efectivo',1),('cmp02','tarjeta credito',1);
/*!40000 ALTER TABLE `medios_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofertas`
--

DROP TABLE IF EXISTS `ofertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ofertas` (
  `codigo_oferta` int(3) NOT NULL AUTO_INCREMENT,
  `nombre_oferta` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_inicio` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_termino` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado_ofertas` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`codigo_oferta`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofertas`
--

LOCK TABLES `ofertas` WRITE;
/*!40000 ALTER TABLE `ofertas` DISABLE KEYS */;
INSERT INTO `ofertas` VALUES (1,'oferta 1','2018-12-05','2018-12-06',1),(2,'oferta 2','2018-12-03','2018-12-05',1);
/*!40000 ALTER TABLE `ofertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes_de_compra`
--

DROP TABLE IF EXISTS `ordenes_de_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_de_compra` (
  `codigo_orden` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `rut_proveedor` varchar(8) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_emision` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado_orden` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`codigo_orden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes_de_compra`
--

LOCK TABLES `ordenes_de_compra` WRITE;
/*!40000 ALTER TABLE `ordenes_de_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenes_de_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `codigo_producto` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `codigo_Familia` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `rut_proveedor` varchar(8) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_producto` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `valor_unitario` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `stock_minimo` int(11) DEFAULT NULL,
  `stock_maximo` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('0700622678','6','3','BARRA RECTA MUUK',36,420,5,1000,1),('0700679287','2','4','VENDA DE BOX MUUK',5654,774,5,1000,1),('0700924864','11','3','PELOTA DE REACCION',7888,869,5,1000,1),('0700950637','11','3','BASE ESTACA AGILIDAD GOMA VIXEN',3675,182,5,1000,1),('0701115751','13','4','ANILLO DE PILATES M??K',8223,951,5,1000,1),('0701141036','14','3','HULA HULA PROFESIONAL MUUK',9412,645,5,1000,1),('0701342348','5','3','EXPANDER TUBE MUUK',3580,318,5,1000,1),('0701656986','14','3','CLAVA DE GIMNASIA OFICIAL',9038,219,5,1000,1),('0701716780','12','3','PESA MANCUERNA DE VINILO',8459,289,5,1000,1),('0701837530','2','4','GUANTILLA MUUK PALMA LIBRE',3300,469,5,1000,1),('0702015092','14','3','HULA HULA PROFESIONAL MUUK',5445,218,5,1000,1),('0702031151','2','1','PROTECTOR BUCAL MUUK',1213,790,5,1000,1),('0702079539','7','3','BOLSO DEPORTIVO CLUB PLUS BOLSO- DEPORTIVO MUUK HE',9597,208,5,1000,1),('0702140145','12','3','BALON MEDICINAL DE SILICONA SOFT 1, 2,3 y 5KG',7475,324,5,1000,1),('0702202997','13','3','TRAMPOLIN M??K',3382,130,5,1000,1),('0702234349','11','3','SET DE BANDERIN DE CORNER DESARMABLE VIXEN',9660,258,5,1000,1),('0702247617','10','3','CUERDA DE SALTO M??K',9696,219,5,1000,1),('0702268394','5','3','POWER TUBE RECUBIERTA CON MANILLAS M??K',8442,487,5,1000,1),('0702405301','6','3','BARRA PUERTA MULTIFUNCION MUUK',647,664,5,1000,1),('0702446037','8','3','CONOS',4844,42,5,1000,1),('0702555583','11','3','BASE MULTIPRO?SITO',953,572,5,1000,1),('0702616384','12','4','CHAQUETA CON PESO MUUK',8996,685,5,1000,1),('0702724811','3','2','TESTIMONIO ALUMINIO',9974,169,5,1000,1),('0702755305','4','2','JAULA PARA BALONES',6844,90,5,1000,1),('0703022588','13','3','BOLSO PORTA MAT MUUK',4537,41,5,1000,1),('0703127272','3','2','BALA DE LANZAMIENTO ESCOLAR ACERO',2155,639,5,1000,1),('0703155327','2','1','GUANTES BOX MUUK PU',7675,333,5,1000,1),('0703205285','13','3','BOSU MUUK',6150,599,5,1000,1),('0703287625','8','3','SET DE CONOS ARITMETICO MUUK',810,136,5,1000,1),('0703450398','5','3','BANDAS EL?STICAS M??K',3557,402,5,1000,1),('0703478215','10','3','CUERDA DE SALTO CON PIOLA DE ACERO M??K',432,638,5,1000,1),('0703553089','2','4','GUANTES BOX MUUK NI?O',758,789,5,1000,1),('0703583700','10','3','CUERDA DE SALTO CON CONTADOR MECANICO M??K',6831,165,5,1000,1),('0703636838','11','3','PARACAIDAS DE RESISTENCIA',1586,417,5,1000,1),('0703943362','12','3','PESO TOBILLO - MU?ECA MUUK',4788,434,5,1000,1),('0704171973','9','3','PESA RUSA KETELBELLS MUUK',2080,592,5,1000,1),('0704322958','14','3','HULA HULA HOOP DUAL',5063,611,5,1000,1),('0704473692','3','4','TACO DE PARTIDA MARK IV',7102,228,5,1000,1),('0704543714','13','3','STEP MUUK',5841,228,5,1000,1),('0704577303','3','2','PELOTA DE LANZAMIENTO ESCOLAR SOFT',9956,366,5,1000,1),('0704702466','11','3','PIZARRA DE ENTRENAMIENTO 4MM VIXEN',2338,65,5,1000,1),('0704707976','10','3','CUERDA DE SALTO CON CONTADOR DIGITAL M??K',7900,72,5,1000,1),('0704781908','10','3','CUERDA DE SALTO SNIPER DE CUERO',3622,637,5,1000,1),('0705085251','8','3','SET DE CONOS ALFABETICOS MUUK',8207,170,5,1000,1),('0705145884','3','4','CARRO PORTA JABALINA MUUK 30 UNID',7734,983,5,1000,1),('0705318393','10','3','CUERDA DE SALTOS DE CUERO M??K',8227,62,5,1000,1),('0705339893','14','3','CUERDAS DE GMNASIA',4751,784,5,1000,1),('0705643782','5','3','BANDA ELASTICA TUBULAR POWER MUUK ALTA',9773,231,5,1000,1),('0705692356','12','4','DISCOS OLIMPICOS CON AZA',6510,417,5,1000,1),('0705827612','11','3','SET DE AROS AGILIDAD MUUK 11 UN',4439,275,5,1000,1),('0705957979','2','1','CANILLERA ARTES MARCIALES MUUK',361,869,5,1000,1),('0706068578','4','3','BALON DE FUTSAL MUUK TRAINING',3933,494,5,1000,1),('0706283355','11','3','TARJETA ARBITRO MUUK',5517,385,5,1000,1),('0706388790','6','3','BARRA PUERTA MUUK',2179,31,5,1000,1),('0706591006','4','2','CARRO PORTA BALONES PLEGABLE',2222,770,5,1000,1),('0706625975','11','3','BASE ESTACA AGILIDAD PVC VIXEN',6155,472,5,1000,1),('0706719269','2','1','GUANTILLA MMA MUUK',8900,81,5,1000,1),('0706720908','2','1','PERA BOX MUUK CON ROTOR',7650,694,5,1000,1),('0706770321','2','1','PECHERA PUNTO BLANCO',18000,80,5,1000,1),('0706851018','2','1','PERA BOX MUUK CON ELASTICO',6959,959,5,1000,1),('0706896207','3','2','DISCO DE LANZAMIENTO GOMA',6553,637,5,1000,1),('0707126677','6','3','CAYERAS DE CUERO MUUK',203,53,5,1000,1),('0707192603','11','3','ESTACAS DE SLALOM',6086,631,5,1000,1),('0707298517','10','3','CUERDA DE SALTO PREMIUN',9497,841,5,1000,1),('0707319620','11','3','BARRERA DE PENALES MUUK',6468,892,5,1000,1),('0707624893','2','1','GUANTILLA MUUK TIPO GARRA',13000,534,5,1000,1),('0707707336','3','4','MARTILLO DE LANZAMIENTO INICIACI?N',9017,965,5,1000,1),('0707846859','11','3','BANDERAS DE GUARDALINEAS',6957,370,5,1000,1),('0708084686','6','3','BARRA MANCUERNA CROMADA MUUK',1784,728,5,1000,1),('0708100544','6','3','BARRA CURVA Z MUUK',813,452,5,1000,1),('0708108138','14','3','CLAVA DE GIMNASIA OFICIAL',4910,16,5,1000,1),('0708181556','13','4','DISCO DE BALANCE MUUK MADERA',8179,928,5,1000,1),('0708212980','11','3','ESTACAS DE AGILIDAD MUUK CON RESORTE',5150,381,5,1000,1),('0708276482','11','3','CRONOMETRO DIGITAL MUUK',8011,374,5,1000,1),('0708301727','12','3','BALON MEDICINAL DE CROSSFIT MUUK 3, 5, 8 y 10KG',7670,316,5,1000,1),('0708390017','8','3','SET DE CONOS NUMERICOS MUUK',5616,631,5,1000,1),('0708593410','14','3','CUERDAS DE GMNASIA',1617,326,5,1000,1),('0708764045','3','2','VALLA DE SALTO MUUK ATLETISMO CLASSIC',9244,531,5,1000,1),('0708884946','10','3','CUERDA DE SALTO CON CONTADOR MECANICO VIXEN',8994,21,5,1000,1),('0709154965','11','3','SET DE BANDERIN DE CORNER CON RESORTE VIXEN',7911,181,5,1000,1),('0709156179','2','1','PALMETAS MUUK',35000,890,5,1000,1),('0709209800','14','3','HULA HULA HOOP DUAL',6863,330,5,1000,1),('0709534829','2','1','PROTECTOR GENITAL',15000,505,5,1000,1),('0709605677','7','3','BOLSO PORTA BALONES',4974,372,5,1000,1),('0710172998','1','1','RODILLERA ROTULIANA MUUK CON VELCRO',6300,515,5,1000,1),('0710193138','2','4','GUANTES BOX MUUK CUERO',9926,463,5,1000,1),('0710223523','11','3','PORTABOTELLA MUUK',5015,801,5,1000,1),('0710463885','14','3','HULA HULA PROFESIONAL MUUK',7926,326,5,1000,1),('0710480437','10','3','HAND GRIP M??K',8413,153,5,1000,1),('0710485222','12','3','GUANTES DE ENTRENAMIENTO',3767,412,5,1000,1),('0710517892','2','1','TATAMIS O PISOS PARA TAEKWONDO M??K',4701,519,5,1000,1),('0710611987','12','3','PESO TOBILLO-MU?ECA MUUK',5495,117,5,1000,1),('0710714687','11','3','CINTA DE CAPITAN MUUK',6629,760,5,1000,1),('0710829775','11','3','ARCOS REBOTADOR',8670,493,5,1000,1),('0710970072','6','3','BARRA ROMANA MUUK',7949,41,5,1000,1),('0711050559','9','3','TRX MUUK',4293,335,5,1000,1),('0711105062','5','3','BANDA ELASTICA TUBULAR POWER MUUK',4959,900,5,1000,1),('0711266062','7','3','BOLSO RETRO',9293,682,5,1000,1),('0711277674','3','4','JABALINAS DE ENTRENAMIENTO',3449,839,5,1000,1),('0711310640','3','2','VALLA DE SALTO MUUK ATLETISMO SUPER JUNIOR',3949,370,5,1000,1),('0711532956','14','3','CLAVA DE GIMNASIA OFICIAL',9618,732,5,1000,1),('0711569446','13','3','YOGA MAT',4052,80,5,1000,1),('0711573594','13','3','BALON DE PILATES ANTI-BURST',2030,12,5,1000,1),('0711613069','3','2','TACO DE PARTIDA INTERNACIONAL',8169,335,5,1000,1),('0711730397','3','4','JABALINA DE COMPETICION MUUK IAAF 800 GRS',9390,559,5,1000,1),('0711801097','8','3','SET LENTEJAS',3122,289,5,1000,1),('0711872580','9','3','CUERDA DE CROSSFIT MUUK',3685,670,5,1000,1),('0711947839','14','3','CLAVA DE GIMNASIA OFICIAL',9241,587,5,1000,1),('0712007378','4','3','BALON DE VOLEIBOL MUUK TRAINNING',8290,720,5,1000,1),('0712234014','3','2','PELOTAS DE LANZAMIENTO',8158,478,5,1000,1),('0712360611','11','3','ESCALERA DE AGILIDAD',2764,246,5,1000,1),('0712556646','2','1','CANILLERA ARTES MARCIALES PRO MUUK',994,768,5,1000,1),('0712582253','14','3','HULA HULA PROFESIONAL MUUK',8249,472,5,1000,1),('0712830338','3','4','DISCO DE LANZAMIENTO ACERO',4075,146,5,1000,1),('0712894483','2','1','GUANTES FOCO MUUK',25000,8,5,1000,1),('0712931029','8','3','CONOS MUUK PVC 18 CM',477,920,5,1000,1),('0712949982','6','3','BARRA DE ACERO PUSH UP',8183,182,5,1000,1),('0712996167','4','3','BALON DE HANDBALL MUUK OFICIAL',279,49,5,1000,1),('0713041698','8','3','SET DE LENTEJAS MUUK 20 UNIDADES',5591,106,5,1000,1),('0713153446','13','4','RUEDA ABROMINAL DOBLE M??K',4318,225,5,1000,1),('0713173235','6','3','MAGNESIO MUUK',2554,714,5,1000,1),('0713379809','12','3','SACO DE CROSSFIT MUUK BULGARO 3, 5, 8 y 10KG',7228,34,5,1000,1),('0713564363','12','3','BALON MEDICINAL MUUK CON AZA 3 y 5KG',2675,691,5,1000,1),('0713642948','14','3','HULA HULA HOOP DUAL',5485,487,5,1000,1),('0713703274','8','3','CONOS MUUK PVC 28 CM',7803,997,5,1000,1),('0713704645','12','3','BALON MEDICINAL MUUK',5768,602,5,1000,1),('0713786143','9','3','ANILLAS DE CROSSFIT',3643,355,5,1000,1),('0713837393','13','3','DISCO DE BALANCE MINI BOSU Y MASAJES M??K',8441,139,5,1000,1),('0713844321','2','1','CABEZAL ARTES MARCIALES CON REJILLA MUUK',25000,792,5,1000,1),('0713891439','14','4','CUERDAS DE GMNASIA',4149,285,5,1000,1),('0713964236','11','3','SET BANDERAS CORNER GOLD-100',8452,843,5,1000,1),('0714043757','11','3','PETOS DEPORTIVOS',2459,377,5,1000,1),('0714124408','3','2','TACO DE PARTIDA CLASSIC',1535,826,5,1000,1),('0714453671','13','3','DISCO DE BALANCE Y MASAJES AIR PAD M??K',1496,810,5,1000,1),('0714640244','4','3','BALON DE FUTBOL MUUK TRAINING',1062,28,5,1000,1),('0714770360','2','1','CABEZAL TKD MUUK OFICIAL',25000,581,5,1000,1),('0714792980','14','4','CUERDAS DE GMNASIA',539,225,5,1000,1),('0715069566','11','3','ESCALERA CUADRUPLE',4764,399,5,1000,1),('0715167619','7','3','BOLSO DEPORTIVO SPACER',4309,815,5,1000,1),('0715346456','3','2','JABALINA INICIACION TURBO',9585,612,5,1000,1),('0715411518','14','3','HULA HULA HOOP DUAL',3315,859,5,1000,1),('1','23','1','LAPICES',1500,700,5,1000,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `id_venta` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `rut_cliente` varchar(8) COLLATE utf8_spanish2_ci NOT NULL,
  `codig_medio_pago` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_venta` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `monto_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `rut_cliente` (`rut_cliente`),
  KEY `codig_medio_pago` (`codig_medio_pago`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`rut_cliente`) REFERENCES `clientes` (`rut_cliente`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`codig_medio_pago`) REFERENCES `medios_pagos` (`codig_medio_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES ('v01','1','cmp01','2018-01-01',1500),('v02','2','cmp02','2018-02-01',3000),('v03','3','cmp01','2018-03-01',5000),('v04','1','cmp01','2018-11-06',450000);
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

-- Dump completed on 2018-12-05 11:45:40
