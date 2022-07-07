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
-- Create schema dbco7
--

CREATE DATABASE IF NOT EXISTS dbco7;
USE dbco7;

--
-- Definition of table `tblperson`
--

DROP TABLE IF EXISTS `tblperson`;
CREATE TABLE `tblperson` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LastName` varchar(45) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblperson`
--

/*!40000 ALTER TABLE `tblperson` DISABLE KEYS */;
INSERT INTO `tblperson` (`ID`,`LastName`,`FirstName`,`Gender`,`Address`) VALUES 
 (1,'Almario','Diana','Female','Apalit'),
 (2,'Benedicto','JB','Male','Macabebe'),
 (3,'Benedicto','JF','Male','Macabebe'),
 (4,'Buan','Virgilio','Male','Apalit'),
 (5,'Benedicto','Marie','Female','Macabebe');
/*!40000 ALTER TABLE `tblperson` ENABLE KEYS */;

--
-- Create schema dbco8
--

CREATE DATABASE IF NOT EXISTS dbco8;
USE dbco8;

--
-- Definition of table `tblstudents`
--

DROP TABLE IF EXISTS `tblstudents`;
CREATE TABLE `tblstudents` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Course` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

/*!40000 ALTER TABLE `tblstudents` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstudents` ENABLE KEYS */;

--
-- Create schema dbsample
--

CREATE DATABASE IF NOT EXISTS dbsample;
USE dbsample;

--
-- Definition of table `tblsample`
--

DROP TABLE IF EXISTS `tblsample`;
CREATE TABLE `tblsample` (
  `idtblsample` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  PRIMARY KEY (`idtblsample`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsample`
--

/*!40000 ALTER TABLE `tblsample` DISABLE KEYS */;
INSERT INTO `tblsample` (`idtblsample`,`Name`,`Address`) VALUES 
 (1,'Diana Angelica S. Almario','Tabuyuc Apalit Pampanga'),
 (2,'John Benedict T. Benedicto','Candelaria Macabebe Pampanga'),
 (5,'Peypey','Macabebe');
/*!40000 ALTER TABLE `tblsample` ENABLE KEYS */;

--
-- Create schema inventory_and_records_system
--

CREATE DATABASE IF NOT EXISTS inventory_and_records_system;
USE inventory_and_records_system;

--
-- Definition of table `tblinventorycontrollog`
--

DROP TABLE IF EXISTS `tblinventorycontrollog`;
CREATE TABLE `tblinventorycontrollog` (
  `Transaction_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Date_Time` varchar(45) DEFAULT NULL,
  `Medicine_ID` int(11) NOT NULL DEFAULT '0',
  `Medicine_Name` varchar(45) DEFAULT NULL,
  `Transaction_Made` varchar(45) DEFAULT NULL,
  `Patient_ID` int(10) unsigned NOT NULL,
  `Vendor_ID` int(10) unsigned NOT NULL,
  `Transaction_With` varchar(45) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Stocks_From` int(11) DEFAULT NULL,
  `Stocks_To` int(10) unsigned DEFAULT NULL,
  `Expiry_Date` varchar(45) NOT NULL,
  PRIMARY KEY (`Transaction_ID`,`Medicine_ID`,`Patient_ID`,`Vendor_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinventorycontrollog`
--

/*!40000 ALTER TABLE `tblinventorycontrollog` DISABLE KEYS */;
INSERT INTO `tblinventorycontrollog` (`Transaction_ID`,`Date_Time`,`Medicine_ID`,`Medicine_Name`,`Transaction_Made`,`Patient_ID`,`Vendor_ID`,`Transaction_With`,`Quantity`,`Stocks_From`,`Stocks_To`,`Expiry_Date`) VALUES 
 (76,'8/6/2021 2:54 PM',53,'Bioflu','Recieved',0,6,'DOH',70,0,70,'8/6/2025 12:00 AM'),
 (77,'8/6/2021 2:57 PM',54,'Tempra','Recieved',0,6,'DOH',80,0,80,'8/6/2027 12:00 AM'),
 (78,'8/6/2021 2:58 PM',55,'Neozep','Recieved',0,6,'DOH',60,0,60,'8/6/2028 12:00 AM'),
 (79,'8/6/2021 3:00 PM',53,'Bioflu','Served',11,0,'Almario, Diana Angelica Silvestre',5,70,65,'8/6/2025 2:56 PM'),
 (82,'8/6/2021 3:12 PM',57,'Tempra','Recieved',0,8,'DSWD',50,0,50,'8/6/2027 12:00 AM'),
 (83,'8/6/2021 3:30 PM',52,'Paracetamol','Served',12,0,'Benedicto, John Benedict Tiglao',5,100,95,'8/6/2025 2:49 PM'),
 (84,'8/6/2021 3:49 PM',58,'Loperamide','Recieved',0,7,'FDA',50,0,50,'8/6/2030 12:00 AM'),
 (85,'8/6/2021 3:54 PM',53,'Bioflu','Served',14,0,'Estacio, KennethLazatin',5,65,60,'8/6/2025'),
 (86,'8/6/2021 3:55 PM',57,'Tempra','Served',12,0,'Benedicto, John BenedictTiglao',50,50,0,'8/6/2027'),
 (87,'8/6/2021 4:02 PM',59,'Tempra','Recieved',0,7,'FDA',50,0,50,'8/6/2022 12:00 AM'),
 (88,'8/6/2021 5:31 PM',60,'Vitamins A','Recieved',0,9,'Municipality of Apalit',50,0,50,'8/6/2030 12:00 AM'),
 (89,'8/6/2021 5:33 PM',0,'Vitamins A','Recieved',0,6,'DOH',70,0,70,'8/6/2031 5:31 PM'),
 (90,'8/6/2021 5:45 PM',60,'Vitamins A','Served',14,0,'Estacio, KennethLazatin',5,50,45,'8/6/2030'),
 (91,'8/6/2021 5:48 PM',60,'Vitamins A','Served',15,0,'Dela Cruz, JuanLopez',45,45,0,'8/6/2030'),
 (92,'8/6/2021 5:50 PM',61,'Vitamins A','Recieved',0,8,'DSWD',50,0,50,'8/6/2025 12:00 AM'),
 (93,'8/6/2021 6:13 PM',62,'Adrenaline','Recieved',0,10,'Municipality of Macabebe',90,0,90,'8/6/2030 12:00 AM'),
 (94,'8/6/2021 6:21 PM',62,'Adrenaline','Served',14,0,'Estacio, KennethLazatin',5,90,85,'8/6/2030'),
 (95,'8/6/2021 6:22 PM',62,'Adrenaline','Served',13,0,'Benedicto, PitchyAlmario',85,85,0,'8/6/2030'),
 (96,'8/6/2021 6:24 PM',63,'Adrenaline','Recieved',0,6,'DOH',70,0,70,'8/6/2031 12:00 AM');
/*!40000 ALTER TABLE `tblinventorycontrollog` ENABLE KEYS */;


--
-- Definition of table `tblitexmocredentials`
--

DROP TABLE IF EXISTS `tblitexmocredentials`;
CREATE TABLE `tblitexmocredentials` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Message` varchar(100) NOT NULL,
  `Code` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Priority` varchar(45) NOT NULL,
  `Sender_ID` varchar(45) NOT NULL,
  `Server` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblitexmocredentials`
--

/*!40000 ALTER TABLE `tblitexmocredentials` DISABLE KEYS */;
INSERT INTO `tblitexmocredentials` (`ID`,`Message`,`Code`,`Password`,`Priority`,`Sender_ID`,`Server`) VALUES 
 (1,'Testing','4554','111111','','',''),
 (2,'Good Day. Medicine stocks available for (12345), kindly visit Apalit RHU II for your medicine.','TR-SAMAN095559_UJXNK','1({vp)zwn%','','','');
/*!40000 ALTER TABLE `tblitexmocredentials` ENABLE KEYS */;


--
-- Definition of table `tblmedicinelist`
--

DROP TABLE IF EXISTS `tblmedicinelist`;
CREATE TABLE `tblmedicinelist` (
  `Medicine_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Registration_Date` varchar(45) NOT NULL,
  `Medicine_Name` varchar(45) NOT NULL,
  `Medicine_Class` varchar(45) NOT NULL,
  `Expiry_Date` varchar(45) NOT NULL,
  PRIMARY KEY (`Medicine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicinelist`
--

/*!40000 ALTER TABLE `tblmedicinelist` DISABLE KEYS */;
INSERT INTO `tblmedicinelist` (`Medicine_ID`,`Registration_Date`,`Medicine_Name`,`Medicine_Class`,`Expiry_Date`) VALUES 
 (51,'8/6/2021 2:48 PM','Testing','Tablet','8/6/2025 2:48 PM'),
 (52,'8/6/2021 2:49 PM','Paracetamol','Tablet','8/6/2025 2:49 PM'),
 (53,'8/6/2021 2:56 PM','Bioflu','Tablet','8/6/2025 2:56 PM'),
 (54,'8/6/2021 2:58 PM','Tempra','Syrup','8/6/2027 2:57 PM'),
 (55,'8/6/2021 2:59 PM','Neozep','Tablet','8/6/2028 2:58 PM'),
 (56,'8/6/2021 2:59 PM','Mefenamic Acid','Capsule','8/6/2026 2:59 PM'),
 (57,'8/6/2021 3:12 PM','Tempra','Syrup','8/6/2027 3:12 PM'),
 (58,'8/6/2021 3:49 PM','Loperamide','Tablet','8/6/2030 3:49 PM'),
 (59,'8/6/2021 4:03 PM','Tempra','Syrup','8/6/2022 4:02 PM'),
 (60,'8/6/2021 5:31 PM','Vitamins A','Syrup','8/6/2030 5:31 PM'),
 (61,'8/6/2021 5:50 PM','Vitamins A','Syrup','8/6/2025 5:50 PM'),
 (62,'8/6/2021 6:14 PM','Adrenaline','Capsule','8/6/2030 6:14 PM'),
 (63,'8/6/2021 6:25 PM','Adrenaline','Capsule','8/6/2031 6:24 PM');
/*!40000 ALTER TABLE `tblmedicinelist` ENABLE KEYS */;


--
-- Definition of table `tblpatientrecords`
--

DROP TABLE IF EXISTS `tblpatientrecords`;
CREATE TABLE `tblpatientrecords` (
  `Patient_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Registration_Date` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Middle_Name` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Birthday` varchar(45) NOT NULL,
  `Age` int(10) unsigned NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Contact_Number` varchar(45) NOT NULL,
  PRIMARY KEY (`Patient_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatientrecords`
--

/*!40000 ALTER TABLE `tblpatientrecords` DISABLE KEYS */;
INSERT INTO `tblpatientrecords` (`Patient_ID`,`Registration_Date`,`Last_Name`,`First_Name`,`Middle_Name`,`Gender`,`Birthday`,`Age`,`Address`,`Contact_Number`) VALUES 
 (11,'8/6/2021 2:52 PM','Almario','Diana Angelica','Silvestre','Female','5/7/2001 2:51 PM',20,'Purok 1','09057338290'),
 (12,'8/6/2021 3:03 PM','Benedicto','John Benedict','Tiglao','Male','9/20/2001 3:02 PM',20,'Purok 4','09486562935'),
 (13,'8/6/2021 3:05 PM','Benedicto','Pitchy','Almario','Female','9/7/2020 3:03 PM',1,'Purok 1','09055853530'),
 (14,'8/6/2021 3:52 PM','Estacio','Kenneth','Lazatin','Male','6/7/2000 3:51 PM',21,'Purok 4','09585858585858'),
 (15,'8/6/2021 5:37 PM','Dela Cruz','Juan','Lopez','Male','3/8/2000 5:36 PM',21,'Purok 6','092251184181'),
 (16,'8/6/2021 6:19 PM','Lustre','Nadine','lklklk','','3/22/2001 6:18 PM',20,'Purok 4','05561545456');
/*!40000 ALTER TABLE `tblpatientrecords` ENABLE KEYS */;


--
-- Definition of table `tblpendingsms`
--

DROP TABLE IF EXISTS `tblpendingsms`;
CREATE TABLE `tblpendingsms` (
  `Pending_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Date_Requested` varchar(45) NOT NULL,
  `Patient_ID` int(10) unsigned NOT NULL,
  `Medicine_Name` varchar(45) NOT NULL,
  `Notif_Status` varchar(45) NOT NULL,
  PRIMARY KEY (`Pending_ID`,`Patient_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpendingsms`
--

/*!40000 ALTER TABLE `tblpendingsms` DISABLE KEYS */;
INSERT INTO `tblpendingsms` (`Pending_ID`,`Date_Requested`,`Patient_ID`,`Medicine_Name`,`Notif_Status`) VALUES 
 (9,'8/6/2021 3:08 PM',13,'Tempra','Sent'),
 (10,'8/6/2021 3:09 PM',11,'Tempra','Sent'),
 (11,'8/6/2021 3:56 PM',11,'Tempra','Sent'),
 (12,'8/6/2021 5:48 PM',11,'Vitamins A','Sent'),
 (13,'8/6/2021 6:23 PM',11,'Adrenaline','Sent');
/*!40000 ALTER TABLE `tblpendingsms` ENABLE KEYS */;


--
-- Definition of table `tblregaccs`
--

DROP TABLE IF EXISTS `tblregaccs`;
CREATE TABLE `tblregaccs` (
  `Reg_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Account_Type` varchar(45) NOT NULL,
  `RegUser` varchar(45) NOT NULL,
  `RegPass` varchar(45) NOT NULL,
  `Date_Registered` varchar(45) NOT NULL,
  PRIMARY KEY (`Reg_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblregaccs`
--

/*!40000 ALTER TABLE `tblregaccs` DISABLE KEYS */;
INSERT INTO `tblregaccs` (`Reg_ID`,`Account_Type`,`RegUser`,`RegPass`,`Date_Registered`) VALUES 
 (1,'Admin','Admin','Admin1234!','8/5/2021 12:56 AM'),
 (8,'User','SampleUser','Pass1234!','8/6/2021 3:15 PM'),
 (10,'User','User','User1234!','8/6/2021 3:18 PM');
/*!40000 ALTER TABLE `tblregaccs` ENABLE KEYS */;


--
-- Definition of table `tblsigninlogs`
--

DROP TABLE IF EXISTS `tblsigninlogs`;
CREATE TABLE `tblsigninlogs` (
  `Log_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Date_Time` varchar(45) NOT NULL,
  `Reg_ID` int(10) unsigned NOT NULL,
  `Username` varchar(45) NOT NULL,
  PRIMARY KEY (`Log_ID`,`Reg_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsigninlogs`
--

/*!40000 ALTER TABLE `tblsigninlogs` DISABLE KEYS */;
INSERT INTO `tblsigninlogs` (`Log_ID`,`Date_Time`,`Reg_ID`,`Username`) VALUES 
 (11,'8/6/2021 2:46 PM',1,'Admin'),
 (12,'8/6/2021 3:16 PM',8,'SampleUser'),
 (13,'8/6/2021 3:17 PM',8,'SampleUser'),
 (14,'8/6/2021 3:18 PM',8,'SampleUser'),
 (15,'8/6/2021 3:20 PM',8,'SampleUser'),
 (16,'8/6/2021 3:29 PM',8,'SampleUser'),
 (17,'8/6/2021 3:43 PM',1,'Admin'),
 (18,'8/6/2021 4:12 PM',1,'Admin12'),
 (19,'8/6/2021 4:13 PM',8,'SampleUser'),
 (20,'8/6/2021 4:14 PM',1,'Admin12'),
 (21,'8/6/2021 4:18 PM',8,'SampleUser'),
 (22,'8/6/2021 4:21 PM',1,'Admin12'),
 (23,'8/6/2021 4:24 PM',1,'Admin12'),
 (24,'8/6/2021 5:09 PM',1,'Admin'),
 (25,'8/6/2021 5:28 PM',1,'Admin'),
 (26,'8/6/2021 6:00 PM',10,'User'),
 (27,'8/6/2021 6:11 PM',1,'Admin'),
 (28,'8/6/2021 6:33 PM',1,'SampleUser'),
 (29,'8/6/2021 6:34 PM',8,'SampleUser'),
 (30,'8/6/2021 6:36 PM',8,'NewAdmin'),
 (31,'8/6/2021 6:45 PM',1,'NewAdmin');
/*!40000 ALTER TABLE `tblsigninlogs` ENABLE KEYS */;


--
-- Definition of table `tblvendorlist`
--

DROP TABLE IF EXISTS `tblvendorlist`;
CREATE TABLE `tblvendorlist` (
  `Vendor_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Registration_Date` varchar(45) NOT NULL,
  `Vendor_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Vendor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvendorlist`
--

/*!40000 ALTER TABLE `tblvendorlist` DISABLE KEYS */;
INSERT INTO `tblvendorlist` (`Vendor_ID`,`Registration_Date`,`Vendor_Name`) VALUES 
 (6,'8/6/2021 2:50 PM','DOH'),
 (7,'8/6/2021 3:01 PM','FDA'),
 (8,'8/6/2021 3:02 PM','DSWD'),
 (9,'8/6/2021 5:29 PM','Municipality of Apalit'),
 (10,'8/6/2021 6:12 PM','Municipality of Macabebe');
/*!40000 ALTER TABLE `tblvendorlist` ENABLE KEYS */;


--
-- Definition of table `tblviewinventory`
--

DROP TABLE IF EXISTS `tblviewinventory`;
CREATE TABLE `tblviewinventory` (
  `Inventory_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Medicine_ID` int(10) unsigned NOT NULL,
  `Stocks` int(10) unsigned NOT NULL,
  `Expiry_Date` varchar(45) NOT NULL,
  PRIMARY KEY (`Inventory_ID`,`Medicine_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblviewinventory`
--

/*!40000 ALTER TABLE `tblviewinventory` DISABLE KEYS */;
INSERT INTO `tblviewinventory` (`Inventory_ID`,`Medicine_ID`,`Stocks`,`Expiry_Date`) VALUES 
 (40,52,95,'8/6/2025'),
 (41,53,60,'8/6/2025'),
 (42,54,0,'8/6/2027'),
 (43,55,60,'8/6/2028'),
 (44,0,50,'8/6/2027'),
 (45,57,0,'8/6/2027'),
 (46,58,50,'8/6/2030'),
 (47,59,50,'8/6/2022'),
 (48,60,0,'8/6/2030'),
 (49,0,70,'8/6/2031'),
 (50,61,50,'8/6/2025'),
 (51,62,0,'8/6/2030'),
 (52,63,70,'8/6/2031');
/*!40000 ALTER TABLE `tblviewinventory` ENABLE KEYS */;

--
-- Create schema sample_server
--

CREATE DATABASE IF NOT EXISTS sample_server;
USE sample_server;

--
-- Definition of table `tblmycrud`
--

DROP TABLE IF EXISTS `tblmycrud`;
CREATE TABLE `tblmycrud` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmycrud`
--

/*!40000 ALTER TABLE `tblmycrud` DISABLE KEYS */;
INSERT INTO `tblmycrud` (`ID`,`Username`,`Password`) VALUES 
 (52,'Pits2','112233'),
 (53,'Diana2','787788878');
/*!40000 ALTER TABLE `tblmycrud` ENABLE KEYS */;


--
-- Definition of table `tblsample`
--

DROP TABLE IF EXISTS `tblsample`;
CREATE TABLE `tblsample` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Age` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsample`
--

/*!40000 ALTER TABLE `tblsample` DISABLE KEYS */;
INSERT INTO `tblsample` (`ID`,`Name`,`Address`,`Age`) VALUES 
 (1,'JB Benedicto','Candelaria','20'),
 (2,'Diana Angelica','Candelaria','20'),
 (3,'Enchong','Candelaria','10'),
 (4,'jkbhkb','hb hbi','45'),
 (5,'Juan Delacruz','Philippines','19'),
 (6,'','',''),
 (7,'Juan Delacruz','Philippines','19');
/*!40000 ALTER TABLE `tblsample` ENABLE KEYS */;

--
-- Create schema smartfiltering
--

CREATE DATABASE IF NOT EXISTS smartfiltering;
USE smartfiltering;

--
-- Definition of table `tblstudentprofile`
--

DROP TABLE IF EXISTS `tblstudentprofile`;
CREATE TABLE `tblstudentprofile` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SchoolYear` varchar(10) NOT NULL,
  `StudentNumber` varchar(10) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `MiddleInitial` varchar(1) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Course` varchar(45) NOT NULL,
  `YearandSection` varchar(45) NOT NULL,
  `ContactNumber` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudentprofile`
--

/*!40000 ALTER TABLE `tblstudentprofile` DISABLE KEYS */;
INSERT INTO `tblstudentprofile` (`ID`,`SchoolYear`,`StudentNumber`,`LastName`,`FirstName`,`MiddleInitial`,`Gender`,`Address`,`Course`,`YearandSection`,`ContactNumber`) VALUES 
 (1,'2000-2001','2019988001','Buan','Virgilio','S','Male','Apalit','BSBA','1-A','09123456789'),
 (2,'2001-2002','2019988002','Silvestre','Sandy','G','Female','Apalit','BEED','1-A','09234567891'),
 (3,'2002-2003','2019988003','Silvestre','Mary Ann','G','Female','Apalit','BSBA','2-A','09345678912'),
 (4,'2003-2004','2019988004','Benedicto','John Florence','T','Male','Macabebe','BEED','1-A','09456789123'),
 (5,'2004-2005','2019988005','Benedicto','Marie Pearl','T','Female','Macabebe','BSHM','1-A','09567891234'),
 (6,'2005-2006','2019988006','Almario','Diana','S','Female','Macabebe','BSIT','2-A','09057338290'),
 (7,'2006-2007','2019988007','Garcia','Betty Mae','G','Female','Apalit','BSHM','2-B','09678912345'),
 (8,'2007-2008','2019988008','Almario','Moises','S','Male','Apalit','BSBA','4-A','09789124567'),
 (9,'2008-2009','2019988009','Almario','Joshua','S','Male','Apalit','BASIT','4-A','09891234567'),
 (10,'2009-2010','2019988010','Almario','April Jasmine','M','Female','San Fernando','BSHM','1-B','09912345678'),
 (11,'2011-2012','2019988011','Lopez','Janine','G','Female','Macabebe','BSIT','2-A','09091234567'),
 (12,'2012-2013','2019988012','Arco','Crystal','D','Female','San Fernando','BSIT','2-A','09191234567'),
 (13,'2013-2014','2019988013','Bug-os','MJ','S','Female','San Fernando','BSIT','2-A','09212345678'),
 (14,'2014-2015','2019988014','Silvestre','MG','G','Male','Apalit','BEED','1-A','09312345678'),
 (15,'2016-2017','2019922015','Silvestre','Jaira','G','Female','Apalit','BEED','1-C','09412345678'),
 (16,'2017-2018','2019988016','Buan','Ernesto','M','Male','Apalit','BEED','4-F','09512345678'),
 (17,'2018-2019','2019988017','Almario','Pitchy','B','Female','Macabebe','BEED','1-A','09612345789'),
 (18,'2019-2020','2019988018','Agustin','Danica','L','Female','Macabebe','BEED','2-A','09712345678'),
 (19,'2000-2001','2019988019','Aniciete','Gerica','S','Female','Macabebe','BEED','2-A','09812345789'),
 (20,'2001-2002','2019988020','Aboque','Angelo','D','Male','Calumpit','BSIT','2-F','09812345678'),
 (21,'2002-2003','2019988021','Caboboy','Li','F','Male','Macabebe','BSIT','2-A','09871234567'),
 (22,'2003-2004','2019988022','Benedicto','JB','T','Male','Macabebe','BSIT','2-A','09876123456'),
 (23,'2005-2006','2019988023','Capistrano','Mark','L','Male','Macabebe','BSHM','2-A','09876512345'),
 (24,'2006-2007','2019988024','Dela Cruz','Janwry','N','Male','Macabebe','BSIT','2-A','09876541234'),
 (25,'2007-2008','2019988025','Laxamana','Aeron','L','Male','Macabebe','BSHM','2-A','09876543123'),
 (26,'2008-2009','2019988026','Salvid','Kaycelyn','M','Female','Macabebe','BEED','2-A','09876543212'),
 (27,'2009-2010','2019988027','Cruz','Neil','A','Male','Macabebe','BSIT','2-C','09351234567'),
 (28,'2010-2011','2019988028','Lustre','Nadine','S','Female','Manila','BSIT','4-A','09352345678'),
 (29,'2011-2012','2019988029','Rizo','Julius','M','Male','Calumpit','BEED','2-A','09353456789'),
 (30,'2012-2013','2019988030','Soliman','John Daryl','T','Male','San Fernando','BSIT','4-A','09281234567');
/*!40000 ALTER TABLE `tblstudentprofile` ENABLE KEYS */;

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
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccounts`
--

/*!40000 ALTER TABLE `tblaccounts` DISABLE KEYS */;
INSERT INTO `tblaccounts` (`customer_id`,`First_Name`,`Last_Name`,`Email`,`Password`) VALUES 
 (1,'Vaping Apes','Vape Shop','vapingapes@gmail.com','admin1234'),
 (2,'Juan','Dela Cruz','juandelacruz@gmail.com','12345'),
 (4,'Diana','Almario','diana@gmail.com','12345678');
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
 (3,'3'),
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
  `Description` varchar(300) NOT NULL,
  `Category_Id` varchar(45) NOT NULL,
  `Product_Id` varchar(45) NOT NULL,
  PRIMARY KEY (`idtblfeatured`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfeatured`
--

/*!40000 ALTER TABLE `tblfeatured` DISABLE KEYS */;
INSERT INTO `tblfeatured` (`idtblfeatured`,`Description`,`Category_Id`,`Product_Id`) VALUES 
 (1,'The Geek Vape Aegis Boost Plus Pod Mod Kit is another tough vape pod mod in the Geek Vape Aegis series. Like it\'s predecessor, the original Aegis Boost Pod Kit, it supports a maximum of 40 watts but the Boost Plus is powered by an external 18650 battery (not included).','7','120');
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
 (1,'5','Blueberry Yo (60 ml)','1','150','../../../images/Juice/Chill Yo/blueberryYo.png'),
 (2,'5','Classic Yo (60 ml)','1','150','../../../images/Juice/Chill Yo/classicYo.png'),
 (3,'5','Strawberry Yo (60 ml)','1','150','../../../images/Juice/Chill Yo/strawberryYo.png'),
 (4,'5','Blueberry Frostee (60 ml)','2','170','../../../images/Juice/Cloud Check/blueberryFrostee.jpg'),
 (5,'5','Cheesecake Supreme (60 ml)','2','170','../../../images/Juice/Cloud Check/cheesecakeSupreme.jpg'),
 (6,'5','Grape Frostee (60 ml)','2','170','../../../images/Juice/Cloud Check/grapeFrostee.jpg'),
 (7,'5','Melon Yogurt (60 ml)','2','170','../../../images/Juice/Cloud Check/melonYogurt.jpg'),
 (8,'5','Strawberry Frostee (60 ml)','2','170','../../../images/Juice/Cloud Check/strawberryFrostee.jpg'),
 (9,'5','Capuccino Delight (60 ml)','3','200','../../../images/Juice/Dr Fog n\' Chill/capuccinoDelight.png'),
 (10,'5','Coffee Chill (60 ml)','3','200','../../../images/Juice/Dr Fog n\' Chill/coffeeChill.png'),
 (11,'5','Creamy Milk (60 ml)','3','200','../../../images/Juice/Dr Fog n\' Chill/creamyMilk.png'),
 (12,'5','Frozen Lychee (60 ml)','3','200','../../../images/Juice/Dr Fog n\' Chill/frozenLychee.png'),
 (13,'5','Frozen (60 ml)','3','200','../../../images/Juice/Dr Fog n\' Chill/frozen.png'),
 (14,'5','Mango Chill (60 ml)','3','200','../../../images/Juice/Dr Fog n\' Chill/mangoChill.png'),
 (15,'5','Strawberry Cheesecake (60 ml)','3','200','../../../images/Juice/Dr Fog n\' Chill/strawberryCheesecake.png'),
 (16,'5','Strawberry Pochie (60 ml)','3','200','../../../images/Juice/Dr Fog n\' Chill/strawberryPochie.png'),
 (17,'5','Vanilla Cola (60 ml)','3','200','../../../images/Juice/Dr Fog n\' Chill/vanillaCola.png'),
 (18,'5','Yacold (60 ml)','3','200','../../../images/Juice/Dr Fog n\' Chill/yacold.png'),
 (19,'5','Bananarama (60 ml)','4','200','../../../images/Juice/Dr Steep/bananarama.jpg'),
 (20,'5','Coffee Xoxo (60 ml)','4','200','../../../images/Juice/Dr Steep/coffeeXoxo.jpg'),
 (21,'5','Honeydew Strawberry (60 ml)','4','200','../../../images/Juice/Dr Steep/honeydewStrawberry.jpg'),
 (22,'5','Icy Sour Grapes (60 ml)','4','200','../../../images/Juice/Dr Steep/icySourGrapes.jpg'),
 (23,'5','Ube Cheesecake (60 ml)','4','200','../../../images/Juice/Dr Steep/ubeCheesecake.jpg'),
 (24,'5','Blueberry (60 ml)','5','160','../../../images/Juice/Snoopy/blueberry.jpg'),
 (25,'5','Coffee (60 ml)','5','160','../../../images/Juice/Snoopy/coffee.jpg'),
 (26,'5','Grapes (60 ml)','5','160','../../../images/Juice/Snoopy/grapes.jpg'),
 (27,'5','Melon (60 ml)','5','160','../../../images/Juice/Snoopy/melon.jpg'),
 (28,'5','Milk (60 ml)','5','160','../../../images/Juice/Snoopy/milk.jpg'),
 (29,'5','Raspberry (60 ml)','5','160','../../../images/Juice/Snoopy/raspberry.jpg'),
 (30,'5','Strawberry (60 ml)','5','160','../../../images/Juice/Snoopy/strawberry.jpg'),
 (31,'5','Brewed Ice Coffee (60 ml)','6','160','../../../images/Juice/Trops/brewedIceCoffee.jpg'),
 (32,'5','Bubbly Candy (60 ml)','6','160','../../../images/Juice/Trops/bubblyCandy.jpg'),
 (33,'5','Guyabano Frost (60 ml)','6','160','../../../images/Juice/Trops/guyabanoFrost.jpg'),
 (34,'5','Iced Grape Yahkult (60 ml)','6','160','../../../images/Juice/Trops/icedGrapeYahkult.jpg'),
 (35,'5','Icy Melon Kantola (60 ml)','6','160','../../../images/Juice/Trops/icyMelonKantola.jpg'),
 (36,'5','Strawberry Frigid (60 ml)','6','160','../../../images/Juice/Trops/strawberryFrigid.jpg'),
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
