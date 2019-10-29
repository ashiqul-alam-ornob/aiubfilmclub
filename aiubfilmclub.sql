-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2019 at 02:39 PM
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
-- Table structure for table `commentinfo`
--

CREATE TABLE `commentinfo` (
  `commentid` int(11) NOT NULL,
  `creatorid` varchar(20) NOT NULL,
  `commentdescription` varchar(300) NOT NULL,
  `postid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventinfo`
--

CREATE TABLE `eventinfo` (
  `eventid` int(11) NOT NULL,
  `eventname` varchar(100) NOT NULL,
  `eventdate` varchar(20) NOT NULL,
  `expiredate` varchar(20) NOT NULL,
  `eventdescription` varchar(300) NOT NULL,
  `eventstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galleryinfo`
--

CREATE TABLE `galleryinfo` (
  `contentid` int(11) NOT NULL,
  `contenttitle` varchar(100) NOT NULL,
  `contentpath` varchar(300) NOT NULL,
  `contenttype` varchar(20) NOT NULL,
  `contentapprovalstatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `noticeinfo`
--

CREATE TABLE `noticeinfo` (
  `noticeid` int(11) NOT NULL,
  `creatorid` varchar(20) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `noticedate` varchar(20) NOT NULL,
  `expiredate` varchar(20) NOT NULL,
  `noticestatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `postinfo`
--

CREATE TABLE `postinfo` (
  `postid` int(11) NOT NULL,
  `creatorid` varchar(20) NOT NULL,
  `postdescription` varchar(300) NOT NULL,
  `postdate` varchar(20) NOT NULL,
  `postaprovalstatus` int(11) DEFAULT NULL,
  `filepath` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('16-30976-1', 'Ornob', 'Admin', 'Student', '01988158021', 'glab.ornob96@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commentinfo`
--
ALTER TABLE `commentinfo`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `eventinfo`
--
ALTER TABLE `eventinfo`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `galleryinfo`
--
ALTER TABLE `galleryinfo`
  ADD PRIMARY KEY (`contentid`);

--
-- Indexes for table `noticeinfo`
--
ALTER TABLE `noticeinfo`
  ADD PRIMARY KEY (`noticeid`);

--
-- Indexes for table `postinfo`
--
ALTER TABLE `postinfo`
  ADD PRIMARY KEY (`postid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commentinfo`
--
ALTER TABLE `commentinfo`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eventinfo`
--
ALTER TABLE `eventinfo`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleryinfo`
--
ALTER TABLE `galleryinfo`
  MODIFY `contentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `noticeinfo`
--
ALTER TABLE `noticeinfo`
  MODIFY `noticeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postinfo`
--
ALTER TABLE `postinfo`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
