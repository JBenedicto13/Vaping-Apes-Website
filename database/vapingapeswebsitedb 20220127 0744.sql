-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema vapingapesdb
--

CREATE DATABASE IF NOT EXISTS vapingapesdb;
USE vapingapesdb;

--
-- Definition of table `tblaccounts`
--

DROP TABLE IF EXISTS `tblaccounts`;
CREATE TABLE `tblaccounts` (
  `customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Acc_Num` varchar(45) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccounts`
--

/*!40000 ALTER TABLE `tblaccounts` DISABLE KEYS */;
INSERT INTO `tblaccounts` (`customer_id`,`Acc_Num`,`First_Name`,`Last_Name`,`Email`,`Password`) VALUES 
 (1,'1','Vaping Apes','Vape Shop','vapingapes@gmail.com','admin1234'),
 (2,'2','Juan','Dela Cruz','juandelacruz@gmail.com','12345');
/*!40000 ALTER TABLE `tblaccounts` ENABLE KEYS */;


--
-- Definition of table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE `tbladmin` (
  `idtbladmin` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`idtbladmin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` (`idtbladmin`,`username`,`password`,`status`) VALUES 
 (1,'admin','admin1234','0');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;


--
-- Definition of table `tblbrands`
--

DROP TABLE IF EXISTS `tblbrands`;
CREATE TABLE `tblbrands` (
  `brand_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(45) NOT NULL,
  `logo` varchar(45) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

/*!40000 ALTER TABLE `tblbrands` DISABLE KEYS */;
INSERT INTO `tblbrands` (`brand_id`,`brand_name`,`logo`) VALUES 
 (1,'Chill Yo','../images/Brand_Logo/ChillYo.png'),
 (2,'Cloud Check','../images/Brand_Logo/CloudCheck.png'),
 (3,'Dr Fog n\' Chill','../images/Brand_Logo/DrFog.png'),
 (4,'Dr Steep','../images/Brand_Logo/DrSteep.png'),
 (5,'Snoopy','../images/Brand_Logo/Snoopy.png'),
 (6,'Trops','../images/Brand_Logo/Trops.png'),
 (7,'Smok',''),
 (8,'Aegis Nano',''),
 (9,'Koko Prime',''),
 (10,'Smok Nord',''),
 (11,'Smok RPM 2 Pod',''),
 (12,'Aegis Legend Mod',''),
 (13,'Aegis Solo Mod',''),
 (14,'Aegis X Mod',''),
 (15,'Duke Zepar Mod',''),
 (16,'ljoy Shogun Mod',''),
 (17,'Msicrow Mod',''),
 (18,'Obelisk',''),
 (19,'Smok T-Priv Mod',''),
 (20,'Smok Veneno Mod',''),
 (21,'Sob Emperor Mod',''),
 (22,'Sob Waffle Mod',''),
 (23,'Vapor Storm Puma Mod',''),
 (24,'VCIGO K2 Mod',''),
 (25,'Aegis Boost Plus',''),
 (26,'Aegis Boost Pro',''),
 (27,'Zeus X',''),
 (28,'Joyetech Riftcore Duo',''),
 (29,'OFRF',''),
 (30,'Vape Breed',''),
 (31,'Sony Battery',''),
 (32,'Ylaid Battery',''),
 (33,'LG Battery',''),
 (34,'Molicel Battery','');
/*!40000 ALTER TABLE `tblbrands` ENABLE KEYS */;


--
-- Definition of table `tblcarousel`
--

DROP TABLE IF EXISTS `tblcarousel`;
CREATE TABLE `tblcarousel` (
  `idtblcarousel` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Product_Id` varchar(45) NOT NULL,
  PRIMARY KEY (`idtblcarousel`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcarousel`
--

/*!40000 ALTER TABLE `tblcarousel` DISABLE KEYS */;
INSERT INTO `tblcarousel` (`idtblcarousel`,`Product_Id`) VALUES 
 (1,'129'),
 (2,'76'),
 (3,'93'),
 (4,'51');
/*!40000 ALTER TABLE `tblcarousel` ENABLE KEYS */;


--
-- Definition of table `tblcart`
--

DROP TABLE IF EXISTS `tblcart`;
CREATE TABLE `tblcart` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(45) NOT NULL,
  `product_id` varchar(45) NOT NULL,
  `brand_id` varchar(45) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcart`
--

/*!40000 ALTER TABLE `tblcart` DISABLE KEYS */;
INSERT INTO `tblcart` (`Id`,`customer_id`,`product_id`,`brand_id`,`quantity`,`status`) VALUES 
 (1,'1','2','1','1','In Cart');
/*!40000 ALTER TABLE `tblcart` ENABLE KEYS */;


--
-- Definition of table `tblcarusel`
--

DROP TABLE IF EXISTS `tblcarusel`;
CREATE TABLE `tblcarusel` (
  `idtblcarusel` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Product_Id` varchar(45) NOT NULL,
  PRIMARY KEY (`idtblcarusel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcarusel`
--

/*!40000 ALTER TABLE `tblcarusel` DISABLE KEYS */;
INSERT INTO `tblcarusel` (`idtblcarusel`,`Product_Id`) VALUES 
 (1,'129'),
 (2,'40'),
 (3,'60'),
 (4,'83');
/*!40000 ALTER TABLE `tblcarusel` ENABLE KEYS */;


--
-- Definition of table `tblchecknew`
--

DROP TABLE IF EXISTS `tblchecknew`;
CREATE TABLE `tblchecknew` (
  `idtblCheckNew` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Product_Id` varchar(45) NOT NULL,
  PRIMARY KEY (`idtblCheckNew`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblchecknew`
--

/*!40000 ALTER TABLE `tblchecknew` DISABLE KEYS */;
INSERT INTO `tblchecknew` (`idtblCheckNew`,`Product_Id`) VALUES 
 (1,'1'),
 (2,'2'),
 (3,'3');
/*!40000 ALTER TABLE `tblchecknew` ENABLE KEYS */;


--
-- Definition of table `tblcollection`
--

DROP TABLE IF EXISTS `tblcollection`;
CREATE TABLE `tblcollection` (
  `idtblCollection` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Brand_Id` varchar(45) NOT NULL,
  PRIMARY KEY (`idtblCollection`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcollection`
--

/*!40000 ALTER TABLE `tblcollection` DISABLE KEYS */;
INSERT INTO `tblcollection` (`idtblCollection`,`Brand_Id`) VALUES 
 (1,'1'),
 (2,'2'),
 (3,'3'),
 (4,'4'),
 (5,'5'),
 (6,'6');
/*!40000 ALTER TABLE `tblcollection` ENABLE KEYS */;


--
-- Definition of table `tblfeatured`
--

DROP TABLE IF EXISTS `tblfeatured`;
CREATE TABLE `tblfeatured` (
  `idtblfeatured` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Description` varchar(45) NOT NULL,
  `Category_Id` varchar(45) NOT NULL,
  `Product_Id` varchar(45) NOT NULL,
  PRIMARY KEY (`idtblfeatured`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfeatured`
--

/*!40000 ALTER TABLE `tblfeatured` DISABLE KEYS */;
INSERT INTO `tblfeatured` (`idtblfeatured`,`Description`,`Category_Id`,`Product_Id`) VALUES 
 (1,'The Geek Vape Aegis Boost Plus Pod Mod Kit is','7','120');
/*!40000 ALTER TABLE `tblfeatured` ENABLE KEYS */;


--
-- Definition of table `tblindex`
--

DROP TABLE IF EXISTS `tblindex`;
CREATE TABLE `tblindex` (
  `idtblIndex` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `subtitle` varchar(120) NOT NULL,
  PRIMARY KEY (`idtblIndex`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblindex`
--

/*!40000 ALTER TABLE `tblindex` DISABLE KEYS */;
INSERT INTO `tblindex` (`idtblIndex`,`title`,`subtitle`) VALUES 
 (1,'Vaping Apes Vape Shop Website','');
/*!40000 ALTER TABLE `tblindex` ENABLE KEYS */;


--
-- Definition of table `tblprodcat`
--

DROP TABLE IF EXISTS `tblprodcat`;
CREATE TABLE `tblprodcat` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprodcat`
--

/*!40000 ALTER TABLE `tblprodcat` DISABLE KEYS */;
INSERT INTO `tblprodcat` (`Id`,`Category`) VALUES 
 (1,'Automizer'),
 (2,'Battery'),
 (3,'Coil'),
 (4,'Glass'),
 (5,'Juice'),
 (6,'Pod'),
 (7,'Vape'),
 (8,'Mod');
/*!40000 ALTER TABLE `tblprodcat` ENABLE KEYS */;


--
-- Definition of table `tblproducts`
--

DROP TABLE IF EXISTS `tblproducts`;
CREATE TABLE `tblproducts` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  `Product_Name` varchar(45) NOT NULL,
  `Brand` varchar(45) NOT NULL,
  `Price` varchar(45) NOT NULL,
  `Image` varchar(150) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

/*!40000 ALTER TABLE `tblproducts` DISABLE KEYS */;
INSERT INTO `tblproducts` (`Id`,`Category`,`Product_Name`,`Brand`,`Price`,`Image`) VALUES 
 (1,'5','Blueberry Yo','1','150','../../../images/Juice/Chill Yo/blueberryYo.png'),
 (2,'5','Classic Yo','1','150','../../../images/Juice/Chill Yo/classicYo.png'),
 (3,'5','Strawberry Yo','1','150','../../../images/Juice/Chill Yo/strawberryYo.png'),
 (4,'5','Blueberry Frostee','2','170','../../../images/Juice/Cloud Check/blueberryFrostee.jpg'),
 (5,'5','Cheesecake Supreme','2','170','../../../images/Juice/Cloud Check/cheesecakeSupreme.jpg'),
 (6,'5','Grape Frostee','2','170','../../../images/Juice/Cloud Check/grapeFrostee.jpg'),
 (7,'5','Melon Yogurt','2','170','../../../images/Juice/Cloud Check/melonYogurt.jpg'),
 (8,'5','Strawberry Frostee','2','170','../../../images/Juice/Cloud Check/strawberryFrostee.jpg'),
 (9,'5','Capuccino Delight','3','200','../../../images/Juice/Dr Fog n\' Chill/capuccinoDelight.png'),
 (10,'5','Coffee Chill','3','200','../../../images/Juice/Dr Fog n\' Chill/coffeeChill.png'),
 (11,'5','Creamy Milk','3','200','../../../images/Juice/Dr Fog n\' Chill/creamyMilk.png'),
 (12,'5','Frozen Lychee','3','200','../../../images/Juice/Dr Fog n\' Chill/frozenLychee.png'),
 (13,'5','Frozen','3','200','../../../images/Juice/Dr Fog n\' Chill/frozen.png'),
 (14,'5','Mango Chill','3','200','../../../images/Juice/Dr Fog n\' Chill/mangoChill.png'),
 (15,'5','Strawberry Cheesecake','3','200','../../../images/Juice/Dr Fog n\' Chill/strawberryCheesecake.png'),
 (16,'5','Strawberry Pochie','3','200','../../../images/Juice/Dr Fog n\' Chill/strawberryPochie.png'),
 (17,'5','Vanilla Cola','3','200','../../../images/Juice/Dr Fog n\' Chill/vanillaCola.png'),
 (18,'5','Yacold','3','200','../../../images/Juice/Dr Fog n\' Chill/yacold.png'),
 (19,'5','Bananarama','4','200','../../../images/Juice/Dr Steep/bananarama.jpg'),
 (20,'5','Coffee Xoxo','4','200','../../../images/Juice/Dr Steep/coffeeXoxo.jpg'),
 (21,'5','Honeydew Strawberry','4','200','../../../images/Juice/Dr Steep/honeydewStrawberry.jpg'),
 (22,'5','Icy Sour Grapes','4','200','../../../images/Juice/Dr Steep/icySourGrapes.jpg'),
 (23,'5','Ube Cheesecake','4','200','../../../images/Juice/Dr Steep/ubeCheesecake.jpg'),
 (24,'5','Blueberry','5','160','../../../images/Juice/Snoopy/blueberry.jpg'),
 (25,'5','Coffee','5','160','../../../images/Juice/Snoopy/coffee.jpg'),
 (26,'5','Grapes','5','160','../../../images/Juice/Snoopy/grapes.jpg'),
 (27,'5','Melon','5','160','../../../images/Juice/Snoopy/melon.jpg'),
 (28,'5','Milk','5','160','../../../images/Juice/Snoopy/milk.jpg'),
 (29,'5','Raspberry','5','160','../../../images/Juice/Snoopy/raspberry.jpg'),
 (30,'5','Strawberry','5','160','../../../images/Juice/Snoopy/strawberry.jpg'),
 (31,'5','Brewed Ice Coffee','6','160','../../../images/Juice/Trops/brewedIceCoffee.jpg'),
 (32,'5','Bubbly Candy','6','160','../../../images/Juice/Trops/bubblyCandy.jpg'),
 (33,'5','Guyabano Frost','6','160','../../../images/Juice/Trops/guyabanoFrost.jpg'),
 (34,'5','Iced Grape Yahkult','6','160','../../../images/Juice/Trops/icedGrapeYahkult.jpg'),
 (35,'5','Icy Melon Kantola','6','160','../../../images/Juice/Trops/icyMelonKantola.jpg'),
 (36,'5','Strawberry Frigid','6','160','../../../images/Juice/Trops/strawberryFrigid.jpg'),
 (37,'3','Smok RPM 40 Coil','7','250','../../../images/Coil/Smok/smokRpm40Coil.jpg'),
 (38,'3','Smok RPM Coil','7','250','../../../images/Coil/Smok/smokRpmCoil.jpg'),
 (39,'3','Smok RPM Coil 0.4 OHM','7','250','../../../images/Coil/Smok/smokRpmCoils0.4Ohm.png'),
 (40,'6','AN Camo Blue','8','1150','../../../images/Pod/Aegis Nano/camoBlue.png'),
 (41,'6','AN Camo Green','8','1150','../../../images/Pod/Aegis Nano/camoGreen.png'),
 (42,'6','AN Camo Silver','8','1150','../../../images/Pod/Aegis Nano/camoSilver.png'),
 (43,'6','Koko Black','9','900','../../../images/Pod/Koko Prime/kokoBlack.png'),
 (44,'6','Koko Blue','9','900','../../../images/Pod/Koko Prime/kokoBlue.png'),
 (45,'6','Koko Grey','9','900','../../../images/Pod/Koko Prime/kokoGrey.png'),
 (46,'6','Koko Green','9','900','../../../images/Pod/Koko Prime/kokoGreen.png'),
 (47,'6','Koko Purple','9','900','../../../images/Pod/Koko Prime/kokoPurple.png'),
 (48,'6','Koko Red','9','900','../../../images/Pod/Koko Prime/kokoRed.png'),
 (49,'6','7 Color Cobra','10','900','../../../images/Pod/Smok Nord/sn7ColorCobra.png'),
 (50,'6','Black Stabilizing Wood','10','900','../../../images/Pod/Smok Nord/snblackStabilizingWood.png'),
 (51,'6','SR2 Bright Black','11','1200','../../../images/Pod/Smok RPM 2 Pod/sr2BrightBlack.png'),
 (52,'6','SR2 Prism Blue','11','1200','../../../images/Pod/Smok RPM 2 Pod/sr2PrismBlue.png'),
 (53,'6','SR2 Prism Deep Tarnish','11','1200','../../../images/Pod/Smok RPM 2 Pod/sr2PrismDeepTarnish.png'),
 (54,'6','SR2 Prism Gold','11','1200','../../../images/Pod/Smok RPM 2 Pod/sr2PrismGold.png'),
 (55,'6','SR2 Prism Rainbow','11','1200','../../../images/Pod/Smok RPM 2 Pod/sr2PrismRainBow.png'),
 (56,'6','SR2 Red','11','1200','../../../images/Pod/Smok RPM 2 Pod/sr2Red.png'),
 (57,'8','ALM Azure Trim','12','1800','../../../images/Mod/Aegis Legend Mod/azureTrim.png'),
 (58,'8','ALM Black Blue','12','1800','../../../images/Mod/Aegis Legend Mod/blackBlue.png'),
 (59,'8','ALM Black Gunmetal','12','1800','../../../images/Mod/Aegis Legend Mod/blackGunmetal.png'),
 (60,'8','ALM Fantasy Rainbow','12','1800','../../../images/Mod/Aegis Legend Mod/fantasyRainbow.png'),
 (61,'8','ALM Light Blue','12','1800','../../../images/Mod/Aegis Legend Mod/lightBlue.png'),
 (62,'8','ALM Rainbow','12','1800','../../../images/Mod/Aegis Legend Mod/rainbow.png'),
 (63,'8','ALM Red Trim','12','1800','../../../images/Mod/Aegis Legend Mod/redTrim.png'),
 (64,'8','ASM Stealth Black','13','1500','../../../images/Mod/Aegis Solo Mod/stealthBlack.png'),
 (65,'8','ASM Blue Green','13','1500','../../../images/Mod/Aegis Solo Mod/blueGreen.png'),
 (66,'8','ASM Blue','13','1500','../../../images/Mod/Aegis Solo Mod/blue.png'),
 (67,'8','ASM Green','13','1500','../../../images/Mod/Aegis Solo Mod/green.png'),
 (68,'8','ASM Gunmetal','13','1500','../../../images/Mod/Aegis Solo Mod/gunmetal.png'),
 (69,'8','ASM Orange','13','1500','../../../images/Mod/Aegis Solo Mod/orange.png'),
 (70,'8','ASM Red Blue','13','1500','../../../images/Mod/Aegis Solo Mod/redBlue.png'),
 (71,'8','ASM Red','13','1500','../../../images/Mod/Aegis Solo Mod/red.png'),
 (72,'8','AXM Classic Silver','14','1900','../../../images/Mod/Aegis X Mod/classicSilver.png'),
 (73,'8','AXM Gold Black','14','1900','../../../images/Mod/Aegis X Mod/goldBlack.png'),
 (74,'8','AXM Green Black','14','1900','../../../images/Mod/Aegis X Mod/greenBlack.png'),
 (75,'8','AXM Gunmetal Camo','14','1900','../../../images/Mod/Aegis X Mod/gunmetalCamo.png'),
 (76,'8','AXM Rainbow Black','14','1900','../../../images/Mod/Aegis X Mod/rainbowBlack.png'),
 (77,'8','AXM Red Black','14','1900','../../../images/Mod/Aegis X Mod/redBlack.png'),
 (78,'8','AXM Signature Orange','14','1900','../../../images/Mod/Aegis X Mod/signatureOrange.png'),
 (79,'8','AXM Stealth Black','14','1900','../../../images/Mod/Aegis X Mod/axmStealthBlack.png'),
 (80,'8','DZM Black and White','15','1000','../../../images/Mod/Duke Zepar Mod/blackAndWhite.jpg'),
 (81,'8','lSM Blue Aura','16','1300','../../../images/Mod/ljoy Shogun Mod/blueAura.png'),
 (82,'8','lSM Galactic Hurricane','16','1300','../../../images/Mod/ljoy Shogun Mod/galacticHurricane.png'),
 (83,'8','lSM Ghostfire','16','1300','../../../images/Mod/ljoy Shogun Mod/ghostfire.png'),
 (84,'8','lSM Green Spectre','16','1300','../../../images/Mod/ljoy Shogun Mod/greenSpectre.png'),
 (85,'8','lSM Hellfire','16','1300','../../../images/Mod/ljoy Shogun Mod/hellfire.png'),
 (86,'8','lSM Splendor','16','1300','../../../images/Mod/ljoy Shogun Mod/splendor.png'),
 (87,'8','MM Dragon Samurai ','17','1000','../../../images/Mod/Msicrow Mod/dragonSamurai.png'),
 (88,'8','MM Hannya','17','1000','../../../images/Mod/Msicrow Mod/hannya.png'),
 (89,'8','MM Skull and Rose','17','1000','../../../images/Mod/Msicrow Mod/skullAndRose.png'),
 (90,'8','Obelisk Black','18','1900','../../../images/Mod/Obelisk/oBlack.png'),
 (91,'8','Obelisk Gunmetal','18','1900','../../../images/Mod/Obelisk/oGunmetal.png'),
 (92,'8','Obelisk Silver Blue','18','1900','../../../images/Mod/Obelisk/oSilverBlue.png'),
 (93,'8','Obelisk Silver Green','18','1900','../../../images/Mod/Obelisk/oSilverGreen.png'),
 (94,'8','STPM 7 Color','19','1400','../../../images/Mod/Smok T-Priv Mod/stpm7Color.png'),
 (95,'8','STPM Black','19','1400','../../../images/Mod/Smok T-Priv Mod/stpmBlack.png'),
 (96,'8','STPM Blue','19','1400','../../../images/Mod/Smok T-Priv Mod/stpmBlue.png'),
 (97,'8','STPM Purple','19','1400','../../../images/Mod/Smok T-Priv Mod/stpmPurple.png'),
 (98,'8','STPM Red','19','1400','../../../images/Mod/Smok T-Priv Mod/stpmRed.png'),
 (99,'8','SVM 7 Color','20','3000','../../../images/Mod/Smok Veneno Mod/svm7color.png'),
 (100,'8','SVM Black Red','20','3000','../../../images/Mod/Smok Veneno Mod/svmBlackRed.png'),
 (101,'8','SVM Black Yellow','20','3000','../../../images/Mod/Smok Veneno Mod/svmBlackYellow.png'),
 (102,'8','SVM Blue Red','20','3000','../../../images/Mod/Smok Veneno Mod/svmBlueRed.png'),
 (103,'8','SVM Purple Red','20','3000','../../../images/Mod/Smok Veneno Mod/svmPurple.png'),
 (104,'8','SVM Red Gold','20','3000','../../../images/Mod/Smok Veneno Mod/svmRedGold.png'),
 (105,'8','SVM Silver Black','20','3000','../../../images/Mod/Smok Veneno Mod/svmSilver.png'),
 (106,'8','SEM Black','21','900','../../../images/Mod/Sob Emperor Mod/semBlack.png'),
 (107,'8','SEM Brass','21','900','../../../images/Mod/Sob Emperor Mod/semBrass.png'),
 (108,'8','SEM White','21','900','../../../images/Mod/Sob Emperor Mod/semWhite.png'),
 (109,'8','SWM Black','22','1200','../../../images/Mod/Sob Waffle Mod/swmBlack.jpg'),
 (110,'8','SWM Ultem','22','1200','../../../images/Mod/Sob Waffle Mod/swmUltem.jpg'),
 (111,'8','VSPM Black','23','2000','../../../images/Mod/Vapor Storm Puma Mod/vspmBlack.png'),
 (112,'8','VSPM Punk','23','2000','../../../images/Mod/Vapor Storm Puma Mod/vspmPunk.png'),
 (113,'8','VSPM Rock','23','2000','../../../images/Mod/Vapor Storm Puma Mod/vspmRock.png'),
 (114,'8','VSPM Vape on Black','23','2000','../../../images/Mod/Vapor Storm Puma Mod/vapeOnBlack.png'),
 (115,'8','VSPM Vape on White','23','2000','../../../images/Mod/Vapor Storm Puma Mod/vapeOnWhite.png'),
 (116,'8','VKM Black','24','1100','../../../images/Mod/VCIGO K2 Mod/vkmBlack.png'),
 (117,'8','VKM Blue','24','1100','../../../images/Mod/VCIGO K2 Mod/vkmBlue.png'),
 (118,'8','VKM Red','24','1100','../../../images/Mod/VCIGO K2 Mod/vkmRed.png'),
 (119,'8','VKM Yellow','24','1100','../../../images/Mod/VCIGO K2 Mod/vkmYellow.png'),
 (120,'7','AB Plus Classic Silver','25','1900','../../../images/Vape/Aegis Boost Plus/abPlusClassicSilver.png'),
 (121,'7','AB Plus Devil Red','25','1900','../../../images/Vape/Aegis Boost Plus/abPlusDevilRed.png'),
 (122,'7','AB Plus Gunmetal','25','1900','../../../images/Vape/Aegis Boost Plus/abPlusGunmetal.png'),
 (123,'7','AB Plus Space Black','25','1900','../../../images/Vape/Aegis Boost Plus/abPlusSpaceBlack.png'),
 (124,'7','AB Almighty Blue Pro','26','1700','../../../images/Vape/Aegis Boost Pro/almightyBluePro.png'),
 (125,'7','AB Aura Glow Pro','26','1700','../../../images/Vape/Aegis Boost Pro/auraGlowPro.png'),
 (126,'7','AB Classic Silver Pro ','26','1700','../../../images/Vape/Aegis Boost Pro/classicSilverPro.png'),
 (127,'7','AB Devil Red Pro','26','1700','../../../images/Vape/Aegis Boost Pro/devilRedPro.png'),
 (128,'7','AB Gunmetal Pro','26','1700','../../../images/Vape/Aegis Boost Pro/gunmetalPro.png'),
 (129,'7','AB Space Black Pro','26','1700','../../../images/Vape/Aegis Boost Pro/spaceBlackPro.png'),
 (130,'4','Bubble Glass','27','250','../../../images/Glass/Zeus X/bubbleGlass.png'),
 (131,'1','JRD Gold / Black / Blue','28','1300','../../../images/Automizer/jrd.jpg'),
 (132,'1','OFRF Black','29','900','../../../images/Automizer/OFRF/ofrfBlack.png'),
 (133,'1','OFRF Blue','29','900','../../../images/Automizer/OFRF/ofrfBlue.png'),
 (134,'1','OFRF Gold','29','900','../../../images/Automizer/OFRF/ofrfGold.png'),
 (135,'1','OFRF Grey','29','900','../../../images/Automizer/OFRF/ofrfGrey.png'),
 (136,'1','VB Black Gold','30','300','../../../images/Automizer/Vape Breed/vbBlackGold.png'),
 (137,'1','VB Silver','30','300','../../../images/Automizer/Vape Breed/vbSilver.png'),
 (138,'2','SB VTC6 3000 MAH','31','250','../../../images/Battery/Sony Battery/batterySony.png'),
 (139,'2','YB Blue','32','220','../../../images/Battery/Ylaid Battery/batteryYlaidBlue.png'),
 (140,'2','YB Red','32','220','../../../images/Battery/Ylaid Battery/batteryYlaidRed.png'),
 (141,'2','YB Violet','32','220','../../../images/Battery/Ylaid Battery/batteryYlaidViolet.png'),
 (142,'2','LG Electronic Cigarrete Lithium','33','250','../../../images/Battery/LG Battery/lgElectronicCigarreteLithium.png'),
 (143,'2','Molicel White Battery','34','250','../../../images/Battery/Molicel Battery/molicelWhiteBattery.png');
/*!40000 ALTER TABLE `tblproducts` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
