-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2019 at 05:17 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aiubfilmclub`
--

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `userid` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `contactnumber` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`userid`, `name`, `usertype`, `designation`, `contactnumber`, `email`, `password`) VALUES
('16-30976-1', 'Ashiqul Alam Ornob', 'Admin', 'OSA', '01988158021', 'glab.ornob96@gmail.com', '1234'),
('16-31975-1', 'Badhon Rahman', 'Admin', 'Executive', '019881', 'glab.ornob96@gmail.com', '1234'),
('16-32475-1', 'Arman Malik', 'Admin', 'General Secretary', '01988132432', 'glab.ornob96@gmail.com', '1234'),
('16-33455-1', 'Zeesan Ahmed', 'Admin', 'President', '019832432', 'glab.ornob96@gmail.com', '1234'),
('16-78755-1', 'Polok Ahmed', 'User', 'General Member', '01677432', 'glab.ornob96@gmail.com', '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
