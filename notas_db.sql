-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: notas_db
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Deportes'),(2,'Noticias'),(3,'Cine'),(4,'Espectaculos'),(5,'Actualidad'),(6,'Cultura'),(7,'Ciencia'),(8,'Politica'),(9,'Literatura'),(10,'Economia');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL,
  `fecha_modificacion` timestamp NOT NULL,
  `eliminar` tinyint(1) DEFAULT NULL,
  `usuarios_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Notas_Usuarios_idx` (`usuarios_id`),
  CONSTRAINT `fk_Notas_Usuarios` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'Lorem ipsum','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero soluta laborum dicta, necessitatibus expedita numquam quam. Soluta accusantium distinctio, repellat, voluptatem sit sed dolorem a consequatur quod eius, esse eligendi.','2015-02-11 03:00:00','2021-02-12 03:00:00',NULL,9),(2,'Lorem ipsum','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero soluta laborum dicta, necessitatibus expedita numquam quam. Soluta accusantium distinctio, repellat, voluptatem sit sed dolorem a consequatur quod eius, esse eligendi.','2016-04-12 03:00:00','2020-02-09 03:00:00',NULL,10),(3,'Lorem ipsum','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero soluta laborum dicta, necessitatibus expedita numquam quam. Soluta accusantium distinctio, repellat, voluptatem sit sed dolorem a consequatur quod eius, esse eligendi.','2012-05-08 03:00:00','2018-09-11 03:00:00',NULL,7),(4,'Lorem ipsum','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero soluta laborum dicta, necessitatibus expedita numquam quam. Soluta accusantium distinctio, repellat, voluptatem sit sed dolorem a consequatur quod eius, esse eligendi.','2019-08-11 03:00:00','2020-08-12 03:00:00',NULL,8),(5,'Lorem ipsum','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero soluta laborum dicta, necessitatibus expedita numquam quam. Soluta accusantium distinctio, repellat, voluptatem sit sed dolorem a consequatur quod eius, esse eligendi.','2018-12-12 03:00:00','2019-02-02 03:00:00',NULL,6),(6,'Lorem ipsum','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero soluta laborum dicta, necessitatibus expedita numquam quam. Soluta accusantium distinctio, repellat, voluptatem sit sed dolorem a consequatur quod eius, esse eligendi.','2015-08-07 03:00:00','2018-03-10 03:00:00',NULL,5),(7,'Lorem ipsum','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero soluta laborum dicta, necessitatibus expedita numquam quam. Soluta accusantium distinctio, repellat, voluptatem sit sed dolorem a consequatur quod eius, esse eligendi.','2014-06-11 03:00:00','2019-02-11 03:00:00',NULL,3),(8,'Lorem ipsum','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero soluta laborum dicta, necessitatibus expedita numquam quam. Soluta accusantium distinctio, repellat, voluptatem sit sed dolorem a consequatur quod eius, esse eligendi.','2020-02-01 03:00:00','2021-06-02 03:00:00',NULL,2),(9,'Lorem ipsum','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero soluta laborum dicta, necessitatibus expedita numquam quam. Soluta accusantium distinctio, repellat, voluptatem sit sed dolorem a consequatur quod eius, esse eligendi.','2011-03-09 03:00:00','2015-05-12 03:00:00',NULL,1),(10,'Lorem ipsum','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero soluta laborum dicta, necessitatibus expedita numquam quam. Soluta accusantium distinctio, repellat, voluptatem sit sed dolorem a consequatur quod eius, esse eligendi.','2021-07-12 03:00:00','2021-02-11 03:00:00',NULL,4);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notascategorias`
--

DROP TABLE IF EXISTS `notascategorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notascategorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notas_id` int NOT NULL,
  `categorias_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_NotasCategorias_Notas1_idx` (`notas_id`),
  KEY `fk_NotasCategorias_Categorias1_idx` (`categorias_id`),
  CONSTRAINT `fk_NotasCategorias_Categorias1` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `fk_NotasCategorias_Notas1` FOREIGN KEY (`notas_id`) REFERENCES `notas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notascategorias`
--

LOCK TABLES `notascategorias` WRITE;
/*!40000 ALTER TABLE `notascategorias` DISABLE KEYS */;
INSERT INTO `notascategorias` VALUES (1,2,9),(2,3,10),(3,4,8),(4,1,6),(5,8,7),(6,7,5),(7,6,3),(8,5,1),(9,10,4),(10,9,2);
/*!40000 ALTER TABLE `notascategorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Josefina Lopez','josefi@gmail.com'),(2,'Leonel Garcia','lgar@gmail.com'),(3,'Fernando Jota','jota@hotmail.com'),(4,'Sofia Sanchez','soso@gmail.com'),(5,'Sandra Rodriguez','saro@gmail.com'),(6,'Laura Gonzales','lala@hotmail.com'),(7,'Francisco Jeres','fjer@gmail.com'),(8,'Lucas Fernandez','luca@gmail.com'),(9,'Juliana Rios','julirios@gmail.com'),(10,'Pamela Rossi','ros@hotmail.com');
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

-- Dump completed on 2021-09-11 16:48:14
