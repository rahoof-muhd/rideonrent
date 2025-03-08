-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2025 at 06:31 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rideonrent`
--

-- --------------------------------------------------------

--
-- Table structure for table `adress`
--

CREATE TABLE `adress` (
  `adress_id` int(11) NOT NULL,
  `country` varchar(15) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `adress_number` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adress`
--

INSERT INTO `adress` (`adress_id`, `country`, `state`, `district`, `zip_code`, `adress_number`, `street`) VALUES
(1, 'India', 'kerala', 'kollam', '5432', '3333', 'kollam'),
(2, 'India', 'kerala', 'kollam', '5432', '3333', 'kollam'),
(3, 'India', 'Kerala', 'Palakkad', '679533', 'Koottanadu', 'CK Nagar'),
(4, 'india', 'kerala', 'kollam', '4862', '789', 'kollam'),
(5, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(7, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(8, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(9, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(10, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(11, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(12, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(13, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(14, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(15, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(16, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(17, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(18, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(19, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(20, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(21, 'India', 'kerala', 'wayanad', '12345', '111', 'kochi'),
(22, 'india', 'kerala', 'kollam', '4862', '789', 'kollam'),
(23, 'india', 'kerala', 'kollam', '4862', '789', 'kollam'),
(24, 'India', 'palakkad', 'wayanad', '12345', '111', 'kochi'),
(25, 'india', 'kerala', 'Ernakulam', '3256', '10011', 'kochi'),
(26, 'india', 'kerala', 'Ernakulam', '3256', '2351', 'kochi');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `status` enum('0','1','2') DEFAULT NULL,
  `replacement_request` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `checkin`
--

CREATE TABLE `checkin` (
  `checkin_id` int(11) NOT NULL,
  `checkout_id` int(11) DEFAULT NULL,
  `checkin_date` date DEFAULT NULL,
  `ordometer_in` int(11) DEFAULT NULL,
  `fuel_in` int(11) DEFAULT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `fixed_charge` decimal(30,2) DEFAULT NULL,
  `discount` decimal(30,2) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('0','1','2') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

CREATE TABLE `checklist` (
  `checklist_id` int(11) NOT NULL,
  `checklist_name` varchar(20) NOT NULL,
  `discription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `checkout_id` int(11) NOT NULL,
  `rental_number` varchar(10) DEFAULT NULL,
  `rental_date` date DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `checkout_date` datetime DEFAULT NULL,
  `expected_checkin_date` datetime DEFAULT NULL,
  `ordometer_out` decimal(30,2) DEFAULT NULL,
  `fuel_out` int(11) DEFAULT NULL,
  `checkin_date` datetime DEFAULT NULL,
  `odometer_in` decimal(30,6) DEFAULT NULL,
  `fuel_in` int(11) DEFAULT NULL,
  `fixed_charge` decimal(30,2) DEFAULT NULL,
  `discount` decimal(30,2) DEFAULT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `final_amount` decimal(30,6) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('0','1','2') DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(20) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `driving_license` varchar(30) DEFAULT NULL,
  `adress_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `login_id`, `DOB`, `gender`, `phone_number`, `driving_license`, `adress_id`) VALUES
(1, 'Arya', 27, '0000-00-00', 'female', '8086316645', '21595659895', 26);

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `document_id` int(11) NOT NULL,
  `document_title` varchar(30) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `document_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `document_connection`
--

CREATE TABLE `document_connection` (
  `connection_id` int(11) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `adress_id` int(11) DEFAULT NULL,
  `emp_name` varchar(30) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `phone_number` int(20) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `salary` decimal(30,2) DEFAULT NULL,
  `salary_type` enum('mothly','daily','hourly') DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `adress_id`, `emp_name`, `login_id`, `DOB`, `gender`, `phone_number`, `department`, `salary`, `salary_type`, `type`) VALUES
(13, 24, 'shiyaz b', 25, '0000-00-00', 'male', 99999999, 'sales', '67678.00', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `verification_code` varchar(10) DEFAULT NULL,
  `verification_status` enum('1','0') NOT NULL DEFAULT '1',
  `session_id` varchar(30) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `password`, `email`, `verification_code`, `verification_status`, `session_id`, `type`) VALUES
(1, 'admin123', 'admin@gmail.com', NULL, '1', NULL, 'ADMIN'),
(25, '000', 'shiyas@gmail.com', NULL, '1', NULL, 'EMPLOYEE'),
(27, '123', 'arya123@gmail.com', NULL, '1', NULL, 'CUSTOMER');

-- --------------------------------------------------------

--
-- Table structure for table `rental_checklist`
--

CREATE TABLE `rental_checklist` (
  `rc_id` int(11) NOT NULL,
  `checkin_id` int(11) DEFAULT NULL,
  `checkout_id` int(11) DEFAULT NULL,
  `rep_id` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `replacement`
--

CREATE TABLE `replacement` (
  `rep_id` int(11) NOT NULL,
  `checkout_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `checkout_date` datetime DEFAULT NULL,
  `expected_checkin_date` datetime DEFAULT NULL,
  `ordometer_out` int(11) DEFAULT NULL,
  `ordometer_in` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `fuel_out` int(11) DEFAULT NULL,
  `fuel_in` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `make` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `year_of_manufacture` date DEFAULT NULL,
  `vehicle_type` varchar(15) DEFAULT NULL,
  `fuel_type` varchar(15) DEFAULT NULL,
  `registration_number` varchar(15) DEFAULT NULL,
  `license_plate` varchar(20) DEFAULT NULL,
  `transmission_type` varchar(10) DEFAULT NULL,
  `ordometer_reading` int(11) DEFAULT NULL,
  `seating_capacity` int(11) DEFAULT NULL,
  `vehicle_status` varchar(15) DEFAULT NULL,
  `fuel_efficency` decimal(30,6) DEFAULT NULL,
  `daily_charge` decimal(30,2) DEFAULT NULL,
  `weekly_charge` decimal(30,6) DEFAULT NULL,
  `monthly_charge` decimal(30,6) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `registration_expiry_date` date DEFAULT NULL,
  `rc_owner` varchar(50) DEFAULT NULL,
  `engine_capacity` int(11) DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `make`, `model`, `year_of_manufacture`, `vehicle_type`, `fuel_type`, `registration_number`, `license_plate`, `transmission_type`, `ordometer_reading`, `seating_capacity`, `vehicle_status`, `fuel_efficency`, `daily_charge`, `weekly_charge`, `monthly_charge`, `registration_date`, `registration_expiry_date`, `rc_owner`, `engine_capacity`, `mileage`, `status`, `color`) VALUES
(2, 'Yamaha ', ' Fascino', '0000-00-00', '', 'petrol', '2525', '4562', 'manual', 600, 2, NULL, NULL, '300.00', NULL, NULL, NULL, NULL, 'owner 2', 2500, 45, 'AVAILABLE', 'black'),
(3, 'Hero', 'honda', '0000-00-00', '', 'petrol', '7878', '25462', 'manual', 3000, 2, NULL, NULL, '500.00', NULL, NULL, NULL, NULL, 'owner 2', 650, 55, 'INSERVICE', 'yellow'),
(4, 'Container', 'Truck', '0000-00-00', 'truck', 'diesel', '78781', '254623', 'manual', 5000, 4, NULL, NULL, '5000.00', NULL, NULL, NULL, NULL, 'owner 3', 5000, 10, 'AVAILABLE', 'Red'),
(5, 'Mahindra', 'Treo', '0000-00-00', '', 'petrol', '12554', '45624', 'manual', 6000, 1, NULL, NULL, '2000.00', NULL, NULL, NULL, NULL, 'owner 5', 2000, 10, 'AVAILABLE', 'Blue'),
(6, 'Bmw', 'X5', '0000-00-00', 'suv', 'petrol', '2525', '36563', 'manual', 5000, 5, NULL, NULL, '2000.00', NULL, NULL, NULL, NULL, 'owner 5', 2500, 12, 'INSERVICE', 'black'),
(7, 'Ford ', '  Mustang', '0000-00-00', 'suv', 'petrol', '7878', '25462', 'manual', 5000, 5, NULL, NULL, '3000.00', NULL, NULL, NULL, NULL, 'owner 2', 2000, 10, 'AVAILABLE', 'Red'),
(8, 'Mahindra', 'Thar', '0000-00-00', 'hatchback', 'petrol', '2525', '24242', 'manual', 2000, 12, NULL, NULL, '1000.00', NULL, NULL, NULL, NULL, 'owner 5', 2000, 13, 'INSERVICE', 'yellow'),
(9, 'swift', 'maruthi', '0000-00-00', 'suv', 'petrol', '287635', '25756', 'manual', 1000, 5, NULL, NULL, '1000.00', NULL, NULL, NULL, NULL, 'arya', 2000, 10, 'AVAILABLE', 'blue');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`adress_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `checkin`
--
ALTER TABLE `checkin`
  ADD PRIMARY KEY (`checkin_id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`checkout_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `document_connection`
--
ALTER TABLE `document_connection`
  ADD PRIMARY KEY (`connection_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `rental_checklist`
--
ALTER TABLE `rental_checklist`
  ADD PRIMARY KEY (`rc_id`);

--
-- Indexes for table `replacement`
--
ALTER TABLE `replacement`
  ADD PRIMARY KEY (`rep_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adress`
--
ALTER TABLE `adress`
  MODIFY `adress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `checkin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `checkout_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_connection`
--
ALTER TABLE `document_connection`
  MODIFY `connection_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `rental_checklist`
--
ALTER TABLE `rental_checklist`
  MODIFY `rc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replacement`
--
ALTER TABLE `replacement`
  MODIFY `rep_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
