# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_washco
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2024-11-16 13:56:18
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_washco'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_washco" /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_german1_ci */;

USE "db_washco";


#
# Table structure for table 'tbl_admin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_admin" (
  "admin_id" int(10) unsigned NOT NULL auto_increment,
  "admin_name" varchar(50) collate latin1_german1_ci default NULL,
  "admin_email" varchar(50) collate latin1_german1_ci default NULL,
  "admin_password" varchar(50) collate latin1_german1_ci default NULL,
  PRIMARY KEY  ("admin_id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'tbl_admin'
#

LOCK TABLES "tbl_admin" WRITE;
/*!40000 ALTER TABLE "tbl_admin" DISABLE KEYS;*/
REPLACE INTO "tbl_admin" ("admin_id", "admin_name", "admin_email", "admin_password") VALUES
	('7','Vishnu NR','vishnu564@gmail.com','751010');
REPLACE INTO "tbl_admin" ("admin_id", "admin_name", "admin_email", "admin_password") VALUES
	('8','Robin','robinsalomonr6407@gmail.com','894328');
/*!40000 ALTER TABLE "tbl_admin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_booking'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_booking" (
  "service_id" int(10) unsigned default NULL,
  "customer_id" int(10) unsigned default NULL,
  "booking_date" date default NULL,
  "locality_id" tinyint(3) unsigned default NULL,
  "booking_id" int(10) unsigned NOT NULL auto_increment,
  "booking_address" varchar(100) collate latin1_german1_ci default NULL,
  "model_id" tinyint(3) unsigned default NULL,
  "booking_fortime" varchar(50) collate latin1_german1_ci default NULL,
  "booking_fordate" varchar(50) collate latin1_german1_ci default NULL,
  "staff_id" tinyint(3) unsigned default NULL,
  "booking_status" tinyint(3) unsigned default '0',
  PRIMARY KEY  ("booking_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_booking'
#

LOCK TABLES "tbl_booking" WRITE;
/*!40000 ALTER TABLE "tbl_booking" DISABLE KEYS;*/
REPLACE INTO "tbl_booking" ("service_id", "customer_id", "booking_date", "locality_id", "booking_id", "booking_address", "model_id", "booking_fortime", "booking_fordate", "staff_id", "booking_status") VALUES
	('1','7','2024-10-26',2,'1','Home',1,'14:14',NULL,1,3);
REPLACE INTO "tbl_booking" ("service_id", "customer_id", "booking_date", "locality_id", "booking_id", "booking_address", "model_id", "booking_fortime", "booking_fordate", "staff_id", "booking_status") VALUES
	('2','7','2024-10-26',4,'2','PAZHAMALE(H)
MUVATTUPUZHA',4,'15:21',NULL,2,3);
REPLACE INTO "tbl_booking" ("service_id", "customer_id", "booking_date", "locality_id", "booking_id", "booking_address", "model_id", "booking_fortime", "booking_fordate", "staff_id", "booking_status") VALUES
	('1','7','2024-10-26',2,'3','Puthanveetil(H),
kothamangalam',29,'17:40',NULL,3,3);
REPLACE INTO "tbl_booking" ("service_id", "customer_id", "booking_date", "locality_id", "booking_id", "booking_address", "model_id", "booking_fortime", "booking_fordate", "staff_id", "booking_status") VALUES
	('1','7','2024-10-26',3,'4','fdtsft',5,'19:18',NULL,2,3);
REPLACE INTO "tbl_booking" ("service_id", "customer_id", "booking_date", "locality_id", "booking_id", "booking_address", "model_id", "booking_fortime", "booking_fordate", "staff_id", "booking_status") VALUES
	('1','7','2024-11-02',4,'5','wtteiryi 25572',5,'18:33',NULL,2,5);
REPLACE INTO "tbl_booking" ("service_id", "customer_id", "booking_date", "locality_id", "booking_id", "booking_address", "model_id", "booking_fortime", "booking_fordate", "staff_id", "booking_status") VALUES
	('1','7','2024-11-05',3,'6','tuyyguioj',2,'13:30',NULL,1,1);
REPLACE INTO "tbl_booking" ("service_id", "customer_id", "booking_date", "locality_id", "booking_id", "booking_address", "model_id", "booking_fortime", "booking_fordate", "staff_id", "booking_status") VALUES
	('1','7','2024-11-07',2,'7','yjufyg',2,'13:40',NULL,3,3);
REPLACE INTO "tbl_booking" ("service_id", "customer_id", "booking_date", "locality_id", "booking_id", "booking_address", "model_id", "booking_fortime", "booking_fordate", "staff_id", "booking_status") VALUES
	('1','7','2024-11-07',7,'8','mpa',1,'15:47',NULL,1,3);
REPLACE INTO "tbl_booking" ("service_id", "customer_id", "booking_date", "locality_id", "booking_id", "booking_address", "model_id", "booking_fortime", "booking_fordate", "staff_id", "booking_status") VALUES
	('1','7','2024-11-15',7,'9','asdfgh',2,'14:10',NULL,3,1);
/*!40000 ALTER TABLE "tbl_booking" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_brand'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_brand" (
  "brand_id" int(11) NOT NULL auto_increment,
  "brand_name" varchar(50) collate latin1_german1_ci default NULL,
  "brand_logo" varchar(50) collate latin1_german1_ci default NULL,
  PRIMARY KEY  ("brand_id")
) AUTO_INCREMENT=46;



#
# Dumping data for table 'tbl_brand'
#

LOCK TABLES "tbl_brand" WRITE;
/*!40000 ALTER TABLE "tbl_brand" DISABLE KEYS;*/
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(1,'SUZUKI','Brand1913.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(3,'BENTLEY','Brand1808.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(4,'BAJAJ','Brand1260.webp');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(6,'BHARATBENZ','Brand2013.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(7,'BMW','Brand1722.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(8,'CHEVROLET','Brand1788.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(9,'DATSUN','Brand2056.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(10,'FERRARI','Brand1560.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(11,'FIAT','Brand1219.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(12,'FORD','Brand1573.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(18,'ISUZU','Brand1327.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(20,'HONDA','Brand2076.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(21,'HYUNDAI','Brand1146.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(22,'JAGUAR','Brand1128.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(23,'JAWA','Brand1940.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(24,'JEEP','Brand1872.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(25,'KIA','Brand1840.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(26,'LAMBORGHINI','Brand1306.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(27,'LANDROVER','Brand1810.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(28,'LEXUS','Brand1437.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(29,'LEYLAND','Brand1017.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(30,'MAHINDRA','Brand1415.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(31,'MERCEDESBENZ','Brand1464.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(32,'MG','Brand1974.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(33,'MINI','Brand1524.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(34,'MITSUBISHI','Brand1028.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(36,'PORSCHE','Brand2087.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(37,'RENAULT','Brand1029.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(38,'ROLLS-ROYCE','Brand1584.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(39,'SKODA','Brand1215.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(40,'TATA','Brand1989.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(41,'TOYOTA','Brand2049.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(42,'VOLKSWAGON','Brand1446.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(43,'VOLVO','Brand1061.png');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name", "brand_logo") VALUES
	(44,'YAMAHA','Brand1631.jpeg');
/*!40000 ALTER TABLE "tbl_brand" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_customer'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_customer" (
  "customer_id" int(10) unsigned NOT NULL auto_increment,
  "customer_name" varchar(50) collate latin1_german1_ci default NULL,
  "customer_email" varchar(50) collate latin1_german1_ci default NULL,
  "customer_phone" varchar(50) collate latin1_german1_ci default NULL,
  "customer_password" varchar(50) collate latin1_german1_ci default NULL,
  "qstn_id" tinyint(3) unsigned default NULL,
  "customer_ans" varchar(500) collate latin1_german1_ci default NULL,
  PRIMARY KEY  ("customer_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_customer'
#

LOCK TABLES "tbl_customer" WRITE;
/*!40000 ALTER TABLE "tbl_customer" DISABLE KEYS;*/
REPLACE INTO "tbl_customer" ("customer_id", "customer_name", "customer_email", "customer_phone", "customer_password", "qstn_id", "customer_ans") VALUES
	('7','Toby Jose','tobyjn@gmail.com','9446418668','123456',1,'Annie');
/*!40000 ALTER TABLE "tbl_customer" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_feedback'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_feedback" (
  "feedback_id" int(10) unsigned NOT NULL default '0',
  "registration_id" int(10) unsigned default NULL,
  "service_id" int(10) unsigned default NULL,
  "remarks" varchar(50) collate latin1_german1_ci default NULL,
  PRIMARY KEY  ("feedback_id")
);



#
# Dumping data for table 'tbl_feedback'
#

# No data found.



#
# Table structure for table 'tbl_locality'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_locality" (
  "locality_id" int(10) unsigned NOT NULL auto_increment,
  "locality_name" varchar(50) collate latin1_german1_ci default NULL,
  PRIMARY KEY  ("locality_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_locality'
#

LOCK TABLES "tbl_locality" WRITE;
/*!40000 ALTER TABLE "tbl_locality" DISABLE KEYS;*/
REPLACE INTO "tbl_locality" ("locality_id", "locality_name") VALUES
	('2','Kothamangalam');
REPLACE INTO "tbl_locality" ("locality_id", "locality_name") VALUES
	('3','Muvattupuzha');
REPLACE INTO "tbl_locality" ("locality_id", "locality_name") VALUES
	('4','Mudavoor');
REPLACE INTO "tbl_locality" ("locality_id", "locality_name") VALUES
	('7','Kalloorkad');
REPLACE INTO "tbl_locality" ("locality_id", "locality_name") VALUES
	('8','Perumbavoor');
/*!40000 ALTER TABLE "tbl_locality" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_model'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_model" (
  "model_name" varchar(50) collate latin1_german1_ci default NULL,
  "model_id" int(10) unsigned NOT NULL auto_increment,
  "brand_id" int(10) unsigned default NULL,
  "type_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("model_id")
) AUTO_INCREMENT=36;



#
# Dumping data for table 'tbl_model'
#

LOCK TABLES "tbl_model" WRITE;
/*!40000 ALTER TABLE "tbl_model" DISABLE KEYS;*/
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('SWIFT','1','1','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('ALTO','2','1','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('MARUTI 800','3','1','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('ZEN','4','1','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('7-SERIES','5','7','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('4-SERIES','6','7','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('5-SERIES','7','7','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('BLAZER EV','8','8','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('SPARK','9','8','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('BEAT','10','8','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('CRUZE','11','8','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('CONTINENTAL GT','12','3','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('PULSAR','13','4','1');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('DOMINAR','14','4','1');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('PLATINA','15','4','1');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('AVENGER','16','4','1');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('DISCOVER','17','4','1');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('1217C','18','6','3');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('3528C','19','6','3');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('1617R','20','6','3');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('1923C','21','6','3');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('REDI-GO','22','9','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('GO','23','9','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('GO+','24','9','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('SF90','25','10','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('AVENTURA','26','11','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('PUNTO EVO','27','11','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('URBAN CRUZE','28','11','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('ECOSPORT','29','12','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('FIGO','30','12','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('MU-X','31','18','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('CONTESSA','32','19','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('AMBASSADOR','33','19','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('CITY','34','20','2');
REPLACE INTO "tbl_model" ("model_name", "model_id", "brand_id", "type_id") VALUES
	('AMAZE','35','20','2');
/*!40000 ALTER TABLE "tbl_model" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_qstn'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_qstn" (
  "qstn_id" tinyint(3) unsigned NOT NULL auto_increment,
  "qstn_name" varchar(500) default NULL,
  PRIMARY KEY  ("qstn_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_qstn'
#

LOCK TABLES "tbl_qstn" WRITE;
/*!40000 ALTER TABLE "tbl_qstn" DISABLE KEYS;*/
REPLACE INTO "tbl_qstn" ("qstn_id", "qstn_name") VALUES
	(1,'Mother Name');
REPLACE INTO "tbl_qstn" ("qstn_id", "qstn_name") VALUES
	(2,'Birth Place');
REPLACE INTO "tbl_qstn" ("qstn_id", "qstn_name") VALUES
	(3,'');
/*!40000 ALTER TABLE "tbl_qstn" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_rating'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_rating" (
  "rating_id" tinyint(3) unsigned NOT NULL auto_increment,
  "customer_id" tinyint(3) unsigned default NULL,
  "rating_value" tinyint(3) unsigned default NULL,
  "rating_feedback" varchar(100) default NULL,
  "rating_date" varchar(50) default NULL,
  PRIMARY KEY  ("rating_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_rating'
#

LOCK TABLES "tbl_rating" WRITE;
/*!40000 ALTER TABLE "tbl_rating" DISABLE KEYS;*/
REPLACE INTO "tbl_rating" ("rating_id", "customer_id", "rating_value", "rating_feedback", "rating_date") VALUES
	(1,6,3,'sdf','2024-11-07 13:41:46');
REPLACE INTO "tbl_rating" ("rating_id", "customer_id", "rating_value", "rating_feedback", "rating_date") VALUES
	(2,6,4,'good','2024-11-07 13:56:41');
/*!40000 ALTER TABLE "tbl_rating" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_service'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_service" (
  "service_id" int(10) unsigned NOT NULL auto_increment,
  "service_name" varchar(50) collate latin1_german1_ci default NULL,
  "service_cost" double unsigned default NULL,
  "type_id" tinyint(3) unsigned default NULL,
  PRIMARY KEY  ("service_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_service'
#

LOCK TABLES "tbl_service" WRITE;
/*!40000 ALTER TABLE "tbl_service" DISABLE KEYS;*/
REPLACE INTO "tbl_service" ("service_id", "service_name", "service_cost", "type_id") VALUES
	('1','InteriorWashing','1000',2);
REPLACE INTO "tbl_service" ("service_id", "service_name", "service_cost", "type_id") VALUES
	('2','ExteriorWashing','800',2);
REPLACE INTO "tbl_service" ("service_id", "service_name", "service_cost", "type_id") VALUES
	('8','Whole Vehicle','1500',2);
REPLACE INTO "tbl_service" ("service_id", "service_name", "service_cost", "type_id") VALUES
	('9','Scratch Removal','500',2);
/*!40000 ALTER TABLE "tbl_service" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_staff'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_staff" (
  "staff_id" int(10) unsigned NOT NULL auto_increment,
  "staff_name" varchar(50) collate latin1_german1_ci default NULL,
  "staff_contact" varchar(30) collate latin1_german1_ci default NULL,
  "staff_doj" varchar(50) collate latin1_german1_ci default NULL,
  "staff_address" varchar(50) collate latin1_german1_ci default NULL,
  "staff_photo" varchar(200) collate latin1_german1_ci default NULL,
  PRIMARY KEY  ("staff_id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'tbl_staff'
#

LOCK TABLES "tbl_staff" WRITE;
/*!40000 ALTER TABLE "tbl_staff" DISABLE KEYS;*/
REPLACE INTO "tbl_staff" ("staff_id", "staff_name", "staff_contact", "staff_doj", "staff_address", "staff_photo") VALUES
	('2','mani','9715234657','2024-10-17',NULL,NULL);
REPLACE INTO "tbl_staff" ("staff_id", "staff_name", "staff_contact", "staff_doj", "staff_address", "staff_photo") VALUES
	('3','robin','8111256374','2024-10-17',NULL,NULL);
REPLACE INTO "tbl_staff" ("staff_id", "staff_name", "staff_contact", "staff_doj", "staff_address", "staff_photo") VALUES
	('9','Vishnu NR','9876543210','2024-11-16','hi','Staff1967.png');
/*!40000 ALTER TABLE "tbl_staff" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_vehicletype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_vehicletype" (
  "type_id" int(50) NOT NULL auto_increment,
  "type_name" varchar(50) collate latin1_german1_ci default NULL,
  PRIMARY KEY  ("type_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_vehicletype'
#

LOCK TABLES "tbl_vehicletype" WRITE;
/*!40000 ALTER TABLE "tbl_vehicletype" DISABLE KEYS;*/
REPLACE INTO "tbl_vehicletype" ("type_id", "type_name") VALUES
	(2,'FOUR-WHEELER');
REPLACE INTO "tbl_vehicletype" ("type_id", "type_name") VALUES
	(3,'HEAVY');
REPLACE INTO "tbl_vehicletype" ("type_id", "type_name") VALUES
	(4,'THREE-WHEELER');
REPLACE INTO "tbl_vehicletype" ("type_id", "type_name") VALUES
	(6,'Four Wheeler');
/*!40000 ALTER TABLE "tbl_vehicletype" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
