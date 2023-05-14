-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 11:44 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `parking_fee_table`
--

CREATE TABLE `parking_fee_table` (
  `Parking_Fee_ID` int(10) NOT NULL,
  `Time_In_Date` date NOT NULL,
  `Parking_Fee_Amount` varchar(10) NOT NULL,
  `Time_Out_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parking_slot_table`
--

CREATE TABLE `parking_slot_table` (
  `Parking_Slot_ID` int(10) NOT NULL,
  `Parking_Slot_Type` varchar(20) NOT NULL,
  `Parking_Slot_Car_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parking_table`
--

CREATE TABLE `parking_table` (
  `Parking_ID` int(10) NOT NULL,
  `Car_ID` int(10) NOT NULL,
  `Parking_Fee_Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_table`
--

CREATE TABLE `vehicle_table` (
  `Car_ID` int(10) NOT NULL,
  `Car_Type` varchar(40) NOT NULL,
  `Car_Owner` varchar(20) NOT NULL,
  `Car_Category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parking_fee_table`
--
ALTER TABLE `parking_fee_table`
  ADD PRIMARY KEY (`Parking_Fee_ID`),
  ADD KEY `Parking_Fee_ID` (`Parking_Fee_ID`);

--
-- Indexes for table `parking_slot_table`
--
ALTER TABLE `parking_slot_table`
  ADD PRIMARY KEY (`Parking_Slot_ID`),
  ADD KEY `Parking_Slot_Car_ID` (`Parking_Slot_Car_ID`);

--
-- Indexes for table `parking_table`
--
ALTER TABLE `parking_table`
  ADD PRIMARY KEY (`Parking_ID`),
  ADD KEY `Car_ID` (`Car_ID`);

--
-- Indexes for table `vehicle_table`
--
ALTER TABLE `vehicle_table`
  ADD PRIMARY KEY (`Car_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parking_fee_table`
--
ALTER TABLE `parking_fee_table`
  MODIFY `Parking_Fee_ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parking_slot_table`
--
ALTER TABLE `parking_slot_table`
  MODIFY `Parking_Slot_ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parking_table`
--
ALTER TABLE `parking_table`
  MODIFY `Parking_ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_table`
--
ALTER TABLE `vehicle_table`
  MODIFY `Car_ID` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
