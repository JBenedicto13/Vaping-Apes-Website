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
-- Create schema test
--

CREATE DATABASE IF NOT EXISTS test;
USE test;

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
 (1,'5','Blueberry Yo','1','150','../../../images/Juice/Chill Yo/blueberryYo.pn'),
 (2,'5','Classic Yo','1','150','../../../images/Juice/Chill Yo/classicYo.png'),
 (3,'5','Strawberry Yo','1','150','../../../images/Juice/Chill Yo/strawberryYo.p'),
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
 (56,'6','SR2 Red','11','1200','../../../images/Pod/Smok RPM 2 Pod/sr2Rred.png'),
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
 (131,'1','JRD Gold / Black / Blue','28','1300','../../../images/Automizer/Joyetech Riftcore Duo/jrd.jpg'),
 (132,'1','OFRF Black','29','900','../../../images/Automizer/OFRF/ofrfBlack.png'),
 (133,'1','OFRF Blue','29','900','../../../images/Automizer/OFRF/ofrfBlue.png'),
 (134,'1','OFRF Gold','29','900','../../../images/Automizer/OFRF/ofrfGold.png'),
 (135,'1','OFRF Grey','29','900','../../../images/Automizer/OFRF/ofrfGrey.png'),
 (136,'1','VB Black Gold','30','300','../../../images/Automizer/Vape Breed/vbBlackGold.png'),
 (137,'1','VB Silver','30','300','../../../images/Automizer/Vape Breed/vbSilver.png'),
 (138,'2','SB VTC6 3000 MAH','31','250','../../../images/Battery/Sony Battery/batterySony,png'),
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
