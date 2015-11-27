-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2015 at 04:24 AM
-- Server version: 5.5.25
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test_boston`
--

-- --------------------------------------------------------

--
-- Table structure for table `insegment`
--

CREATE TABLE IF NOT EXISTS `insegment` (
  `ip_address` text NOT NULL,
  `user_agent` text NOT NULL,
  `view_date` text NOT NULL,
  `page_url` text NOT NULL,
  `views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insegment`
--

INSERT INTO `insegment` (`ip_address`, `user_agent`, `view_date`, `page_url`, `views_count`) VALUES
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 YaBrowser/15.7.2357.2877 Safari/537.36', 'September 17, 2015, 4:23 am', 'http://localhost/test_boston/index1.html', 1),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 YaBrowser/15.7.2357.2877 Safari/537.36', 'September 17, 2015, 4:23 am', 'http://localhost/test_boston/index2.html', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
