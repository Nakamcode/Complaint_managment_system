-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2017 at 06:49 AM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1382631_cmsnitc17`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adName` varchar(44) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adName`, `pass`, `email`, `contact`) VALUES
('admin', 'admin', 'admin@upsamail.edu.gh', '2222222222');

-- --------------------------------------------------------

--
-- Table structure for table `caretaker`
--

CREATE TABLE `caretaker` (
  `tid` int(9) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ctype` varchar(25) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='caretaker';

--
-- Dumping data for table `caretaker`
--

INSERT INTO `caretaker` (`tid`, `name`, `ctype`, `contact`, `address`, `email`, `password`) VALUES
(5, '', 'type', '', '', '', ''),
(1, 'caretaker1', 'hostel', '9567760258', 'upsa', 'caretaker1@upsamail.edu.gh', 'caretaker'),
(2, 'caretaker2', 'academics', '9567760258', 'upsa', 'caretaker2@upsamail.edu.gh', 'caretaker'),
(3, 'caretaker3', 'bullying and Harrassment', '9874563214', 'upsa', 'caretaker3@upsamail.edu.gh', 'caretaker'),
(4, 'caretaker4', 'other', '9567752525', 'upsa', 'caretaker4@upsamail.edu.gh', 'caretaker');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `cid` int(6) NOT NULL,
  `description` varchar(400) NOT NULL,
  `sid` varchar(15) NOT NULL,
  `type` varchar(25) NOT NULL,
  `SEmail` varchar(250) NOT NULL,
  `status` varchar(15) NOT NULL,
  `Cby` varchar(25) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`cid`, `description`, `sid`, `type`, `SEmail`, `status`, `Cby`, `date`) VALUES
(123505, 'The hostel booking website is too slow, can you please work on the speed', '10288299', 'Hostel', '10288299', 'pending', 'ray cudjoe', '2022-02-09 08:45:16'),
(123506, 'The project deadline is 28 april please extends the date...', '10288289', 'Other', '10288289@upsamail.edu.gh', 'approved', 'kelvin moah', '2022-03-09 17:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(25) NOT NULL,
  `sid` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `sid`, `name`, `email`, `description`) VALUES
(5093, '10107998', 'Gilbert', '10107998@upsamail.edu.gh', 'system working properly');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `rollno` varchar(9) NOT NULL,
  `name` varchar(66) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(250) NOT NULL,
  `hostel` varchar(10) NOT NULL,
  `course` varchar(30) NOT NULL,
  `password` varchar(25) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rollno`, `name`, `contact`, `email`, `hostel`, `course`, `password`, `active`) VALUES
('10278218', 'User One', '0556516391', '10278218@upsamail.edu.gh', 'private hostel', 'diploma in IT', 'password', 'y'),
('10278228', 'User two', '0556516391', '10278228@upsamail.edu.gh', 'private hostel', 'diploma in IT', 'password', 'y'),
('10278238', 'User three', '0556516391', '10278238@upsamail.edu.gh', 'private hostel', 'diploma in IT', 'password', 'y'),
('10278288', 'Nana Asamoah Kwaw', '0556516391', '10278288@upsamail.edu.gh', 'private hostel', 'diploma in IT', 'password', 'y'),
('10107998', 'Gilbert Afranie', '0551838624', '10107998@upsamail.edu.gh', 'mba', 'mca', 'password', 'y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `caretaker`
--
ALTER TABLE `caretaker`
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `tid` (`tid`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `Cby` (`Cby`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caretaker`
--
ALTER TABLE `caretaker`
  MODIFY `tid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `cid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123507;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5094;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
