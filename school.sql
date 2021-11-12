-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2021 at 11:02 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `CIN` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `age` int(11) NOT NULL,
  `birthDate` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phoneNumber` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`CIN`, `firstName`, `lastName`, `age`, `birthDate`, `gender`, `phoneNumber`, `email`, `password`) VALUES
(99999999, 'ahmed', 'belgith', 50, '1963-07-07', 'Male', 54871236, 'ahmedd@gmail.com', 'hello'),
(22222222, 'morad', 'hammemy', 45, '1988-04-15', 'm', 65478988, 'morad1@gmail.com', 'helloworld'),
(11221111, 'hamady', 'lahmar', 55, '1978-04-15', 'm', 22355511, 'hamady@gmail.com', 'helloworld'),
(11551111, 'sarra', 'morjen', 32, '1989-04-15', 'm', 11333111, 'sarramor@gmail.com', 'helloworld'),
(11775533, 'mounira', 'yaakouby', 42, '1979-04-15', 'm', 12333761, 'mounira@gmail.com', 'helloworld'),
(4578796, 'karim', 'belhaj', 30, '1991-04-03', 'Male', 52416398, 'karim.belhaj@gmail.com', 'karim');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `designation` varchar(10) NOT NULL,
  `nomComplet` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`designation`, `nomComplet`) VALUES
('lisi', 'ingnieurie en systeme informatique'),
('eea', 'electronique electrotechnique automatique'),
('lsi', 'science informatique'),
('gc', 'genie civil');

-- --------------------------------------------------------

--
-- Table structure for table `majorsubject`
--

CREATE TABLE `majorsubject` (
  `designation` varchar(10) NOT NULL,
  `subjectId` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `majorsubject`
--

INSERT INTO `majorsubject` (`designation`, `subjectId`) VALUES
('gc', 1),
('gc', 2),
('gc', 5),
('gc', 10);

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `studentId` int(10) UNSIGNED NOT NULL,
  `subjectId` int(10) UNSIGNED NOT NULL,
  `dsGrade` float DEFAULT NULL,
  `examGrade` float DEFAULT NULL,
  `tpGrade` float DEFAULT NULL,
  `average` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`studentId`, `subjectId`, `dsGrade`, `examGrade`, `tpGrade`, `average`) VALUES
(11111111, 1, 15, 15.1, NULL, 15.59),
(22222222, 3, 17, 19.5, NULL, NULL),
(33333333, 9, 15.5, 10.4, NULL, NULL),
(11111111, 5, 14.5, 17.4, NULL, 17.11),
(11111111, 10, 10, 11, 15, 11.7);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `CIN` int(10) UNSIGNED NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `age` int(11) NOT NULL,
  `birthDate` date NOT NULL,
  `gender` varchar(25) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `email` varchar(55) NOT NULL,
  `grade` varchar(2) NOT NULL,
  `major` varchar(20) NOT NULL,
  `studentPassword` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`CIN`, `lastName`, `firstName`, `age`, `birthDate`, `gender`, `phoneNumber`, `email`, `grade`, `major`, `studentPassword`) VALUES
(22222222, 'ammar', 'mounir', 21, '2000-04-13', 'Male', 12444555, 'mounir@gmail.com', 'A1', 'lisi', 'hello'),
(33333333, 'dhiab', 'ahmed', 20, '2001-03-11', 'Male', 22333111, 'ahmed@gmail.com', 'A3', 'lsi', 'hello'),
(11111111, 'hadj', 'sarra', 19, '2001-07-14', 'Female', 33111243, 'sarra@gmail.com', 'A2', 'gc', 'hello'),
(44444444, 'ghadhab', 'ahlem', 20, '2001-07-14', 'Female', 32353634, 'ahlem@gmail.com', 'A2', 'eea', 'hello'),
(55555555, 'slim', 'mouna', 20, '2001-07-14', 'Female', 98765432, 'mouna@gmail.com', 'A3', 'lsi', 'mouna'),
(88888888, 'chadli', 'ahmed', 20, '2001-02-02', 'Male', 98452163, 'ahmedd@gmail.com', 'A2', 'lsi', 'hello'),
(6997277, 'nouira', 'oumayma', 20, '2000-07-03', 'Female', 52063102, 'oumayma.nouira72@gmail.com', 'A2', 'lisi', 'oumayma');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(10) UNSIGNED NOT NULL,
  `subjectName` varchar(30) NOT NULL,
  `hasTp` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subjectName`, `hasTp`) VALUES
(1, 'analyse', 0),
(2, 'physqiue', 0),
(3, 'genie logiciel', 0),
(4, 'developement web', 0),
(5, 'algebre', 0),
(6, 'dev application', 0),
(7, 'dev mobile', 0),
(8, 'base de donnee', 0),
(9, 'uml', 0),
(10, 'batiment', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`CIN`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`designation`),
  ADD UNIQUE KEY `designation` (`designation`),
  ADD UNIQUE KEY `nomComplet` (`nomComplet`);

--
-- Indexes for table `majorsubject`
--
ALTER TABLE `majorsubject`
  ADD PRIMARY KEY (`designation`,`subjectId`),
  ADD KEY `subjectId` (`subjectId`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`studentId`,`subjectId`),
  ADD KEY `subjectId` (`subjectId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`CIN`),
  ADD UNIQUE KEY `numeroTel` (`phoneNumber`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `filliere` (`major`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjectName` (`subjectName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
