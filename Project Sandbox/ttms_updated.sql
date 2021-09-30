-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 09:30 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ttms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', 'pass123');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `name` varchar(30) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`name`, `status`) VALUES
('R301', 1),
('R302', 2),
('R303', 3),
('R304', 4);

-- --------------------------------------------------------

--
-- Table structure for table `semester1`
--

CREATE TABLE `semester1` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL,
  `period7` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester1`
--

INSERT INTO `semester1` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', 'CSE 101<br>RS', 'MATH 167<br>MSI', 'EEE 161<br>MJF', 'GED 165<br>ENG', '-<br>-', '-<br>-', '-<br>-'),
('Monday', '-<br>-', 'CSE 103<br>TKS', 'CSE 103<br>RS', 'GED 163<br>ACC', 'EEE 162<br>MJF', '-', '-'),
('Tuesday', 'EEE 161<br>MJF', 'MATH 167<br>MSI', 'GED 163<br>ACC', 'GED 165<br>ENG', 'CSE 103<br>TKS', '-<br>-', '-<br>-'),
('Wednesday', 'EEE 161<br>MJF', 'MATH 167<br>MSI', 'CSE 103<br>RS', 'CSE 103<br>TKS', '-<br>-', '-<br>-', '-<br>-'),
('Thrusday', 'CSE 102<br>RS', '-', '-', 'GED 163<br>ACC', 'GED 165<br>ENG', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `semester3`
--

CREATE TABLE `semester3` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL,
  `period7` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester3`
--

INSERT INTO `semester3` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', 'CSE 201<br>IM', 'CSE 203<br>SAM', 'CSE 203<br>KMH', 'MATH 261<br>MSI', 'GED 263<br>MSA', '-<br>-', '-<br>-'),
('Monday', '-<br>-', 'CSE201<br>', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -', '-'),
('Tuesday', '-<br>-', 'CSE203<br>', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -', '-<br>-'),
('Wednesday', '-<br>-', 'CSE205<br>', '-<br>-', '-<br>-', '-<br>-', 'CSE202<br>, , ', '-<br>-'),
('Thrusday', '-<br>-', 'GED 263<br>MSA', 'MATH 273<br>STAT', 'CSE 201<br>IM', 'CSE 204<br>SAM', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `semester5`
--

CREATE TABLE `semester5` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL,
  `period7` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester5`
--

INSERT INTO `semester5` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', '-<br>-', 'CSE 303<br>IM', 'CSE 309<br>MN', 'CSE 301<br>PKM', '-<br>-', '-<br>-'),
('Monday', '-<br>-', '-<br>-', 'CSE303<br>', '-<br>-', '-<br>-', '-<br>-, -, -', '-<br>-'),
('Tuesday', '-<br>-', '-<br>-', 'CSE305<br>', '-<br>-', '-<br>-', '-<br>-, -, -', '-'),
('Wednesday', '-<br>-', '-<br>-', 'CSE307<br>', '-<br>-', '-<br>-', '-<br>-, -, -', '-<br>-'),
('Thrusday', '-<br>-', 'CSE 305<br>SAM', 'CSE 303<br>IM', 'CSE 301<br>PKM', 'CSE 308<br>TKS', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `semester7`
--

CREATE TABLE `semester7` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL,
  `period7` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester7`
--

INSERT INTO `semester7` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', 'CSE 401<br>RS', 'CSE 435<br>TKS', 'CSE 403<br>AHMK', 'CSE 410<br>MSA', '-', '-'),
('Monday', '-<br>-', '-<br>-', '-<br>-', 'CSE407<br>', '-<br>-', '-<br>-, -, -', '-'),
('Tuesday', '-<br>-', '-<br>-', '-<br>-', 'CSE409<br>', '-<br>-', '-<br>-, -, -', '-'),
('Wednesday', '-<br>-', '-<br>-', '-<br>-', 'CSE435<br>', '-<br>-', '-<br>-, -, -', '-'),
('Thrusday', 'CSE 404<br>AHMK', '-', '-', 'CSE 435<br>TKS', 'CSE 409<br>MSA', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `semester8`
--

CREATE TABLE `semester8` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL,
  `period7` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester8`
--

INSERT INTO `semester8` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', '-<br>-', 'CSE 423<br>UKP', 'CSE 459<br>MJF', 'CSE 422<br>MMR', '-', '-'),
('Monday', 'CSE 460<br>MJF', '-', '-', '-<br>-', 'CSE 421<br>MMR', '-<br>-', '-<br>-'),
('Tuesday', '-<br>-', 'CSE 423<br>UKP', 'CSE 421<br>MMR', 'CSE 459<br>MJF', '-<br>-', '-<br>-', '-<br>-'),
('Wednesday', 'CSE 423<br>UKP', '-<br>-', 'CSE 421<br>MMR', 'CSE 459<br>MJF', '-<br>-', '-<br>-', '-<br>-'),
('Thrusday', '-', '-', '-', 'CSE 400B<br>UST', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `course_type` varchar(15) NOT NULL,
  `semester` int(1) NOT NULL,
  `alloted_to` text NOT NULL,
  `isAlloted` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_code`, `subject_name`, `course_type`, `semester`, `alloted_to`, `isAlloted`) VALUES
('CSE101', 'Computer Fundamentals and Programming Basics', 'THEORY', 1, 'T012', 1),
('CSE102', 'Computer Fundamentals and Programming Basics Lab', 'LAB', 1, 'T012', 1),
('CSE103', 'Discrete Mathematics', 'THEORY', 1, 'T009', 1),
('EEE161', 'Basic Electronic Engineering', 'THEORY', 1, 'T003', 1),
('EEE162', 'Basic Electronic Engineering Lab', 'LAB', 1, 'T003', 1),
('GED163', 'Accounting', 'THEORY', 1, 'Guest_Teacher', 1),
('GED165', 'English', 'THEORY', 1, 'Guest_Teacher', 1),
('MATH167', 'Calculas and Differential Equation', 'THEORY', 1, 'T004', 1),
('CSE201', 'Object Oriented Programming', 'THEORY', 3, 'T010', 1),
('CSE202', 'Object Oriented Programming Lab', 'LAB', 3, 'T010', 1),
('CSE203', 'Data Structure', 'THEORY', 3, 'T007', 1),
('CSE204', 'Data Structure Lab', 'LAB', 3, 'T007', 1),
('CSE205', 'Digital Logic Design', 'THEORY', 3, 'T014', 1),
('CSE206', 'Digital Logic design Lab', 'LAB', 3, 'T014', 1),
('MATH261', 'Coordinate Geometry', 'THEORY', 3, 'T004', 1),
('MATH273', 'Statistics and Probability Theory', 'THEORY', 3, 'Guest_Teacher', 1),
('CSE301', 'Microprocessors', 'THEORY', 5, 'T011', 1),
('CSE302', 'Microprocessors and Assembly Language Lab', 'LAB', 5, 'T011', 1),
('CSE303', 'Operating Systems', 'THEORY', 5, 'T010', 1),
('CSE304', 'Operating Systems Lab', 'LAB', 5, 'T010', 1),
('CSE305', 'Theory of Computation', 'THEORY', 5, 'T007', 1),
('CSE307', 'Internet and Web Programming', 'THEORY', 5, 'T009', 1),
('CSE308', 'Internet and Web Programming Lab', 'LAB', 5, 'T009', 1),
('CSE309', 'Data Communication', 'THEORY', 5, 'T015', 1),
('CSE401', 'Software Engineering', 'THEORY', 7, 'T012', 1),
('CSE402', 'Software Engineering Lab', 'LAB', 7, 'T012', 1),
('CSE403', 'Computer Graphics', 'THEORY', 7, 'T001', 1),
('CSE404', 'Computer Graphics Lab', 'LAB', 7, 'T001', 1),
('CSE407', 'Communication Engineering', 'THEORY', 7, 'T006', 1),
('CSE409', 'Digital Signal Processing ', 'THEORY', 7, 'T005', 1),
('CSE410', 'Digital Signal Processing Lab', 'LAB', 7, 'T005', 1),
('CSE435', 'Network Security', 'THEORY', 7, 'T009', 1),
('CSE436', 'Network Security Lab', 'LAB', 7, 'T009', 1),
('CSE400A', 'Thesis/Project', 'LAB', 7, 'T016', 1),
('CSE421', 'Artificial Intilligence', 'THEORY', 8, 'T002', 1),
('CSE422', 'Artificial Intilligence Lab', 'LAB', 8, 'T002', 1),
('CSE423', 'IT Organization and Management', 'THEORY', 8, 'T006', 1),
('CSE459', 'Wireless Communication', 'THEORY', 8, 'T003', 1),
('CSE460', 'Wireless Communication Lab', 'LAB', 8, 'T003', 1),
('CSE400B', 'Thesis/Project', 'LAB', 8, 'T016', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t001`
--

CREATE TABLE `t001` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t001`
--

INSERT INTO `t001` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', '-<br>-', '-<br>-', 'CSE 403<br>R106', '-<br>-', '-<br>-', '-<br>-'),
('Monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Tuesday', '-<br>-', '-<br>-', '-<br>-', 'CSE 403<br>R106', '-<br>-', '-<br>-', '-<br>-'),
('Wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Thursday', 'CSE 404<br>LAB1', '-', '-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `t002`
--

CREATE TABLE `t002` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t002`
--

INSERT INTO `t002` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CSE 422<br>LAB2', '-', '-'),
('Monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CSE 422<br>R304', '-<br>-', '-<br>-'),
('Tuesday', '-<br>-', '-<br>-', 'CSE 421<br>R304', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Wednesday', '-<br>-', '-<br>-', 'CSE 421<br>R304', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `t003`
--

CREATE TABLE `t003` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t003`
--

INSERT INTO `t003` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', '-<br>-', 'EEE 161<br>R301', 'CSE 459<br>R304', '-<br>-', '-<br>-', '-<br>-'),
('Monday', 'CSE 460<br>LAB1', '-', '-', '-<br>-', 'EEE 162<br>HW LAB', '-', '-'),
('Tuesday', 'EEE 161<br>R301', '-<br>-', '-<br>-', 'CSE 459<br>R304', '-<br>-', '-<br>-', '-<br>-'),
('Wednesday', 'EEE 161<br>R301', '-<br>-', '-<br>-', 'CSE 459<br>R304', '-<br>-', '-<br>-', '-<br>-'),
('Thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `t004`
--

CREATE TABLE `t004` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t004`
--

INSERT INTO `t004` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', 'MATH 167<br>R301', '-<br>-', 'MATH 261<br>R302', '-<br>-', '-<br>-', '-<br>-'),
('Monday', '-<br>-', '-<br>-', 'MATH 261<br>R302', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Tuesday', '-<br>-', 'MATH 167<br>R301', '-<br>-', 'MATH 261<br>R302', '-<br>-', '-<br>-', '-<br>-'),
('Wednesday', '-<br>-', 'MATH 167<br>R301', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `t005`
--

CREATE TABLE `t005` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t005`
--

INSERT INTO `t005` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'GED 263<br>R302', 'CSE 410<br>LAB1', '-'),
('Monday', '-<br>-', 'CSE 409<br>R106', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Wednesday', 'GED 263<br>R302', '-<br>-', 'CSE 409<br>R106', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Thursday', '-<br>-', 'GED 263<br>R302', '-<br>-', '-<br>-', 'CSE 409<br>R106', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `t006`
--

CREATE TABLE `t006` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t006`
--

INSERT INTO `t006` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', '-<br>-', 'CSE 423<br>R304', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Monday', '-<br>-', '-<br>-', 'CSE 407<br>R106', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Tuesday', '-<br>-', 'CSE 423<br>R304', 'CSE 423<br>R304', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Wednesday', 'CSE 423<br>R304', 'CSE 423<br>R304', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `t007`
--

CREATE TABLE `t007` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t007`
--

INSERT INTO `t007` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', 'CSE 203<br>R302', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Monday', '-<br>-', 'CSE 305<br>R303', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Tuesday', '-<br>-', '-<br>-', 'CSE 305<br>R303', '-<br>-', 'CSE 203<br>R302', '-<br>-', '-<br>-'),
('Wednesday', '-<br>-', '-<br>-', 'CSE 203<br>R302', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Thursday', '-<br>-', 'CSE 305<br>R303', '-<br>-', '-<br>-', 'CSE 204<br>LAB2', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t008`
--

CREATE TABLE `t008` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t008`
--

INSERT INTO `t008` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `t009`
--

CREATE TABLE `t009` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t009`
--

INSERT INTO `t009` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', '-<br>-', 'CSE 435<br>R106', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Monday', 'CSE 307<br>R303', 'CSE 103<br>R301', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Tuesday', '-<br>-', 'CSE 435<br>R106', '-<br>-', 'CSE 307<br>R303', 'CSE 103<br>R301', '-<br>-', '-<br>-'),
('Wednesday', '-<br>-', '-<br>-', '-<br>-', 'CSE 103<br>R301', 'CSE 307<br>R303', 'CSE 436<br>LAB1', '-'),
('Thursday', '-<br>-', '-<br>-', '-<br>-', 'CSE 435<br>R106', 'CSE 308<br>LAB1', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t010`
--

CREATE TABLE `t010` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t010`
--

INSERT INTO `t010` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', 'CSE 201<br>R302', '-<br>-', 'CSE 303<br>R303', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Monday', '-<br>-', 'CSE 201<br>R302', 'CSE 303<br>R303', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Tuesday', 'CSE 202<br>LAB1', '-', '-', '<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Wednesday', 'CSE 304<br>LAB2', '-', '-', '-<br>-', 'CSE 202<br>R302', '-<br>-', '-<br>-'),
('Thursday', '-<br>-', '-<br>-', 'CSE 303<br>R303', 'CSE 201<br>R302', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `t011`
--

CREATE TABLE `t011` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t011`
--

INSERT INTO `t011` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CSE 301<br>R303', '-<br>-', '-<br>-'),
('Monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CSE 301<br>R303', '-<br>-', '-<br>-'),
('Tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CSE 302<br>LAB1', '-', '-'),
('Wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Thursday', '-<br>-', '-<br>-', '-<br>-', 'CSE 301<br>R303', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `t012`
--

CREATE TABLE `t012` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t012`
--

INSERT INTO `t012` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', 'CSE 101<br>R301', 'CSE 401<br>R106', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Monday', '-<br>-', '-<br>-', 'CSE 101<br>R301', '-<br>-', 'CSE 402<br>LAB2', '-', '-'),
('Tuesday', 'CSE 401<br>R106', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Wednesday', 'CSE 401<br>R106', '-<br>-', 'CSE 101<br>R301', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Thursday', 'CSE 102<br>LAB1', '-', '-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `t013`
--

CREATE TABLE `t013` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t013`
--

INSERT INTO `t013` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `t014`
--

CREATE TABLE `t014` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t014`
--

INSERT INTO `t014` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', '-<br>-', 'CSE 205<br>R302', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CSE 206<br>R302', '-<br>-'),
('Tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CSE 205<br>R302', '-<br>-'),
('Wednesday', '-<br>-', 'CSE 205<br>R302', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `t015`
--

CREATE TABLE `t015` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL,
  `period7` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t015`
--

INSERT INTO `t015` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Sunday', '-<br>-', '-<br>-', '-<br>-', 'CSE 309<br>MN', '-<br>-', '-<br>-', '-<br>-'),
('Monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Tuesday', '-<br>-', 'CSE 309<br>MN', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('Wednesday', '-<br>-', '-<br>-', '-<br>-', 'CSE 309<br>MN', '-<br>-', '-<br>-', '-<br>-'),
('Thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `Teacher_ID` varchar(10) NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(10) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `email_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`Teacher_ID`, `name`, `alias`, `designation`, `contact_number`, `email_id`) VALUES
('T015', 'Mahmubun Nahar', 'MN', 'Assistant Professor', '01770393499', 'mahbuba.knu@gmail.com'),
('T014', 'Kazi Mahmudul Hassan', 'KMH', 'Assistant Professor', '01676019438', 'kmhassan@jkkniu.edu.bd'),
('T013', 'Habiba Sultana', 'Hs', 'Assistant Professor', '01920296770', 'srity.cse@gmail.com'),
('T011', 'Pronob Kumar Mondol', 'PKM', 'Associate Professor', '01716589875', 'bappycseru@gmail.com'),
('T012', 'Rubya Shaharin', 'RS', 'Assistant Professor', '01911261976', 'sunshine.rr1@gmail.com'),
('T007', 'Dr. Md. Selim Al Mamun', 'SAM', 'Associate Professor', '01705575778', 'mamun0013@gmail.com'),
('T008', 'Subrata Kumar Das', 'SKD', 'Associate Professor', '01721006007', 'sdas_ce@yahoo.com'),
('T009', 'Dr.Tushar Kanti Saha', 'TKS', 'Associate Professor', '01711028510', 'tusharcsebd@gmail.com'),
('T010', 'Indrani Mandal', 'IM', 'Associate Professor', '01718333474', 'indranicsedu@yahoo.com'),
('T006', 'Dr. Uzzal Kumar Prodhan', 'UKP', 'Associate Professor', '01718045304', 'uzzalcseju@gmail.com'),
('T005', 'Professor Dr. Md. Sujan Ali', 'MSA', 'Professor', '01919817351', 'sujan_cse@jkkniu.edu.bd'),
('T004', 'Dr. Md. Saiful Islam', 'MSI', 'Professor', '01552637446', 'saifulmath@yahoo.com'),
('T002', 'Dr. Md. Mijanur Rahman', 'MMR', 'Professor', '01712594569', 'mijanjkkniu@gmail.com'),
('T003', 'Professor Dr. Mst Jannatul Ferdous', 'MJF', 'Professor', '01710695925', 'mjferdous_cse@jkkniu.edu.bd'),
('T001', 'Dr. A.H.M Kamal', 'AHMK', 'Professor', '01732226402', 'amakash12@gmail.com'),
('T016', 'Under SuperVisor', 'UST', '', '', 'amakash12@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `semester1`
--
ALTER TABLE `semester1`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester3`
--
ALTER TABLE `semester3`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester5`
--
ALTER TABLE `semester5`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester7`
--
ALTER TABLE `semester7`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester8`
--
ALTER TABLE `semester8`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `t014`
--
ALTER TABLE `t014`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`Teacher_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
