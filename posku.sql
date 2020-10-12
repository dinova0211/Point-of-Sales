-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2020 at 05:26 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posku`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `gender`, `phone`, `address`, `created`, `updated`) VALUES
(3, 'dinova', 'L', '098765432', 'pacitan', '2020-10-03 16:32:51', NULL),
(4, 'argo', 'L', '123456', 'pacitan', '2020-10-03 16:33:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_category`
--

CREATE TABLE `p_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_category`
--

INSERT INTO `p_category` (`category_id`, `name`, `created`, `updated`) VALUES
(2, 'newsq', '2020-10-04 21:45:40', '2020-10-06 06:05:49'),
(3, 'makanan', '2020-10-06 11:00:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_unit`
--

CREATE TABLE `p_unit` (
  `unit_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_unit`
--

INSERT INTO `p_unit` (`unit_id`, `name`, `created`, `updated`) VALUES
(2, 'Indomie', '2020-10-04 21:45:40', '2020-10-06 06:34:03'),
(3, 'Le Mineral', '2020-10-06 11:00:59', '2020-10-06 06:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `description` text,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `phone`, `address`, `description`, `created`, `updated`) VALUES
(1, 'toko A', '123456789', 'wewwww', NULL, '2020-09-27 21:13:22', NULL),
(3, 'mano', '12345678', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, '2020-09-27 23:30:14', NULL),
(4, 'rerer', '1234555', 'drsfatdgyhugjidisuhagyfdghkdhsgahgdjhj', 'jdhfjgkhjdskbhfbbnmgbsnn', '2020-09-27 23:41:13', NULL),
(5, 'yoga', '8765432', 'sidoarjo', 'pacitan', '2020-09-27 23:42:04', NULL),
(6, 'rasya', '1234567890', 'gunungsari', 'krajan', '2020-09-27 23:43:15', '2020-09-28 17:59:19'),
(9, 'dinova', '098765432', 'Tanjungsari', 'barang import', '2020-09-28 21:51:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `level` int(1) NOT NULL COMMENT '1. admin, 2. kasir'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `address`, `level`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Dinova Widytianto', 'Pacitan', 1),
(2, 'kasir1', '874c0ac75f323057fe3b7fb3f5a8a41df2b94b1d', 'daniel', 'surabaya', 2),
(3, 'ningsih', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'raditya', 'surabaya', 2),
(4, 'eriko', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'eriko', 'pacitan', 2),
(5, 'aryanto', '8cb2237d0679ca88db6464eac60da96345513964', 'hyugafdsgfhjgkhmhnbvxfbgf', 'wqertyuiokljjhgfdxfcfv', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `p_category`
--
ALTER TABLE `p_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `p_unit`
--
ALTER TABLE `p_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `p_category`
--
ALTER TABLE `p_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `p_unit`
--
ALTER TABLE `p_unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
