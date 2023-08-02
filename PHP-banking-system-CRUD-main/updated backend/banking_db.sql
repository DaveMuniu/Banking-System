-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 12:46 PM
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
-- Database: `banking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(1, 'Maurice', 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_address` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `total_credit` int(11) NOT NULL,
  `total_debit` int(11) NOT NULL,
  `net_balance` int(11) NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `sex`, `mobile_number`, `email`, `full_address`, `zip_code`, `date_of_birth`, `branch`, `password`, `customer_id`, `total_credit`, `total_debit`, `net_balance`, `date_created`) VALUES
(14, 'Daniel', 'Male', '0722000000', 'dcslmr569122@spu.ac.ke', 'P.O BOX 159 Limuru', '00 127', '2022-10-05', 'Limuru', '$2y$10$sZzp5b/w4nSFb60bUUiSGuxhIbyzHekb31n5PouJ3JTbGoXvcAJi.', '1011670', 504000, 53000, 451000, '2022-10-05'),
(15, 'Angel De Maria', 'Male', '0714193102', 'dcslmr599122@spu.ac.ke', 'PO BOX.169 Limuru', '', '1999-10-10', 'Nairobi', '', '1011750', 0, 0, 0, '2023-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011670`
--

CREATE TABLE `passbook_1011670` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `passbook_1011670`
--

INSERT INTO `passbook_1011670` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '935583556', '05/10/22 07:26:51 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '572958339', '05/10/22 10:20:08 PM', 'Cash Withdrawal', '3000', '0', '3000', 'Cash Withdrawal'),
(3, '186702874', '05/10/22 10:20:39 PM', 'Cash Withdrawal', '4000', '0', '4000', 'Cash Withdrawal'),
(4, '549261652', '20/03/23 07:10:12 PM', 'Cash Withdrawal', '0', '3000', '1000', 'Cash Withdrawal'),
(5, '410105846', '21/03/23 02:43:59 PM', 'Cash Deposit', '500000', '0', '501000', 'Cash Deposit'),
(6, '291838749', '21/03/23 05:43:17 PM', 'Cash Withdrawal', '0', '50000', '451000', 'Cash Withdrawal');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011750`
--

CREATE TABLE `passbook_1011750` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passbook_1011750`
--

INSERT INTO `passbook_1011750` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '110552766', '20/03/23 12:57:53 PM', 'Account Opening', '0', '0', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pending_accounts`
--

CREATE TABLE `pending_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_address` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `application_num` varchar(255) NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011670`
--
ALTER TABLE `passbook_1011670`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011750`
--
ALTER TABLE `passbook_1011750`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_accounts`
--
ALTER TABLE `pending_accounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `passbook_1011670`
--
ALTER TABLE `passbook_1011670`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `passbook_1011750`
--
ALTER TABLE `passbook_1011750`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pending_accounts`
--
ALTER TABLE `pending_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
