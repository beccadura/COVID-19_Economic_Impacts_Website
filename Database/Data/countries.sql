-- MariaDB dump 10.17  Distrib 10.5.6-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: covid_economic_impacts
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso2` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonecode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_iso2` (`iso2`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','AFG','AF','93','Kabul','AFN','2018-07-20 20:11:03','2020-05-16 10:49:11'),(2,'Aland Islands','ALA','AX','+358-18','Mariehamn','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(3,'Albania','ALB','AL','355','Tirana','ALL','2018-07-20 20:11:03','2020-05-16 10:49:11'),(4,'Algeria','DZA','DZ','213','Algiers','DZD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(5,'American Samoa','ASM','AS','+1-684','Pago Pago','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(6,'Andorra','AND','AD','376','Andorra la Vella','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(7,'Angola','AGO','AO','244','Luanda','AOA','2018-07-20 20:11:03','2020-05-16 10:49:11'),(8,'Anguilla','AIA','AI','+1-264','The Valley','XCD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(9,'Antarctica','ATA','AQ','','','','2018-07-20 20:11:03','2020-05-16 10:49:11'),(10,'Antigua And Barbuda','ATG','AG','+1-268','St. John\'s','XCD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(11,'Argentina','ARG','AR','54','Buenos Aires','ARS','2018-07-20 20:11:03','2020-05-16 10:49:11'),(12,'Armenia','ARM','AM','374','Yerevan','AMD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(13,'Aruba','ABW','AW','297','Oranjestad','AWG','2018-07-20 20:11:03','2020-05-16 10:49:11'),(14,'Australia','AUS','AU','61','Canberra','AUD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(15,'Austria','AUT','AT','43','Vienna','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(16,'Azerbaijan','AZE','AZ','994','Baku','AZN','2018-07-20 20:11:03','2020-05-16 10:49:11'),(17,'Bahamas','BHS','BS','+1-242','Nassau','BSD','2018-07-20 20:11:03','2020-10-26 06:39:59'),(18,'Bahrain','BHR','BH','973','Manama','BHD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(19,'Bangladesh','BGD','BD','880','Dhaka','BDT','2018-07-20 20:11:03','2020-05-16 10:49:11'),(20,'Barbados','BRB','BB','+1-246','Bridgetown','BBD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(21,'Belarus','BLR','BY','375','Minsk','BYN','2018-07-20 20:11:03','2020-08-15 16:58:19'),(22,'Belgium','BEL','BE','32','Brussels','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(23,'Belize','BLZ','BZ','501','Belmopan','BZD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(24,'Benin','BEN','BJ','229','Porto-Novo','XOF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(25,'Bermuda','BMU','BM','+1-441','Hamilton','BMD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(26,'Bhutan','BTN','BT','975','Thimphu','BTN','2018-07-20 20:11:03','2020-05-16 10:49:11'),(27,'Bolivia','BOL','BO','591','Sucre','BOB','2018-07-20 20:11:03','2020-05-16 10:49:11'),(28,'Bosnia and Herzegovina','BIH','BA','387','Sarajevo','BAM','2018-07-20 20:11:03','2020-05-16 10:49:11'),(29,'Botswana','BWA','BW','267','Gaborone','BWP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(30,'Bouvet Island','BVT','BV','','','NOK','2018-07-20 20:11:03','2020-05-16 10:49:11'),(31,'Brazil','BRA','BR','55','Brasilia','BRL','2018-07-20 20:11:03','2020-05-16 10:49:11'),(32,'British Indian Ocean Territory','IOT','IO','246','Diego Garcia','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(33,'Brunei','BRN','BN','673','Bandar Seri Begawan','BND','2018-07-20 20:11:03','2020-05-16 10:49:11'),(34,'Bulgaria','BGR','BG','359','Sofia','BGN','2018-07-20 20:11:03','2020-05-16 10:49:11'),(35,'Burkina Faso','BFA','BF','226','Ouagadougou','XOF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(36,'Burundi','BDI','BI','257','Bujumbura','BIF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(37,'Cambodia','KHM','KH','855','Phnom Penh','KHR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(38,'Cameroon','CMR','CM','237','Yaounde','XAF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(39,'Canada','CAN','CA','1','Ottawa','CAD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(40,'Cabo Verde','CPV','CV','238','Praia','CVE','2018-07-20 20:11:03','2020-10-26 08:38:02'),(41,'Cayman Islands','CYM','KY','+1-345','George Town','KYD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(42,'Central African Republic','CAF','CF','236','Bangui','XAF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(43,'Chad','TCD','TD','235','N\'Djamena','XAF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(44,'Chile','CHL','CL','56','Santiago','CLP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(45,'China','CHN','CN','86','Beijing','CNY','2018-07-20 20:11:03','2020-05-16 10:49:11'),(46,'Christmas Island','CXR','CX','61','Flying Fish Cove','AUD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(47,'Cocos (Keeling) Islands','CCK','CC','61','West Island','AUD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(48,'Colombia','COL','CO','57','Bogota','COP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(49,'Comoros','COM','KM','269','Moroni','KMF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(50,'Congo','COG','CG','242','Brazzaville','XAF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(51,'Congo The Democratic Republic Of The','COD','CD','243','Kinshasa','CDF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(52,'Cook Islands','COK','CK','682','Avarua','NZD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(53,'Costa Rica','CRI','CR','506','San Jose','CRC','2018-07-20 20:11:03','2020-05-16 10:49:11'),(54,'Cote D\'Ivoire (Ivory Coast)','CIV','CI','225','Yamoussoukro','XOF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(55,'Croatia','HRV','HR','385','Zagreb','HRK','2018-07-20 20:11:03','2020-10-26 06:38:35'),(56,'Cuba','CUB','CU','53','Havana','CUP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(57,'Cyprus','CYP','CY','357','Nicosia','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(58,'Czech Republic','CZE','CZ','420','Prague','CZK','2018-07-20 20:11:03','2020-05-16 10:49:11'),(59,'Denmark','DNK','DK','45','Copenhagen','DKK','2018-07-20 20:11:03','2020-05-16 10:49:11'),(60,'Djibouti','DJI','DJ','253','Djibouti','DJF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(61,'Dominica','DMA','DM','+1-767','Roseau','XCD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(62,'Dominican Republic','DOM','DO','+1-809 and 1-829','Santo Domingo','DOP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(63,'East Timor','TLS','TL','670','Dili','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(64,'Ecuador','ECU','EC','593','Quito','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(65,'Egypt','EGY','EG','20','Cairo','EGP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(66,'El Salvador','SLV','SV','503','San Salvador','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(67,'Equatorial Guinea','GNQ','GQ','240','Malabo','XAF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(68,'Eritrea','ERI','ER','291','Asmara','ERN','2018-07-20 20:11:03','2020-05-16 10:49:11'),(69,'Estonia','EST','EE','372','Tallinn','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(70,'Ethiopia','ETH','ET','251','Addis Ababa','ETB','2018-07-20 20:11:03','2020-05-16 10:49:11'),(71,'Falkland Islands','FLK','FK','500','Stanley','FKP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(72,'Faroe Islands','FRO','FO','298','Torshavn','DKK','2018-07-20 20:11:03','2020-05-16 10:49:11'),(73,'Fiji Islands','FJI','FJ','679','Suva','FJD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(74,'Finland','FIN','FI','358','Helsinki','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(75,'France','FRA','FR','33','Paris','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(76,'French Guiana','GUF','GF','594','Cayenne','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(77,'French Polynesia','PYF','PF','689','Papeete','XPF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(78,'French Southern Territories','ATF','TF','','Port-aux-Francais','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(79,'Gabon','GAB','GA','241','Libreville','XAF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(80,'Gambia','GMB','GM','220','Banjul','GMD','2018-07-20 20:11:03','2020-10-26 06:44:53'),(81,'Georgia','GEO','GE','995','Tbilisi','GEL','2018-07-20 20:11:03','2020-05-16 10:49:11'),(82,'Germany','DEU','DE','49','Berlin','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(83,'Ghana','GHA','GH','233','Accra','GHS','2018-07-20 20:11:03','2020-05-16 10:49:11'),(84,'Gibraltar','GIB','GI','350','Gibraltar','GIP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(85,'Greece','GRC','GR','30','Athens','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(86,'Greenland','GRL','GL','299','Nuuk','DKK','2018-07-20 20:11:03','2020-05-16 10:49:11'),(87,'Grenada','GRD','GD','+1-473','St. George\'s','XCD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(88,'Guadeloupe','GLP','GP','590','Basse-Terre','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(89,'Guam','GUM','GU','+1-671','Hagatna','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(90,'Guatemala','GTM','GT','502','Guatemala City','GTQ','2018-07-20 20:11:03','2020-05-16 10:49:11'),(91,'Guernsey and Alderney','GGY','GG','+44-1481','St Peter Port','GBP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(92,'Guinea','GIN','GN','224','Conakry','GNF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(93,'Guinea-Bissau','GNB','GW','245','Bissau','XOF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(94,'Guyana','GUY','GY','592','Georgetown','GYD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(95,'Haiti','HTI','HT','509','Port-au-Prince','HTG','2018-07-20 20:11:03','2020-05-16 10:49:11'),(96,'Heard and McDonald Islands','HMD','HM',' ','','AUD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(97,'Honduras','HND','HN','504','Tegucigalpa','HNL','2018-07-20 20:11:03','2020-05-16 10:49:11'),(98,'Hong Kong S.A.R.','HKG','HK','852','Hong Kong','HKD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(99,'Hungary','HUN','HU','36','Budapest','HUF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(100,'Iceland','ISL','IS','354','Reykjavik','ISK','2018-07-20 20:11:03','2020-05-16 10:49:11'),(101,'India','IND','IN','91','New Delhi','INR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(102,'Indonesia','IDN','ID','62','Jakarta','IDR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(103,'Iran','IRN','IR','98','Tehran','IRR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(104,'Iraq','IRQ','IQ','964','Baghdad','IQD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(105,'Ireland','IRL','IE','353','Dublin','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(106,'Israel','ISR','IL','972','Jerusalem','ILS','2018-07-20 20:11:03','2020-05-16 10:49:11'),(107,'Italy','ITA','IT','39','Rome','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(108,'Jamaica','JAM','JM','+1-876','Kingston','JMD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(109,'Japan','JPN','JP','81','Tokyo','JPY','2018-07-20 20:11:03','2020-05-16 10:49:11'),(110,'Jersey','JEY','JE','+44-1534','Saint Helier','GBP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(111,'Jordan','JOR','JO','962','Amman','JOD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(112,'Kazakhstan','KAZ','KZ','7','Astana','KZT','2018-07-20 20:11:03','2020-05-16 10:49:11'),(113,'Kenya','KEN','KE','254','Nairobi','KES','2018-07-20 20:11:03','2020-05-16 10:49:11'),(114,'Kiribati','KIR','KI','686','Tarawa','AUD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(115,'Korea North','PRK','KP','850','Pyongyang','KPW','2018-07-20 20:11:03','2020-05-16 10:49:11'),(116,'Republic of Korea','KOR','KR','82','Seoul','KRW','2018-07-20 20:11:03','2020-10-26 06:52:10'),(117,'Kuwait','KWT','KW','965','Kuwait City','KWD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(118,'Kyrgyzstan','KGZ','KG','996','Bishkek','KGS','2018-07-20 20:11:03','2020-05-16 10:49:11'),(119,'Lao People\'s Democratic Republic','LAO','LA','856','Vientiane','LAK','2018-07-20 20:11:03','2020-10-26 06:51:23'),(120,'Latvia','LVA','LV','371','Riga','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(121,'Lebanon','LBN','LB','961','Beirut','LBP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(122,'Lesotho','LSO','LS','266','Maseru','LSL','2018-07-20 20:11:03','2020-05-16 10:49:11'),(123,'Liberia','LBR','LR','231','Monrovia','LRD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(124,'Libya','LBY','LY','218','Tripolis','LYD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(125,'Liechtenstein','LIE','LI','423','Vaduz','CHF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(126,'Lithuania','LTU','LT','370','Vilnius','EUR','2018-07-20 20:11:03','2020-08-15 16:58:03'),(127,'Luxembourg','LUX','LU','352','Luxembourg','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(128,'Macau S.A.R.','MAC','MO','853','Macao','MOP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(129,'Macedonia','MKD','MK','389','Skopje','MKD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(130,'Madagascar','MDG','MG','261','Antananarivo','MGA','2018-07-20 20:11:03','2020-05-16 10:49:11'),(131,'Malawi','MWI','MW','265','Lilongwe','MWK','2018-07-20 20:11:03','2020-05-16 10:49:11'),(132,'Malaysia','MYS','MY','60','Kuala Lumpur','MYR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(133,'Maldives','MDV','MV','960','Male','MVR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(134,'Mali','MLI','ML','223','Bamako','XOF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(135,'Malta','MLT','MT','356','Valletta','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(136,'Man (Isle of)','IMN','IM','+44-1624','Douglas, Isle of Man','GBP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(137,'Marshall Islands','MHL','MH','692','Majuro','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(138,'Martinique','MTQ','MQ','596','Fort-de-France','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(139,'Mauritania','MRT','MR','222','Nouakchott','MRO','2018-07-20 20:11:03','2020-05-16 10:49:11'),(140,'Mauritius','MUS','MU','230','Port Louis','MUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(141,'Mayotte','MYT','YT','262','Mamoudzou','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(142,'Mexico','MEX','MX','52','Mexico City','MXN','2018-07-20 20:11:03','2020-05-16 10:49:11'),(143,'Micronesia','FSM','FM','691','Palikir','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(144,'Moldova','MDA','MD','373','Chisinau','MDL','2018-07-20 20:11:03','2020-05-16 10:49:11'),(145,'Monaco','MCO','MC','377','Monaco','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(146,'Mongolia','MNG','MN','976','Ulan Bator','MNT','2018-07-20 20:11:03','2020-05-16 10:49:11'),(147,'Montenegro','MNE','ME','382','Podgorica','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(148,'Montserrat','MSR','MS','+1-664','Plymouth','XCD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(149,'Morocco','MAR','MA','212','Rabat','MAD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(150,'Mozambique','MOZ','MZ','258','Maputo','MZN','2018-07-20 20:11:03','2020-05-16 10:49:11'),(151,'Myanmar','MMR','MM','95','Nay Pyi Taw','MMK','2018-07-20 20:11:03','2020-05-16 10:49:11'),(152,'Namibia','NAM','NA','264','Windhoek','NAD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(153,'Nauru','NRU','NR','674','Yaren','AUD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(154,'Nepal','NPL','NP','977','Kathmandu','NPR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(155,'Netherlands Antilles','ANT','AN','','','','2018-07-20 20:11:03','2018-07-20 20:11:03'),(156,'Netherlands','NLD','NL','31','Amsterdam','EUR','2018-07-20 20:11:03','2020-10-26 06:48:26'),(157,'New Caledonia','NCL','NC','687','Noumea','XPF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(158,'New Zealand','NZL','NZ','64','Wellington','NZD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(159,'Nicaragua','NIC','NI','505','Managua','NIO','2018-07-20 20:11:03','2020-05-16 10:49:11'),(160,'Niger','NER','NE','227','Niamey','XOF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(161,'Nigeria','NGA','NG','234','Abuja','NGN','2018-07-20 20:11:03','2020-05-16 10:49:11'),(162,'Niue','NIU','NU','683','Alofi','NZD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(163,'Norfolk Island','NFK','NF','672','Kingston','AUD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(164,'Northern Mariana Islands','MNP','MP','+1-670','Saipan','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(165,'Norway','NOR','NO','47','Oslo','NOK','2018-07-20 20:11:03','2020-05-16 10:49:11'),(166,'Oman','OMN','OM','968','Muscat','OMR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(167,'Pakistan','PAK','PK','92','Islamabad','PKR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(168,'Palau','PLW','PW','680','Melekeok','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(169,'Palestinian Territory Occupied','PSE','PS','970','East Jerusalem','ILS','2018-07-20 20:11:03','2020-05-16 10:49:11'),(170,'Panama','PAN','PA','507','Panama City','PAB','2018-07-20 20:11:03','2020-05-16 10:49:11'),(171,'Papua new Guinea','PNG','PG','675','Port Moresby','PGK','2018-07-20 20:11:03','2020-05-16 10:49:11'),(172,'Paraguay','PRY','PY','595','Asuncion','PYG','2018-07-20 20:11:03','2020-05-16 10:49:11'),(173,'Peru','PER','PE','51','Lima','PEN','2018-07-20 20:11:03','2020-05-16 10:49:11'),(174,'Philippines','PHL','PH','63','Manila','PHP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(175,'Pitcairn Island','PCN','PN','870','Adamstown','NZD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(176,'Poland','POL','PL','48','Warsaw','PLN','2018-07-20 20:11:03','2020-05-16 10:49:11'),(177,'Portugal','PRT','PT','351','Lisbon','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(178,'Puerto Rico','PRI','PR','+1-787 and 1-939','San Juan','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(179,'Qatar','QAT','QA','974','Doha','QAR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(180,'Reunion','REU','RE','262','Saint-Denis','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(181,'Romania','ROU','RO','40','Bucharest','RON','2018-07-20 20:11:03','2020-05-16 10:49:11'),(182,'Russian Federation','RUS','RU','7','Moscow','RUB','2018-07-20 20:11:03','2020-10-26 06:52:45'),(183,'Rwanda','RWA','RW','250','Kigali','RWF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(184,'Saint Helena','SHN','SH','290','Jamestown','SHP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(185,'Saint Kitts And Nevis','KNA','KN','+1-869','Basseterre','XCD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(186,'Saint Lucia','LCA','LC','+1-758','Castries','XCD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(187,'Saint Pierre and Miquelon','SPM','PM','508','Saint-Pierre','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(188,'Saint Vincent And The Grenadines','VCT','VC','+1-784','Kingstown','XCD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(189,'Saint-Barthelemy','BLM','BL','590','Gustavia','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(190,'Saint-Martin (French part)','MAF','MF','590','Marigot','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(191,'Samoa','WSM','WS','685','Apia','WST','2018-07-20 20:11:03','2020-05-16 10:49:11'),(192,'San Marino','SMR','SM','378','San Marino','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(193,'Sao Tome and Principe','STP','ST','239','Sao Tome','STD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(194,'Saudi Arabia','SAU','SA','966','Riyadh','SAR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(195,'Senegal','SEN','SN','221','Dakar','XOF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(196,'Serbia','SRB','RS','381','Belgrade','RSD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(197,'Seychelles','SYC','SC','248','Victoria','SCR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(198,'Sierra Leone','SLE','SL','232','Freetown','SLL','2018-07-20 20:11:03','2020-05-16 10:49:11'),(199,'Singapore','SGP','SG','65','Singapur','SGD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(200,'Slovakia','SVK','SK','421','Bratislava','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(201,'Slovenia','SVN','SI','386','Ljubljana','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(202,'Solomon Islands','SLB','SB','677','Honiara','SBD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(203,'Somalia','SOM','SO','252','Mogadishu','SOS','2018-07-20 20:11:03','2020-05-16 10:49:11'),(204,'South Africa','ZAF','ZA','27','Pretoria','ZAR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(205,'South Georgia','SGS','GS','','Grytviken','GBP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(206,'South Sudan','SSD','SS','211','Juba','SSP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(207,'Spain','ESP','ES','34','Madrid','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(208,'Sri Lanka','LKA','LK','94','Colombo','LKR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(209,'Sudan','SDN','SD','249','Khartoum','SDG','2018-07-20 20:11:03','2020-05-16 10:49:11'),(210,'Suriname','SUR','SR','597','Paramaribo','SRD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(211,'Svalbard And Jan Mayen Islands','SJM','SJ','47','Longyearbyen','NOK','2018-07-20 20:11:03','2020-05-16 10:49:11'),(212,'Swaziland','SWZ','SZ','268','Mbabane','SZL','2018-07-20 20:11:03','2020-05-16 10:49:11'),(213,'Sweden','SWE','SE','46','Stockholm','SEK','2018-07-20 20:11:03','2020-05-16 10:49:11'),(214,'Switzerland','CHE','CH','41','Berne','CHF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(215,'Syrian Arab Republic','SYR','SY','963','Damascus','SYP','2018-07-20 20:11:03','2020-10-26 06:52:45'),(216,'Taiwan','TWN','TW','886','Taipei','TWD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(217,'Tajikistan','TJK','TJ','992','Dushanbe','TJS','2018-07-20 20:11:03','2020-05-16 10:49:11'),(218,'Tanzania','TZA','TZ','255','Dodoma','TZS','2018-07-20 20:11:03','2020-05-16 10:49:11'),(219,'Thailand','THA','TH','66','Bangkok','THB','2018-07-20 20:11:03','2020-05-16 10:49:11'),(220,'Togo','TGO','TG','228','Lome','XOF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(221,'Tokelau','TKL','TK','690','','NZD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(222,'Tonga','TON','TO','676','Nuku\'alofa','TOP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(223,'Trinidad And Tobago','TTO','TT','+1-868','Port of Spain','TTD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(224,'Tunisia','TUN','TN','216','Tunis','TND','2018-07-20 20:11:03','2020-05-16 10:49:11'),(225,'Turkey','TUR','TR','90','Ankara','TRY','2018-07-20 20:11:03','2020-05-16 10:49:11'),(226,'Turkmenistan','TKM','TM','993','Ashgabat','TMT','2018-07-20 20:11:03','2020-05-16 10:49:11'),(227,'Turks And Caicos Islands','TCA','TC','+1-649','Cockburn Town','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(228,'Tuvalu','TUV','TV','688','Funafuti','AUD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(229,'Uganda','UGA','UG','256','Kampala','UGX','2018-07-20 20:11:03','2020-05-16 10:49:11'),(230,'Ukraine','UKR','UA','380','Kiev','UAH','2018-07-20 20:11:03','2020-05-16 10:49:11'),(231,'United Arab Emirates','ARE','AE','971','Abu Dhabi','AED','2018-07-20 20:11:03','2020-05-16 10:49:11'),(232,'United Kingdom','GBR','GB','44','London','GBP','2018-07-20 20:11:03','2020-05-16 10:49:11'),(233,'United States of America','USA','US','1','Washington','USD','2018-07-20 20:11:03','2020-10-26 06:50:53'),(234,'United States Minor Outlying Islands','UMI','UM','1','','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(235,'Uruguay','URY','UY','598','Montevideo','UYU','2018-07-20 20:11:03','2020-05-16 10:49:11'),(236,'Uzbekistan','UZB','UZ','998','Tashkent','UZS','2018-07-20 20:11:03','2020-05-16 10:49:11'),(237,'Vanuatu','VUT','VU','678','Port Vila','VUV','2018-07-20 20:11:03','2020-05-16 10:49:11'),(238,'Vatican City State (Holy See)','VAT','VA','379','Vatican City','EUR','2018-07-20 20:11:03','2020-05-16 10:49:11'),(239,'Venezuela','VEN','VE','58','Caracas','VEF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(240,'Vietnam','VNM','VN','84','Hanoi','VND','2018-07-20 20:11:03','2020-05-16 10:49:11'),(241,'Virgin Islands (British)','VGB','VG','+1-284','Road Town','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(242,'Virgin Islands (US)','VIR','VI','+1-340','Charlotte Amalie','USD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(243,'Wallis And Futuna Islands','WLF','WF','681','Mata Utu','XPF','2018-07-20 20:11:03','2020-05-16 10:49:11'),(244,'Western Sahara','ESH','EH','212','El-Aaiun','MAD','2018-07-20 20:11:03','2020-05-16 10:49:11'),(245,'Yemen','YEM','YE','967','Sanaa','YER','2018-07-20 20:11:03','2020-05-16 10:49:11'),(246,'Zambia','ZMB','ZM','260','Lusaka','ZMW','2018-07-20 20:11:03','2020-08-15 16:58:10'),(247,'Zimbabwe','ZWE','ZW','263','Harare','ZWL','2018-07-20 20:11:03','2020-05-16 10:49:11'),(248,'Kosovo','XKX','XK','383','Pristina','EUR','2020-08-15 15:33:50','2020-08-15 15:36:18');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-30 11:07:47
