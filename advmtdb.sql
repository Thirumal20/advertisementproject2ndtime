-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 01:36 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advmtdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addadvtboardtb`
--

CREATE TABLE `addadvtboardtb` (
  `id` int(11) NOT NULL,
  `brd_name` varchar(255) DEFAULT NULL,
  `brd_locationarea` longtext DEFAULT NULL,
  `brdsft` int(11) DEFAULT NULL,
  `costpersft` int(11) DEFAULT NULL,
  `costperday` int(11) NOT NULL,
  `brd_its` datetime NOT NULL,
  `brd_status` int(11) NOT NULL DEFAULT 0,
  `brd_del` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addadvtboardtb`
--

INSERT INTO `addadvtboardtb` (`id`, `brd_name`, `brd_locationarea`, `brdsft`, `costpersft`, `costperday`, `brd_its`, `brd_status`, `brd_del`) VALUES
(18, 'Board3', 'Rajmundry3', 156, 12, 1872, '2021-02-08 18:12:53', 0, 0),
(22, 'Board1', 'rajmundry1', 156, 10, 1560, '2021-02-09 14:41:13', 1, 0),
(23, 'Board2', 'Rajmundry2', 182, 11, 2002, '2021-02-09 14:42:05', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `allotboardtb`
--

CREATE TABLE `allotboardtb` (
  `id` int(11) NOT NULL,
  `allt_brdNameId` int(11) DEFAULT NULL,
  `custNameId` int(11) NOT NULL,
  `totalAmount` int(11) NOT NULL,
  `alltbd_its` datetime NOT NULL,
  `alltbd_din` int(11) NOT NULL DEFAULT 0,
  `fromdate` datetime NOT NULL,
  `todate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allotboardtb`
--

INSERT INTO `allotboardtb` (`id`, `allt_brdNameId`, `custNameId`, `totalAmount`, `alltbd_its`, `alltbd_din`, `fromdate`, `todate`) VALUES
(42, 22, 1, 0, '2021-02-09 16:35:26', 0, '2021-02-09 00:00:00', '2021-02-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customertb`
--

CREATE TABLE `customertb` (
  `id` int(11) NOT NULL,
  `cust_name` varchar(255) DEFAULT NULL,
  `cust_mobileno` varchar(255) DEFAULT NULL,
  `cust_address` longtext DEFAULT NULL,
  `cust_its` datetime NOT NULL,
  `cust_din` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customertb`
--

INSERT INTO `customertb` (`id`, `cust_name`, `cust_mobileno`, `cust_address`, `cust_its`, `cust_din`) VALUES
(1, 'mohan', '9441610867', 'kurnool', '2021-02-05 17:57:08', 0),
(2, 'vinay', '9705491127', 'hyderabad', '2021-02-05 18:04:44', 0),
(3, 'Akash', '9705491127', 'japan', '2021-02-06 10:39:09', 0),
(4, 'Rajesh', '7288876141', 'rajamundry', '2021-02-06 10:39:59', 0),
(5, 'nani', '9441345987', 'kurnool', '2021-02-08 11:48:16', 0),
(6, 'vishnu', '9705491127', 'chintal', '2021-02-08 12:25:52', 0),
(7, 'Ramesh', '9441610867', 'Ameerpet', '2021-02-08 14:53:35', 0),
(8, 'nikhil', '9705491127', 'Nirmal', '2021-02-08 15:21:23', 0),
(9, 'Nithin', '9705491127', 'Indaram', '2021-02-08 16:06:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tobepaidtb`
--

CREATE TABLE `tobepaidtb` (
  `id` int(11) NOT NULL,
  `tbp_custid` int(11) NOT NULL,
  `paysNow` int(11) NOT NULL,
  `blcAmount` int(11) NOT NULL,
  `paymtstatus` int(11) NOT NULL DEFAULT 0,
  `tbp_its` datetime NOT NULL,
  `tbp_din` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addadvtboardtb`
--
ALTER TABLE `addadvtboardtb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allotboardtb`
--
ALTER TABLE `allotboardtb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customertb`
--
ALTER TABLE `customertb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tobepaidtb`
--
ALTER TABLE `tobepaidtb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addadvtboardtb`
--
ALTER TABLE `addadvtboardtb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `allotboardtb`
--
ALTER TABLE `allotboardtb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `customertb`
--
ALTER TABLE `customertb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tobepaidtb`
--
ALTER TABLE `tobepaidtb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
