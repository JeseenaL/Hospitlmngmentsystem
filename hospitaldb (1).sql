-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2020 at 11:37 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Username`, `Password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `Did` int(11) NOT NULL,
  `Dname` varchar(30) NOT NULL,
  `Uname` varchar(30) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `Slot` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `Did`, `Dname`, `Uname`, `Date`, `Slot`, `Status`) VALUES
(34, 4, 'Viji S P', 'Joncy', '0000-00-00', '10 AM', 'pending'),
(35, 4, 'Viji S P', 'Joncy', '0000-00-00', '10 AM', 'pending'),
(36, 4, 'Viji S P', 'Joncy', '0000-00-00', '10 AM', 'pending'),
(39, 1, 'John', 'Joncy', '2020-01-31', '12 PM', 'Approved'),
(40, 9, 'Amala M', 'Nima', '', '10 AM', 'Pending'),
(41, 9, 'Amala M', 'Nima', '', '10 AM', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Did` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `MobileNo` bigint(20) NOT NULL,
  `Emailid` varchar(30) NOT NULL,
  `Nationalid` varchar(20) NOT NULL,
  `Qualification` varchar(20) NOT NULL,
  `Experience` varchar(50) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `ClinicAddress` varchar(50) NOT NULL,
  `ClinicTiming` varchar(30) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Did`, `Name`, `MobileNo`, `Emailid`, `Nationalid`, `Qualification`, `Experience`, `Department`, `ClinicAddress`, `ClinicTiming`, `Username`, `Password`, `Status`) VALUES
(1, 'John', 8974563210, 'john@gmail.com', '654123', 'MBBS MD', '1year', 'ENT', 'Mission Clinic', '24hrs', 'John', 'john123', 'Approved'),
(2, 'Zara Joseph', 6541239870, 'zara@gmail.com', '547821', 'MBBS MD', '5 years', 'Gynaecology', 'Zaras clinic', '9:00AM  to 7:00PM', 'Zara', 'zara', 'Approved'),
(3, 'Eleena', 9632587410, 'eleena@gmail.com', '456321', 'MBBS MD', '2 years', 'Paediatry', 'Vision Clinic', '9:00AM to 5:00PM', 'Eleena', 'eleena', 'Approved'),
(4, 'Viji S P', 7236985412, 'viji@gmail.com', '523641', 'MBBS MD', '10 years', 'Cardiology', 'Viji\'s Clinic', '24 hrs', 'Viji', 'viji', 'Pending'),
(9, 'Amala M', 1234567890, 'amala@gmail.com', '654122', 'MBBS MD', '2 years', 'ENT', 'Amala Clinic', 'Full day', 'Amala', 'amala123', 'Approved'),
(10, 'Rohan Sree', 8965412304, 'rohan@gmail.com', '563214', 'MBBS MD', '6 years', 'Neurology', 'Rohans Clinic', '24 hrs', 'Rohan', 'rohan123', 'Approved'),
(11, 'Somaraj', 7412589603, 'somu@gmail.com', '541362', 'MBBS MD', '7 years', 'Cardiology', 'Somu Clinic', '9:00AM to 7:00PM', 'Somaraj', 'somaraj123', 'Approved'),
(12, 'Thomas Issac', 9652387410, 'thomas@gmail.com', '56789', 'MBBS MD', '14 years', 'Paediatry', 'Thomas clinic', '8:00AM to 5:00PM', 'Thomas', 'thomas123', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Uid` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` int(11) NOT NULL,
  `Emailid` varchar(30) NOT NULL,
  `MobileNo` bigint(20) NOT NULL,
  `NationalId` bigint(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Uid`, `Name`, `Gender`, `Age`, `Emailid`, `MobileNo`, `NationalId`, `Username`, `Password`) VALUES
(111, 'Jeseena', 'Female', 24, 'jeseena@gmail.com', 8943314672, 741852966111, 'Jeseena', '123456789'),
(112, 'Joncy', 'Female', 24, 'joncy@gmail.com', 8974563201, 147258, 'Joncy', 'joncy'),
(113, 'Joel', 'Male', 20, 'joel@gmail.com', 7563214890, 365214, 'Joel', 'joel123'),
(114, 'Sonumol', 'Female', 25, 'sonumol@gmail.com', 9495955683, 147852, 'Sonu', 'sonu'),
(115, 'Nima', 'Female', 22, 'nima@gmail.com', 6578968742, 1234, 'Nima', 'nima1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Did`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `Did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
