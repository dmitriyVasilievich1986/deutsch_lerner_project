-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: deutsch
-- ------------------------------------------------------
-- Server version	8.0.26

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

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add group model',7,'add_groupmodel'),(26,'Can change group model',7,'change_groupmodel'),(27,'Can delete group model',7,'delete_groupmodel'),(28,'Can view group model',7,'view_groupmodel'),(29,'Can add theme model',8,'add_thememodel'),(30,'Can change theme model',8,'change_thememodel'),(31,'Can delete theme model',8,'delete_thememodel'),(32,'Can view theme model',8,'view_thememodel'),(33,'Can add wort model',9,'add_wortmodel'),(34,'Can change wort model',9,'change_wortmodel'),(35,'Can delete wort model',9,'delete_wortmodel'),(36,'Can view wort model',9,'view_wortmodel'),(37,'Can add wort theme model',10,'add_wortthememodel'),(38,'Can change wort theme model',10,'change_wortthememodel'),(39,'Can delete wort theme model',10,'delete_wortthememodel'),(40,'Can view wort theme model',10,'view_wortthememodel');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'main','groupmodel'),(8,'main','thememodel'),(9,'main','wortmodel'),(10,'main','wortthememodel'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-03-30 07:15:48.654376'),(2,'auth','0001_initial','2022-03-30 07:15:49.138188'),(3,'admin','0001_initial','2022-03-30 07:15:49.256886'),(4,'admin','0002_logentry_remove_auto_add','2022-03-30 07:15:49.273965'),(5,'admin','0003_logentry_add_action_flag_choices','2022-03-30 07:15:49.282992'),(6,'contenttypes','0002_remove_content_type_name','2022-03-30 07:15:49.370070'),(7,'auth','0002_alter_permission_name_max_length','2022-03-30 07:15:49.423865'),(8,'auth','0003_alter_user_email_max_length','2022-03-30 07:15:49.453468'),(9,'auth','0004_alter_user_username_opts','2022-03-30 07:15:49.466196'),(10,'auth','0005_alter_user_last_login_null','2022-03-30 07:15:49.510655'),(11,'auth','0006_require_contenttypes_0002','2022-03-30 07:15:49.517310'),(12,'auth','0007_alter_validators_add_error_messages','2022-03-30 07:15:49.530281'),(13,'auth','0008_alter_user_username_max_length','2022-03-30 07:15:49.590927'),(14,'auth','0009_alter_user_last_name_max_length','2022-03-30 07:15:49.640914'),(15,'auth','0010_alter_group_name_max_length','2022-03-30 07:15:49.670385'),(16,'auth','0011_update_proxy_permissions','2022-03-30 07:15:49.682850'),(17,'auth','0012_alter_user_first_name_max_length','2022-03-30 07:15:49.739051'),(18,'main','0001_initial','2022-03-30 07:15:49.893500'),(19,'sessions','0001_initial','2022-03-30 07:15:49.930978'),(20,'main','0002_remove_wortmodel_theme_wortmodel_theme','2022-04-01 09:28:40.853364'),(21,'main','0003_alter_wortmodel_theme','2022-04-03 12:31:58.661987'),(22,'main','0004_remove_wortmodel_theme_wortthememodel','2022-04-03 14:22:23.814632');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_groupmodel`
--

DROP TABLE IF EXISTS `main_groupmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_groupmodel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_groupmodel`
--

LOCK TABLES `main_groupmodel` WRITE;
/*!40000 ALTER TABLE `main_groupmodel` DISABLE KEYS */;
INSERT INTO `main_groupmodel` VALUES (4,'выражение'),(1,'глагол'),(3,'предлог'),(2,'прилагательное'),(5,'существительное');
/*!40000 ALTER TABLE `main_groupmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_thememodel`
--

DROP TABLE IF EXISTS `main_thememodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_thememodel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_thememodel`
--

LOCK TABLES `main_thememodel` WRITE;
/*!40000 ALTER TABLE `main_thememodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_thememodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_wortmodel`
--

DROP TABLE IF EXISTS `main_wortmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_wortmodel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `wort` varchar(150) NOT NULL,
  `translate` varchar(150) NOT NULL,
  `group_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wort` (`wort`),
  KEY `main_wortmodel_group_id_73dafedf_fk_main_groupmodel_id` (`group_id`),
  CONSTRAINT `main_wortmodel_group_id_73dafedf_fk_main_groupmodel_id` FOREIGN KEY (`group_id`) REFERENCES `main_groupmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_wortmodel`
--

LOCK TABLES `main_wortmodel` WRITE;
/*!40000 ALTER TABLE `main_wortmodel` DISABLE KEYS */;
INSERT INTO `main_wortmodel` VALUES (1,'können','мочь',1),(2,'sagen','сказать',1),(3,'essen','есть',1),(4,'denken','полагать',1),(5,'verstehen','понимать',1),(6,'sprechen','разговаривать',1),(7,'leben','жить',1),(8,'lesen','читать',1),(9,'kosten','стоить',1),(10,'reisen','путешествовать',1),(11,'sollten','быть должным',1),(12,'meinen','иметь ввиду',1),(13,'gehen','идти',1),(14,'arbeiten','работать',1),(15,'haben','иметь',1),(17,'heißen','называться',1),(18,'kommen','приходить',1),(19,'tragen','носить',1),(20,'würden','было бы',1),(21,'glauben','полагать',1),(22,'bekommen','получать',1),(23,'bleiben','оставаться',1),(24,'müssen','придется',1),(25,'Könnten','мочь',1),(26,'fragen','спрашивать',1),(27,'nutzen','использовать',1),(28,'bedeuten','означать',1),(29,'wissen','знать',1),(30,'giben','давать',1),(31,'finden','Находить',1),(32,'zahlen','платить',1),(33,'möchten','хотеть',1),(34,'akzeptieren','принимать',1),(35,'kaufen','покупать',1),(36,'hätte','было бы',1),(37,'wohnen','проживать',1),(38,'dachten','мыслить',1),(40,'anmelden','Уведомлять',1),(41,'treffen','встречаться',1),(42,'stehen','стоять',1),(43,'putzen','чистить',1),(44,'duschen','принимать душ',1),(45,'waschen','мыть',1),(46,'ziehen','тянуть',1),(47,'lieben','любить',1),(48,'schaffen','создавать',1),(49,'fahren','водить',1),(50,'nehmen','выбирать',1),(51,'biegen','повернуть',1),(52,'häufen','накапливать',1),(53,'reich','богатый',2),(54,'arm','бедный',2),(55,'billig','дешевый',2),(56,'teure','дорогой',2),(57,'interessant','Интересно',2),(58,'neue','новый',2),(59,'alt','Старый',2),(60,'langweilig','скучный',2),(61,'wirklich','действительный',2),(62,'lustig','весело',2),(63,'gut','Хорошо',2),(64,'schlechte','плохой',2),(65,'höhe','высота',2),(66,'niedrig','низкий',2),(67,'klein','небольшой',2),(68,'einfach','легкий',2),(69,'schwierig','трудный',2),(70,'stark','сильный',2),(71,'schwach','слабый',2),(72,'klug','Умный',2),(73,'dumm','тупой',2),(74,'glücklich','счастливый',2),(75,'fleißig','упорная работа',2),(76,'beliebt','популярный',2),(77,'berühmt','известный',2),(78,'lang','длинная',2),(79,'kurz','короткая',2),(80,'traurige','печальный',2),(81,'talentiert','талантливый',2),(82,'müde','устала',2),(83,'beschäftigt','занятый',2),(84,'frei','свободный',2),(85,'wunderbar','Чудесный',2),(86,'brillant','блестящий',2),(87,'wichtig','важный',2),(88,'richtig','правильный',2),(89,'falsch','неверный',2),(90,'schön','прекрасный',2),(91,'hässlich','уродливый',2),(92,'krank','Больной',2),(93,'gesund','здоровый',2),(94,'Jung','молодой',2),(95,'schnell','быстро',2),(96,'lecker','вкусно',2),(97,'möglich','возможно',2),(98,'gelb','желтый',2),(99,'blau','синий',2),(100,'seltsam','странный',2),(101,'effektiv','эффективно',2),(102,'verschieden','разные',2),(103,'klar','ясный',2),(104,'nervös','нервный',2),(105,'riesig','гигантский',2),(106,'häufig','частый',2),(107,'spät','поздно',2),(108,'früh','рано',2),(109,'pessimistisch','пессимистичный',2),(110,'optimistisch','оптимистичный',2),(111,'selten','Редкий',2),(112,'formal','формально',2),(113,'informell','неофициальный',2),(114,'bald','скоро',2),(115,'bisschen','маленький',2),(116,'funktioniert','работающий',2),(117,'wenig','маленький',2),(118,'schrecklich','ужасный',2),(119,'weit','далеко',2),(120,'kostenlos','бесплатно',2),(121,'grau','серый',2),(122,'weiß','белый',2),(123,'bunt','разноцветный',2),(124,'schwer','тяжелый',2),(125,'groß','большой',2),(126,'schlecht','плохой',2),(127,'sicher','уверенный',2),(128,'beantragen','подавать заявление',1),(131,'mehr','более',2),(132,'schlichte','простой',2),(133,'leid','печаль',2),(134,'freue','радовать',2),(135,'ledig','холостой',2),(136,'befristeter','временный',2),(137,'abgelaufen','истекший',2),(138,'angst','страх',2),(139,'öffentliche','публичный',2),(140,'nächste','следующий',2),(141,'an','на/в',3),(142,'ab','прочь',3),(143,'zum','к',3),(144,'hier','здесь',3),(145,'in','в',3),(146,'und','и',3),(147,'nach','на/в',3),(148,'mit','с',3),(149,'etwas','немного',3),(150,'sofort','немедленно',3),(151,'wenn','если',3),(152,'vor','перед',3),(153,'liegen','находиться/лежать',1),(163,'gerade','только что',3),(164,'um','около',3),(165,'täglich','Каждый день',3),(166,'für','для',3),(167,'wieder','опять таки',3),(168,'dass','что',3),(169,'bei','у/с',3),(170,'halbes','половина',3),(190,'viertel','четверть',3),(191,'Darf','Разрешается',3),(192,'ob','ли',3),(193,'sich','сам',3),(194,'über','над',3),(195,'entlang','вместе',3),(196,'durch','через',3),(197,'zur','к',3),(198,'vorbei','мимо',3),(199,'aus','из',3),(200,'ersten','первый',3),(201,'zwischen','между',3),(202,'neben','рядом',3),(203,'hinter','Позади',3),(204,'jemand','кто-то',3),(205,'wohl','наверное',3),(206,'tut','делает',3),(215,'jedoch','Однако',3),(216,'andere','прочий',3),(217,'oder','или',3),(218,'aber','но',3),(219,'dann','тогда',3),(220,'jedes','каждый',3),(221,'Auf','на',3),(222,'seit','с тех пор как',3),(224,'sehen','видеть',1),(225,'freut mich','Я рад',4),(226,'tut mir leid','Мне жаль',4),(227,'wieso','каким образом',3),(228,'sei','может быть',3),(229,'sei nicht traurig','не грусти',4),(230,'stellen','помещать',1),(231,'beschworen','вызван',1),(232,'anfangs','вначале',3),(233,'war','быть',3),(234,'viel zu viel','слишком много',4),(235,'einbildeten','воображать',1),(236,'nun','теперь',3),(237,'nur','только',3),(238,'schwören','клясться',1),(239,'geradezu','прямо-таки',3),(240,'vorfall','инцидент',5),(241,'einem gewissen','определенный',4),(242,'vertrauen','доверять',1),(243,'beiden','обе',3),(244,'zuerst','первый',3),(245,'erinneren','запомнить',1),(246,'einmal','однажды',3),(247,'gesichter','облик',5),(248,'kämpfen','дрался',1),(249,'wohle','благо',3),(250,'beschützen','защищать',1),(251,'wünschen','желать',1),(252,'zumindest','по меньшей мере',3),(253,'zuvor','до',3),(254,'retten','спасать',1),(255,'erstaunen','удивлять',1),(256,'dasselbe','тоже самое',3),(257,'beim','в',3),(259,'gar','совсем',3),(260,'etwa','о',3),(261,'vergangenheit','прошлое',3),(262,'erfahrung','опыт',5),(263,'besuchen','посетить',1),(264,'brauchen','нуждаться',1),(266,'kennen','знать',1),(267,'feiern','праздновать',1),(268,'verspüren','Чувствовать',1),(269,'heruntergekommen','захудалый',2),(270,'gründen','основывает',1),(271,'opa','Дедушка',5),(272,'trockner','сушилка',5),(273,'läufen','бегать',1),(274,'voll','полный',2),(275,'starren','глазеть',1),(276,'kann sein','может быть',4),(277,'wachsen','расти',1),(278,'kündigen','расторгать',1),(279,'verraten','раскрыть',1),(280,'spaß','весело',2),(281,'ganz','целый',2),(282,'süß','сладкий',2),(283,'salzig','соленый',2),(284,'sauer','сердитый/кислый',2),(285,'schmecken','попробовать',1),(286,'der rock','юбка',5),(287,'das hemd','рубашка',5),(288,'die hose','брюки',5),(289,'der gürtel','пояс',5),(290,'die mütze','шляпа',5),(291,'das kopftuch','платок',5),(292,'die schuhe','туфли',5),(293,'die stiefel','сапоги',5),(294,'die strumpfhose','колготки',5),(295,'die unterhose','трусы',5);
/*!40000 ALTER TABLE `main_wortmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_wortthememodel`
--

DROP TABLE IF EXISTS `main_wortthememodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_wortthememodel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `theme_id` bigint NOT NULL,
  `wort_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_wortthememodel_theme_id_e027b0ec_fk_main_thememodel_id` (`theme_id`),
  KEY `main_wortthememodel_wort_id_393138f5_fk_main_wortmodel_id` (`wort_id`),
  CONSTRAINT `main_wortthememodel_theme_id_e027b0ec_fk_main_thememodel_id` FOREIGN KEY (`theme_id`) REFERENCES `main_thememodel` (`id`),
  CONSTRAINT `main_wortthememodel_wort_id_393138f5_fk_main_wortmodel_id` FOREIGN KEY (`wort_id`) REFERENCES `main_wortmodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_wortthememodel`
--

LOCK TABLES `main_wortthememodel` WRITE;
/*!40000 ALTER TABLE `main_wortthememodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_wortthememodel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-03 14:23:40
