-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 12, 2023 at 10:50 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wastemngtsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `fullname` varchar(500) NOT NULL,
  `password` text NOT NULL,
  `ucat` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `acstatus` varchar(500) NOT NULL,
  `date` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `fullname`, `password`, `ucat`, `address`, `contact`, `acstatus`, `date`, `image`) VALUES
(7, 'muna', 'munawalu', 'muna', 'colletor', 'muna', '012479963', 'active', '2021-06-22', 'Screenshot_20210321-205607.png'),
(8, 'rayat', 'rayat', 'rayat', 'admin', 'rayat', '2569897654', 'active', '2021-06-22', 'Screenshot_20210324-113832.png'),
(9, 'wylife', 'Wyclife', '12345', 'admin', '456 kisumu', '07145678', 'active', '2023-07-11', '11232.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `names` varchar(500) NOT NULL,
  `pay_type` varchar(500) NOT NULL,
  `client_type` varchar(500) NOT NULL,
  `gabage_type` varchar(500) NOT NULL,
  `location` text NOT NULL,
  `contact` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `names`, `pay_type`, `client_type`, `gabage_type`, `location`, `contact`, `status`, `date`) VALUES
(25, 'Nikasss', 'percollection', 'individual', 'Bio', 'Linia', '9075846954', 'Approved', '2021-06-23'),
(26, '29949299', '8b1753bd5706fff3c62c790e4707f441', 'Jermiah', 'walia', 'Landless', '0725545465', 'Degrdable', 'May 28, 2015'),
(29, 'Bazuka', 'monthly', 'individual', 'Hazardous', 'patients1', '01246565', 'pending', '2021-06-23'),
(30, 'Juma', 'monthly', 'company', 'Non Hazardous', 'loper', '1244545', 'pending', '2021-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `gabbage_type`
--

DROP TABLE IF EXISTS `gabbage_type`;
CREATE TABLE IF NOT EXISTS `gabbage_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `chargespm` text NOT NULL,
  `chargespd` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gabbage_type`
--

INSERT INTO `gabbage_type` (`id`, `name`, `chargespm`, `chargespd`) VALUES
(8, 'Hazardous', '150000', '30000'),
(9, 'Bio Waste', '1500', '3500');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `collector` text NOT NULL,
  `clientname` text NOT NULL,
  `typeofwaste` text NOT NULL,
  `paytype` text NOT NULL,
  `amountpaid` text NOT NULL,
  `date` text NOT NULL,
  `recieptno` text NOT NULL,
  `reason` text NOT NULL,
  `balance` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `collector`, `clientname`, `typeofwaste`, `paytype`, `amountpaid`, `date`, `recieptno`, `reason`, `balance`) VALUES
(1, 'admin', 'Nikasss', 'Bio', 'percollection', '45000', '2021-06-23', '45', 'payment for jan and feb', '120000'),
(2, 'admin', 'Bazuka', 'Hazardous', 'monthly', '54000', '2021-06-23', '5455', 'PAY', '65550'),
(3, 'muna', 'Nikasss', 'Bio', 'percollection', '15000', '2021-06-24', '1122', 'pad', '5000'),
(4, 'rayat', 'Nikasss', 'Bio', 'percollection', '20000', '2021-06-25', '12452', 'user', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `wastecollect`
--

DROP TABLE IF EXISTS `wastecollect`;
CREATE TABLE IF NOT EXISTS `wastecollect` (
  `id` int NOT NULL AUTO_INCREMENT,
  `collector` text NOT NULL,
  `clientname` text NOT NULL,
  `typeofwaste` text NOT NULL,
  `paytype` text NOT NULL,
  `amountpaid` text NOT NULL,
  `balance` text NOT NULL,
  `date` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wastecollect`
--

INSERT INTO `wastecollect` (`id`, `collector`, `clientname`, `typeofwaste`, `paytype`, `amountpaid`, `balance`, `date`) VALUES
(1, 'admin', 'Kayondo', 'Non Hazardous', 'monthly', '10000', '', '2021-06-23'),
(2, 'admin', 'Nikasss', 'Bio', 'percollection', '50000', '', '2021-06-23'),
(3, 'admin', 'Bazuka', 'Hazardous', 'monthly', '51000', '', '2021-06-23'),
(4, 'admin', '29949299', 'walia', '8b1753bd5706fff3c62c790e4707f441', '78000', '12000', '2021-06-23'),
(5, 'admin', '29949299', 'walia', '8b1753bd5706fff3c62c790e4707f441', '85000', '52000', '2021-06-23'),
(6, 'muna', 'Bazuka', 'Hazardous', 'monthly', '10000', '2000', '2021-06-24'),
(7, 'rayat', 'Nikasss', 'Bio', 'percollection', '15000', '5000', '2021-06-25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
