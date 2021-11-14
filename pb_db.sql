-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2021 at 06:38 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pb_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE `atms` (
  `atmSQLID` smallint(6) NOT NULL,
  `atmPos1` float NOT NULL,
  `atmPos2` float NOT NULL,
  `atmPos3` float NOT NULL,
  `atmPos4` float NOT NULL,
  `atmPos5` float NOT NULL,
  `atmPos6` float NOT NULL,
  `atmPreseceneZice` tinyint(1) NOT NULL DEFAULT 0,
  `atmProbijenBios` tinyint(1) NOT NULL DEFAULT 0,
  `atmVremeDoRoba` tinyint(1) NOT NULL DEFAULT 0,
  `atmExists` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atms`
--

INSERT INTO `atms` (`atmSQLID`, `atmPos1`, `atmPos2`, `atmPos3`, `atmPos4`, `atmPos5`, `atmPos6`, `atmPreseceneZice`, `atmProbijenBios`, `atmVremeDoRoba`, `atmExists`) VALUES
(3, 1497.88, -1749.88, 14.984, 0, 0, -177.5, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banned`
--

CREATE TABLE `banned` (
  `ban_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ban_type` smallint(1) DEFAULT NULL,
  `ban_time` int(11) DEFAULT NULL,
  `ban_reason` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban_admin` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban_date` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `Time` varchar(22) NOT NULL,
  `Name` varchar(24) NOT NULL,
  `Admin` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bussines`
--

CREATE TABLE `bussines` (
  `bussines_id` int(11) NOT NULL,
  `b_owner_sqlID` int(11) DEFAULT -1,
  `bOnAuction` tinyint(1) NOT NULL DEFAULT 0,
  `bOwner` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Drzava',
  `b_price` int(11) NOT NULL,
  `b_type` smallint(3) NOT NULL,
  `b_locked` tinyint(4) DEFAULT 0,
  `b_money` int(11) DEFAULT 0,
  `b_enter_x` float NOT NULL,
  `b_enter_y` float NOT NULL,
  `b_enter_z` float NOT NULL,
  `b_exit_x` float DEFAULT 0,
  `b_exit_y` float DEFAULT 0,
  `b_exit_z` float DEFAULT 0,
  `b_enter_int` int(11) DEFAULT 0,
  `b_enter_vw` int(11) DEFAULT 0,
  `b_exit_int` int(11) DEFAULT 0,
  `b_exit_vw` int(11) DEFAULT 0,
  `b_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `b_level` int(11) NOT NULL,
  `b_jobID` smallint(2) DEFAULT 0,
  `b_neaktivnost` int(11) DEFAULT 0,
  `b_facture` int(11) DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bussines`
--

INSERT INTO `bussines` (`bussines_id`, `b_owner_sqlID`, `bOnAuction`, `bOwner`, `b_price`, `b_type`, `b_locked`, `b_money`, `b_enter_x`, `b_enter_y`, `b_enter_z`, `b_exit_x`, `b_exit_y`, `b_exit_z`, `b_enter_int`, `b_enter_vw`, `b_exit_int`, `b_exit_vw`, `b_name`, `b_level`, `b_jobID`, `b_neaktivnost`, `b_facture`) VALUES
(4, -1, 0, 'Drzava', 1000000, 30, 0, 0, 1022.43, -1121.43, 23.87, -2010.64, -756.275, 1500.97, 0, 0, 3, 0, 'Casino', 5, 0, 0, 100),
(5, -1, 0, 'Drzava', 1000000, 9, 0, 0, 1369, -1279.71, 13.547, 315.763, -143.661, 999.602, 0, 0, 7, 1, 'Gun Shop', 10, 0, 0, 100),
(6, -1, 0, 'Drzava', 1000000, 9, 0, 0, 1791.77, -1163.1, 23.828, 315.763, -143.661, 999.602, 0, 0, 7, 2, 'Gun Shop', 10, 0, 0, 100),
(7, -1, 0, 'Drzava', 1500000, 22, 0, 0, 1629.6, -1170.32, 24.086, 834.667, 7.388, 1004.19, 0, 0, 3, 3, 'Kladionica', 5, 0, 0, 100),
(8, -1, 0, 'Drzava', 200000, 17, 0, 0, 1221.78, -956.907, 42.938, 0, 0, 0, 0, 0, 0, 4, 'Trafika', 5, 0, 0, 100),
(9, -1, 0, 'Drzava', 400000, 19, 0, 0, 1310.13, -1366.8, 13.507, 0, 0, 0, 0, 0, 0, 5, 'Rent a vehicle', 5, 0, 0, 100),
(10, -1, 0, 'Drzava', 3000000, 18, 0, 0, 1828.64, -1426.74, 13.602, 0, 0, 0, 0, 0, 0, 6, 'Firma - Mehanicar', 5, 1, 0, 100),
(11, -1, 0, 'Drzava', 3000000, 18, 0, 0, 867.265, -1202.62, 16.977, 0, 0, 0, 0, 0, 0, 7, 'Firma - Proizvodjac Municije', 5, 2, 0, 100),
(12, -1, 0, 'Drzava', 3000000, 18, 0, 0, 1887.37, -2315.5, 13.547, 0, 0, 0, 0, 0, 0, 8, 'Firma - Pilot', 5, 3, 0, 100),
(13, -1, 0, 'Drzava', 3000000, 18, 0, 0, 625.904, 848.586, -42.961, 0, 0, 0, 0, 0, 0, 9, 'Firma - Rudar', 5, 4, 0, 100),
(14, -1, 0, 'Drzava', 3000000, 18, 0, 0, 1525.15, -1008.93, 24.102, 0, 0, 0, 0, 0, 0, 10, 'Firma - Prevoznik Novca', 5, 5, 0, 100),
(15, -1, 0, 'Drzava', 3000000, 18, 0, 0, 1752.49, -1893.01, 13.557, 0, 0, 0, 0, 0, 0, 11, 'Firma - Uber', 5, 6, 0, 100),
(16, -1, 0, 'Drzava', 3000000, 18, 0, 0, 901.437, -1202.62, 16.983, 0, 0, 0, 0, 0, 0, 12, 'Firma - Proizvodjac Namjestaja', 5, 7, 0, 100),
(17, -1, 0, 'Drzava', 3000000, 18, 0, 0, 2412.34, -1430.53, 23.996, 0, 0, 0, 0, 0, 0, 13, 'Firma - Fasader', 5, 8, 0, 100),
(18, -1, 0, 'Drzava', 2000000, 29, 0, 0, 1283.41, -1544.3, 13.531, 0, 0, 0, 0, 0, 0, 0, 'Lutrija', 5, 0, 0, 100),
(19, -1, 0, 'Drzava', 2000000, 23, 0, 0, 1686.42, -1351.15, 17.43, 0, 0, 0, 0, 0, 0, 0, 'Oglas', 5, 0, 0, 100),
(20, -1, 0, 'Drzava', 450000, 6, 0, 0, 1456.45, -1137.63, 23.948, 161.41, -96.687, 1001.8, 0, 0, 18, 16, 'Zip', 5, 0, 0, 100),
(21, -1, 0, 'Drzava', 450000, 5, 0, 0, 2244.38, -1665.56, 15.477, 207.72, -110.546, 1005.13, 0, 0, 15, 17, 'Binco', 5, 0, 0, 100),
(22, -1, 0, 'Drzava', 750000, 13, 0, 0, 2105.48, -1806.51, 13.555, 372.268, -133.511, 1001.49, 0, 0, 5, 18, 'Well stacked pizza', 5, 0, 0, 100),
(23, -1, 0, 'Drzava', 250000, 10, 0, 0, 2229.89, -1721.26, 13.561, 772.359, -5.516, 1000.73, 0, 0, 5, 19, 'Gym', 5, 0, 0, 100),
(24, -1, 0, 'Drzava', 200000, 14, 0, 0, 1837.01, -1682.43, 13.324, -2636.58, 1402.79, 906.461, 0, 0, 3, 20, 'Nocni klub', 5, 0, 0, 100),
(25, -1, 0, 'Drzava', 500000, 1, 0, 0, 1833.77, -1842.56, 13.578, -30.908, -92.01, 1003.55, 0, 0, 18, 21, 'Prodavnica 24/7', 5, 0, 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `containers`
--

CREATE TABLE `containers` (
  `koSQLID` smallint(6) NOT NULL,
  `koObjPos1` float NOT NULL,
  `koObjPos2` float NOT NULL,
  `koObjPos3` float NOT NULL,
  `koObjRot1` float NOT NULL,
  `koObjRot2` float NOT NULL,
  `koObjRot3` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `containers`
--

INSERT INTO `containers` (`koSQLID`, `koObjPos1`, `koObjPos2`, `koObjPos3`, `koObjRot1`, `koObjRot2`, `koObjRot3`) VALUES
(1, 1522.77, -1702.48, 13.313, 0, 0, 89.7),
(2, 910.802, -1636.17, 13.303, 0, 0, 89.5),
(4, 1442.13, -1045.05, 23.558, 0, 0, 179.8),
(5, 2010.05, -1251.86, 23.744, 0, 0, 0),
(6, 1215.33, -1341.33, 13.321, 0, 0, -90.7),
(7, 1146.07, -904.669, 42.601, 0, 0, -178),
(8, 2506.15, -1908.34, 13.297, 0, 0, 90.9),
(9, 1295.75, -1520.77, 13.317, 0, 0, 0),
(10, 1900.66, -1870.48, 13.29, 0, 0, -89.4),
(11, 211.589, -237.21, 1.288, 0, 0, 0),
(12, 2426.52, -2430.09, 13.384, 0, 0, -45.8);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `fieldSQLID` mediumint(9) NOT NULL,
  `fieldOwnerSQLID` int(11) NOT NULL,
  `fieldOwned` tinyint(1) NOT NULL DEFAULT 0,
  `fieldOwner` varchar(25) NOT NULL DEFAULT 'Drzava',
  `fieldPrice` int(11) NOT NULL,
  `fieldLevel` smallint(6) NOT NULL,
  `fieldMaxX` float NOT NULL,
  `fieldMinX` float NOT NULL,
  `fieldMaxY` float NOT NULL,
  `fieldMinY` float NOT NULL,
  `fieldStalkNumber` tinyint(2) NOT NULL,
  `fieldObjectPos1` float NOT NULL,
  `fieldObjectPos2` float NOT NULL,
  `fieldObjectPos3` float NOT NULL,
  `fieldObjectPos4` float NOT NULL,
  `fieldObjectPos5` float NOT NULL,
  `fieldObjectPos6` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fields_stalks`
--

CREATE TABLE `fields_stalks` (
  `sSQLID` mediumint(9) NOT NULL,
  `sfieldID` mediumint(9) NOT NULL,
  `sPos1` float NOT NULL,
  `sPos2` float NOT NULL,
  `sPos3` float NOT NULL,
  `sPlanted` tinyint(1) NOT NULL DEFAULT 1,
  `sGrow` tinyint(1) NOT NULL DEFAULT 0,
  `sMinut` tinyint(2) NOT NULL,
  `sHour` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_stations`
--

CREATE TABLE `fuel_stations` (
  `fsSQLID` int(11) NOT NULL,
  `fsPlaced` tinyint(1) NOT NULL DEFAULT 1,
  `fsBussinesID` mediumint(9) NOT NULL,
  `fsName` varchar(50) NOT NULL,
  `fsFuelL` smallint(6) NOT NULL DEFAULT 50,
  `fsFuelPrice` tinyint(2) NOT NULL,
  `fsPos1` float NOT NULL,
  `fsPos2` float NOT NULL,
  `fsPos3` float NOT NULL,
  `fsTruckID` mediumint(9) NOT NULL DEFAULT -1,
  `fsCisternID` mediumint(9) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangzones`
--

CREATE TABLE `gangzones` (
  `gzone_id` int(11) NOT NULL,
  `taken` tinyint(4) DEFAULT NULL,
  `takeable` tinyint(4) DEFAULT NULL,
  `gang_id` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `is_special` tinyint(1) NOT NULL DEFAULT 0,
  `max_x` float NOT NULL DEFAULT 0,
  `max_y` float NOT NULL DEFAULT 0,
  `min_x` float NOT NULL DEFAULT 0,
  `min_y` float NOT NULL DEFAULT 0,
  `color` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_pos_x` float DEFAULT NULL,
  `pickup_pos_y` float DEFAULT NULL,
  `pickup_pos_z` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `garages`
--

CREATE TABLE `garages` (
  `garage_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT -1,
  `g_property` int(11) DEFAULT 0,
  `g_price` int(11) NOT NULL,
  `g_level` int(11) NOT NULL,
  `g_locked` tinyint(4) DEFAULT 0,
  `garage_pos_x` float NOT NULL,
  `garage_pos_y` float NOT NULL,
  `garage_pos_z` float NOT NULL,
  `garage_vehicle_pos_x` float NOT NULL,
  `garage_vehicle_pos_y` float NOT NULL,
  `garage_vehicle_pos_z` float NOT NULL,
  `garage_vehicle_pos_a` float NOT NULL,
  `g_vw` int(11) NOT NULL,
  `g_type` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `gateid` int(11) NOT NULL,
  `gateowner` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gatemodel` int(11) NOT NULL,
  `gatefor` int(11) NOT NULL,
  `gateorg` int(11) DEFAULT NULL,
  `gatespeed` float NOT NULL,
  `gateradius` float NOT NULL,
  `gatetime` int(11) NOT NULL,
  `gatepos_1` float NOT NULL,
  `gatepos_2` float NOT NULL,
  `gatepos_3` float NOT NULL,
  `gatepos_4` float NOT NULL,
  `gatepos_5` float NOT NULL,
  `gatepos_6` float NOT NULL,
  `gateint` int(11) DEFAULT NULL,
  `gatevw` int(11) DEFAULT NULL,
  `gatemove_1` float NOT NULL,
  `gatemove_2` float NOT NULL,
  `gatemove_3` float NOT NULL,
  `gatemove_4` float NOT NULL,
  `gatemove_5` float NOT NULL,
  `gatemove_6` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gps`
--

CREATE TABLE `gps` (
  `gpsSQLID` smallint(6) NOT NULL,
  `gpsName` varchar(50) NOT NULL,
  `gpsPos1` float NOT NULL,
  `gpsPos2` float NOT NULL,
  `gpsPos3` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gps`
--

INSERT INTO `gps` (`gpsSQLID`, `gpsName`, `gpsPos1`, `gpsPos2`, `gpsPos3`) VALUES
(1, 'LSPD', 1536.48, -1671.78, 13.383),
(2, 'Opstina', 1484.28, -1735.04, 13.383),
(3, 'Banka', 1458.69, -1031.52, 23.724),
(4, 'Spawn', 1547.91, -2286.77, 13.383),
(5, 'Zlatara', 2001.9, -1277.87, 23.907),
(6, 'Auto Skola', 2485.67, -1910.56, 13.566),
(7, 'Igraonica', 1145.28, -896.018, 42.92),
(8, 'Market', 1315.75, -908.306, 38.249),
(9, 'Market 2', 1352.22, -1753.48, 13.354),
(10, 'Auto Salon Audi', 1573.98, -1287.04, 17.487),
(11, 'Lotto', 1293.54, -1540.78, 13.534),
(12, 'Victim', 453.917, -1502.29, 30.871),
(13, 'Electronic Shop', 1295.66, -1859.5, 13.547),
(14, 'Auto Salon Grotti', 542.084, -1293.93, 17.242),
(15, 'Auto Salon CnS', 2128.59, -1136.7, 25.533),
(16, 'Auto Salon Bikes', 1981.96, -1990.48, 13.547),
(17, 'Auto Salon Airplanes', 2004.42, -2316.37, 13.547),
(18, 'Auto Salon Helicopters', 1921.36, -2231.96, 13.547),
(19, 'Auto Salon Boats', 285.64, -1900.75, 2.074),
(20, 'Javna Kuca', 2204.99, -1151.15, 29.797),
(21, 'Crno Trziste', 197.099, -232.109, 1.779),
(22, 'Klizaliste', 1063.68, -1786.25, 13.649);

-- --------------------------------------------------------

--
-- Table structure for table `job_skills`
--

CREATE TABLE `job_skills` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `skill_mehanicar` tinyint(3) DEFAULT 1,
  `skill_pmunicije` tinyint(3) NOT NULL DEFAULT 1,
  `skill_pilot` tinyint(3) DEFAULT 1,
  `skill_rudar` tinyint(3) DEFAULT 1,
  `skill_pnovca` tinyint(3) DEFAULT 1,
  `skill_uber` tinyint(3) DEFAULT 1,
  `skill_pnamjestaja` tinyint(3) DEFAULT 1,
  `skill_fasader` tinyint(3) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log-ban`
--

CREATE TABLE `log-ban` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-chat`
--

CREATE TABLE `log-chat` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-connect`
--

CREATE TABLE `log-connect` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-deleteacc`
--

CREATE TABLE `log-deleteacc` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-edit`
--

CREATE TABLE `log-edit` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-fakture`
--

CREATE TABLE `log-fakture` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-gift`
--

CREATE TABLE `log-gift` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-give`
--

CREATE TABLE `log-give` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-kick`
--

CREATE TABLE `log-kick` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-komande`
--

CREATE TABLE `log-komande` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-kupovina`
--

CREATE TABLE `log-kupovina` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-make`
--

CREATE TABLE `log-make` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-neaktivnost`
--

CREATE TABLE `log-neaktivnost` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-password`
--

CREATE TABLE `log-password` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-pay`
--

CREATE TABLE `log-pay` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-pm`
--

CREATE TABLE `log-pm` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-poeni`
--

CREATE TABLE `log-poeni` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-prijavabugova`
--

CREATE TABLE `log-prijavabugova` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-punishment`
--

CREATE TABLE `log-punishment` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-rcon`
--

CREATE TABLE `log-rcon` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-rob`
--

CREATE TABLE `log-rob` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-sell`
--

CREATE TABLE `log-sell` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-setstat`
--

CREATE TABLE `log-setstat` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-smjenjivanja`
--

CREATE TABLE `log-smjenjivanja` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-tajna`
--

CREATE TABLE `log-tajna` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-transfer`
--

CREATE TABLE `log-transfer` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-unban`
--

CREATE TABLE `log-unban` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-unjail`
--

CREATE TABLE `log-unjail` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-zamena`
--

CREATE TABLE `log-zamena` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `org_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(24) CHARACTER SET utf8 DEFAULT NULL,
  `type` int(11) NOT NULL,
  `suspended` tinyint(4) DEFAULT 0,
  `max_members` smallint(2) DEFAULT 30,
  `male_skin_1` smallint(3) NOT NULL,
  `male_skin_2` smallint(3) NOT NULL,
  `male_skin_3` smallint(3) NOT NULL,
  `male_skin_4` smallint(3) NOT NULL,
  `male_skin_5` smallint(3) NOT NULL,
  `male_skin_6` smallint(3) NOT NULL,
  `female_skin_1` smallint(3) NOT NULL,
  `female_skin_2` smallint(3) NOT NULL,
  `female_skin_3` smallint(3) NOT NULL,
  `female_skin_4` smallint(3) NOT NULL,
  `female_skin_5` smallint(3) NOT NULL,
  `female_skin_6` smallint(3) NOT NULL,
  `rank_1` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_2` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_3` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_4` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_5` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_6` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `enter_pos_x` float NOT NULL,
  `enter_pos_y` float NOT NULL,
  `enter_pos_z` float NOT NULL,
  `exit_pos_x` float NOT NULL,
  `exit_pos_y` float NOT NULL,
  `exit_pos_z` float NOT NULL,
  `interior` int(11) DEFAULT 0,
  `virtualw` int(11) DEFAULT 0,
  `spawn_point_x` float DEFAULT 0,
  `spawn_point_y` float DEFAULT 0,
  `spawn_point_z` float DEFAULT 0,
  `oDilerX` float NOT NULL DEFAULT 0,
  `oDilerY` float NOT NULL DEFAULT 0,
  `oDilerZ` float NOT NULL DEFAULT 0,
  `oDilerA` float NOT NULL DEFAULT 0,
  `oDilerCena` smallint(6) NOT NULL DEFAULT 500,
  `oDilerRadi` tinyint(1) NOT NULL DEFAULT 0,
  `duty_point_pos_x` float DEFAULT 0,
  `duty_point_pos_y` float DEFAULT 0,
  `duty_point_pos_z` float DEFAULT 0,
  `duty_point_int` smallint(6) DEFAULT 0,
  `duty_point_vw` smallint(6) DEFAULT 0,
  `equip_point_pos_x` float DEFAULT 0,
  `equip_point_pos_y` float DEFAULT 0,
  `equip_point_pos_z` float DEFAULT 0,
  `equip_point_int` smallint(6) DEFAULT 0,
  `equip_point_vw` smallint(6) DEFAULT 0,
  `savez` smallint(6) DEFAULT -1,
  `safe_pos_x` float DEFAULT 0,
  `safe_pos_y` float DEFAULT 0,
  `safe_pos_z` float DEFAULT 0,
  `safe_money` int(11) DEFAULT 0,
  `safe_drug_amount` smallint(6) DEFAULT 0,
  `safe_mats` int(11) NOT NULL DEFAULT 0,
  `oPortX` float NOT NULL DEFAULT 0,
  `oPortY` float NOT NULL DEFAULT 0,
  `oPortZ` float NOT NULL DEFAULT 3,
  `oPortA` float NOT NULL DEFAULT 0,
  `ent_bussines` smallint(6) DEFAULT 0,
  `owned_business` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`org_id`, `name`, `prefix`, `color`, `type`, `suspended`, `max_members`, `male_skin_1`, `male_skin_2`, `male_skin_3`, `male_skin_4`, `male_skin_5`, `male_skin_6`, `female_skin_1`, `female_skin_2`, `female_skin_3`, `female_skin_4`, `female_skin_5`, `female_skin_6`, `rank_1`, `rank_2`, `rank_3`, `rank_4`, `rank_5`, `rank_6`, `enter_pos_x`, `enter_pos_y`, `enter_pos_z`, `exit_pos_x`, `exit_pos_y`, `exit_pos_z`, `interior`, `virtualw`, `spawn_point_x`, `spawn_point_y`, `spawn_point_z`, `oDilerX`, `oDilerY`, `oDilerZ`, `oDilerA`, `oDilerCena`, `oDilerRadi`, `duty_point_pos_x`, `duty_point_pos_y`, `duty_point_pos_z`, `duty_point_int`, `duty_point_vw`, `equip_point_pos_x`, `equip_point_pos_y`, `equip_point_pos_z`, `equip_point_int`, `equip_point_vw`, `savez`, `safe_pos_x`, `safe_pos_y`, `safe_pos_z`, `safe_money`, `safe_drug_amount`, `safe_mats`, `oPortX`, `oPortY`, `oPortZ`, `oPortA`, `ent_bussines`, `owned_business`) VALUES
(1, 'Policija', 'PD', NULL, 1, 0, 50, 280, 281, 266, 267, 265, 304, 76, 76, 76, 76, 76, 76, 'Officer', 'Detective', 'Lieutenant', 'Major', 'Assistant Chie', 'Chief', 1555.5, -1675.59, 16.195, 246.784, 63.9, 1003.64, 6, 1, 0, 0, 0, 0, 0, 0, 0, 500, 0, 255.386, 77.15, 1003.64, 6, 1, 257.086, 77.204, 1003.64, 6, 1, -1, 0, 0, 0, 0, 0, 0, 1536.36, -1682.97, 13.547, 292.591, 0, 0),
(2, 'FBI', 'FBI', NULL, 1, 0, 50, 163, 164, 164, 165, 166, 286, 76, 76, 76, 76, 76, 76, 'Cadet', 'Agent', 'Field Agent', 'O.S. Agent', 'Assistant D.', 'Director', 1653.48, -1654.76, 22.516, 246.784, 63.9, 1003.64, 6, 2, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1627.6, -1689.61, 13.375, 253.837, 0, 0),
(3, 'Groove Street Family', 'GSF', NULL, 2, 0, 50, 106, 105, 269, 107, 270, 271, 195, 195, 195, 195, 195, 195, 'Nigga', 'Gangsta', 'Top O.G', 'Fighter', 'Right Hand', 'Kingpin', 2495.4, -1691.14, 14.766, 291.552, -141.117, 1161.28, 6, 3, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 2461.19, -1658.6, 13.305, 89.158, 0, 0),
(4, 'Ballas', 'Ball', NULL, 2, 0, 50, 102, 103, 102, 104, 104, 296, 195, 195, 195, 195, 195, 195, 'Nigga', 'Gangsta', 'Twist', 'Angelo', 'Top O.G.', 'O.G.', 2036.37, -1052.15, 25.023, 291.552, -141.117, 1161.28, 6, 4, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 2028.28, -1074.86, 24.565, 340.536, 0, 0),
(5, 'Mara Salvatrucha 13', 'MS13', NULL, 2, 0, 50, 108, 108, 108, 109, 109, 110, 195, 195, 195, 195, 195, 195, 'Nino', 'Guardiano', 'Amigo', 'Senor', 'Jefe Inmediato', 'El Jefe', 2370.27, -1034.56, 54.411, 291.552, -141.117, 1161.28, 6, 5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 2391.46, -1055.31, 53.23, 41.97, 0, 0),
(6, 'Los Surenos 13', 'LS13', NULL, 2, 0, 50, 114, 115, 115, 116, 175, 292, 195, 195, 195, 195, 195, 195, 'Nino', 'Guardiano', 'Amigo', 'Senor', 'jefe Inmediato', 'El Jefe', 1846.53, -2021.27, 13.547, 291.552, -141.117, 1161.28, 6, 6, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1822.96, -2048.35, 13.383, 320.778, 0, 0),
(7, 'Yakuza', 'Yaku', NULL, 3, 0, 50, 117, 122, 123, 123, 186, 120, 211, 211, 211, 211, 211, 211, 'Rank 1 ', 'Rank 2', 'Rank 3', 'Rank 4', 'Co Leader', 'Leader', -1977.22, -763.585, 1497.47, 1934.02, 280.123, 1371.42, 6, 7, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1011.29, -1147.82, 23.684, 3.79, 4, 0),
(8, 'Russian Mafia', 'RM', NULL, 3, 0, 50, 127, 112, 112, 111, 111, 113, 91, 91, 91, 91, 91, 91, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Co Leader', 'Leader', 75.89, -1753.59, 25.763, 1934.02, 280.123, 1371.42, 6, 8, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 136.245, -1686.69, 11.842, 93.837, 0, 0),
(10, 'La Cosa Nostra', 'LCN', NULL, 3, 0, 50, 125, 125, 126, 126, 124, 124, 93, 93, 93, 93, 93, 93, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Co Leader', 'Leader', 1122.74, -2036.95, 69.894, 1934.02, 280.123, 1371.42, 6, 9, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1300.75, -2049.03, 58.496, 91.998, 0, 0),
(11, 'Mexican Mafia', 'MM', NULL, 3, 0, 50, 47, 47, 48, 46, 223, 120, 150, 150, 150, 150, 150, 150, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Co Leader', 'Leader', 1298.5, -797.986, 84.141, 1934.02, 280.123, 1371.42, 6, 10, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1238.46, -736.243, 95.597, 196.395, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `org_members`
--

CREATE TABLE `org_members` (
  `id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `memb_rank` smallint(1) NOT NULL,
  `memb_type` smallint(1) NOT NULL DEFAULT 0,
  `memb_sqlID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `org_ports`
--

CREATE TABLE `org_ports` (
  `port_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `pos_1_x` float NOT NULL,
  `pos_1_y` float NOT NULL,
  `pos_1_z` float NOT NULL,
  `int_1` int(11) DEFAULT 0,
  `vw_1` int(11) DEFAULT 0,
  `pos_2_x` float NOT NULL,
  `pos_2_y` float NOT NULL,
  `pos_2_z` float NOT NULL,
  `int_2` int(11) DEFAULT 0,
  `vw_2` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `org_ports`
--

INSERT INTO `org_ports` (`port_id`, `org_id`, `pos_1_x`, `pos_1_y`, `pos_1_z`, `int_1`, `vw_1`, `pos_2_x`, `pos_2_y`, `pos_2_z`, `int_2`, `vw_2`) VALUES
(1, 1, 242.252, 66.353, 1003.64, 6, 1, 1558.07, -1675.17, 28.395, 0, 0),
(2, 1, 246.401, 88.007, 1003.64, 6, 1, 1576.89, -1694.3, 6.219, 0, 0),
(3, 8, 2748.58, -71.2, 1312.6, 9, 8, 36.551, -1762.56, 1.208, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `propertys`
--

CREATE TABLE `propertys` (
  `iSQLID` mediumint(9) NOT NULL,
  `iOwnerSQLID` mediumint(9) NOT NULL DEFAULT -1,
  `iGarageSqlID` mediumint(9) NOT NULL DEFAULT -1,
  `iOwned` tinyint(4) NOT NULL DEFAULT 0,
  `iOnAuction` tinyint(1) NOT NULL DEFAULT 0,
  `iOwner` varchar(25) NOT NULL DEFAULT 'Drzava',
  `iMoney` int(11) NOT NULL DEFAULT 0,
  `iUsage` tinyint(4) NOT NULL,
  `iNeaktivnost` smallint(3) NOT NULL DEFAULT 0,
  `iEnter1` float NOT NULL,
  `iEnter2` float NOT NULL,
  `iEnter3` float NOT NULL,
  `iExit1` float NOT NULL,
  `iExit2` float NOT NULL,
  `iExit3` float NOT NULL,
  `iPrice` int(11) NOT NULL,
  `iLevel` smallint(6) NOT NULL,
  `iLocked` tinyint(4) NOT NULL DEFAULT 1,
  `iVrsta` tinyint(4) NOT NULL,
  `iInterior` int(11) NOT NULL,
  `iVW` int(11) NOT NULL,
  `iOruzje1` tinyint(4) NOT NULL DEFAULT 0,
  `iOruzje2` tinyint(4) NOT NULL DEFAULT 0,
  `iOruzje3` tinyint(4) NOT NULL DEFAULT 0,
  `iOruzje4` tinyint(4) NOT NULL DEFAULT 0,
  `iMunicija1` smallint(6) NOT NULL DEFAULT 0,
  `iMunicija2` smallint(6) NOT NULL DEFAULT 0,
  `iMunicija3` smallint(6) NOT NULL DEFAULT 0,
  `iMunicija4` smallint(6) NOT NULL DEFAULT 0,
  `iDrugAmmount` smallint(6) NOT NULL DEFAULT 0,
  `iMats` mediumint(9) NOT NULL DEFAULT 0,
  `iAlarm` tinyint(1) NOT NULL DEFAULT 0,
  `iDoorLevel` tinyint(4) NOT NULL DEFAULT 0,
  `iLockLevel` tinyint(1) NOT NULL DEFAULT 0,
  `iTime` smallint(6) NOT NULL DEFAULT 0,
  `iAdress` varchar(50) NOT NULL DEFAULT '',
  `iRentable` tinyint(1) NOT NULL DEFAULT 0,
  `iRentPrice` smallint(6) NOT NULL DEFAULT 0,
  `iRentovano` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propertys`
--

INSERT INTO `propertys` (`iSQLID`, `iOwnerSQLID`, `iGarageSqlID`, `iOwned`, `iOnAuction`, `iOwner`, `iMoney`, `iUsage`, `iNeaktivnost`, `iEnter1`, `iEnter2`, `iEnter3`, `iExit1`, `iExit2`, `iExit3`, `iPrice`, `iLevel`, `iLocked`, `iVrsta`, `iInterior`, `iVW`, `iOruzje1`, `iOruzje2`, `iOruzje3`, `iOruzje4`, `iMunicija1`, `iMunicija2`, `iMunicija3`, `iMunicija4`, `iDrugAmmount`, `iMats`, `iAlarm`, `iDoorLevel`, `iLockLevel`, `iTime`, `iAdress`, `iRentable`, `iRentPrice`, `iRentovano`) VALUES
(5, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(6, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(7, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(8, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(9, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(10, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(11, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(12, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(13, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(14, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(15, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(16, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(17, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(18, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(19, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(20, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(21, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(22, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(23, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(24, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(25, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(26, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(27, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(28, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(29, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(30, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(31, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(32, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(33, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(34, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(35, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(36, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(37, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(38, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(39, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(40, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(41, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(42, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(43, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(44, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(45, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(46, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(47, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(48, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1249.61, -877.297, 46.641, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(49, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1189, -1018.05, 36.234, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(50, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1196.49, -1017.04, 36.234, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(51, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1188.19, -1011.86, 36.227, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(52, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1195.68, -1010.88, 36.227, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(53, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1234.73, -1016.14, 32.607, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(54, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1227.24, -1017.14, 32.602, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(55, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1233.93, -1010.03, 32.602, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(56, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1226.43, -1010.97, 32.602, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(57, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1233.92, -1009.99, 36.328, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(58, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1226.44, -1011, 36.328, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(59, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1227.25, -1017.13, 36.336, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(60, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1234.73, -1016.17, 36.336, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(61, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1241.95, -1077.2, 31.555, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(62, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1242.26, -1099.89, 27.977, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(63, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1285.26, -1089.8, 28.258, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(64, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1285.26, -1067.42, 31.679, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(65, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1141.81, -1070.57, 31.766, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(66, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1183.47, -1076.73, 31.679, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(67, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1183.48, -1099.1, 28.258, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(68, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1142.12, -1092.88, 28.188, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(69, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1127.96, -1021.17, 34.992, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(70, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1118.05, -1021.66, 34.992, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(71, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1103.4, -1069.68, 31.89, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(72, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1068.43, -1081.41, 27.523, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(73, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1059.27, -1105.14, 28.045, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(74, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1103.41, -1092.52, 28.469, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(75, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1051.1, -1059.3, 34.797, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(76, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 993.783, -1059.03, 33.7, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(77, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1325.95, -1067.7, 31.555, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 500, 0),
(78, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1326.27, -1090.65, 27.977, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Novi Beograd', 0, 0, 0),
(79, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1505.38, -1061.18, 25.063, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Slavija', 0, 0, 0),
(80, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1509.61, -1061.18, 25.063, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Slavija', 0, 0, 0),
(81, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1513.99, -1061.18, 25.063, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Slavija', 0, 0, 0),
(82, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1546.26, -1096.93, 25.063, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Slavija', 0, 0, 0),
(83, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1308.14, -1468.27, 10.047, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(84, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1300.01, -1464.87, 10.047, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(85, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1284.54, -1464.88, 10.047, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(86, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1271.37, -1468.49, 10.047, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(87, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1279.44, -1471.79, 10.047, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(88, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1300.12, -1471.79, 10.047, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(89, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1279.33, -1501.32, 10.047, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(90, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1269.08, -1501.33, 10.047, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(91, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1234.39, -1501.32, 10.047, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(92, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1224.18, -1501.32, 10.047, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(93, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1224.14, -1508.24, 10.047, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(94, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1234.49, -1508.25, 10.047, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(95, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1269.19, -1508.24, 10.047, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(96, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1279.5, -1508.24, 10.047, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(97, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1187.44, -1261.01, 15.18, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(98, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1179.89, -1261.04, 15.18, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(99, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1187.36, -1254.75, 15.18, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(100, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1179.81, -1254.85, 15.18, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(101, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1187.36, -1254.7, 18.891, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(102, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1179.81, -1254.8, 18.891, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(103, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1179.89, -1261.07, 18.898, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(104, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1187.44, -1261.05, 18.898, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(105, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1071.47, -1440.64, 13.548, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(106, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1070.46, -1449.75, 13.544, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(107, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1069.51, -1458.58, 13.546, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(108, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1068.03, -1467.15, 13.542, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(109, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1065.29, -1477.27, 13.544, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(110, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1063.03, -1485.59, 13.546, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(111, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1057.18, -1507.28, 13.555, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(112, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1054.86, -1515.94, 13.563, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(113, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1052.58, -1524.49, 13.556, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(114, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 1050.89, -1532.54, 13.546, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Banjica', 0, 0, 0),
(115, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 880.081, -1424.82, 14.484, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(116, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 852.189, -1423.27, 14.137, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(117, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 824.468, -1424.2, 14.499, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(118, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 813.682, -1456.75, 14.228, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(119, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 841.313, -1471.36, 14.314, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(120, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 900.222, -1447.43, 14.371, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(121, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 900.208, -1471.03, 14.344, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(122, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 901.743, -1514.66, 14.364, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(123, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 876.209, -1512.77, 14.349, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(124, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 849.59, -1520.01, 14.348, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(125, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 822.323, -1505.51, 14.398, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(126, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 782.782, -1464.6, 13.547, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(127, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 784.4, -1435.94, 13.547, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(128, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 771.157, -1510.57, 13.547, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(129, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 761.055, -1564.24, 13.929, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(131, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 766.923, -1605.81, 13.804, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(132, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 697.279, -1627.02, 3.749, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(133, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 693.759, -1645.83, 4.094, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(134, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 694.918, -1690.73, 4.346, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(135, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 693.545, -1705.94, 3.819, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(136, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 653.587, -1714.01, 14.765, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(137, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 652.663, -1693.82, 14.544, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(138, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 657.228, -1652.54, 15.406, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(139, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 656.119, -1635.87, 15.862, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(140, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 653.244, -1619.86, 15, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(141, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 660.437, -1599.85, 15, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(142, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 692.858, -1602.77, 15.047, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(143, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 725.487, -1440.45, 13.532, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(144, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 738.961, -1428.77, 13.898, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(146, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 675.139, -1430.49, 14.852, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(147, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 662.433, -1440.29, 14.852, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(148, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 683.376, -1435.49, 14.852, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(149, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 662.435, -1466.6, 14.852, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(150, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 657.41, -1481.29, 14.852, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(151, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 662.435, -1487.51, 14.852, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(152, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 662.432, -1513.88, 14.852, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(153, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 657.452, -1528.46, 14.852, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(154, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 662.432, -1534.58, 14.852, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(155, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2847.25, -1309.98, 14.668, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Lido', 0, 0, 0),
(156, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2842.11, -1334.8, 14.742, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Lido', 0, 0, 0),
(157, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2851.85, -1365.87, 14.171, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Lido', 0, 0, 0),
(158, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1332.19, -633.475, 109.135, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 1000, 0),
(159, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2808.15, -1190.89, 25.339, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Lido', 0, 0, 0),
(160, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2807.97, -1175.92, 25.384, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Lido', 0, 0, 0),
(161, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2750.39, -1222.37, 64.602, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Lido', 0, 0, 0),
(162, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2750.39, -1238.8, 61.525, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Lido', 0, 0, 0),
(163, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1112.64, -742.04, 100.133, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(164, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1093.83, -807.145, 107.42, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(165, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1017.01, -763.361, 112.563, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(166, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 977.447, -771.718, 112.203, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 1, 0),
(167, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 891.201, -783.153, 101.314, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(168, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 848.023, -745.546, 94.969, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(169, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 867.63, -717.629, 105.68, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(170, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 897.843, -677.233, 116.89, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(171, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 946.22, -710.559, 122.62, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(172, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 980.496, -677.259, 121.976, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(173, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1045.15, -642.943, 120.117, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(174, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1095.06, -647.915, 113.648, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 1000, 1),
(176, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 808.258, -759.37, 76.531, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(177, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2091.07, -1277.84, 26.18, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(178, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 785.923, -828.412, 70.29, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(179, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2132.21, -1280.05, 25.891, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(180, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2150.11, -1285.04, 24.527, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(181, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2148.43, -1320.07, 26.074, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(182, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2126.76, -1320.86, 26.624, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 174, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(183, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 300.275, -1154.48, 81.391, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 0, 0),
(184, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2100.85, -1321.89, 25.953, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(185, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2090.89, -1235.17, 26.019, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(186, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 251.381, -1220.25, 76.102, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 0, 0),
(187, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2110.94, -1244.4, 25.852, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(188, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2133.52, -1233, 24.422, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(189, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 253.296, -1269.94, 74.43, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 0, 0),
(190, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 219.125, -1249.88, 78.337, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 0, 0),
(191, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2153.75, -1243.81, 25.367, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(192, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 254.364, -1367.1, 53.109, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 0, 0),
(193, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 298.868, -1338.49, 53.442, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 0, 0),
(194, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2191.84, -1239.23, 24.488, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(195, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2209.76, -1240.25, 24.48, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(196, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 355.179, -1281.14, 53.704, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 0, 0),
(197, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 345.079, -1298.08, 50.759, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kalemegdan', 0, 0, 0),
(198, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2229.6, -1241.61, 25.656, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(199, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2249.91, -1238.91, 25.898, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(200, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 398.253, -1271.33, 50.02, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 10, 0),
(201, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2250.21, -1280.05, 25.477, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(202, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 431.926, -1254.01, 51.581, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 1, 3),
(203, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2230.14, -1280.08, 25.629, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 195, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(204, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2207.89, -1280.82, 25.121, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(205, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 552.888, -1200.3, 44.832, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 0, 0),
(206, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2191.58, -1275.6, 25.156, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Topcidersko Brdo', 0, 0, 0),
(207, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 612.38, -1085.77, 58.827, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 0, 0),
(208, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2352, -1170.67, 28.075, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zemun', 0, 0, 0),
(209, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 648.408, -1058.6, 52.58, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 0, 0),
(210, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 700.302, -1060.25, 49.422, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 0, 0),
(211, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2334.4, -1203.99, 27.977, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zemun', 0, 0, 0),
(212, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 673.181, -1020.06, 55.76, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 0, 0),
(213, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 724.847, -999.462, 52.734, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Senjak', 0, 1, 3),
(214, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2373.93, -1138.92, 29.059, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zemun', 0, 0, 0),
(215, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2394.84, -1133.54, 30.719, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(216, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2427.45, -1135.77, 34.711, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zemun', 0, 0, 0),
(217, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2488, -1135.24, 39.586, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zemun', 0, 0, 0),
(218, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2510.57, -1132.54, 41.621, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(219, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 827.804, -858.002, 70.331, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 1, 0),
(220, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 836.053, -894.924, 68.769, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(221, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2438.62, -1105.79, 43.082, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(222, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 910.305, -817.598, 103.126, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(223, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2407.89, -1106.97, 40.296, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(224, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 924.083, -853.387, 93.457, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(225, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 937.974, -848.616, 93.584, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(226, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2457.02, -1102.5, 43.867, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(227, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2470.7, -1105.32, 44.488, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(228, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 989.889, -828.605, 95.469, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 1000, 0),
(229, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2519.03, -1112.98, 56.593, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(230, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2572.38, -1091.78, 67.226, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(231, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2576.68, -1070.74, 69.832, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(232, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1034.86, -813.166, 101.852, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(233, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2579.59, -1033.2, 69.58, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(234, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2562.1, -1034.41, 69.869, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(235, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2549.21, -1032.2, 69.579, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(236, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2526.81, -1033.53, 69.579, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(237, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2512.83, -1027.16, 70.086, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(238, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2499.75, -1065.57, 70.236, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(239, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2526.09, -1060.71, 69.971, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(240, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2534.48, -1063.46, 69.565, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(241, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2491.35, -1012.34, 65.398, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(242, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2479.65, -1064.05, 66.998, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(243, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2457.77, -1054.56, 59.959, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(244, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2462.48, -1011.14, 60.114, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(245, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2439.9, -1010.87, 54.344, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(246, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2454.19, -964.945, 80.073, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(247, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2459.4, -947.701, 80.083, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(248, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2472.39, -962.371, 80.525, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(249, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2492.1, -965.621, 82.549, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(250, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2499.41, -946.995, 82.471, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(251, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2517.86, -965.261, 82.328, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(252, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2552.4, -958.315, 82.633, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(253, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2581.5, -969.319, 81.365, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(254, -1, -1, 0, 0, 'Drzava', 1, 3, 0, 2582.9, -952.932, 81.388, 2160.29, -1172.62, 1029.86, 300000, 5, 1, 0, 7, 246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(255, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2628.11, -1067.97, 69.716, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(256, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2627.65, -1085.15, 69.716, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(257, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2625.93, -1098.72, 69.359, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(258, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2625.94, -1112.61, 67.995, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Petlovo Brdo', 0, 0, 0),
(259, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 768.078, -1656.01, 5.609, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(260, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2683.44, -1200.06, 66.806, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(261, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2683.44, -1203.14, 66.032, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(262, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2683.42, -1207.57, 65.095, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(263, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2683.43, -1211.75, 63.962, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(264, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2683.43, -1216.33, 62.573, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(265, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2683.44, -1220.43, 61.226, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(266, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2683.44, -1224.65, 59.932, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(267, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2683.44, -1229.19, 58.646, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(268, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2683.44, -1233.46, 57.417, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(269, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2683.44, -1237.99, 56.02, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(270, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2700.21, -1237.93, 58.184, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(271, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2700.21, -1233.53, 59.581, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(272, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2700.21, -1229.12, 60.811, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(273, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2700.21, -1224.74, 62.096, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(274, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2700.21, -1220.51, 63.39, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(275, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2700.21, -1216.38, 64.739, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(276, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2700.21, -1211.84, 66.128, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(277, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2700.21, -1207.67, 67.262, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(278, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2700.21, -1203.2, 68.196, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(279, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2700.21, -1200.16, 68.97, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0);
INSERT INTO `propertys` (`iSQLID`, `iOwnerSQLID`, `iGarageSqlID`, `iOwned`, `iOnAuction`, `iOwner`, `iMoney`, `iUsage`, `iNeaktivnost`, `iEnter1`, `iEnter2`, `iEnter3`, `iExit1`, `iExit2`, `iExit3`, `iPrice`, `iLevel`, `iLocked`, `iVrsta`, `iInterior`, `iVW`, `iOruzje1`, `iOruzje2`, `iOruzje3`, `iOruzje4`, `iMunicija1`, `iMunicija2`, `iMunicija3`, `iMunicija4`, `iDrugAmmount`, `iMats`, `iAlarm`, `iDoorLevel`, `iLockLevel`, `iTime`, `iAdress`, `iRentable`, `iRentPrice`, `iRentovano`) VALUES
(280, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2663.17, -1200.12, 66.467, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(281, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2663.18, -1203.09, 65.685, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(282, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2663.18, -1207.66, 64.761, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(283, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2663.16, -1211.76, 63.624, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(284, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2663.18, -1216.39, 62.224, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(285, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2663.16, -1220.6, 60.875, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(286, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2663.18, -1224.71, 59.587, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 278, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(287, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2663.18, -1229.32, 58.3, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(288, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2663.18, -1233.54, 57.071, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(289, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2663.18, -1238.15, 55.674, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 281, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(290, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2622.22, -1237.99, 51.269, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(291, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2622.27, -1233.42, 52.678, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(292, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2622.23, -1229.2, 53.897, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(293, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2622.22, -1224.76, 55.181, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(294, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 987.496, -1624.45, 14.93, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(295, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2622.22, -1220.55, 56.475, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(296, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2622.22, -1216.31, 57.824, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(297, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2622.24, -1211.73, 59.218, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(298, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 987.522, -1704.11, 14.93, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(299, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2622.22, -1207.64, 60.346, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(300, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2622.21, -1203.06, 61.28, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(301, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2622.23, -1200.07, 62.057, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(302, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 893.758, -1635.86, 14.93, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(303, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2608.15, -1200.09, 60.992, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(304, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 865.448, -1633.85, 14.93, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(305, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2608.15, -1203.01, 60.218, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(306, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2608.16, -1207.54, 59.284, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(307, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2608.17, -1211.75, 58.153, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(308, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2608.15, -1216.34, 56.76, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(309, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 883.126, -1800.39, 13.802, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(310, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 866.871, -1798.96, 13.816, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(311, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 910.402, -1802.7, 13.801, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 303, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(312, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2608.16, -1220.58, 55.412, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(313, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 921.625, -1803.85, 13.838, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(314, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2608.17, -1224.71, 54.122, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(315, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 933.578, -1805.2, 13.843, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(316, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2608.16, -1229.21, 52.835, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(317, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 957.666, -1809.07, 13.881, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(318, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2608.15, -1233.59, 51.603, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 310, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(319, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 969.647, -1812.04, 13.884, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(320, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 980.903, -1814.81, 13.889, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(321, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2608.16, -1238.08, 50.207, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 313, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(322, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 992.591, -1817.62, 13.894, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(323, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2594.5, -1238.04, 48.564, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(324, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2594.51, -1233.54, 49.962, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(325, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2594.5, -1229.23, 51.191, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(326, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2594.5, -1224.72, 52.477, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 318, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(327, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2594.5, -1220.5, 53.765, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(328, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2594.5, -1216.3, 55.114, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(329, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2594.5, -1211.86, 56.514, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(330, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2594.5, -1207.55, 57.651, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(331, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2594.5, -1203.11, 58.576, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(332, -1, -1, 0, 0, 'Drzava', 1, 2, 0, 2594.5, -1199.96, 59.358, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Kaludjerica', 0, 0, 0),
(333, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2523.27, -1679.27, 15.497, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(334, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2514.36, -1691.56, 14.046, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(335, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2459.51, -1691.66, 13.545, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(336, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2469.6, -1646.35, 13.78, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(337, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2486.45, -1644.54, 14.077, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 329, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(338, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2498.53, -1642.25, 14.113, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 330, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(339, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2513.73, -1650.26, 14.356, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 331, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(340, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2451.97, -1641.41, 14.066, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(341, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2413.84, -1646.79, 14.012, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(342, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2409.01, -1674.94, 14.375, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 334, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(343, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2393.2, -1646.03, 13.905, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 335, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(344, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2384.63, -1675.83, 15.246, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(345, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2362.82, -1643.15, 14.352, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(346, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2368.31, -1675.34, 14.168, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(347, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2326.89, -1681.98, 14.93, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(348, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2385.46, -1711.66, 14.242, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 340, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(349, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2402.55, -1714.99, 14.133, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 341, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(350, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2326.7, -1716.7, 14.238, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(351, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2308.85, -1714.33, 14.98, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 343, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(352, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2306.97, -1679.2, 14.332, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(353, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2067.05, -1731.67, 14.207, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(354, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2066.24, -1717.12, 14.136, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(355, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2065.1, -1703.55, 14.148, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 347, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(356, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2066.74, -1656.55, 14.133, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(357, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2067.56, -1643.77, 14.136, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 349, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(358, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2067.7, -1628.84, 14.207, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(359, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2018.05, -1629.9, 14.043, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(360, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2016.54, -1641.71, 14.113, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(361, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2013.58, -1656.33, 14.136, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(362, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2018.23, -1703.2, 14.234, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(363, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2016.19, -1716.9, 14.125, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(364, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 2015.35, -1732.54, 14.234, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(365, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1980.38, -1718.97, 17.03, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(366, -1, -1, 0, 0, 'Drzava', 1, 1, 0, 1980.99, -1682.82, 17.054, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(367, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 315.756, -1769.44, 4.621, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(368, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 305.368, -1770.22, 4.538, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(369, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 295.262, -1764.12, 4.868, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 361, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(370, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 280.888, -1767.27, 4.551, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(371, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 263.9, -1765.46, 4.757, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(372, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 249.027, -1765.46, 4.757, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(373, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 227.502, -1766.3, 4.77, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 1000, 0),
(374, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 206.976, -1768.88, 4.37, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(375, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 192.778, -1769.4, 4.329, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(376, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 168.037, -1768.41, 4.486, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(377, -1, 0, 0, 0, 'Drzava', 1, 2, 0, 685.416, -1421.91, 14.775, 1345.67, -1021.83, -31.141, 350000, 3, 1, 0, 5, 369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(378, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 797.235, -1729.2, 13.547, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 370, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(379, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 794.143, -1707.57, 14.038, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(380, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 795.025, -1692.09, 14.463, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(381, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 790.927, -1661.14, 13.485, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 373, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(383, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 769.228, -1696.56, 5.155, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(384, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 769.227, -1745.86, 13.077, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(385, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 768.965, -1726.23, 13.432, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 376, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0),
(386, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1895.4, -2068.92, 15.669, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zeleni Venac', 0, 0, 0),
(387, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1873.57, -2070.74, 15.497, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 378, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zeleni Venac', 0, 0, 0),
(388, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1851.85, -2070.45, 15.481, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 379, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zeleni Venac', 0, 0, 0),
(389, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1804.12, -2124.9, 13.942, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 380, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zeleni Venac', 0, 0, 0),
(390, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1782.17, -2126.51, 14.068, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 381, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zeleni Venac', 0, 0, 0),
(391, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1781.53, -2101.45, 14.057, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zeleni Venac', 0, 0, 0),
(392, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1801.83, -2098.94, 14.021, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 383, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zeleni Venac', 0, 0, 0),
(393, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1762.41, -2101.99, 13.857, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zeleni Venac', 0, 0, 0),
(394, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1761.32, -2125.45, 14.057, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 385, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zeleni Venac', 0, 0, 0),
(395, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1734.06, -2097.98, 14.037, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zeleni Venac', 0, 0, 0),
(396, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1734.63, -2130.21, 14.021, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 387, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zeleni Venac', 0, 0, 0),
(397, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1715.07, -2125.45, 14.057, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zeleni Venac', 0, 0, 0),
(398, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1711.62, -2101.45, 14.021, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zeleni Venac', 0, 0, 0),
(399, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1684.9, -2098.16, 13.834, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Centar Grada', 0, 0, 0),
(400, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1673.83, -2122.34, 14.146, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Centar Grada', 0, 0, 0),
(401, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1667.39, -2106.94, 14.072, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 392, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Centar Grada', 0, 0, 0),
(402, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1695.38, -2125.83, 13.81, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 393, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Zeleni Venac', 0, 0, 0),
(403, -1, 0, 0, 0, 'Drzava', 1, 1, 0, -2523.91, 2238.83, 5.398, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'iloveyou<3', 0, 0, 0),
(404, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 2257.1, -1643.94, 15.808, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 395, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(405, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 2282.21, -1641.21, 15.89, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dorcol', 0, 0, 0),
(406, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1540.47, -851.31, 64.336, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Slavija', 0, 0, 0),
(407, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1468.66, -906.178, 54.836, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Slavija', 0, 0, 0),
(408, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1421.86, -886.23, 50.686, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 399, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 1000, 0),
(409, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1535.04, -800.202, 72.849, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Slavija', 0, 0, 0),
(410, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1527.86, -772.621, 80.578, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Slavija', 0, 0, 0),
(411, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1496.98, -687.892, 95.563, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 402, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dedinje', 0, 0, 0),
(412, -1, 0, 0, 0, 'Drzava', 1, 3, 0, 795.2, -506.149, 18.013, 2160.29, -1172.62, 1029.86, 1, 5, 1, 0, 7, 403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Dillimore', 0, 100, 0),
(413, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 791.501, -1753.21, 13.461, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(414, -1, 0, 0, 0, 'Drzava', 1, 1, 0, -2552.09, 2266.45, 5.476, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Bayside', 0, 0, 0),
(415, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 189.639, -1308.17, 70.249, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(416, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 154.249, -1946.62, 5.39, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(417, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 2244.5, -1637.63, 16.238, 2807.64, -1174.76, 1025.57, 500000, 5, 1, 1, 8, 408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(418, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 228.022, -1405.48, 51.609, 2324.48, -1149.55, 1050.71, 750000, 5, 1, 2, 12, 409, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(419, -1, 0, 0, 0, 'Drzava', 1, 1, 0, 1442.63, -628.831, 95.719, 225.631, 1022.48, 1084.07, 1000000, 5, 1, 3, 7, 410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Mulholland', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `punishments`
--

CREATE TABLE `punishments` (
  `p_id` int(11) NOT NULL,
  `p_user_id` int(11) NOT NULL,
  `p_admin` int(11) NOT NULL,
  `p_reason` varchar(64) NOT NULL,
  `p_jail_min` int(11) NOT NULL,
  `p_money_fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quests`
--

CREATE TABLE `quests` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `easy_quest_1` tinyint(1) DEFAULT 0,
  `easy_quest_2` tinyint(1) DEFAULT 0,
  `easy_quest_3` tinyint(1) DEFAULT 0,
  `easy_quest_4` tinyint(1) DEFAULT 0,
  `easy_quest_5` tinyint(1) DEFAULT 0,
  `easy_quest_6` tinyint(1) DEFAULT 0,
  `easy_quest_7` tinyint(1) DEFAULT 0,
  `easy_quest_8` tinyint(1) DEFAULT 0,
  `easy_quest_9` tinyint(1) DEFAULT 0,
  `easy_quest_10` tinyint(1) DEFAULT 0,
  `easy_reward_quest_1` tinyint(1) DEFAULT 0,
  `easy_reward_quest_2` tinyint(1) DEFAULT 0,
  `easy_reward_quest_3` tinyint(1) DEFAULT 0,
  `easy_reward_quest_4` tinyint(1) DEFAULT 0,
  `easy_reward_quest_5` tinyint(1) DEFAULT 0,
  `easy_reward_quest_6` tinyint(1) DEFAULT 0,
  `easy_reward_quest_7` tinyint(1) DEFAULT 0,
  `easy_reward_quest_8` tinyint(1) DEFAULT 0,
  `easy_reward_quest_9` tinyint(1) DEFAULT 0,
  `easy_reward_quest_10` tinyint(1) DEFAULT 0,
  `xmas_quest_1` smallint(5) DEFAULT 0,
  `xmas_quest_2` smallint(5) DEFAULT 0,
  `xmas_quest_3` smallint(5) DEFAULT 0,
  `xmas_quest_4` smallint(5) DEFAULT 0,
  `xmas_quest_5` smallint(5) DEFAULT 0,
  `xmas_quest_6` smallint(5) DEFAULT 0,
  `xmas_quest_7` smallint(5) DEFAULT 0,
  `xmas_quest_8` smallint(5) DEFAULT 0,
  `xmas_quest_9` smallint(5) DEFAULT 0,
  `xmas_quest_10` smallint(5) DEFAULT 0,
  `xmas_quest_11` tinyint(1) DEFAULT 0,
  `xmas_quest_12` tinyint(1) DEFAULT 0,
  `xmas_quest_13` tinyint(1) DEFAULT 0,
  `xmas_quest_14` tinyint(1) DEFAULT 0,
  `xmas_quest_15` tinyint(1) DEFAULT 0,
  `xmas_quest_16` smallint(2) DEFAULT 0,
  `xmas_quest_17` tinyint(1) DEFAULT 0,
  `xmas_quest_18` tinyint(1) DEFAULT 0,
  `xmas_quest_19` tinyint(1) DEFAULT 0,
  `xmas_quest_20` tinyint(1) DEFAULT 0,
  `xmas_quest_21` tinyint(1) DEFAULT 0,
  `xmas_quest_22` tinyint(1) DEFAULT 0,
  `xmas_quest_23` tinyint(1) DEFAULT 0,
  `xmas_quest_24` tinyint(1) DEFAULT 0,
  `xmas_quest_25` tinyint(1) DEFAULT 0,
  `xmas_quest_26` tinyint(1) DEFAULT 0,
  `xmas_quest_27` tinyint(1) DEFAULT 0,
  `xmas_quest_28` tinyint(1) DEFAULT 0,
  `xmas_quest_29` tinyint(1) DEFAULT 0,
  `xmas_quest_30` tinyint(1) DEFAULT 0,
  `xmas_quest_31` smallint(2) DEFAULT 0,
  `xmas_quest_32` tinyint(1) DEFAULT 0,
  `xmas_quest_33` tinyint(1) DEFAULT 0,
  `xmas_done_quest_1` tinyint(1) DEFAULT 0,
  `xmas_done_quest_2` tinyint(1) DEFAULT 0,
  `xmas_done_quest_3` tinyint(1) DEFAULT 0,
  `xmas_done_quest_4` tinyint(1) DEFAULT 0,
  `xmas_done_quest_5` tinyint(1) DEFAULT 0,
  `xmas_done_quest_6` tinyint(1) DEFAULT 0,
  `xmas_done_quest_7` tinyint(1) DEFAULT 0,
  `xmas_done_quest_8` tinyint(1) DEFAULT 0,
  `xmas_done_quest_9` tinyint(1) DEFAULT 0,
  `xmas_done_quest_10` tinyint(1) DEFAULT 0,
  `xmas_done_quest_16` tinyint(1) DEFAULT 0,
  `xmas_done_quest_17` tinyint(1) DEFAULT 0,
  `xmas_done_quest_31` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quests`
--

INSERT INTO `quests` (`id`, `user_id`, `easy_quest_1`, `easy_quest_2`, `easy_quest_3`, `easy_quest_4`, `easy_quest_5`, `easy_quest_6`, `easy_quest_7`, `easy_quest_8`, `easy_quest_9`, `easy_quest_10`, `easy_reward_quest_1`, `easy_reward_quest_2`, `easy_reward_quest_3`, `easy_reward_quest_4`, `easy_reward_quest_5`, `easy_reward_quest_6`, `easy_reward_quest_7`, `easy_reward_quest_8`, `easy_reward_quest_9`, `easy_reward_quest_10`, `xmas_quest_1`, `xmas_quest_2`, `xmas_quest_3`, `xmas_quest_4`, `xmas_quest_5`, `xmas_quest_6`, `xmas_quest_7`, `xmas_quest_8`, `xmas_quest_9`, `xmas_quest_10`, `xmas_quest_11`, `xmas_quest_12`, `xmas_quest_13`, `xmas_quest_14`, `xmas_quest_15`, `xmas_quest_16`, `xmas_quest_17`, `xmas_quest_18`, `xmas_quest_19`, `xmas_quest_20`, `xmas_quest_21`, `xmas_quest_22`, `xmas_quest_23`, `xmas_quest_24`, `xmas_quest_25`, `xmas_quest_26`, `xmas_quest_27`, `xmas_quest_28`, `xmas_quest_29`, `xmas_quest_30`, `xmas_quest_31`, `xmas_quest_32`, `xmas_quest_33`, `xmas_done_quest_1`, `xmas_done_quest_2`, `xmas_done_quest_3`, `xmas_done_quest_4`, `xmas_done_quest_5`, `xmas_done_quest_6`, `xmas_done_quest_7`, `xmas_done_quest_8`, `xmas_done_quest_9`, `xmas_done_quest_10`, `xmas_done_quest_16`, `xmas_done_quest_17`, `xmas_done_quest_31`) VALUES
(1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 577, 577, 577, 577, 577, 577, 577, 577, 577, 577, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 5, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 6, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 7, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 9, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 10, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 11, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 14, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 15, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 16, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 17, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 1, 1, 0, 1, 1, 2, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 12, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 18, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 19, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 20, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 507, 507, 507, 507, 507, 507, 507, 507, 507, 507, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 22, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 23, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 26, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 27, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 28, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 29, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 31, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 32, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(33, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 34, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 35, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 36, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 37, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 291, 291, 291, 291, 291, 291, 291, 291, 291, 291, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 38, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 41, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 42, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 43, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 44, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, 45, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 46, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 47, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 51, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 53, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 55, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 54, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 56, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 530, 530, 530, 530, 530, 530, 530, 530, 530, 530, 1, 1, 0, 1, 1, 2, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 59, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 62, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 65, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207, 207, 207, 207, 207, 207, 207, 207, 207, 207, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 66, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 243, 243, 243, 243, 243, 243, 243, 243, 243, 243, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 69, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 1, 1, 0, 1, 1, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, 70, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 71, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 72, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 1, 1, 0, 1, 1, 9, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 74, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 188, 188, 188, 188, 188, 188, 188, 188, 188, 188, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(75, 75, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(76, 76, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(77, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79, 79, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 80, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(81, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 83, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(85, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 86, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(87, 87, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 90, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 287, 287, 287, 287, 287, 287, 287, 287, 287, 287, 1, 0, 0, 1, 1, 7, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(92, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(95, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 96, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, 97, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 98, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, 100, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 1, 1, 0, 1, 1, 2, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(101, 101, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(102, 102, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(103, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(104, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(106, 106, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(109, 109, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(111, 111, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(112, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 114, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 404, 404, 404, 404, 404, 404, 404, 404, 404, 404, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(116, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(117, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(118, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(119, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(120, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(121, 121, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(122, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(124, 124, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(125, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(126, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(127, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(128, 128, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(129, 129, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(130, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(131, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(132, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(133, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(134, 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(135, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(136, 136, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(137, 137, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(138, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(139, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(140, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(141, 141, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(142, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(143, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(144, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(145, 145, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 192, 192, 192, 192, 192, 192, 192, 192, 192, 192, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 11, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(146, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 148, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 149, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 150, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 238, 238, 238, 238, 238, 238, 238, 238, 238, 238, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(152, 152, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(153, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(154, 154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(155, 155, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(156, 156, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(157, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(158, 158, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(159, 159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(160, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(161, 161, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(162, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(163, 163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(164, 164, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(165, 165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(166, 166, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(167, 167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(168, 168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(169, 169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(170, 170, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(171, 171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(172, 172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(173, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(174, 174, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(175, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(176, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(177, 177, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(178, 178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179, 179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180, 180, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181, 181, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(182, 182, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(183, 183, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(184, 184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(185, 185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(186, 186, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(187, 187, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 311, 311, 311, 311, 311, 311, 311, 311, 311, 311, 1, 1, 0, 1, 1, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(188, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(189, 189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(190, 190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(191, 191, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(192, 192, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(193, 193, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(194, 194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(195, 195, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(196, 196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(197, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(198, 198, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(199, 199, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(200, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(201, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(202, 202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(203, 203, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(204, 204, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(205, 205, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(206, 206, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(207, 207, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(208, 208, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(209, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(210, 210, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(211, 211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(212, 212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(213, 213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(214, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(215, 215, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(216, 216, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(217, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(218, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(219, 219, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(220, 220, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(221, 221, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(222, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(223, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(224, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(225, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(226, 226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(227, 227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(228, 228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(229, 229, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(230, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(231, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(232, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `quests` (`id`, `user_id`, `easy_quest_1`, `easy_quest_2`, `easy_quest_3`, `easy_quest_4`, `easy_quest_5`, `easy_quest_6`, `easy_quest_7`, `easy_quest_8`, `easy_quest_9`, `easy_quest_10`, `easy_reward_quest_1`, `easy_reward_quest_2`, `easy_reward_quest_3`, `easy_reward_quest_4`, `easy_reward_quest_5`, `easy_reward_quest_6`, `easy_reward_quest_7`, `easy_reward_quest_8`, `easy_reward_quest_9`, `easy_reward_quest_10`, `xmas_quest_1`, `xmas_quest_2`, `xmas_quest_3`, `xmas_quest_4`, `xmas_quest_5`, `xmas_quest_6`, `xmas_quest_7`, `xmas_quest_8`, `xmas_quest_9`, `xmas_quest_10`, `xmas_quest_11`, `xmas_quest_12`, `xmas_quest_13`, `xmas_quest_14`, `xmas_quest_15`, `xmas_quest_16`, `xmas_quest_17`, `xmas_quest_18`, `xmas_quest_19`, `xmas_quest_20`, `xmas_quest_21`, `xmas_quest_22`, `xmas_quest_23`, `xmas_quest_24`, `xmas_quest_25`, `xmas_quest_26`, `xmas_quest_27`, `xmas_quest_28`, `xmas_quest_29`, `xmas_quest_30`, `xmas_quest_31`, `xmas_quest_32`, `xmas_quest_33`, `xmas_done_quest_1`, `xmas_done_quest_2`, `xmas_done_quest_3`, `xmas_done_quest_4`, `xmas_done_quest_5`, `xmas_done_quest_6`, `xmas_done_quest_7`, `xmas_done_quest_8`, `xmas_done_quest_9`, `xmas_done_quest_10`, `xmas_done_quest_16`, `xmas_done_quest_17`, `xmas_done_quest_31`) VALUES
(233, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(234, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(235, 235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(236, 236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(237, 237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(238, 238, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(239, 239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(240, 240, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(241, 241, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(242, 242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(243, 243, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 143, 143, 143, 143, 143, 143, 143, 143, 143, 143, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(244, 244, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, 256, 256, 256, 256, 256, 256, 256, 256, 256, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(245, 245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(246, 246, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 309, 309, 309, 309, 309, 309, 309, 309, 309, 309, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(247, 247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(248, 249, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(249, 248, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(250, 250, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(251, 251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(252, 252, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 153, 153, 153, 153, 153, 153, 153, 153, 153, 153, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(253, 253, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(254, 254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255, 255, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(256, 256, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(257, 257, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(258, 258, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(259, 259, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(260, 261, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(261, 260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(262, 262, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(263, 263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(264, 264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(265, 265, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(266, 266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(267, 267, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(268, 268, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(269, 269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(270, 270, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 142, 142, 142, 142, 142, 142, 142, 142, 142, 142, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(271, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(272, 272, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(273, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(274, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(275, 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(276, 276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(277, 277, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(278, 278, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(279, 279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(280, 280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(281, 281, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(282, 282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(283, 283, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(284, 284, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(285, 285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(286, 286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(287, 287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(288, 288, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(289, 289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(290, 290, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(291, 291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(292, 292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(293, 293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(294, 294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295, 295, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 162, 162, 162, 162, 162, 162, 162, 162, 162, 162, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(296, 296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(297, 297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 113, 113, 113, 113, 113, 113, 113, 113, 113, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(298, 298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(299, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(300, 300, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(301, 301, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(302, 302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(303, 303, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(304, 304, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(305, 305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(306, 306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(307, 307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(308, 308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(309, 309, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(310, 310, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1000, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(311, 311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(312, 312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(313, 313, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(314, 314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(315, 315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(316, 316, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 173, 173, 173, 173, 173, 173, 173, 173, 173, 173, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(317, 317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(318, 318, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(319, 319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(320, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(321, 321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(322, 322, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(323, 323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(324, 324, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(325, 325, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 170, 170, 170, 170, 170, 170, 170, 170, 170, 170, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(326, 326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(327, 327, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(328, 328, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(329, 329, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(330, 330, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(331, 331, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(332, 332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(333, 333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(334, 334, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(335, 335, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(336, 336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(337, 337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(338, 338, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(339, 339, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(340, 340, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(341, 341, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(342, 342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(343, 343, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(344, 344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(345, 345, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(346, 346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(347, 347, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(348, 348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(349, 349, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(350, 350, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(351, 351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(352, 352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(353, 353, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(354, 354, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(355, 355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(356, 356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(357, 357, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(358, 358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(359, 359, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(360, 360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(361, 361, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(362, 362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(363, 363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(364, 364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(365, 365, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(366, 366, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(367, 367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(368, 368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(369, 369, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(370, 370, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(371, 371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(372, 372, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(373, 373, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(374, 374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(375, 375, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(376, 376, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(377, 377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(378, 378, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(379, 379, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(380, 380, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(381, 381, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(382, 382, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(383, 383, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(384, 384, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(385, 385, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(386, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(387, 387, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(388, 388, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(389, 389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(390, 390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(391, 391, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(392, 392, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(393, 393, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(394, 394, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(395, 395, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 268, 268, 268, 268, 268, 268, 268, 268, 268, 268, 1, 1, 0, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(396, 396, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(397, 397, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(398, 398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(399, 399, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(400, 400, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(401, 401, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(402, 402, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(403, 403, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(404, 404, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(405, 405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(406, 406, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(407, 407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(408, 408, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(409, 409, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(410, 410, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(411, 411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(412, 412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(413, 413, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(414, 414, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(415, 415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(416, 416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(417, 417, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(418, 418, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(419, 419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(420, 420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 421, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(422, 422, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(423, 423, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(424, 424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(425, 425, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(426, 426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(427, 427, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(428, 428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(429, 429, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(430, 430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(431, 431, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(432, 432, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(433, 433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(434, 434, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 435, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(436, 436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(437, 437, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(438, 438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(439, 439, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 1, 1, 0, 1, 1, 7, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(440, 440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(441, 441, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(442, 442, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(443, 443, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(444, 444, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(445, 445, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(446, 446, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 0, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(447, 447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(448, 448, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(449, 449, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(450, 450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(451, 451, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(452, 452, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(453, 453, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(454, 454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(455, 455, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(456, 456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(457, 457, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 297, 297, 297, 297, 297, 297, 297, 297, 297, 297, 1, 1, 0, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(458, 458, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(459, 459, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(460, 460, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(461, 461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(462, 462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(463, 463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `quests` (`id`, `user_id`, `easy_quest_1`, `easy_quest_2`, `easy_quest_3`, `easy_quest_4`, `easy_quest_5`, `easy_quest_6`, `easy_quest_7`, `easy_quest_8`, `easy_quest_9`, `easy_quest_10`, `easy_reward_quest_1`, `easy_reward_quest_2`, `easy_reward_quest_3`, `easy_reward_quest_4`, `easy_reward_quest_5`, `easy_reward_quest_6`, `easy_reward_quest_7`, `easy_reward_quest_8`, `easy_reward_quest_9`, `easy_reward_quest_10`, `xmas_quest_1`, `xmas_quest_2`, `xmas_quest_3`, `xmas_quest_4`, `xmas_quest_5`, `xmas_quest_6`, `xmas_quest_7`, `xmas_quest_8`, `xmas_quest_9`, `xmas_quest_10`, `xmas_quest_11`, `xmas_quest_12`, `xmas_quest_13`, `xmas_quest_14`, `xmas_quest_15`, `xmas_quest_16`, `xmas_quest_17`, `xmas_quest_18`, `xmas_quest_19`, `xmas_quest_20`, `xmas_quest_21`, `xmas_quest_22`, `xmas_quest_23`, `xmas_quest_24`, `xmas_quest_25`, `xmas_quest_26`, `xmas_quest_27`, `xmas_quest_28`, `xmas_quest_29`, `xmas_quest_30`, `xmas_quest_31`, `xmas_quest_32`, `xmas_quest_33`, `xmas_done_quest_1`, `xmas_done_quest_2`, `xmas_done_quest_3`, `xmas_done_quest_4`, `xmas_done_quest_5`, `xmas_done_quest_6`, `xmas_done_quest_7`, `xmas_done_quest_8`, `xmas_done_quest_9`, `xmas_done_quest_10`, `xmas_done_quest_16`, `xmas_done_quest_17`, `xmas_done_quest_31`) VALUES
(464, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(465, 465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(466, 466, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(467, 467, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(468, 468, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(469, 469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(470, 470, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(471, 471, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(472, 472, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(473, 473, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(474, 474, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(475, 475, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(476, 476, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(477, 477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(478, 478, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(479, 479, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(480, 480, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(481, 481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(482, 482, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(483, 483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(484, 484, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(485, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(486, 486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(487, 487, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(488, 488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(489, 489, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(490, 490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(491, 491, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(492, 492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(493, 493, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(494, 494, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(495, 495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(496, 496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(497, 497, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(498, 498, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(499, 499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(500, 500, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(501, 501, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(502, 502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(504, 504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(506, 506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(507, 507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(508, 508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(509, 509, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(510, 510, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(511, 511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(512, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(513, 513, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(514, 514, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(515, 515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(516, 516, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(517, 517, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(518, 518, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(519, 519, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(520, 520, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(521, 521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(522, 522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(523, 523, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(524, 524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(525, 525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(526, 526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(527, 527, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(528, 528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(529, 529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(530, 530, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(531, 531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(532, 532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(533, 533, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(534, 534, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(535, 535, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(536, 536, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(537, 537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(538, 538, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(539, 539, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(540, 540, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(541, 541, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(542, 542, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(543, 543, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(544, 544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(545, 545, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(546, 546, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(547, 547, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(548, 548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(549, 549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(550, 550, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(551, 551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(552, 552, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(553, 553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(554, 554, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(555, 555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(556, 556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(557, 557, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(558, 558, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(559, 559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(560, 560, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(561, 561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(562, 562, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(563, 563, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(564, 564, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(565, 565, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(566, 566, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(567, 567, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(568, 568, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(569, 569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(570, 570, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(571, 571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(572, 572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `vrSQLID` smallint(6) NOT NULL,
  `vrLiP_Pos_X` float NOT NULL,
  `vrLiP_Pos_Y` float NOT NULL,
  `vrLiP_Pos_Z` float NOT NULL,
  `vrSpawn_Pos_X` float NOT NULL,
  `vrSpawn_Pos_Y` float NOT NULL,
  `vrSpawn_Pos_Z` float NOT NULL,
  `vrSpawn_Pos_A` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tiki`
--

CREATE TABLE `tiki` (
  `tID` smallint(6) NOT NULL,
  `tPosX` float NOT NULL,
  `tPosY` float NOT NULL,
  `tPosZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` mediumint(7) NOT NULL,
  `p_name` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `isonline` tinyint(1) DEFAULT 0,
  `user_ip` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `registered` tinyint(1) DEFAULT 0,
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `level` smallint(5) DEFAULT 1,
  `exp` smallint(6) DEFAULT 0,
  `xOnlineSati` smallint(6) DEFAULT 0,
  `money` int(11) DEFAULT 0,
  `xBRacun` int(11) DEFAULT 0,
  `xZlato` mediumint(9) DEFAULT 0,
  `xDiamond` mediumint(9) DEFAULT 0,
  `xPlatiRacun` mediumint(9) DEFAULT 0,
  `payday` tinyint(2) DEFAULT 0,
  `upgrades` tinyint(3) DEFAULT 0,
  `admin_lvl` tinyint(1) DEFAULT 0,
  `admin_code` int(4) DEFAULT 0,
  `xSpecAdmin` tinyint(1) DEFAULT 0,
  `helper_level` tinyint(1) DEFAULT 0,
  `vip_level` tinyint(1) DEFAULT 0,
  `promoter_level` tinyint(1) NOT NULL DEFAULT 0,
  `spec_rank` tinyint(2) DEFAULT 0,
  `staff_min` smallint(6) DEFAULT 0,
  `vip_time` float DEFAULT 0,
  `skin_id` smallint(5) DEFAULT 0,
  `spawn` tinyint(1) DEFAULT 0,
  `lider` tinyint(2) NOT NULL DEFAULT 0,
  `clan` tinyint(2) NOT NULL DEFAULT 0,
  `rank` tinyint(2) NOT NULL DEFAULT 0,
  `materials` mediumint(9) DEFAULT 0,
  `job_id` tinyint(2) DEFAULT 0,
  `fight_style` tinyint(1) DEFAULT 0,
  `spawn_hp` float DEFAULT 0,
  `vehicle_license` tinyint(1) DEFAULT 0,
  `boat_license` tinyint(1) DEFAULT 0,
  `air_license` tinyint(1) DEFAULT 0,
  `gun_license` tinyint(1) DEFAULT 0,
  `toolkit` tinyint(1) DEFAULT 0,
  `property_id_1` smallint(4) DEFAULT -1,
  `property_id_2` smallint(4) DEFAULT -1,
  `property_id_3` smallint(4) DEFAULT -1,
  `bussines_id` smallint(4) DEFAULT 0,
  `field_id` smallint(4) DEFAULT -1,
  `garage_id` smallint(4) DEFAULT 0,
  `xTelefon` tinyint(1) NOT NULL DEFAULT 0,
  `phone_number` mediumint(9) DEFAULT 0,
  `phone_credit` mediumint(9) DEFAULT 0,
  `strenght` smallint(3) DEFAULT 0,
  `jail_type` tinyint(1) DEFAULT 0,
  `jail_time` smallint(4) DEFAULT 0,
  `wanted_level` tinyint(2) DEFAULT 0,
  `arrested` smallint(6) DEFAULT 0,
  `xPDUhapsio` mediumint(9) NOT NULL DEFAULT 0,
  `xPDStatsTicket` mediumint(9) NOT NULL DEFAULT 0,
  `xPDStatsTicketMoney` mediumint(9) NOT NULL DEFAULT 0,
  `xTakenWeps` mediumint(9) NOT NULL DEFAULT 0,
  `xTakenDrugs` mediumint(9) NOT NULL DEFAULT 0,
  `credit_rest` mediumint(9) DEFAULT 0,
  `credit_amount` mediumint(9) DEFAULT 0,
  `credit_installment` smallint(5) DEFAULT 0,
  `warn` tinyint(1) DEFAULT 0,
  `mute` int(11) DEFAULT 0,
  `mask_id` mediumint(9) DEFAULT 0,
  `rp_learn` tinyint(1) DEFAULT 0,
  `marker_p1` float DEFAULT 0,
  `marker_p2` float DEFAULT 0,
  `marker_p3` float DEFAULT 0,
  `gps_level` tinyint(1) DEFAULT 1,
  `org_contract` smallint(5) DEFAULT 0,
  `hitman_price` mediumint(9) DEFAULT 0,
  `country` tinyint(2) DEFAULT 0,
  `email` varchar(128) CHARACTER SET utf8 NOT NULL,
  `org_punishment` tinyint(3) DEFAULT 0,
  `offpjail` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpprison` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpmute` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `married` tinyint(1) DEFAULT 0,
  `married_to` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `xBundeve` smallint(6) NOT NULL DEFAULT 0,
  `xSemeBundeve` mediumint(9) DEFAULT 0,
  `lotto_number` smallint(3) DEFAULT 0,
  `lotto_money` mediumint(9) DEFAULT 0,
  `vehicle_slots` smallint(4) DEFAULT 1,
  `rob_time` tinyint(3) DEFAULT 0,
  `leave_jail` tinyint(1) DEFAULT 0,
  `bail_price` int(11) DEFAULT 0,
  `hangar_time` tinyint(3) DEFAULT 0,
  `event_first_place` smallint(5) DEFAULT 0,
  `event_second_place` smallint(5) DEFAULT 0,
  `event_third_place` smallint(5) DEFAULT 0,
  `dm_event_kills` mediumint(9) DEFAULT 0,
  `cstdm_score` mediumint(9) DEFAULT 0,
  `rent_id` smallint(4) DEFAULT -1,
  `reserve_keys` int(11) DEFAULT -1,
  `watch` smallint(5) DEFAULT 0,
  `dbo` tinyint(1) DEFAULT 0,
  `dbo_color` tinyint(2) DEFAULT 0,
  `rp_poen` smallint(3) DEFAULT 0,
  `upp_poen` smallint(3) DEFAULT 0,
  `xUPPCoin` tinyint(3) NOT NULL DEFAULT 0,
  `reaction_poen` smallint(3) DEFAULT 0,
  `taking_time` tinyint(3) DEFAULT 0,
  `gift` smallint(6) DEFAULT 0,
  `xPaketic` tinyint(1) DEFAULT 0,
  `gate_key` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `mats_smugl` tinyint(1) DEFAULT 0,
  `robp_time` tinyint(3) DEFAULT 0,
  `law_appeals` smallint(4) DEFAULT 0,
  `law_skill` smallint(4) DEFAULT 0,
  `xAGMStats` smallint(8) NOT NULL DEFAULT 0,
  `xTBan` smallint(6) NOT NULL DEFAULT 0,
  `xTWarn` smallint(6) NOT NULL DEFAULT 0,
  `xTKick` smallint(6) NOT NULL DEFAULT 0,
  `xTCharge` smallint(6) NOT NULL DEFAULT 0,
  `xTJail` smallint(6) NOT NULL DEFAULT 0,
  `xTUnjail` smallint(6) NOT NULL DEFAULT 0,
  `xTUnwarn` smallint(6) NOT NULL DEFAULT 0,
  `xTUnban` smallint(6) NOT NULL DEFAULT 0,
  `xTPM` smallint(6) NOT NULL DEFAULT 0,
  `xReputation` smallint(5) NOT NULL DEFAULT 0,
  `xBoombox` tinyint(1) NOT NULL DEFAULT 0,
  `xTorba_Pizza` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Sok` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Pivo` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Hambi` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Piletina` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Laptop` tinyint(1) NOT NULL DEFAULT 0,
  `xTorba_Dinamit` tinyint(1) NOT NULL DEFAULT 0,
  `xTorba_Droga` mediumint(9) NOT NULL DEFAULT 0,
  `xTorba_Kantica` mediumint(9) NOT NULL DEFAULT 0,
  `xTorba_Oruzje_1` smallint(3) NOT NULL DEFAULT 0,
  `xTorba_Oruzje_2` smallint(3) NOT NULL DEFAULT 0,
  `xTorba_Oruzje_3` smallint(3) NOT NULL DEFAULT 0,
  `xTorba_OruzjeM_1` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_OruzjeM_2` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_OruzjeM_3` smallint(6) NOT NULL DEFAULT 0,
  `xTdStyle` tinyint(1) NOT NULL DEFAULT 0,
  `xTDColor` tinyint(2) DEFAULT 0,
  `xFirework` tinyint(2) DEFAULT 0,
  `xAktivnaIgra` tinyint(2) NOT NULL DEFAULT 0,
  `xVIPWarn` tinyint(1) DEFAULT 0,
  `xOglasWarn` tinyint(1) DEFAULT 0,
  `xTogLabel` tinyint(1) DEFAULT 0,
  `last_login` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `reg_date` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_clothes`
--

CREATE TABLE `user_clothes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cloth_slot_1` int(11) DEFAULT -1,
  `cloth_slot_1_p1` float DEFAULT 0,
  `cloth_slot_1_p2` float DEFAULT 0,
  `cloth_slot_1_p3` float DEFAULT 0,
  `cloth_slot_1_p4` float DEFAULT 0,
  `cloth_slot_1_p5` float DEFAULT 0,
  `cloth_slot_1_p6` float DEFAULT 0,
  `cloth_slot_1_p7` float DEFAULT 0,
  `cloth_slot_1_p8` float DEFAULT 0,
  `cloth_slot_1_p9` float DEFAULT 0,
  `cloth_slot_2` int(11) DEFAULT -1,
  `cloth_slot_2_p1` float DEFAULT 0,
  `cloth_slot_2_p2` float DEFAULT 0,
  `cloth_slot_2_p3` float DEFAULT 0,
  `cloth_slot_2_p4` float DEFAULT 0,
  `cloth_slot_2_p5` float DEFAULT 0,
  `cloth_slot_2_p6` float DEFAULT 0,
  `cloth_slot_2_p7` float DEFAULT 0,
  `cloth_slot_2_p8` float DEFAULT 0,
  `cloth_slot_2_p9` float DEFAULT 0,
  `cloth_slot_3` int(11) DEFAULT -1,
  `cloth_slot_3_p1` float DEFAULT 0,
  `cloth_slot_3_p2` float DEFAULT 0,
  `cloth_slot_3_p3` float DEFAULT 0,
  `cloth_slot_3_p4` float DEFAULT 0,
  `cloth_slot_3_p5` float DEFAULT 0,
  `cloth_slot_3_p6` float DEFAULT 0,
  `cloth_slot_3_p7` float DEFAULT 0,
  `cloth_slot_3_p8` float DEFAULT 0,
  `cloth_slot_3_p9` float DEFAULT 0,
  `cloth_slot_4` int(11) DEFAULT -1,
  `cloth_slot_4_p1` float DEFAULT 0,
  `cloth_slot_4_p2` float DEFAULT 0,
  `cloth_slot_4_p3` float DEFAULT 0,
  `cloth_slot_4_p4` float DEFAULT 0,
  `cloth_slot_4_p5` float DEFAULT 0,
  `cloth_slot_4_p6` float DEFAULT 0,
  `cloth_slot_4_p7` float DEFAULT NULL,
  `cloth_slot_4_p8` float DEFAULT 0,
  `cloth_slot_4_p9` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `veh_id` int(11) NOT NULL,
  `owner_sqlID` int(11) DEFAULT 0,
  `v_price` int(11) NOT NULL,
  `v_locked` tinyint(1) DEFAULT 0,
  `v_pos_x` float NOT NULL,
  `v_pos_y` float NOT NULL,
  `v_pos_z` float NOT NULL,
  `v_pos_a` float NOT NULL,
  `v_virtualw` int(11) NOT NULL,
  `v_interior` int(11) NOT NULL,
  `v_usage` smallint(2) NOT NULL,
  `v_organization` smallint(2) DEFAULT 0,
  `v_job` smallint(2) DEFAULT -1,
  `v_fuel_station` smallint(2) DEFAULT -1,
  `v_color_1` int(11) NOT NULL,
  `v_color_2` int(11) NOT NULL,
  `v_model` int(11) NOT NULL,
  `v_teh` smallint(2) DEFAULT 0,
  `v_reg` smallint(2) DEFAULT 0,
  `v_reg_vreme` smallint(3) DEFAULT 0,
  `v_tablice` varchar(24) COLLATE utf8_unicode_ci DEFAULT 'NEMA',
  `v_gps` smallint(2) DEFAULT 0,
  `v_insurance` smallint(2) DEFAULT 0,
  `v_lock` smallint(2) DEFAULT 0,
  `v_alarm` smallint(2) DEFAULT 0,
  `v_fuel` smallint(2) DEFAULT 40,
  `v_fuel_type` smallint(2) DEFAULT 0,
  `v_neon` int(11) DEFAULT 0,
  `v_tuned` tinyint(1) DEFAULT 0,
  `v_imobilizator` int(11) DEFAULT 0,
  `v_spoiler` int(11) DEFAULT 0,
  `v_hood` int(11) DEFAULT 0,
  `v_roof` int(11) DEFAULT 0,
  `v_skirt` int(11) DEFAULT 0,
  `v_lamps` int(11) DEFAULT 0,
  `v_nitro` int(11) DEFAULT 0,
  `v_exhaust` int(11) DEFAULT 0,
  `v_wheels` int(11) DEFAULT 0,
  `v_stereo` int(11) DEFAULT 0,
  `v_hydraulics` int(11) DEFAULT 0,
  `v_front_bumper` int(11) DEFAULT 0,
  `v_rear_bumper` int(11) DEFAULT 0,
  `v_vents` int(11) DEFAULT 0,
  `v_paintjob` int(11) DEFAULT 255,
  `v_drug_ammount` int(11) DEFAULT 0,
  `v_mats` int(11) DEFAULT 0,
  `v_weapon_melee` int(11) DEFAULT 0,
  `v_weapon_slot_1` int(11) DEFAULT 0,
  `v_weapon_ammo_1` int(11) DEFAULT 0,
  `v_weapon_slot_2` int(11) DEFAULT 0,
  `v_weapon_ammo_2` int(11) DEFAULT 0,
  `v_gajbica_slot_1` int(11) DEFAULT -1,
  `v_gajbica_slot_2` int(11) DEFAULT -1,
  `v_gajbica_slot_3` int(11) DEFAULT -1,
  `v_gajbica_slot_4` int(11) DEFAULT -1,
  `v_gajbica_slot_5` int(11) DEFAULT -1,
  `v_gajbica_kolicina_1` int(11) DEFAULT 0,
  `v_gajbica_kolicina_2` int(11) DEFAULT 0,
  `v_gajbica_kolicina_3` int(11) DEFAULT 0,
  `v_gajbica_kolicina_4` int(11) DEFAULT 0,
  `v_gajbica_kolicina_5` int(11) DEFAULT 0,
  `v_neaktivnost` int(11) DEFAULT 0,
  `v_kilometri` int(11) DEFAULT 0,
  `v_metri` int(11) DEFAULT 0,
  `vLastSpawn` varchar(44) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`veh_id`, `owner_sqlID`, `v_price`, `v_locked`, `v_pos_x`, `v_pos_y`, `v_pos_z`, `v_pos_a`, `v_virtualw`, `v_interior`, `v_usage`, `v_organization`, `v_job`, `v_fuel_station`, `v_color_1`, `v_color_2`, `v_model`, `v_teh`, `v_reg`, `v_reg_vreme`, `v_tablice`, `v_gps`, `v_insurance`, `v_lock`, `v_alarm`, `v_fuel`, `v_fuel_type`, `v_neon`, `v_tuned`, `v_imobilizator`, `v_spoiler`, `v_hood`, `v_roof`, `v_skirt`, `v_lamps`, `v_nitro`, `v_exhaust`, `v_wheels`, `v_stereo`, `v_hydraulics`, `v_front_bumper`, `v_rear_bumper`, `v_vents`, `v_paintjob`, `v_drug_ammount`, `v_mats`, `v_weapon_melee`, `v_weapon_slot_1`, `v_weapon_ammo_1`, `v_weapon_slot_2`, `v_weapon_ammo_2`, `v_gajbica_slot_1`, `v_gajbica_slot_2`, `v_gajbica_slot_3`, `v_gajbica_slot_4`, `v_gajbica_slot_5`, `v_gajbica_kolicina_1`, `v_gajbica_kolicina_2`, `v_gajbica_kolicina_3`, `v_gajbica_kolicina_4`, `v_gajbica_kolicina_5`, `v_neaktivnost`, `v_kilometri`, `v_metri`, `vLastSpawn`) VALUES
(1, 0, 800000, 0, 2497.21, -1686.71, 13.141, 5.971, 0, 0, 2, 3, -1, -1, 234, 234, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(2, 0, 800000, 0, 2498.67, -1686.7, 13.151, 12.188, 0, 0, 2, 3, -1, -1, 234, 234, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(3, 0, 800000, 0, 2500.15, -1686.55, 13.161, 10.507, 0, 0, 2, 3, -1, -1, 234, 234, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(4, 0, 250000, 0, 2505.7, -1694.73, 13.679, 0.669, 0, 0, 2, 3, -1, -1, 234, 234, 482, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(5, 0, 250000, 0, 2473.28, -1692.05, 13.637, 359.772, 0, 0, 2, 3, -1, -1, 234, 234, 482, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(6, 0, 225000, 0, 2489.42, -1682.56, 13.204, 90.159, 0, 0, 2, 3, -1, -1, 234, 234, 567, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(7, 0, 225000, 0, 2508.23, -1666.51, 13.264, 12.064, 0, 0, 2, 3, -1, -1, 234, 234, 567, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(8, 0, 205000, 0, 2502.21, -1657.27, 13.191, 57.673, 0, 0, 2, 3, -1, -1, 234, 234, 492, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(9, 0, 205000, 0, 2470.04, -1670.21, 13.097, 10.345, 0, 0, 2, 3, -1, -1, 234, 234, 492, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(10, 0, 100000, 0, 2480.64, -1655.16, 13.058, 89.861, 0, 0, 2, 3, -1, -1, 234, 234, 466, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(11, 0, 100000, 0, 2506.31, -1676.49, 13.12, 325.802, 0, 0, 2, 3, -1, -1, 234, 234, 466, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(12, 0, 250000, 0, 2018.54, -1050.99, 24.798, 339.451, 0, 0, 2, 4, -1, -1, 147, 147, 482, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(13, 0, 250000, 0, 2010.36, -1047.91, 24.776, 339.483, 0, 0, 2, 4, -1, -1, 147, 147, 482, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(14, 0, 205000, 0, 2006.22, -1046.37, 24.425, 339.633, 0, 0, 2, 4, -1, -1, 147, 147, 566, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(15, 0, 205000, 0, 2001.97, -1045.09, 24.407, 340.348, 0, 0, 2, 4, -1, -1, 147, 147, 566, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(16, 0, 225000, 0, 1997.95, -1043.47, 24.48, 339.395, 0, 0, 2, 4, -1, -1, 147, 147, 567, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(17, 0, 800000, 0, 2003.95, -1036.89, 24.395, 168.493, 0, 0, 2, 4, -1, -1, 147, 147, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(18, 0, 800000, 0, 2005.29, -1037.03, 24.403, 170.945, 0, 0, 2, 4, -1, -1, 147, 147, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(19, 0, 800000, 0, 2006.9, -1037.24, 24.412, 171.34, 0, 0, 2, 4, -1, -1, 147, 147, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(21, 0, 1700000, 0, 998.743, -1071.55, 29.181, 181.507, 0, 0, 2, 7, -1, -1, 6, 6, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(22, 0, 1700000, 0, 1004.39, -1071.67, 29.191, 178.272, 0, 0, 2, 7, -1, -1, 6, 6, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(23, 0, 310000, 0, 1008.43, -1071.67, 29.361, 179.597, 0, 0, 2, 7, -1, -1, 6, 6, 445, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(24, 0, 310000, 0, 1013.55, -1071.85, 29.356, 179.576, 0, 0, 2, 7, -1, -1, 6, 6, 445, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(25, 0, 420000, 0, 1018.82, -1071.75, 29.341, 179.37, 0, 0, 2, 7, -1, -1, 6, 6, 540, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(26, 0, 420000, 0, 1024.54, -1072.13, 29.347, 178.464, 0, 0, 2, 7, -1, -1, 6, 6, 540, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(27, 0, 250000, 0, 1029.86, -1071.6, 29.606, 180.063, 0, 0, 2, 7, -1, -1, 6, 6, 482, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(28, 0, 250000, 0, 1034.09, -1071.75, 29.603, 180.497, 0, 0, 2, 7, -1, -1, 6, 6, 482, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(29, 0, 950000, 0, 1017.26, -1089.14, 24.005, 176.049, 0, 0, 2, 7, -1, -1, 6, 6, 487, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(30, 0, 650000, 0, 1036.55, -1094.5, 23.404, 108.312, 0, 0, 2, 7, -1, -1, 6, 6, 461, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(31, 0, 650000, 0, 1036.68, -1091.4, 23.404, 117.351, 0, 0, 2, 7, -1, -1, 6, 6, 461, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(32, 0, 650000, 0, 1037.09, -1088.69, 23.413, 120.016, 0, 0, 2, 7, -1, -1, 6, 6, 461, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(34, 0, 1700000, 0, 74.946, -1752.72, 2.928, 0, 0, 0, 2, 8, -1, -1, 77, 77, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(35, 0, 250000, 0, 78.654, -1752.68, 3.344, 359.735, 0, 0, 2, 8, -1, -1, 77, 77, 482, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(36, 0, 1700000, 0, 70.53, -1736.08, 2.929, 358.675, 0, 0, 2, 8, -1, -1, 77, 77, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(37, 0, 420000, 0, 79.292, -1735.55, 3.084, 359.341, 0, 0, 2, 8, -1, -1, 77, 77, 540, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(38, 0, 250000, 0, 71.451, -1752.63, 3.346, 0.074, 0, 0, 2, 8, -1, -1, 77, 77, 482, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(40, 0, 650000, 0, 67.919, -1744.93, 2.806, 310.273, 0, 0, 2, 8, -1, -1, 77, 77, 461, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(41, 0, 650000, 0, 66.631, -1743.62, 2.808, 299.631, 0, 0, 2, 8, -1, -1, 77, 77, 461, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(42, 0, 650000, 0, 65.677, -1742.29, 2.809, 302.95, 0, 0, 2, 8, -1, -1, 77, 77, 461, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(43, 0, 950000, 0, 100.817, -1723.27, 25.749, 324.309, 0, 0, 2, 8, -1, -1, 77, 77, 487, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_salon`
--

CREATE TABLE `vehicle_salon` (
  `salon_id` int(11) NOT NULL,
  `s_bussines_id` int(11) NOT NULL,
  `veh_buyed_pos_x` float NOT NULL,
  `veh_buyed_pos_y` float NOT NULL,
  `veh_buyed_pos_z` float NOT NULL,
  `veh_buyed_pos_a` float NOT NULL,
  `pickup_pos_x` float NOT NULL,
  `pickup_pos_y` float NOT NULL,
  `pickup_pos_z` float NOT NULL,
  `s_interior` int(11) NOT NULL DEFAULT 0,
  `s_virtualw` int(11) NOT NULL DEFAULT 0,
  `veh_model_1` int(11) DEFAULT 0,
  `veh_model_2` int(11) DEFAULT 0,
  `veh_model_3` int(11) DEFAULT 0,
  `veh_model_4` int(11) DEFAULT 0,
  `veh_model_5` int(11) DEFAULT 0,
  `veh_model_6` int(11) DEFAULT 0,
  `veh_model_7` int(11) DEFAULT 0,
  `veh_model_8` int(11) DEFAULT 0,
  `veh_model_9` int(11) DEFAULT 0,
  `veh_model_10` int(11) DEFAULT 0,
  `veh_model_11` int(11) DEFAULT 0,
  `veh_model_12` int(11) DEFAULT 0,
  `veh_model_13` int(11) DEFAULT 0,
  `veh_model_14` int(11) DEFAULT 0,
  `veh_model_15` int(11) DEFAULT 0,
  `veh_model_16` int(11) DEFAULT 0,
  `veh_amount_1` int(11) DEFAULT 0,
  `veh_amount_2` int(11) DEFAULT 0,
  `veh_amount_3` int(11) DEFAULT 0,
  `veh_amount_4` int(11) DEFAULT 0,
  `veh_amount_5` int(11) DEFAULT 0,
  `veh_amount_6` int(11) DEFAULT 0,
  `veh_amount_7` int(11) DEFAULT 0,
  `veh_amount_8` int(11) DEFAULT 0,
  `veh_amount_9` int(11) DEFAULT 0,
  `veh_amount_10` int(11) DEFAULT 0,
  `veh_amount_11` int(11) DEFAULT 0,
  `veh_amount_12` int(11) DEFAULT 0,
  `veh_amount_13` int(11) DEFAULT 0,
  `veh_amount_14` int(11) DEFAULT 0,
  `veh_amount_15` int(11) DEFAULT 0,
  `veh_amount_16` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xmas_presents`
--

CREATE TABLE `xmas_presents` (
  `presSQLID` smallint(6) NOT NULL,
  `presTaken` tinyint(1) NOT NULL DEFAULT 0,
  `presPlaced` tinyint(1) NOT NULL DEFAULT 1,
  `presPos1` float NOT NULL,
  `presPos2` float NOT NULL,
  `presPos3` float NOT NULL,
  `presPos4` float NOT NULL,
  `presPos5` float NOT NULL,
  `presPos6` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xmas_trees`
--

CREATE TABLE `xmas_trees` (
  `ctSQLID` smallint(6) NOT NULL,
  `ctPlaced` tinyint(1) NOT NULL DEFAULT 1,
  `ctPos1` float NOT NULL,
  `ctPos2` float NOT NULL,
  `ctPos3` float NOT NULL,
  `ctPos4` float NOT NULL,
  `ctPos5` float NOT NULL,
  `ctPos6` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_stats`
--

CREATE TABLE `_stats` (
  `ssSQLID` tinyint(1) NOT NULL,
  `RegistrovanihKorisnika` mediumint(9) NOT NULL DEFAULT 0,
  `BanovanihKorisnika` mediumint(9) NOT NULL DEFAULT 0,
  `KikovanihKorisnika` mediumint(9) NOT NULL DEFAULT 0,
  `BrojWarnova` mediumint(9) NOT NULL DEFAULT 0,
  `BrojPosetaServeru` mediumint(9) NOT NULL DEFAULT 0,
  `HappyHours` tinyint(1) NOT NULL DEFAULT 0,
  `HappyHoursLvl` tinyint(2) NOT NULL DEFAULT 0,
  `HappyJobs` tinyint(1) NOT NULL DEFAULT 0,
  `PocetniLevel` tinyint(1) NOT NULL DEFAULT 1,
  `PocetniNovaca` mediumint(9) NOT NULL DEFAULT 35000,
  `BankaNovac` mediumint(7) NOT NULL DEFAULT 0,
  `KupovinaVozila` tinyint(4) NOT NULL DEFAULT 1,
  `Report` tinyint(1) NOT NULL DEFAULT 1,
  `Pitanja` tinyint(1) NOT NULL DEFAULT 1,
  `RekordServera` smallint(5) NOT NULL DEFAULT 0,
  `Oglasi` tinyint(1) NOT NULL DEFAULT 1,
  `Registracija` tinyint(1) NOT NULL DEFAULT 1,
  `ReactTime` mediumint(9) NOT NULL DEFAULT 7500,
  `ReactName` varchar(25) NOT NULL DEFAULT 'No-one',
  `AVPNE` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_stats`
--

INSERT INTO `_stats` (`ssSQLID`, `RegistrovanihKorisnika`, `BanovanihKorisnika`, `KikovanihKorisnika`, `BrojWarnova`, `BrojPosetaServeru`, `HappyHours`, `HappyHoursLvl`, `HappyJobs`, `PocetniLevel`, `PocetniNovaca`, `BankaNovac`, `KupovinaVozila`, `Report`, `Pitanja`, `RekordServera`, `Oglasi`, `Registracija`, `ReactTime`, `ReactName`, `AVPNE`) VALUES
(1, 7, 0, 1, 0, 156, 0, 0, 0, 1, 50000, 0, 1, 1, 1, 3, 0, 1, 0, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`atmSQLID`),
  ADD UNIQUE KEY `atmSQLID` (`atmSQLID`);

--
-- Indexes for table `banned`
--
ALTER TABLE `banned`
  ADD PRIMARY KEY (`ban_id`),
  ADD UNIQUE KEY `ban_id` (`ban_id`);

--
-- Indexes for table `bussines`
--
ALTER TABLE `bussines`
  ADD PRIMARY KEY (`bussines_id`);

--
-- Indexes for table `containers`
--
ALTER TABLE `containers`
  ADD PRIMARY KEY (`koSQLID`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`fieldSQLID`);

--
-- Indexes for table `fields_stalks`
--
ALTER TABLE `fields_stalks`
  ADD PRIMARY KEY (`sSQLID`);

--
-- Indexes for table `fuel_stations`
--
ALTER TABLE `fuel_stations`
  ADD PRIMARY KEY (`fsSQLID`);

--
-- Indexes for table `gangzones`
--
ALTER TABLE `gangzones`
  ADD PRIMARY KEY (`gzone_id`);

--
-- Indexes for table `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`garage_id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateid`);

--
-- Indexes for table `gps`
--
ALTER TABLE `gps`
  ADD PRIMARY KEY (`gpsSQLID`);

--
-- Indexes for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `org_members`
--
ALTER TABLE `org_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_ports`
--
ALTER TABLE `org_ports`
  ADD PRIMARY KEY (`port_id`);

--
-- Indexes for table `propertys`
--
ALTER TABLE `propertys`
  ADD PRIMARY KEY (`iSQLID`);

--
-- Indexes for table `punishments`
--
ALTER TABLE `punishments`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `quests`
--
ALTER TABLE `quests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`vrSQLID`);

--
-- Indexes for table `tiki`
--
ALTER TABLE `tiki`
  ADD PRIMARY KEY (`tID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_clothes`
--
ALTER TABLE `user_clothes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`veh_id`);

--
-- Indexes for table `vehicle_salon`
--
ALTER TABLE `vehicle_salon`
  ADD PRIMARY KEY (`salon_id`);

--
-- Indexes for table `xmas_presents`
--
ALTER TABLE `xmas_presents`
  ADD PRIMARY KEY (`presSQLID`);

--
-- Indexes for table `xmas_trees`
--
ALTER TABLE `xmas_trees`
  ADD PRIMARY KEY (`ctSQLID`);

--
-- Indexes for table `_stats`
--
ALTER TABLE `_stats`
  ADD PRIMARY KEY (`ssSQLID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atms`
--
ALTER TABLE `atms`
  MODIFY `atmSQLID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banned`
--
ALTER TABLE `banned`
  MODIFY `ban_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bussines`
--
ALTER TABLE `bussines`
  MODIFY `bussines_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `containers`
--
ALTER TABLE `containers`
  MODIFY `koSQLID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `fieldSQLID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fields_stalks`
--
ALTER TABLE `fields_stalks`
  MODIFY `sSQLID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fuel_stations`
--
ALTER TABLE `fuel_stations`
  MODIFY `fsSQLID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gangzones`
--
ALTER TABLE `gangzones`
  MODIFY `gzone_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `garages`
--
ALTER TABLE `garages`
  MODIFY `garage_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `gateid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gps`
--
ALTER TABLE `gps`
  MODIFY `gpsSQLID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `job_skills`
--
ALTER TABLE `job_skills`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `org_members`
--
ALTER TABLE `org_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `org_ports`
--
ALTER TABLE `org_ports`
  MODIFY `port_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `propertys`
--
ALTER TABLE `propertys`
  MODIFY `iSQLID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `punishments`
--
ALTER TABLE `punishments`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quests`
--
ALTER TABLE `quests`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=573;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `vrSQLID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tiki`
--
ALTER TABLE `tiki`
  MODIFY `tID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` mediumint(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_clothes`
--
ALTER TABLE `user_clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `vehicle_salon`
--
ALTER TABLE `vehicle_salon`
  MODIFY `salon_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xmas_presents`
--
ALTER TABLE `xmas_presents`
  MODIFY `presSQLID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xmas_trees`
--
ALTER TABLE `xmas_trees`
  MODIFY `ctSQLID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_stats`
--
ALTER TABLE `_stats`
  MODIFY `ssSQLID` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
