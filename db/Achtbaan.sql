-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 18, 2023 at 02:20 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php-pdo-crud-herkansing`
--

-- --------------------------------------------------------

--
-- Table structure for table `Achtbaan`
--

DROP TABLE IF EXISTS `Achtbaan`;
CREATE TABLE IF NOT EXISTS `Achtbaan` (
  `Id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NaamAchtbaan` varchar(255) NOT NULL,
  `NaamPretpark` varchar(255) NOT NULL,
  `Land` varchar(255) NOT NULL,
  `Topsenlhied` tinyint(4) UNSIGNED NOT NULL,
  `Hoogte` tinyint(4) UNSIGNED NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Achtbaan`
--

INSERT INTO `Achtbaan` (`Id`, `NaamAchtbaan`, `NaamPretpark`, `Land`, `Topsenlhied`, `Hoogte`) VALUES
(1, 'Red Force', 'Ferrariland', 'spanje', 192, 112),
(2, 'Ring Racer', 'circuit nurnberg', 'Duitsland', 160, 110),
(3, 'Hyperion', 'Energylandia ', 'Polen', 141, 77),
(4, 'Furios Baco', 'portaventura ', 'spanje', 138, 23),
(5, 'Shambala', ' portaventura', 'spanje', 134, 102);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
