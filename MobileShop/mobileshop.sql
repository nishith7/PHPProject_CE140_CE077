-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2017 at 07:27 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mobileshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET utf8 NOT NULL,
  `password` varchar(25) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'Nikunj', '12345', 'nikunjhudka06@gmail.com'),
(2, 'Nishith', '12345', 'nishithupadhyay@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `imageUrl` varchar(80) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `imageUrl`) VALUES
(4, 'Samsung', 'BrandsPictures/Samsung.jpg'),
(5, 'Xiaomi', 'BrandsPictures/Xiaomi.png'),
(6,'Oneplus', 'BrandsPictures/Oneplus.png');

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE IF NOT EXISTS `mobile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(100) CHARACTER SET utf8 NOT NULL,
  `brandID` int(11) NOT NULL,
  `price` double NOT NULL,
  `mobileUrl` varchar(100) CHARACTER SET utf8 NOT NULL,
  `cameraSpecs` varchar(100) CHARACTER SET utf8 NOT NULL,
  `memorySpecs` varchar(100) CHARACTER SET utf8 NOT NULL,
  `networkSpecs` varchar(100) CHARACTER SET utf8 NOT NULL,
  `platform` varchar(100) CHARACTER SET utf8 NOT NULL,
  `cpu` varchar(100) CHARACTER SET utf8 NOT NULL,
  `features` varchar(300) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`id`, `model`, `brandID`, `price`, `mobileUrl`, `cameraSpecs`, `memorySpecs`, `networkSpecs`, `platform`, `cpu`, `features`) VALUES
(1,'S10+', 4, 50000, 'MobilesPictures/S10+.jpg', '10MP + 16MP + 12MP', '12GB RAM / 128GB Storage','3G/4G / wifi / bluetooth', 'Android', '2.7GHz', 'AMOLED Display' ),
(2, 'Oneplus 7t', 6, 39000, 'MobilesPictures/Oneplus-7t.jpg', '10MP + 8MP', '6GB RAM / 128GB Storage', '3G/4G / wifi / bluetooth', 'Android', '2.4 GHz', 'Oxygen OS'),
(4, 'Redmi note 9 pro', 5, 20000, 'MobilesPictures/Redmi Note 9 pro.jpg', '8MP + 4MP', '6GB RAM/ 128GB Storage', '3G/4G / wifi / bluetooth', 'andriod', '2.1 GHz', 'best in price');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `lastName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `imageUrl` varchar(120) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `username` varchar(25) CHARACTER SET utf8 NOT NULL,
  `password` varchar(25) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `imageUrl`, `email`, `username`, `password`) VALUES
(2, 'Dhyey', 'Desai', 'UserProfiles/DefaultUser.jpg', 'dhyey@gmail.com', 'Dhyey', '123'),
(3, 'Achal', 'Savsani', 'UserProfiles/DefaultUser.jpg', 'achal@gmail.com', 'Achal', '123'),
(4, 'Itachi', 'Uchiha', 'UserProfiles/DefaultUser.jpg', 'itachi@gmail.com', 'Itachi', '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
