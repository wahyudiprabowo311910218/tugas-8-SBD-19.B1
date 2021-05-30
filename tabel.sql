-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: akademik
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

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
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `Nim` varchar(9) NOT NULL,
  `Nama_Mhs` varchar(25) NOT NULL,
  `Tgl_Lahir` date NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Jenis_Kelamin` varchar(2) NOT NULL,
  PRIMARY KEY (`Nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('311910123','Elfan','2000-02-15','Karawang','L'),('311910211','Aceng','2000-01-10','Bekasi','L'),('311910218','WahyudiPrabowo','1999-11-15','Banjarnegara','L'),('311910456','Desi','1999-12-26','Purworejo','P'),('311910789','Erik','1994-04-14','Bandung','L');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matakuliah`
--

DROP TABLE IF EXISTS `matakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matakuliah` (
  `Kode_MK` varchar(6) NOT NULL,
  `Nama_MK` varchar(20) NOT NULL,
  `Sks` int(2) NOT NULL,
  PRIMARY KEY (`Kode_MK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matakuliah`
--

LOCK TABLES `matakuliah` WRITE;
/*!40000 ALTER TABLE `matakuliah` DISABLE KEYS */;
INSERT INTO `matakuliah` VALUES ('MPUT11','PengolahCitra',3),('MPUT12','BasisData',4),('MPUT13','IMK',4),('MPUT45','PemogramanWeb',2),('MPUT78','SistemInformasi',2);
/*!40000 ALTER TABLE `matakuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perkuliahan`
--

DROP TABLE IF EXISTS `perkuliahan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perkuliahan` (
  `Nim` varchar(9) DEFAULT NULL,
  `Kode_MK` varchar(7) DEFAULT NULL,
  `Nip` varchar(12) DEFAULT NULL,
  `Nilai` char(1) NOT NULL,
  KEY `Kode_MK` (`Kode_MK`),
  KEY `Nim` (`Nim`),
  CONSTRAINT `perkuliahan_ibfk_1` FOREIGN KEY (`Kode_MK`) REFERENCES `matakuliah` (`Kode_MK`),
  CONSTRAINT `perkuliahan_ibfk_2` FOREIGN KEY (`Nim`) REFERENCES `mahasiswa` (`Nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perkuliahan`
--

LOCK TABLES `perkuliahan` WRITE;
/*!40000 ALTER TABLE `perkuliahan` DISABLE KEYS */;
INSERT INTO `perkuliahan` VALUES ('311910456','MPUT11','112255','9'),('311910789','MPUT13','112266','8'),('311910123','MPUT78','112244','8'),('311910211','MPUT45','112233','8'),('311910456','MPUT11','112255','9'),('311910218','MPUT12','1112222','9');
/*!40000 ALTER TABLE `perkuliahan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-30 10:24:19
