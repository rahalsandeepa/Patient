-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 07:59 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helthcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `appoinment`
--

CREATE TABLE `appoinment` (
  `appoinmentId` int(11) NOT NULL,
  `appoinmentDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `patientId` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL,
  `docId` int(11) NOT NULL,
  `hospitalId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `docId` int(11) NOT NULL,
  `fName` varchar(100) NOT NULL,
  `lNmae` varchar(100) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `age` int(11) NOT NULL,
  `docNIC` varchar(13) NOT NULL,
  `docEmail` varchar(200) DEFAULT NULL,
  `passwod` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doc_phoneno`
--

CREATE TABLE `doc_phoneno` (
  `dPId` int(11) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `docId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospitalId` int(11) NOT NULL,
  `hospitalNmae` varchar(100) NOT NULL,
  `hospitalAddress` varchar(200) NOT NULL,
  `hospitalEmail` varchar(50) DEFAULT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hospitaldoctor`
--

CREATE TABLE `hospitaldoctor` (
  `docId` int(11) NOT NULL,
  `hospitalId` int(11) NOT NULL,
  `avaliableDate` varchar(100) NOT NULL,
  `avaliableTime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `host_phoneno`
--

CREATE TABLE `host_phoneno` (
  `hPId` int(11) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `hospitalId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laboratoryreport`
--

CREATE TABLE `laboratoryreport` (
  `labId` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `LabDate` date NOT NULL,
  `Desacription` varchar(600) NOT NULL,
  `patientId` int(11) NOT NULL,
  `hospitalId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientId` int(11) NOT NULL,
  `fNmae` varchar(50) NOT NULL,
  `lName` varchar(50) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `age` int(11) NOT NULL,
  `patientNIC` varchar(13) NOT NULL,
  `address` varchar(500) NOT NULL,
  `patientEmail` varchar(200) NOT NULL,
  `passwod` varchar(500) NOT NULL,
  `phoneNumber` int(15) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientId`, `fNmae`, `lName`, `gender`, `age`, `patientNIC`, `address`, `patientEmail`, `passwod`, `phoneNumber`, `status`) VALUES
(2, 'Lassa', 'dewpriya', 'Male', 21, '98011705V', 'maharagama', 'lassa@gmail.com', '6958', 774755359, 'Deleted'),
(3, 'Sunil', 'chamara', 'male', 25, '990181705V', 'homagama', 'rall@gmail.com', '8899', 112897509, 'Deleted'),
(4, 'gagena', 'perera', 'Male', 21, '98011705V', 'maharagama', 'lassa@gmail.com', '6958', 774755359, 'Deleted'),
(5, 'kamal', 'sandeepa', 'Male', 27, '9801827123V', 'kottawa', 'nimal@gmail.com', '8899', 774755359, 'Deleted'),
(6, 'gyi', 'wijethunga', 'Male', 27, '9801827123V', 'kottawa', 'nimal@gmail.com', '8899', 774755359, 'Deleted'),
(7, 'uobjl', 'cxujfgu', 'Male', 32, '9801827123V', 'kottawa', 'nimal@gmail.com', '8899', 774755359, 'Deleted'),
(8, 'kkkkkk', 'ooooo', 'Male', 32, '9801657123V', 'ppoo', 'nimal@gmail.com', '8899', 774755359, 'Deleted'),
(9, 'kkkkkk', 'ooooo', 'Male', 32, '9801657123V', 'ppoo', 'nimal@gmail.com', '8899', 774755359, 'Deleted'),
(10, ',,ojhin', 'swest', 'Male', 40, '9801657123V', 'ppoo', 'nimal@gmail.com', '8899', 774755359, 'Deleted'),
(11, 'sahanA', 'sadaruwan', 'Male', 50, '980985676V', 'colombo', 'sahan%40gmail.com', '%099698', 774722897, 'active'),
(12, 'supun', 'perera', 'Male', 25, '980985676V', 'kottawa', 'supun@gmail.com', '1144', 774090678, 'Deleted'),
(13, 'Rasitha%2Bsadini', 'perera', 'Male', 30, '950985676V', 'makubura', 'rasitha%40gmail.com', '1177', 774090678, 'active'),
(14, 'lasan%2Btharu', 'deuwpiya', 'Male', 45, '8529634V', '187%252F5gdiwqdoqs', 'lasan%2540gmail.com', 'cdcwqdvhq', 713242322, 'Deleted'),
(15, 'Rahal', 'sandeepa', 'Male', 21, '1122334523', 'maharagama', 'ralla%40gmail.com', '12358', 1223455, 'active'),
(16, 'adsd', 'sd', 'Male', 40, 'wsdew', 'dsvdvs', 'sdvd', '3r', 713243533, 'Deleted'),
(17, 'wwww', 'eeeeeeee', 'Male', 34, 'fdse2er', 'fsdvdfb', 'fbdf', 'fbdf', 713242533, 'Deleted'),
(18, 'erfew', 'wegw', 'Male', 45, 'erberebv', 'fbefb', 'dfbf', 'dsfb', 713214233, 'Deleted'),
(19, 'Tharuukula', 'kulathunga', 'Female', 24, '97543677', 'kandy', 'tharuu%40gmail.com', '123', 776453235, 'active'),
(20, 'NimalS', 'kamalS', 'Male', 50, '998556522', 'kottawa', 'nimal%40gmail.com', '2211', 774533289, 'Deleted');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentId` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paymentDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD PRIMARY KEY (`appoinmentId`),
  ADD KEY `patientId` (`patientId`),
  ADD KEY `paymentId` (`paymentId`),
  ADD KEY `docId` (`docId`),
  ADD KEY `hospitalId` (`hospitalId`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`docId`);

--
-- Indexes for table `doc_phoneno`
--
ALTER TABLE `doc_phoneno`
  ADD PRIMARY KEY (`dPId`),
  ADD KEY `docId` (`docId`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospitalId`);

--
-- Indexes for table `hospitaldoctor`
--
ALTER TABLE `hospitaldoctor`
  ADD PRIMARY KEY (`docId`,`hospitalId`),
  ADD KEY `docId` (`docId`),
  ADD KEY `hospitalId` (`hospitalId`);

--
-- Indexes for table `host_phoneno`
--
ALTER TABLE `host_phoneno`
  ADD PRIMARY KEY (`hPId`),
  ADD KEY `hospitalId` (`hospitalId`);

--
-- Indexes for table `laboratoryreport`
--
ALTER TABLE `laboratoryreport`
  ADD PRIMARY KEY (`labId`),
  ADD KEY `patientId` (`patientId`),
  ADD KEY `hospitalId` (`hospitalId`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoinment`
--
ALTER TABLE `appoinment`
  MODIFY `appoinmentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doc_phoneno`
--
ALTER TABLE `doc_phoneno`
  MODIFY `dPId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospitalId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `host_phoneno`
--
ALTER TABLE `host_phoneno`
  MODIFY `hPId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laboratoryreport`
--
ALTER TABLE `laboratoryreport`
  MODIFY `labId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD CONSTRAINT `FK_appoinment_1` FOREIGN KEY (`patientId`) REFERENCES `patient` (`patientId`),
  ADD CONSTRAINT `FK_appoinment_2` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`paymentId`),
  ADD CONSTRAINT `FK_appoinment_3` FOREIGN KEY (`docId`) REFERENCES `doctor` (`docId`),
  ADD CONSTRAINT `FK_appoinment_4` FOREIGN KEY (`hospitalId`) REFERENCES `hospital` (`hospitalId`);

--
-- Constraints for table `doc_phoneno`
--
ALTER TABLE `doc_phoneno`
  ADD CONSTRAINT `FK_doc_phoneno_1` FOREIGN KEY (`docId`) REFERENCES `doctor` (`docId`);

--
-- Constraints for table `hospitaldoctor`
--
ALTER TABLE `hospitaldoctor`
  ADD CONSTRAINT `FK_hospitaldoctor_1` FOREIGN KEY (`docId`) REFERENCES `doctor` (`docId`),
  ADD CONSTRAINT `FK_hospitaldoctor_2` FOREIGN KEY (`hospitalId`) REFERENCES `hospital` (`hospitalId`);

--
-- Constraints for table `host_phoneno`
--
ALTER TABLE `host_phoneno`
  ADD CONSTRAINT `FK_host_phoneno_1` FOREIGN KEY (`hospitalId`) REFERENCES `hospital` (`hospitalId`);

--
-- Constraints for table `laboratoryreport`
--
ALTER TABLE `laboratoryreport`
  ADD CONSTRAINT `FK_laboratoryreport_1` FOREIGN KEY (`hospitalId`) REFERENCES `hospital` (`hospitalId`),
  ADD CONSTRAINT `FK_laboratoryreport_2` FOREIGN KEY (`patientId`) REFERENCES `patient` (`patientId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
