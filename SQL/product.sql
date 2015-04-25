-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2015 at 02:24 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bellavitagown_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`PRODUCT_ID` int(11) NOT NULL,
  `CATALOG_ID` int(11) NOT NULL,
  `PRODUCT_NM_TH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PRODUCT_NM_EN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PRICE` int(11) NOT NULL,
  `CREATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `UPDATED_DATE` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `CATALOG_ID`, `PRODUCT_NM_TH`, `PRODUCT_NM_EN`, `PRICE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(1, 1, 'เสื้อกาวน์คอจีนป้ายตัวสั้นแขนสั้น', '', 990, '', '2015-04-20', '', '2015-04-20'),
(2, 1, 'เสื้อฮาวายตัวสั้นแขนสั้น', '', 560, '', '2015-04-20', '', '2015-04-20'),
(3, 2, 'เสื้อผ่าตัดใหญ่', '', 1990, '', '2015-04-20', '', '2015-04-20'),
(4, 3, 'เสื้อคอวี', '', 790, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(5, 3, 'เสื้อคอวีลายหมา', '', 790, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(6, 2, 'เสื้อผ่าตัดเล็ก', '', 1990, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(7, 1, 'เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาว', '', 990, 'Tow', '2015-04-25', 'Tow', '2015-04-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`PRODUCT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
