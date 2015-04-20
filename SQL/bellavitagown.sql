-- *** add header ***
-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2015 at 06:56 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bellavitagown`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
  `CATALOG_ID` int(11) NOT NULL,
  `CATALOG_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) NOT NULL,
  `UPDATED_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `ORDER_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ORDER_DATE` date NOT NULL,
  `TOTAL_PRICE` int(11) NOT NULL,
  `CONFIRM_ORDER_FLG` int(11) NOT NULL,
  `BILL_IMAGE` binary(255) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) NOT NULL,
  `UPDATED_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_dtl`
--

CREATE TABLE IF NOT EXISTS `order_dtl` (
  `ORDER_DTL_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `PRODUCT_DTL_ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) NOT NULL,
  `UPDATED_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `CATALOG_ID` int(11) NOT NULL,
  `PRODUCT_NM_TH` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PRODUCT_NM_EN` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PRICE` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) NOT NULL,
  `UPDATED_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_dtl`
--

CREATE TABLE IF NOT EXISTS `product_dtl` (
  `PRODUCT_DTL_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `SIZE` int(11) NOT NULL,
  `COLOR` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DETAIL` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SUGGEST_FLG` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) NOT NULL,
  `UPDATED_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `STOCK_ID` int(11) NOT NULL,
  `PRODUCT_DTL_ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `BASE_PRICE` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) NOT NULL,
  `UPDATED_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `USER_ID` int(11) NOT NULL,
  `USERNAME` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` int(100) NOT NULL,
  `FIRSTNAME` int(16) NOT NULL,
  `LASTNAME` int(16) NOT NULL,
  `EMAIL` int(48) NOT NULL,
  `ADDRESS` int(255) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) NOT NULL,
  `UPDATED_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
 ADD PRIMARY KEY (`CATALOG_ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`ORDER_ID`);

--
-- Indexes for table `order_dtl`
--
ALTER TABLE `order_dtl`
 ADD PRIMARY KEY (`ORDER_DTL_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`PRODUCT_ID`);

--
-- Indexes for table `product_dtl`
--
ALTER TABLE `product_dtl`
 ADD PRIMARY KEY (`PRODUCT_DTL_ID`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
 ADD PRIMARY KEY (`STOCK_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`USER_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
