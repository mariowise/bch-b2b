-- MySQL dump 10.13  Distrib 5.6.16, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: bch-b2b
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `avatar_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_file_size` int(11) DEFAULT NULL,
  `avatar_updated_at` datetime DEFAULT NULL,
  `razon_social` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rut` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comuna` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coordenadas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'2015-10-03 23:03:48','2015-10-03 23:03:48',NULL,NULL,NULL,NULL,'Constructora Belfi Montec','76750650-3','http://www.belfi.cl/images/logo.gif','contacto@belfi.cl','Empresa constructora','Calle Puerta del Sol 55, P3, Las Condes, Santiago, Región Metropolitana','Las Condes','-33.41367591599094,-70.57861310514524','Empresa Constructora Belfi S.A.  se inicia en 1950 como una Empresa de Construcciones en general.   La empresa está inscrita en Primera Categoría en el “Ministerio de Obras Públicas” y otras instituciones fiscales, estables y privadas del país.'),(2,'2015-10-03 23:03:48','2015-10-03 23:03:48',NULL,NULL,NULL,NULL,'Pro-Gift Merchandising Articulos Publicitarios Regalos Corporativos en Santiago','76750650-3','https://lh4.googleusercontent.com/-ZZN8O_Hp8HA/VNgpM-rGVfI/AAAAAAAAAAU/wpU_KI9AE4Y/s160-k-no/','contacto@pro-gift.cl','Tienda de regalos','Rosario Sur 135, Santiago, Las Condes, Región Metropolitana','Las Condes','-33.4106131,-70.5699307',''),(3,'2015-10-03 23:03:48','2015-10-03 23:03:48',NULL,NULL,NULL,NULL,'Auto Adhesivos','76750650-3','http://www.autoadhesivos.cl/wp-content/uploads/2014/10/logo.png','ventas@autoadhesivos.cl','Imprenta','Avda Apoquindo 5534, Las Condes, Santiago, Región Metropolitana','Las Condes','-33.41138326854108,-70.56560975584104','Desde 1998 En el mercado grafico ofreciendo. Productos y Servicios de calidad Garantizada. Con el objetivo de brindar a nuestros clientes una atención personalizada y oportuna.'),(4,'2015-10-03 23:03:48','2015-10-03 23:03:48',NULL,NULL,NULL,NULL,'Laborum Com Chile','76750650-3','http://www.apertura.com/__export/1431713143210/sites/revistaap/img/clase/2014/11/18/laborum_img_crop1416337699315.jpg','clientes@laborum.cl','Oficina pública de empleo','Los Militares 4777, Santiago, Región Metropolitana','Las Condes','-33.41367591599094,-70.57861310514524','Porque confiamos en tus capacidades, Laborum Inclusivo te ofrece la oportunidad de integrar el mercado laboral mediante un empleo. Postula a nuestros avisos de trabajo y asesórate con las instituciones asociadas.'),(5,'2015-10-03 23:03:48','2015-10-03 23:03:48',NULL,NULL,NULL,NULL,'Pizarras de vidrio','76750650-3','http://www.vidrieriapocuro.com/uploads/7/5/4/3/7543189/1414085376.png','ventas@vidrieriapocuro.com','Tienda de porcelana','Nueva Providencia 2060, Santiago, Providencia, Región Metropolitana','Providencia','-33.42657093017396,-70.61067086729123','Todo tipo de servicios relacionados con ampliación y reparación de ventanas o puertas de aluminio y vidrio. Oficinas, Locales Comerciales, Colegios, Estadios, Casinos, Industrias. Desde una simple reparación hasta la ampliación o cambio total de su espacio. '),(6,'2015-10-03 23:03:48','2015-10-03 23:03:48',NULL,NULL,NULL,NULL,'Bettersoft Consultores','76750650-3','http://www.bettersoft.cl/photos/tfile_logo.png','comercial@bettersoft.cl ','Asesor','Nueva Providencia 2155, Santiago, Región Metropolitana','Providencia','-33.42657093017396,-70.61067086729123','Es una compañía de servicios de consultoría y de desarrollo de software para las áreas de Gestión, fuertemente focalizada en la prestación de servicios para el área de educación. Nuestra compañía fue fundada en 1998 por Jaime Núñez Videla, Ingeniero Informático de la Universidad de Chile y MBA de la Universidad Diego Portales, ex – socio gerente y creador tecnológico de Flexline, software ERP líder en gestión administrativa en la década de los ‘90.'),(7,'2015-10-03 23:03:48','2015-10-03 23:03:48',NULL,NULL,NULL,NULL,'Agencia de Viajes C T S Turismo','76750650-3','http://www.ctsnacional.cl/wp-content/uploads/2012/12/logo.png','contacto@ctsviajes.cl','Agencias de Turismo (Incluye Venta de Pasajes)','Calle Antonio Bellet 77, Of 202, Providencia, Santiago, Región Metropolitana','Providencia','-33.42657093017396,-70.61067086729123','Fundada en 1978, por Don Christiàn Carrère, CTS Turismo, cuenta con una reconocida y sólida trayectoria en la industria del Turismo, siendo hoy , una de las más importantes Empresas del rubro en Chile, con prestigio a nivel Nacional e Internacional.'),(8,'2015-10-03 23:03:48','2015-10-03 23:03:48',NULL,NULL,NULL,NULL,'IMA','76750650-3','http://www.ima.cl/templates/gk_hitmusic/images/style3/logo.png','contacto@ima.cl','Empresa de suministros industriales','Francisco Noguera, Santiago, Providencia, Región Metropolitana','Providencia','-33.42657093017396,-70.61067086729123','IMA nace en 1982 fruto del emprendimiento de los ingenieros Aldo Amadori y Juan Menchaca, como una empresa dedicada a los Servicios de Instrumentación.'),(9,'2015-10-03 23:03:48','2015-10-03 23:03:48',NULL,NULL,NULL,NULL,'Posicionamiento Web - Destaca Chile S.A','76020044-1','/img/posicionamientoWeb.jpg','contacto@destaca.cl','Informática','José Victorino Lastarria #15, Piso 3','Santiago','-33.439934,-70.6419102','Primera compañía chilena especializada en SEO, Posicionamiento Web Orgánico y Marketing Online. Enfocamos nuestros esfuerzos en la investigación e innovación a través de nuevas herramientas y aplicaciones en Redes Sociales y Google Adwords.'),(10,'2015-10-03 23:03:48','2015-10-03 23:03:48',NULL,NULL,NULL,NULL,'E-CERTCHILE - Empresa Nacional de Certificación Electrónica.','96928180-5','https://www.e-certchile.cl/sites/default/files/logo-e-certchile.png','sclientes@e-certchile.cl','Servicio de comercio electrónico','Monjitas 392, Santiago','Santiago','-33.44162555628785,-70.6334895','Cámara de comercio de santiago'),(11,'2015-10-03 23:03:49','2015-10-03 23:03:49',NULL,NULL,NULL,NULL,'SUCURSAL MOVISTAR BELLAS ARTES','7204054-1','http://saladeprensa.telefonica.com/img/elementos/imagenes/logo_movistar_alta_3.jpg','conacto@movistar.cl','Compañía telefónica','Huerfanos 623, Chile','Santiago','-33.44162555628785,-70.6334895','Smartphones, tablets y accesorios en tiendas de telefonía oficial de operador de servicios de ADSL y cable.'),(12,'2015-10-03 23:03:49','2015-10-03 23:03:49',NULL,NULL,NULL,NULL,'ENTEL - HUERFANOS','7204054-1','https://lh4.googleusercontent.com/-KDaeL2ElkUg/AAAAAAAAAAI/AAAAAAAAAAA/IC880NXzWEs/s0-c-k-no-ns/photo.jpg','contacto@entel.cl','Proveedor de servicios de telecomunicación','Huérfanos 718','Santiago','-33.44162555628785,-70.6334895','servicios telefónicos'),(13,'2015-10-03 23:03:49','2015-10-03 23:03:49',NULL,NULL,NULL,NULL,'Librerías y Timbres Chile','777054-1','http://www.libreriachile.cl/img/logo.jpg','contacto@libreriachile.cl','Venta de libros','Bandera 183 Local 18','Santiago','-33.44162555628785,-70.6334895','Venta de libros al por mayor y menor a precios convenientes'),(14,'2015-10-03 23:03:49','2015-10-03 23:03:49',NULL,NULL,NULL,NULL,'Empresas Cmpc','7675054-1','http://www.cmpc.cl/wp-content/themes/cmpc2013/img/logo.png','contacto@cmpc.cl','Comercialización de productos forestales','Agustina 1343','Santiago','-33.4402001542832,-70.65686307415776','CMPC es una de las empresas líderes de Latinoamérica en la producción y comercialización de Productos Forestales, Celulosa, Papeles y Productos Tissue.'),(15,'2015-10-03 23:03:49','2015-10-03 23:03:49',NULL,NULL,NULL,NULL,'Transtecnia S.A.','7745054-1','http://www.bumeran.cl/portal/img/empresas/0/0/0/0/6/9/0/4/2/0/logoMainPic_690420.jpg','contacto@transtecnia.cl','Desarrollo de software','Adriana Undurraga 206','Santiago','-33.44162555628785,-70.6334895','Transtecnia es una empresa chilena líder y pionera desde 1987 en el desarrollo de soluciones tecnológicas de gestión tributaria, contable, de facturación electrónica y de remuneraciones.'),(16,'2015-10-03 23:03:49','2015-10-03 23:03:49',NULL,NULL,NULL,NULL,'Endesa Chile','7756054-1','https://www.endesaclientes.com/static/iberia/img/modulos/header/bg_logo.png','contacto@endesa.cl','Proveedor de servicios agua y luz','Av. Sta. Rosa 76','Santiago','-33.44162555628785,-70.6334895','Proveedor de bienes y servicios asociados al agua y la luz.'),(17,'2015-10-03 23:03:49','2015-10-03 23:03:49',NULL,NULL,NULL,NULL,'Packing Impresores','7578054-1','http://www.eco-logica.co/productos/caja01.jpg','packing@packingimpresores.cl ','Fábrica de envases de cartón y papel','Calle San Diego 666','Santiago','-33.44162555628785,-70.6334895','Fábrica de envases de papel y cartón'),(18,'2015-10-03 23:03:49','2015-10-03 23:03:49',NULL,NULL,NULL,NULL,'IMA','7578054-1','http://www.feriasinfo.es/logos/ima_logo_293.jpg','ima@contacto.cl','Empresa de suministros industriales','Gral Bustamante 540','Providencia','-33.44162555628785,-70.6334895','Empresa encargada de la venta de suministros industriales'),(19,'2015-10-03 23:03:49','2015-10-03 23:03:49',NULL,NULL,NULL,NULL,'Chile Mudanzas','7578054-1','http://www.chile-mudanzas.cl/Images/INDEX3_06.jpg','contacto@chile-mudanzas.cl','Servicio de mudanzas','Marín 275, Santiago, Providencia, Región Metropolitana','Providencia','-33.43949984058525,-70.62974673780515','ChileMudanzas tiene la convicción de que su mudanza no tiene porque  ser un evento traumático y angustiante, sino por el contrario que ésta sea el primer paso para un cambio favorable en su vida, con nuevos desafíos y nuevas oportunidades.');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_tags`
--

DROP TABLE IF EXISTS `company_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_company_tags_on_tag_id` (`tag_id`),
  KEY `index_company_tags_on_company_id` (`company_id`),
  CONSTRAINT `fk_rails_889ae7e543` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `fk_rails_882fda71e2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_tags`
--

LOCK TABLES `company_tags` WRITE;
/*!40000 ALTER TABLE `company_tags` DISABLE KEYS */;
INSERT INTO `company_tags` VALUES (1,3,1,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(2,2,1,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(3,4,2,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(4,17,2,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(5,5,3,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(6,6,4,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(7,1,4,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(8,8,5,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(9,7,5,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(10,9,6,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(11,10,7,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(12,17,7,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(13,11,8,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(14,12,9,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(15,18,9,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(16,17,10,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(17,12,10,'2015-10-03 23:03:48','2015-10-03 23:03:48'),(18,16,11,'2015-10-03 23:03:49','2015-10-03 23:03:49'),(19,16,12,'2015-10-03 23:03:49','2015-10-03 23:03:49'),(20,19,13,'2015-10-03 23:03:49','2015-10-03 23:03:49'),(21,17,13,'2015-10-03 23:03:49','2015-10-03 23:03:49'),(22,20,14,'2015-10-03 23:03:49','2015-10-03 23:03:49'),(23,18,15,'2015-10-03 23:03:49','2015-10-03 23:03:49'),(24,12,15,'2015-10-03 23:03:49','2015-10-03 23:03:49'),(25,11,16,'2015-10-03 23:03:49','2015-10-03 23:03:49'),(26,19,17,'2015-10-03 23:03:49','2015-10-03 23:03:49'),(27,22,17,'2015-10-03 23:03:49','2015-10-03 23:03:49'),(28,21,17,'2015-10-03 23:03:49','2015-10-03 23:03:49'),(29,11,18,'2015-10-03 23:03:49','2015-10-03 23:03:49'),(30,23,19,'2015-10-03 23:03:49','2015-10-03 23:03:49');
/*!40000 ALTER TABLE `company_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actions` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_money` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140219221337'),('20151003164317'),('20151003164726'),('20151003164909'),('20151003165249'),('20151003190354'),('20151003190436'),('20151003190611'),('20151003225650');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Educación','2015-10-03 23:03:48','2015-10-03 23:03:48'),(2,'Inmubles','2015-10-03 23:03:48','2015-10-03 23:03:48'),(3,'Constructora','2015-10-03 23:03:48','2015-10-03 23:03:48'),(4,'Tienda regalos','2015-10-03 23:03:48','2015-10-03 23:03:48'),(5,'Imprenta','2015-10-03 23:03:48','2015-10-03 23:03:48'),(6,'Empleos','2015-10-03 23:03:48','2015-10-03 23:03:48'),(7,'Vidrio','2015-10-03 23:03:48','2015-10-03 23:03:48'),(8,'Porcelana','2015-10-03 23:03:48','2015-10-03 23:03:48'),(9,'Asesoria','2015-10-03 23:03:48','2015-10-03 23:03:48'),(10,'Turismo','2015-10-03 23:03:48','2015-10-03 23:03:48'),(11,'Suministros','2015-10-03 23:03:48','2015-10-03 23:03:48'),(12,'Informatica','2015-10-03 23:03:48','2015-10-03 23:03:48'),(13,'Marketing','2015-10-03 23:03:48','2015-10-03 23:03:48'),(14,'Innovacion','2015-10-03 23:03:48','2015-10-03 23:03:48'),(15,'Redes Sociales','2015-10-03 23:03:48','2015-10-03 23:03:48'),(16,'Telecomunicaciones','2015-10-03 23:03:48','2015-10-03 23:03:48'),(17,'Comercio electronico','2015-10-03 23:03:48','2015-10-03 23:03:48'),(18,'Desarrollo software','2015-10-03 23:03:48','2015-10-03 23:03:48'),(19,'Libros','2015-10-03 23:03:48','2015-10-03 23:03:48'),(20,'Productos forestales','2015-10-03 23:03:48','2015-10-03 23:03:48'),(21,'Carton','2015-10-03 23:03:48','2015-10-03 23:03:48'),(22,'Papel','2015-10-03 23:03:48','2015-10-03 23:03:48'),(23,'Mudanzas','2015-10-03 23:03:48','2015-10-03 23:03:48');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `avatar_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_file_size` int(11) DEFAULT NULL,
  `avatar_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mariolopezlandes@gmail.com','$2a$10$aS1OQSdILIsMrl0r718ZI.0.kh11/PyD9RtDhQ8V7SHxVYw7Rdm8u',NULL,NULL,NULL,1,'2015-10-03 23:03:56','2015-10-03 23:03:56','::1','::1','Mario Luis','López Landes','+56956107696',NULL,'2015-10-03 23:03:48','2015-10-03 23:03:56',NULL,NULL,NULL,NULL);
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

-- Dump completed on 2015-10-03 22:26:21
