-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 08:53 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `squeeky`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_token`
--

CREATE TABLE `access_token` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `access` text NOT NULL,
  `expiry_time` varchar(50) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_token`
--

INSERT INTO `access_token` (`id`, `user_id`, `token`, `access`, `expiry_time`, `date_created`, `status`) VALUES
(4, 'deleomotehinse@gmail.com', '9785723', 'register', '', '2023-11-05 22:51:03', 'expired');

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `phone_number` text NOT NULL,
  `password` text NOT NULL,
  `is_active` smallint(10) NOT NULL,
  `role` varchar(100) NOT NULL,
  `profile_picture` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_rating`
--

CREATE TABLE `business_rating` (
  `id` int(11) NOT NULL,
  `business_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `service_id` varchar(100) NOT NULL,
  `rating` int(10) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_tbl`
--

CREATE TABLE `business_tbl` (
  `id` int(11) NOT NULL,
  `business_name` varchar(120) DEFAULT NULL,
  `business_email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `business_logo` text DEFAULT NULL,
  `cover_image` text DEFAULT NULL,
  `business_type` text DEFAULT NULL,
  `business_address` text DEFAULT NULL,
  `business_city` varchar(200) DEFAULT NULL,
  `business_country` varchar(200) DEFAULT NULL,
  `business_postal_code` varchar(200) DEFAULT NULL,
  `business_number` text NOT NULL,
  `business_description` text DEFAULT NULL,
  `year_of_incorporation` text DEFAULT NULL,
  `contact_email` text DEFAULT NULL,
  `contact_name` varchar(100) DEFAULT NULL,
  `contact_number` text DEFAULT NULL,
  `is_verified` tinyint(4) DEFAULT NULL,
  `email_verificationId` longtext DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_tbl`
--

INSERT INTO `business_tbl` (`id`, `business_name`, `business_email`, `password`, `business_logo`, `cover_image`, `business_type`, `business_address`, `business_city`, `business_country`, `business_postal_code`, `business_number`, `business_description`, `year_of_incorporation`, `contact_email`, `contact_name`, `contact_number`, `is_verified`, `email_verificationId`, `is_active`, `date_added`) VALUES
(6, 'Deltech', 'deleomotehinse@gmail.com', '$2y$10$bFcf0vAA3REgNOZCpopJBubJ5ZcCBdJSQ6heUBmG10y/6z3tF9.ru', NULL, NULL, 'Sole Proprietorship', NULL, NULL, NULL, NULL, '09061969966', 'pop', NULL, 'deleomotehinse@gmail.com', 'Dele Caleb', '09061969966', 1, NULL, 0, '2023-11-05 22:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `cart_tbl`
--

CREATE TABLE `cart_tbl` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `service_id` varchar(100) NOT NULL,
  `price` varchar(300) NOT NULL,
  `quantity` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services_tbl`
--

CREATE TABLE `services_tbl` (
  `Id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `service_name` text NOT NULL,
  `service_price` varchar(50) NOT NULL,
  `have_etras` smallint(6) DEFAULT NULL,
  `service_category` varchar(200) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `is_active` smallint(6) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `id` int(11) NOT NULL,
  `service_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `two_factor_auth`
--

CREATE TABLE `two_factor_auth` (
  `id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `auth_code` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_token`
--
ALTER TABLE `access_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_rating`
--
ALTER TABLE `business_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_tbl`
--
ALTER TABLE `business_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_tbl`
--
ALTER TABLE `cart_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_tbl`
--
ALTER TABLE `services_tbl`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `two_factor_auth`
--
ALTER TABLE `two_factor_auth`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_token`
--
ALTER TABLE `access_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_rating`
--
ALTER TABLE `business_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_tbl`
--
ALTER TABLE `business_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart_tbl`
--
ALTER TABLE `cart_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_tbl`
--
ALTER TABLE `services_tbl`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `two_factor_auth`
--
ALTER TABLE `two_factor_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
