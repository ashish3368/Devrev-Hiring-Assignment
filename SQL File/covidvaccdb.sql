-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2022 at 05:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covidvaccdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 1122334455, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-08-31 06:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `UserName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `UserName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Moshin', 'mos123', 7894566123, 'mos@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-07-22 11:16:53'),
(2, 'test', 'test123', 7946547897, 'test@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-07-22 12:34:42'),
(3, 'Rahul Kumar', 'rahul123', 8797979798, 'rahul@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-08-23 12:20:36'),
(4, 'Anuj Kumar', 'anujk30', 1234568900, 'ak30@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-10-29 06:58:27'),
(5, 'Amit Kumar Singh', 'amitk12', 1234569870, 'amitk12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-10-29 08:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblvaccinationbooking`
--

CREATE TABLE `tblvaccinationbooking` (
  `ID` int(5) NOT NULL,
  `UserID` int(5) DEFAULT NULL,
  `BookingNumber` int(10) DEFAULT NULL,
  `Patient` varchar(250) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `IdentityProof` varchar(250) DEFAULT NULL,
  `IdentityNumber` varchar(250) DEFAULT NULL,
  `VaccineType` varchar(100) DEFAULT NULL,
  `VaccineCenterid` int(5) DEFAULT NULL,
  `DateofVaccination` date DEFAULT NULL,
  `BookingSlots` varchar(250) DEFAULT NULL,
  `Dose` varchar(250) DEFAULT NULL,
  `DateofBooking` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `VaccinationDoneby` int(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvaccinationbooking`
--

INSERT INTO `tblvaccinationbooking` (`ID`, `UserID`, `BookingNumber`, `Patient`, `Name`, `MobileNumber`, `IdentityProof`, `IdentityNumber`, `VaccineType`, `VaccineCenterid`, `DateofVaccination`, `BookingSlots`, `Dose`, `DateofBooking`, `Remark`, `Status`, `VaccinationDoneby`, `UpdationDate`) VALUES
(1, 3, 671854120, 'Father', 'Harishankar Tiwari', 7987977979, 'Aadhar Card', 'hjl45979456', 'Covaxine', 1, '2022-08-25', '4 pm to 6 pm', 'First Dose', '2022-08-24 09:20:16', NULL, NULL, NULL, NULL),
(2, 3, 490695498, 'Mother', 'Meenakshi Tiwari', 4464564644, 'Aadhar Card', '5jkl87ojj8774', 'Covaxine', 2, '2022-08-27', '4 pm to 6 pm', 'First Dose', '2022-08-24 09:22:22', 'Vaccination has been done', 'Vaccinated', 1, '2022-08-25 06:42:49'),
(3, 2, 546465059, 'Others', 'Mayank Tripathi', 4879457987, 'Voter Card', 'kjhkjhjkh4561', 'Pfizer-BioNTech', 4, '2022-08-28', '10 am to 12 pm', 'Booster Dose', '2022-08-24 09:23:56', NULL, NULL, NULL, NULL),
(4, 2, 312162559, 'Self', 'Test', 4564646464, 'Aadhar Card', 'kjhkjkpk7879', 'Pfizer-BioNTech', 4, '2022-08-26', '2 pm to 4 pm', 'First Dose', '2022-08-24 09:24:35', 'Vaccination has been done', 'Vaccinated', 3, '2022-10-29 12:03:14'),
(5, 3, 910963161, 'Others', 'Radha Krishnan', 9879797987, 'Voter Card', 'hjk78944jjh', 'Covi Shield', 2, '2022-08-24', '2 pm to 4 pm', 'Second Dose', '2022-08-25 05:34:48', NULL, NULL, NULL, NULL),
(6, 4, 266667132, 'Others', 'John Doe', 1234567890, 'Aadhar Card', '123456789098', 'Pfizer-BioNTech', 4, '2022-10-30', '12 pm to 2 pm', 'First Dose', '2022-10-29 07:09:22', NULL, NULL, NULL, NULL),
(7, 5, 462872093, 'Father', 'baldev Singh', 1425362514, 'Aadhar Card', '142536695847', 'Moderna COVID-19', 2, '2022-11-04', '2 pm to 4 pm', 'First Dose', '2022-10-29 08:56:36', 'First vaccination Dose is done', 'Vaccinated', 1, '2022-10-29 09:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblvaccinator`
--

CREATE TABLE `tblvaccinator` (
  `ID` int(5) NOT NULL,
  `VaccinationCenterID` int(11) DEFAULT NULL,
  `EmpID` varchar(250) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `NoofExp` int(5) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `JoiningDate` date DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvaccinator`
--

INSERT INTO `tblvaccinator` (`ID`, `VaccinationCenterID`, `EmpID`, `Name`, `MobileNumber`, `Email`, `Address`, `NoofExp`, `Password`, `JoiningDate`, `CreationDate`) VALUES
(1, 2, 'Emp-101', 'urban primary health center', 1234567890, 'shubh@gmail.com', 'J-809, Kailashpuram, Prayaggraj UP(221005)', 8, 'f925916e2754e5e03f75dd58a5733251', '2022-07-01', '2022-08-23 04:37:06'),
(2, 1, 'Emp-102', 'John', 6687678687, 'john@gmail.com', 'K-908 Harinagar Ghaziabad (UP)', 7, '202cb962ac59075b964b07152d234b70', '2022-02-05', '2022-08-23 04:38:59'),
(3, 4, 'Emp-103', 'Kunal Rohatgi', 5445545645, 'kunal@gmail.com', 'L-6788, Nallora Bhimpur,Kaziwada goan(Maharastra)', 12, '202cb962ac59075b964b07152d234b70', '2018-10-23', '2022-08-23 04:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblvaccinecenter`
--

CREATE TABLE `tblvaccinecenter` (
  `ID` int(5) NOT NULL,
  `Nameofvaccinecenter` varchar(250) DEFAULT NULL,
  `CenterAddress` mediumtext DEFAULT NULL,
  `State` varchar(250) DEFAULT NULL,
  `City` varchar(250) DEFAULT NULL,
  `Pincode` varchar(250) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvaccinecenter`
--

INSERT INTO `tblvaccinecenter` (`ID`, `Nameofvaccinecenter`, `CenterAddress`, `State`, `City`, `Pincode`, `CreationDate`) VALUES
(1, 'Apex Healthcare And Research Centre', '158, Gol Chakkar, near KDP, Raj Nagar Extension', 'Uttar Pradesh', 'Ghaziabad', '  201015', '2022-08-22 14:13:57'),
(2, 'urban primary health center', 'MFW2+QQH, Unnamed Road, Mansi Vihar, Sector 23, Sanjay Nagar', 'Uttar Pradesh', 'Ghaziabad', '201002', '2022-08-22 14:15:23'),
(3, 'Cantonment General Hospital', 'Cantonment General Hospital sadar Bazar, New Cantt', 'Uttar Pradesh', 'Prayagraj', '211001', '2022-08-22 14:16:58'),
(4, 'Dr ND Tahiliani Memorial Clinic', '22, Hastings Rd, Ashok Nagar', 'Uttar Pradesh', 'Prayagraj', ' 211001', '2022-08-22 14:18:02'),
(5, 'Primary Health Sub Center Abbigeri', 'TP, Naregal, ', 'Karnataka', 'Rona', '582111', '2022-08-22 14:19:18'),
(6, 'Secondary Health Sub Center Abbigeri', 'TP, Naregal, ', 'Karnataka', 'Rona', '582112', '2022-08-22 14:19:18'),
(7, 'Dr MD Tahiliani Memorial Clinic', '22, Hastings Rd, Ashok Nagar', 'Uttar Pradesh', 'Prayagraj', ' 211003', '2022-08-22 14:18:02'),
(8, 'Apex General Hospital', 'Cantonment General Hospital (????? ???????)sadar Bazar, New Cantt', 'Uttar Pradesh', 'Prayagraj', '211006', '2022-08-22 14:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblvaccinetype`
--

CREATE TABLE `tblvaccinetype` (
  `ID` int(5) NOT NULL,
  `VaccineType` varchar(100) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvaccinetype`
--

INSERT INTO `tblvaccinetype` (`ID`, `VaccineType`, `CreationDate`) VALUES
(1, 'Pfizer-BioNTech', '2022-08-22 12:22:03'),
(2, 'Moderna COVID-19', '2022-08-22 12:22:22'),
(3, 'Novavax COVID-19', '2022-08-22 12:23:26'),
(4, 'Covaxine', '2022-08-22 12:23:36'),
(5, 'Covi Shield', '2022-08-22 12:23:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvaccinationbooking`
--
ALTER TABLE `tblvaccinationbooking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvaccinator`
--
ALTER TABLE `tblvaccinator`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `vaccid` (`VaccinationCenterID`);

--
-- Indexes for table `tblvaccinecenter`
--
ALTER TABLE `tblvaccinecenter`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvaccinetype`
--
ALTER TABLE `tblvaccinetype`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvaccinationbooking`
--
ALTER TABLE `tblvaccinationbooking`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblvaccinator`
--
ALTER TABLE `tblvaccinator`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblvaccinecenter`
--
ALTER TABLE `tblvaccinecenter`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblvaccinetype`
--
ALTER TABLE `tblvaccinetype`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblvaccinator`
--
ALTER TABLE `tblvaccinator`
  ADD CONSTRAINT `vaccid` FOREIGN KEY (`VaccinationCenterID`) REFERENCES `tblvaccinecenter` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
