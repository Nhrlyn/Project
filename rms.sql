-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2023 at 08:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms`
--

-- --------------------------------------------------------

--
-- Table structure for table `decline`
--

CREATE TABLE `decline` (
  `C_ID` int(255) NOT NULL,
  `C_FULL` varchar(255) NOT NULL,
  `C_COU` varchar(255) NOT NULL,
  `C_YEAR` varchar(255) NOT NULL,
  `C_SID` varchar(255) NOT NULL,
  `C_documentType` varchar(255) NOT NULL,
  `C_documentType_2` varchar(255) NOT NULL,
  `C_documentType_3` varchar(255) NOT NULL,
  `C_numCopies` varchar(255) NOT NULL,
  `C_numCopies_2` varchar(255) NOT NULL,
  `C_numCopies_3` varchar(255) NOT NULL,
  `C_firstRequest` varchar(255) NOT NULL,
  `C_price` varchar(255) NOT NULL,
  `C_CODE` varchar(255) NOT NULL,
  `S_MES` varchar(255) NOT NULL,
  `C_ASIG` varchar(255) NOT NULL,
  `C_DATE` varchar(255) NOT NULL,
  `S_STA_STU` varchar(255) NOT NULL,
  `C_STAMP` varchar(100) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `done`
--

CREATE TABLE `done` (
  `D_ID` int(255) NOT NULL,
  `D_FULL` varchar(255) NOT NULL,
  `D_EMAIL` varchar(255) NOT NULL,
  `D_COU` varchar(255) NOT NULL,
  `D_YEAR` varchar(255) NOT NULL,
  `D_SID` varchar(255) NOT NULL,
  `D_NUM` varchar(255) NOT NULL,
  `D_ADD` varchar(255) NOT NULL,
  `D_UND` varchar(255) NOT NULL,
  `D_COM` varchar(255) NOT NULL,
  `D_POS` varchar(255) NOT NULL,
  `D_documentType` varchar(255) NOT NULL,
  `D_documentType_2` varchar(255) NOT NULL,
  `D_documentType_3` varchar(255) NOT NULL,
  `D_numCopies` varchar(255) NOT NULL,
  `D_numCopies_2` varchar(255) NOT NULL,
  `D_numCopies_3` varchar(255) NOT NULL,
  `D_firstRequest` varchar(255) NOT NULL,
  `D_price` varchar(255) NOT NULL,
  `D_fileInput` varchar(245) NOT NULL DEFAULT 'default-pp.png',
  `D_CODE` varchar(255) NOT NULL,
  `S_MES` varchar(255) NOT NULL,
  `D_DEL` varchar(255) NOT NULL,
  `D_ASIG` varchar(255) NOT NULL,
  `D_REA` varchar(255) NOT NULL,
  `D_DATE` varchar(255) NOT NULL,
  `D_DATE_DONE` varchar(255) NOT NULL,
  `D_STAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `S_STA_STU` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pannel` varchar(255) NOT NULL,
  `S_STA_REG` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `P_ID` int(255) NOT NULL,
  `P_FULL` varchar(250) NOT NULL,
  `P_EMAIL` varchar(255) NOT NULL,
  `P_COU` varchar(250) NOT NULL,
  `P_YEAR` varchar(250) NOT NULL,
  `P_SID` varchar(250) NOT NULL,
  `P_NUM` varchar(250) NOT NULL,
  `P_ADD` varchar(250) NOT NULL,
  `P_UND` varchar(250) NOT NULL,
  `P_COM` varchar(250) NOT NULL,
  `P_POS` varchar(250) NOT NULL,
  `P_documentType` varchar(250) NOT NULL,
  `P_documentType_2` varchar(255) NOT NULL,
  `P_documentType_3` varchar(255) NOT NULL,
  `P_numCopies` varchar(250) NOT NULL,
  `P_numCopies_2` varchar(255) NOT NULL,
  `P_numCopies_3` varchar(255) NOT NULL,
  `P_firstRequest` varchar(250) NOT NULL,
  `P_price` varchar(250) NOT NULL,
  `P_fileInput` varchar(250) NOT NULL DEFAULT 'default-pp.png',
  `P_PROOF` varchar(255) NOT NULL DEFAULT 'default-pp.png',
  `P_CODE` varchar(250) NOT NULL,
  `S_MES` varchar(250) NOT NULL,
  `P_DEL` varchar(255) NOT NULL,
  `P_ASIG` varchar(250) NOT NULL,
  `P_DATE` varchar(250) NOT NULL,
  `P_STAMP` timestamp NOT NULL DEFAULT current_timestamp(),
  `S_STA_STU` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `S_STA_PAY` varchar(255) NOT NULL,
  `pannel` varchar(255) NOT NULL,
  `S_STA_REG` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`P_ID`, `P_FULL`, `P_EMAIL`, `P_COU`, `P_YEAR`, `P_SID`, `P_NUM`, `P_ADD`, `P_UND`, `P_COM`, `P_POS`, `P_documentType`, `P_documentType_2`, `P_documentType_3`, `P_numCopies`, `P_numCopies_2`, `P_numCopies_3`, `P_firstRequest`, `P_price`, `P_fileInput`, `P_PROOF`, `P_CODE`, `S_MES`, `P_DEL`, `P_ASIG`, `P_DATE`, `P_STAMP`, `S_STA_STU`, `link`, `S_STA_PAY`, `pannel`, `S_STA_REG`) VALUES
(230, 'Hanter John Odiza Ison', 'hanterjohnison@gmail.com', 'course1', 'year1', '', '09277531488', '123 Cabanatuan city marawa Nueva ecija Manila', '', 'Araulo university', '', 'Certificate of Graduation', '', '', '1', '', '', 'no', '₱150', 'default-pp.png', 'default-pp.png', '5135535269', 'send proof of payment', 'pick up', 'kazandra reyes', '2023-09-06', '2023-10-06 04:27:41', 'seen', '', '', 'payment', ''),
(234, 'Jewel miranda padilla', 'jewel@gmail.com', 'BSIT', '2nd year', '01-292-291', '09277531488', '123 Cabanatuan city Bantog Nueva ecija Manila', '', 'Araulo university', '', 'TOR for reference', '', '', '1', '', '', 'no', '₱250', 'default-pp.png', 'default-pp.png', '1403837560', 'send proof of payment', 'pick up', 'liane maie', '2023-09-29', '2023-10-03 13:55:46', 'seen', '', '', 'payment', ''),
(247, 'Hanter John Odiza Ison', 'hanterjohnison@gmail.com', 'course1', 'year1', '', '091111111111', '123 Cabanatuan city marawa Quezon Manila', '', 'Araulo university', '', 'TOR for reference', '', '', '1', '', '', 'no', '₱400', 'default-pp.png', 'default-pp.png', '3505621548', 'send proof of payment', 'pick up', 'kazandra reyes', '2023-10-07', '2023-10-08 04:32:35', 'unseen', '', '', 'payment', ''),
(248, '  Halogen Ison', 'halogen@gmail.com', 'Course3', 'Year 4', '01-2021-30213', '', '    ', '', '', '', 'Certificate of Enrollment', '', '', '1', '', '', 'no', '₱150', 'default-pp.png', 'default-pp.png', '8234039485', 'send proof of payment', 'pick up', 'kazandra reyes', '2023-10-08', '2023-10-08 04:32:37', 'unseen', '', '', 'payment', '');

-- --------------------------------------------------------

--
-- Table structure for table `process`
--

CREATE TABLE `process` (
  `O_ID` int(250) NOT NULL,
  `O_FULL` varchar(250) NOT NULL,
  `O_EMAIL` varchar(250) NOT NULL,
  `O_COU` varchar(250) NOT NULL,
  `O_YEAR` varchar(250) NOT NULL,
  `O_SID` varchar(250) NOT NULL,
  `O_NUM` varchar(250) NOT NULL,
  `O_ADD` varchar(250) NOT NULL,
  `O_UND` varchar(250) NOT NULL,
  `O_COM` varchar(250) NOT NULL,
  `O_POS` varchar(250) NOT NULL,
  `O_documentType` varchar(250) NOT NULL,
  `O_documentType_2` varchar(255) NOT NULL,
  `O_documentType_3` varchar(255) NOT NULL,
  `O_numCopies` varchar(250) NOT NULL,
  `O_numCopies_2` varchar(255) NOT NULL,
  `O_numCopies_3` varchar(255) NOT NULL,
  `O_firstRequest` varchar(250) NOT NULL,
  `O_price` varchar(250) NOT NULL,
  `O_fileInput` varchar(250) NOT NULL DEFAULT 'default-pp.png',
  `O_CODE` varchar(250) NOT NULL,
  `S_MES` varchar(250) NOT NULL,
  `O_DEL` varchar(250) NOT NULL,
  `O_ASIG` varchar(250) NOT NULL,
  `O_DATE` varchar(250) NOT NULL,
  `O_STAMP` timestamp NOT NULL DEFAULT current_timestamp(),
  `S_STA_STU` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pannel` varchar(255) NOT NULL,
  `S_STA_REG` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `process`
--

INSERT INTO `process` (`O_ID`, `O_FULL`, `O_EMAIL`, `O_COU`, `O_YEAR`, `O_SID`, `O_NUM`, `O_ADD`, `O_UND`, `O_COM`, `O_POS`, `O_documentType`, `O_documentType_2`, `O_documentType_3`, `O_numCopies`, `O_numCopies_2`, `O_numCopies_3`, `O_firstRequest`, `O_price`, `O_fileInput`, `O_CODE`, `S_MES`, `O_DEL`, `O_ASIG`, `O_DATE`, `O_STAMP`, `S_STA_STU`, `link`, `pannel`, `S_STA_REG`) VALUES
(231, 'Hanter John Odiza Ison', 'hanterjohnison@gmail.com', 'course1', 'year1', '', '09277531488', '123 Cabanatuan city marawa Nueva ecija Manila', '', 'Araulo university', '', 'Certificate of Graduation', '', '', '1', '', '', 'no', '₱0', 'default-pp.png', '1007990790', 'waiting', 'pick up', 'liane maie', '2023-09-06', '2023-10-08 15:57:46', 'unseen', '', 'on precess request', 'unseen'),
(232, 'Hanter John Odiza Ison', 'hanterjohnison@gmail.com', 'course1', 'year1', '', '09277531488', '123 Cabanatuan city marawa Nueva ecija Manila', '', 'Araulo university', '', 'Certificate of English Proficiency', '', '', '1', '', '', 'no', '₱150', 'default-pp.png', '1763528236', 'processing request', 'pick up', 'Arturo', '2023-09-06', '2023-09-12 11:36:42', 'unseen', '', 'on precess request', 'seen'),
(233, 'Jewel miranda padilla', 'jewel@gmail.com', 'BSIT', '2nd year', '01-292-291', '09277531488', '123 Cabanatuan city Bantog Nueva ecija Manila', '', 'Araulo university', '', 'TOR for reference', '', '', '1', '', '', 'yes', '₱0', 'default-pp.png', '5378968487', 'waiting', 'pick up', 'kazandra reyes', '2023-09-29', '2023-10-08 15:58:07', 'unseen', '', 'on precess request', 'unseen'),
(249, 'shiela mae robles  ', 'Shiela@gmail.com', 'course2', 'year3', '01-2021-30213', '', '    ', '', '', '', 'Certificate of Graduation', '', '', '1', '', '', 'no', '₱150', 'default-pp.png', '2517549525', 'waiting', 'pick up', 'liane maie', '2023-10-08', '2023-10-08 15:58:20', 'unseen', '', 'on precess request', 'unseen');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `R_ID` int(255) NOT NULL,
  `R_FULL` varchar(250) NOT NULL,
  `R_FIRST` varchar(255) NOT NULL,
  `R_MIDD` varchar(255) NOT NULL,
  `R_STU` varchar(250) NOT NULL,
  `R_COU` varchar(250) NOT NULL,
  `R_YEAR` varchar(250) NOT NULL,
  `R_EMAIL` varchar(250) NOT NULL,
  `R_PASS` varchar(250) NOT NULL,
  `R_UN` varchar(250) NOT NULL,
  `R_POS` varchar(250) NOT NULL,
  `R_COM` varchar(250) NOT NULL,
  `R_CON` varchar(250) NOT NULL,
  `R_ADD` varchar(250) NOT NULL,
  `R_STRE` varchar(255) NOT NULL,
  `R_BRGY` varchar(255) NOT NULL,
  `R_MUNI` varchar(255) NOT NULL,
  `R_CITY` varchar(255) NOT NULL,
  `R_CODE` varchar(255) NOT NULL,
  `R_VERIFIED` varchar(255) NOT NULL,
  `R_RORA` varchar(255) NOT NULL,
  `R_RULL` varchar(255) NOT NULL,
  `R_CODE_ISSUE_TIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `R_IMG` varchar(250) NOT NULL DEFAULT 'default-pp.png',
  `R_DATE` date DEFAULT current_timestamp(),
  `R_STATUS` varchar(255) NOT NULL,
  `R_SMS` varchar(255) NOT NULL,
  `R_STU_POS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`R_ID`, `R_FULL`, `R_FIRST`, `R_MIDD`, `R_STU`, `R_COU`, `R_YEAR`, `R_EMAIL`, `R_PASS`, `R_UN`, `R_POS`, `R_COM`, `R_CON`, `R_ADD`, `R_STRE`, `R_BRGY`, `R_MUNI`, `R_CITY`, `R_CODE`, `R_VERIFIED`, `R_RORA`, `R_RULL`, `R_CODE_ISSUE_TIMESTAMP`, `R_IMG`, `R_DATE`, `R_STATUS`, `R_SMS`, `R_STU_POS`) VALUES
(61, 'Ison', 'Hanter John', 'Odiza', '02-2431-30431', 'course1', 'year1', 'hanterjohnison@gmail.com', '123123123', '', '', 'Araulo university', '091111111111', '123', 'Cabanatuan city', 'marawa', 'Quezon', 'Manila', '300039', '1', 'approve', 'already used', '2023-10-08 12:10:53', 'Ison64ee8f872fe832.82508647.png', '2023-08-30', 'Not Active', 'Enable', 'Student'),
(62, 'ronaldo delapaz', '', '', '01-2021-30213', '', '', 'ronaldo@gmail.com', '123', '', 'Registrar', 'Araulo university', '', '', '', '', '', '', '', '3', 'approve', '', '2023-10-08 15:34:39', 'default-pp.png', '2023-08-30', 'Not Active', 'Enable', ''),
(63, 'kazandra reyes', '', '', '01-2013-38821', '', '', 'kazan@gmail.com', '123', '', 'Registrar', 'Araulo university', '09743737235', '', '', '', '', '', '', '3', 'approve', '', '2023-10-08 04:32:38', 'default-pp.png', '2023-08-30', 'Not Active', 'Enable', ''),
(64, 'liane maie', '', '', '01-2043-30232', '', '', 'lian@gmail.com', '123', '', 'Registrar', 'Araulo university', '', '', '', '', '', '', '', '3', 'approve', '', '2023-10-08 16:25:37', 'default-pp.png', '2023-08-30', 'Not Active', 'Enable', ''),
(65, 'tomoro', 'archie', 'rarawa', '02-2421-4123', 'course1', 'year2', 'archie@gmail.com', '123123123', '', '', '', '096312637', '123', 'mangga', 'damayan', 'marawa', 'jaen', '', '1', 'approve', 'already used', '2023-10-07 17:25:17', 'tomoro64ef00af1e4fe3.55153728.jpg', '2023-08-30', 'Not Active', 'Enable', 'Student'),
(66, 'jhason padilla', '', '', '01-2021-9392', '', '', 'jhason@gmail.com', '123', '', 'Cashier', 'Phinma Araulo', '09737134322', '', '', '', '', '', '', '2', 'approve', '', '2023-10-08 15:58:23', 'default-pp.png', '2023-08-31', 'Not Active', '', ''),
(67, 'padilla', 'Jewel', 'miranda', '01-292-291', 'BSIT', '2nd year', 'jewel@gmail.com', '123', '', '', 'Araulo university', '09277531488', '123', 'Cabanatuan city', 'Bantog', 'Llanera', 'Manila', '', '1', 'approve', 'already used', '2023-10-08 10:45:28', 'default-pp.png', '2023-08-31', 'Not Active', 'Enable', 'Student'),
(93, 'admin', '', '', '03-4321-5424', '', '', 'admin@gmail.com', '123', '', 'Admin', 'Araulo university', '', '', '', '', '', '', '', '4', 'approve', '', '2023-10-08 17:12:51', 'default-pp.png', '2023-10-07', 'Active', 'Enable', ''),
(135, 'Aliza', 'Mendoza', 'Marcez', '01-2013-38821', 'course1', 'year3', 'Aliza@gmail.com', '123123123', '', 'Cashier', 'Araulo university', '09277531488', '123', 'damayan', 'marawa', 'Jaen', 'Nueva ecija', '', '1', 'approve', '', '2023-10-07 16:09:36', 'Aliza652172c2351ee4.69975193.png', '2023-10-07', 'Not Active', 'Enable', 'Student'),
(136, 'Marylin bartolome', '', '', '01-2021-30213', 'Course1', '123', 'Marylin@gmail.com', '123', '', '', '', '', '', '', '', '', '', '', '1', 'approve', '', '2023-10-07 17:08:31', 'default-pp.png', '2023-10-08', 'Not Active', 'Enable', 'Student'),
(137, 'Halogen Ison', '', '', '01-2021-30213', 'Course3', 'Year 4', 'halogen@gmail.com', '123', '', '', '', '', '', '', '', '', '', '', '1', 'approve', '', '2023-10-07 17:39:55', 'default-pp.png', '2023-10-08', 'Not Active', 'Enable', 'Student'),
(138, 'Hanz Ison', '', '', '01-3921-9321', 'Course2', 'Year 4', 'hanz@gmail.com', '123', '', '', '', '', '', '', '', '', '', '', '1', 'approve', '', '2023-10-07 17:39:53', 'default-pp.png', '2023-10-08', 'Not Active', 'Enable', 'Student'),
(139, '', 'shiela mae robles', '', '01-2021-30213', 'course2', 'year3', 'Shiela@gmail.com', '123', '', '', '', '', '', '', '', '', '', '', '1', 'approve', '', '2023-10-07 17:26:34', 'default-pp.png', '2023-10-08', 'Not Active', 'Enable', 'Student'),
(140, '', 'Aman roy', '', '01-3921-9321', 'Course2', 'Year 4', 'aman@gmail.com', '123', '', '', '', '', '', '', '', '', '', '', '1', 'approve', '', '2023-10-08 12:52:32', 'default-pp.png', '2023-10-08', 'Not Active', 'Enable', 'Student'),
(141, 'Marlon', 'Basangan', 'Delmonte', '01-2013-38821', 'course1', 'year2', 'Marlon@gmail.com', '123123123', '', 'Cashier', 'Araulo university', '09728371723', '321', 'purok 4', 'lordez', 'Cabanatuan City', 'Nueva ecija', '', '1', 'approve', '', '2023-10-08 05:44:50', 'Marlon6521960a9b3b14.09492360.jpg', '2023-10-08', 'Not Active', 'Enable', 'Alumni '),
(142, 'Arturo', '', '', '01-2021-30213', '', '', 'Arturo@gmail.com', '123', '', 'Registrar', 'Araulo university', '', '', '', '', '', '', '', '3', 'approve', '', '2023-10-08 10:08:45', 'default-pp.png', '2023-10-08', '', 'Enable', '');

-- --------------------------------------------------------

--
-- Table structure for table `releasing`
--

CREATE TABLE `releasing` (
  `L_ID` int(250) NOT NULL,
  `L_FULL` varchar(250) NOT NULL,
  `L_EMAIL` varchar(250) NOT NULL,
  `L_COU` varchar(250) NOT NULL,
  `L_YEAR` varchar(250) NOT NULL,
  `L_SID` varchar(250) NOT NULL,
  `L_NUM` varchar(250) NOT NULL,
  `L_ADD` varchar(250) NOT NULL,
  `L_UND` varchar(250) NOT NULL,
  `L_COM` varchar(250) NOT NULL,
  `L_POS` varchar(250) NOT NULL,
  `L_documentType` varchar(250) NOT NULL,
  `L_documentType_2` varchar(255) NOT NULL,
  `L_documentType_3` varchar(255) NOT NULL,
  `L_numCopies` varchar(250) NOT NULL,
  `L_numCopies_2` varchar(255) NOT NULL,
  `L_numCopies_3` varchar(255) NOT NULL,
  `L_firstRequest` varchar(250) NOT NULL,
  `L_price` varchar(250) NOT NULL,
  `L_fileInput` varchar(250) NOT NULL DEFAULT 'default-pp.png',
  `L_CODE` varchar(250) NOT NULL,
  `S_MES` varchar(250) NOT NULL,
  `L_DEL` varchar(250) NOT NULL,
  `L_ASIG` varchar(250) NOT NULL,
  `L_REA` varchar(255) NOT NULL,
  `L_DATE` varchar(250) NOT NULL,
  `L_DATE_DONE` date DEFAULT current_timestamp(),
  `L_STAMP` timestamp NOT NULL DEFAULT current_timestamp(),
  `S_STA_STU` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pannel` varchar(255) NOT NULL,
  `S_STA_REG` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `releasing`
--

INSERT INTO `releasing` (`L_ID`, `L_FULL`, `L_EMAIL`, `L_COU`, `L_YEAR`, `L_SID`, `L_NUM`, `L_ADD`, `L_UND`, `L_COM`, `L_POS`, `L_documentType`, `L_documentType_2`, `L_documentType_3`, `L_numCopies`, `L_numCopies_2`, `L_numCopies_3`, `L_firstRequest`, `L_price`, `L_fileInput`, `L_CODE`, `S_MES`, `L_DEL`, `L_ASIG`, `L_REA`, `L_DATE`, `L_DATE_DONE`, `L_STAMP`, `S_STA_STU`, `link`, `pannel`, `S_STA_REG`) VALUES
(226, 'Hanter John Odiza Ison', 'hanterjohnison@gmail.com', 'course1', 'year1', '', '09277531488', '123 Cabanatuan city marawa Nueva ecija Manila', '', 'Araulo university', '', 'Authentication', '', '', '1', '', '', 'no', '₱0', 'Hanter John Odiza Ison64f75463c5e8e9.00624728.jpg', '5087077669', 'ready to pick up', 'pick up', 'ronaldo delapaz', '', '2023-09-06', '2023-10-08', '2023-10-08 15:34:35', 'unseen', '', 'releasing request', '');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `S_ID` int(250) NOT NULL,
  `S_EMAIL` varchar(255) NOT NULL,
  `S_FULL` varchar(250) NOT NULL,
  `S_COU` varchar(250) NOT NULL,
  `S_YEAR` varchar(250) NOT NULL,
  `S_SID` varchar(250) NOT NULL,
  `S_NUM` varchar(250) NOT NULL,
  `S_ADD` varchar(250) NOT NULL,
  `S_UND` varchar(250) NOT NULL,
  `S_COM` varchar(250) NOT NULL,
  `S_POS` varchar(250) NOT NULL,
  `documentType` varchar(250) NOT NULL,
  `documentType_2` varchar(255) NOT NULL,
  `documentType_3` varchar(255) NOT NULL,
  `numCopies` varchar(250) NOT NULL,
  `numCopies_2` varchar(255) NOT NULL,
  `numCopies_3` varchar(255) NOT NULL,
  `firstRequest` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `fileInput` varchar(250) NOT NULL DEFAULT 'default-pp.png',
  `S_CODE` varchar(250) NOT NULL,
  `S_MES` varchar(255) NOT NULL,
  `S_ASIG` varchar(250) NOT NULL,
  `S_DEL` varchar(250) NOT NULL,
  `S_DATE` date DEFAULT current_timestamp(),
  `S_STUN` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `S_STA_STU` varchar(255) NOT NULL,
  `S_STA_REG` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pannel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`S_ID`, `S_EMAIL`, `S_FULL`, `S_COU`, `S_YEAR`, `S_SID`, `S_NUM`, `S_ADD`, `S_UND`, `S_COM`, `S_POS`, `documentType`, `documentType_2`, `documentType_3`, `numCopies`, `numCopies_2`, `numCopies_3`, `firstRequest`, `price`, `fileInput`, `S_CODE`, `S_MES`, `S_ASIG`, `S_DEL`, `S_DATE`, `S_STUN`, `S_STA_STU`, `S_STA_REG`, `link`, `pannel`) VALUES
(245, 'hanterjohnison@gmail.com', 'Hanter John Odiza Ison', 'course1', 'year1', '', '091111111111', '123 Cabanatuan city marawa Quezon Manila', '', 'Araulo university', '', 'Authentication', 'HONOROBALE DISMISSAL', 'FORM - 137', '1', '1', '1', 'no', '₱730', 'Hanter John Odiza Ison6520b480c40a17.53109207.jpg', '4871488918', 'waiting', 'kazandra reyes', 'deliver', '2023-10-07', '2023-10-08 10:27:42', '', 'unseen', '', 'pending request'),
(246, 'hanterjohnison@gmail.com', 'Hanter John Odiza Ison', 'course1', 'year1', '', '091111111111', '123 Cabanatuan city marawa Quezon Manila', '', 'Araulo university', '', 'Certificate of Grades', '', '', '1', '', '', 'no', '₱150', 'default-pp.png', '8724030562', 'waiting', 'ronaldo delapaz', 'pick up', '2023-10-07', '2023-10-08 10:27:32', '', 'unseen', '', 'pending request'),
(250, 'jewel@gmail.com', 'Jewel miranda padilla', 'BSIT', '2nd year', '01-292-291', '09277531488', '123 Cabanatuan city Bantog Llanera Manila', '', 'Araulo university', '', 'Certificate of Graduation', '', '', '1', '', '', 'no', '₱150', 'default-pp.png', '5975993360', 'waiting', 'liane maie', 'pick up', '2023-10-08', '2023-10-08 10:27:42', '', 'unseen', '', 'pending request'),
(251, 'jewel@gmail.com', 'Jewel miranda padilla', 'BSIT', '2nd year', '01-292-291', '09277531488', '123 Cabanatuan city Bantog Llanera Manila', '', 'Araulo university', '', 'Certificate of Unit Earned', '', '', '1', '', '', 'no', '₱150', 'default-pp.png', '1722957728', 'waiting', 'ronaldo delapaz', 'pick up', '2023-10-08', '2023-10-08 10:27:36', '', 'unseen', '', 'pending request'),
(252, 'jewel@gmail.com', 'Jewel miranda padilla', 'BSIT', '2nd year', '01-292-291', '09277531488', '123 Cabanatuan city Bantog Llanera Manila', '', 'Araulo university', '', 'Certificate of Graduation', '', '', '1', '', '', 'no', '₱150', 'default-pp.png', '6715663712', 'waiting', 'kazandra reyes', 'pick up', '2023-10-08', '2023-10-08 10:27:36', '', 'unseen', '', 'pending request'),
(253, 'hanterjohnison@gmail.com', 'Hanter John Odiza Ison', 'course1', 'year1', '02-2431-30431', '091111111111', '123 Cabanatuan city marawa Quezon Manila', '', 'Araulo university', '', 'Certificate of Grades', '', '', '1', '', '', 'no', '₱150', 'default-pp.png', '8979595799', 'waiting', 'liane maie', 'pick up', '2023-10-08', '2023-10-08 10:39:02', '', 'unseen', '', 'pending request'),
(254, 'hanterjohnison@gmail.com', 'Hanter John Odiza Ison', 'course1', 'year1', '02-2431-30431', '091111111111', '123 Cabanatuan city marawa Quezon Manila', '', 'Araulo university', '', 'Certificate of English Proficiency', '', '', '1', '', '', 'no', '₱150', 'default-pp.png', '3264211366', 'waiting', 'ronaldo delapaz', 'pick up', '2023-10-08', '2023-10-08 10:39:02', '', 'unseen', '', 'pending request'),
(255, 'hanterjohnison@gmail.com', 'Hanter John Odiza Ison', 'course1', 'year1', '02-2431-30431', '091111111111', '123 Cabanatuan city marawa Quezon Manila', '', 'Araulo university', '', 'Certificate of Graduation', '', '', '1', '', '', 'no', '₱150', 'default-pp.png', '5940688125', 'waiting', 'kazandra reyes', 'pick up', '2023-10-08', '2023-10-08 10:27:32', '', 'unseen', '', 'pending request'),
(256, 'jewel@gmail.com', 'Jewel miranda padilla', 'BSIT', '2nd year', '01-292-291', '09277531488', '123 Cabanatuan city Bantog Llanera Manila', '', 'Araulo university', '', 'Certificate of Enrollment', '', '', '2', '', '', 'no', '₱300', 'default-pp.png', '2705771842', 'waiting', 'Arturo', 'pick up', '2023-10-08', '2023-10-08 10:45:13', '', 'unseen', '', 'pending request'),
(257, 'jewel@gmail.com', 'Jewel miranda padilla', 'BSIT', '2nd year', '01-292-291', '09277531488', '123 Cabanatuan city Bantog Llanera Manila', '', 'Araulo university', '', 'Certificate of Grades', 'Certificate of Unit Earned', '', '1', '2', '', 'no', '₱450', 'default-pp.png', '5299771681', 'waiting', 'liane maie', 'pick up', '2023-10-08', '2023-10-08 10:45:26', '', 'unseen', '', 'pending request'),
(258, 'aman@gmail.com', 'Aman roy  ', 'Course2', 'Year 4', '01-3921-9321', '', '    ', '', '', '', 'Certificate of Enrollment', '', '', '1', '', '', 'no', '₱150', 'default-pp.png', '7013148740', 'waiting', 'ronaldo delapaz', 'pick up', '2023-10-08', '2023-10-08 12:52:25', '', 'unseen', '', 'pending request'),
(259, 'aman@gmail.com', 'Aman roy  ', 'Course2', 'Year 4', '01-3921-9321', '', '    ', '', '', '', 'CAV', '', '', '1', '', '', 'no', '₱200', 'Aman roy  6522a60f5bc293.49708432.png', '5361865436', 'waiting', 'kazandra reyes', 'pick up', '2023-10-08', '2023-10-08 12:52:31', '', 'unseen', '', 'pending request');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `decline`
--
ALTER TABLE `decline`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `done`
--
ALTER TABLE `done`
  ADD PRIMARY KEY (`D_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`P_ID`);

--
-- Indexes for table `process`
--
ALTER TABLE `process`
  ADD PRIMARY KEY (`O_ID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`R_ID`);

--
-- Indexes for table `releasing`
--
ALTER TABLE `releasing`
  ADD PRIMARY KEY (`L_ID`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`S_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `decline`
--
ALTER TABLE `decline`
  MODIFY `C_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `done`
--
ALTER TABLE `done`
  MODIFY `D_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `P_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `process`
--
ALTER TABLE `process`
  MODIFY `O_ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `R_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `releasing`
--
ALTER TABLE `releasing`
  MODIFY `L_ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `S_ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
