-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2015 at 12:12 PM
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
-- Table structure for table `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
`CATALOG_ID` int(11) NOT NULL,
  `CATALOG_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CATALOG_NAME_EN` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `UPDATED_DATE` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`CATALOG_ID`, `CATALOG_NAME`, `CATALOG_NAME_EN`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(1, 'เสื้อกาวน์', '', 'Pai', '2015-04-20', 'Tow', '2015-04-20'),
(2, 'เสื้อผ่าตัดใหญ่', '', 'Pai', '2015-04-20', 'Tow', '2015-04-20'),
(3, 'อื่นๆ', '', 'Tow', '2015-04-25', 'Tow', '2015-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `COLOR_ID` int(11) NOT NULL,
  `COLOR_NM_TH` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `COLOR_NM_EN` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`COLOR_ID`, `COLOR_NM_TH`, `COLOR_NM_EN`) VALUES
(1, 'แดง', 'red'),
(2, 'น้ำเงิน', 'blue'),
(3, 'ฟ้า', 'blue'),
(4, 'เขียว', 'green'),
(5, 'ม่วง', 'purple'),
(6, 'ส้ม', 'orange'),
(7, 'แดงเลือดหมู', 'scarlet'),
(8, 'ขาว', 'white'),
(9, 'เทา', 'gray'),
(10, 'ม่วง-ฟ้า', 'purple-blue');

-- --------------------------------------------------------

--
-- Table structure for table `product_dtl`
--

CREATE TABLE IF NOT EXISTS `product_dtl` (
`PRODUCT_DTL_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `SIZE_ID` int(11) NOT NULL,
  `COLOR_ID` int(11) NOT NULL,
  `SIZE` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `COLOR` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `DETAIL` text COLLATE utf8_unicode_ci NOT NULL,
  `DETAIL_EN` text COLLATE utf8_unicode_ci NOT NULL,
  `DETAIL_SLUG` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `IMAGE_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SUGGEST_FLG` int(11) NOT NULL,
  `CREATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `IS_AVAILABLE_FLG` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_dtl`
--

INSERT INTO `product_dtl` (`PRODUCT_DTL_ID`, `PRODUCT_ID`, `SIZE_ID`, `COLOR_ID`, `SIZE`, `COLOR`, `DETAIL`, `DETAIL_EN`, `DETAIL_SLUG`, `IMAGE_NAME`, `SUGGEST_FLG`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `IS_AVAILABLE_FLG`) VALUES
(1, 1, 1, 8, 'S', 'white', 'เสื้อคอจีนป้ายตัวสั้นแขนสั้น', '', 'เสื้อกาวน์-เสื้อคอจีนป้ายตัวสั้นแขนสั้น-S-ขาว', 'BC005TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25', 1),
(22, 5, 1, 9, 'S', 'Gray', 'เสื้อคอวีลายหมาสีเทา', '', 'อื่นๆ-เสื้อคอวีลายหมาสีเทา-S-เทา', 'BV013TRRGR-DOG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(2, 1, 3, 8, 'M', 'white', 'เสื้อคอจีนป้ายตัวสั้นแขนสั้น', '', 'เสื้อกาวน์-เสื้อคอจีนป้ายตัวสั้นแขนสั้น-M-ขาว', 'BC005TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25', 1),
(20, 5, 3, 4, 'M', 'Green', 'เสื้อคอวีลายหมาสีเขียว', '', 'อื่นๆ-เสื้อคอวีลายหมาสีเขียว-M-เขียว', 'BV013TRRG-DOG-big.jp', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(21, 5, 4, 4, 'L', 'Green', 'เสื้อคอวีลายหมาสีเขียว', '', 'อื่นๆ-เสื้อคอวีลายหมาสีเขียว-L-เขียว', 'BV013TRRG-DOG-big.jp', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(3, 1, 4, 8, 'L', 'white', 'เสื้อคอจีนป้ายตัวสั้นแขนสั้น', '', 'เสื้อกาวน์-เสื้อคอจีนป้ายตัวสั้นแขนสั้น-L-ขาว', 'BC005TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25', 1),
(17, 4, 3, 1, 'M', 'Red', 'เสื้อคอวีสีแดงเลือดหมู', '', 'อื่นๆ-เสื้อคอวีสีแดงเลือดหมู-M-แดง', 'BV013TSLR-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(18, 4, 4, 1, 'L', 'Red', 'เสื้อคอวีสีแดงเลือดหมู', '', 'อื่นๆ-เสื้อคอวีสีแดงเลือดหมู-L-แดง', 'BV013TSLR-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(19, 5, 1, 4, 'S', 'Green', 'เสื้อคอวีลายหมาสีเขียว', '', 'อื่นๆ-เสื้อคอวีลายหมาสีเขียว-S-เขียว', 'BV013TRRG-DOG-big.jp', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(4, 2, 1, 8, 'S', 'white', 'เสื้อฮาวายตัวสั้นแขนสั้น', '', 'เสื้อกาวน์-เสื้อฮาวายตัวสั้นแขนสั้น-S-ขาว', 'BH001TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25', 1),
(13, 4, 1, 4, 'S', 'Green', 'เสื้อคอวีสีเขียว', '', 'อื่นๆ-เสื้อคอวีสีเขียว-S-เขียว', 'BV013TSLG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(14, 4, 3, 4, 'M', 'Green', 'เสื้อคอวีสีเขียว', '', 'อื่นๆ-เสื้อคอวีสีเขียว-M-เขียว', 'BV013TSLG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(15, 4, 4, 4, 'L', 'Green', 'เสื้อคอวีสีเขียว', '', 'อื่นๆ-เสื้อคอวีสีเขียว-L-เขียว', 'BV013TSLG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(16, 4, 1, 1, 'S', 'Red', 'เสื้อคอวีสีแดงเลือดหมู', '', 'อื่นๆ-เสื้อคอวีสีแดงเลือดหมู-S-แดง', 'BV013TSLR-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(5, 2, 3, 8, 'M', 'white', 'เสื้อฮาวายตัวสั้นแขนสั้น', '', 'เสื้อกาวน์-เสื้อฮาวายตัวสั้นแขนสั้น-M-ขาว', 'BH001TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25', 1),
(10, 4, 1, 2, 'S', 'Blue', 'เสื้อคอวีสีน้ำเงิน', '', 'อื่นๆ-เสื้อคอวีสีน้ำเงิน-S-น้ำเงิน', 'BV013TSLDDB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(11, 4, 3, 2, 'M', 'Blue', 'เสื้อคอวีสีน้ำเงิน', '', 'อื่นๆ-เสื้อคอวีสีน้ำเงิน-M-น้ำเงิน', 'BV013TSLDDB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(12, 4, 4, 2, 'L', 'Blue', 'เสื้อคอวีสีน้ำเงิน', '', 'อื่นๆ-เสื้อคอวีสีน้ำเงิน-L-น้ำเงิน', 'BV013TSLDDB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(6, 2, 4, 8, 'L', 'white', 'เสื้อฮาวายตัวสั้นแขนสั้น', '', 'เสื้อกาวน์-เสื้อฮาวายตัวสั้นแขนสั้น-L-ขาว', 'BH001TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25', 1),
(7, 4, 1, 10, 'S', 'Purple-Blue', 'เสื้อคอวีสีม่วงฟ้า', '', 'อื่นๆ-เสื้อคอวีสีม่วงฟ้า-S-ม่วง-ฟ้า', 'BV013TSLBV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(8, 4, 3, 10, 'M', 'Purple-Blue', 'เสื้อคอวีสีม่วงฟ้า', '', 'อื่นๆ-เสื้อคอวีสีม่วงฟ้า-M-ม่วง-ฟ้า', 'BV013TSLBV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(9, 4, 4, 10, 'L', 'Purple-Blue', 'เสื้อคอวีสีม่วงฟ้า', '', 'อื่นๆ-เสื้อคอวีสีม่วงฟ้า-L-ม่วง-ฟ้า', 'BV013TSLBV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(23, 5, 3, 9, 'M', 'Gray', 'เสื้อคอวีลายหมาสีเทา', '', 'อื่นๆ-เสื้อคอวีลายหมาสีเทา-M-เทา', 'BV013TRRGR-DOG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(24, 5, 4, 9, 'L', 'Gray', 'เสื้อคอวีลายหมาสีเทา', '', 'อื่นๆ-เสื้อคอวีลายหมาสีเทา-L-เทา', 'BV013TRRGR-DOG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(25, 5, 1, 1, 'S', 'Red', 'เสื้อคอวีลายหมาสีแดงเลือดหมู', '', 'อื่นๆ-เสื้อคอวีลายหมาสีแดงเลือดหมู-S-แดง', 'BV013TRRR-DOG2-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(26, 5, 3, 1, 'M', 'Red', 'เสื้อคอวีลายหมาสีแดงเลือดหมู', '', 'อื่นๆ-เสื้อคอวีลายหมาสีแดงเลือดหมู-M-แดง', 'BV013TRRR-DOG2-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(27, 5, 4, 1, 'L', 'Red', 'เสื้อคอวีลายหมาสีแดงเลือดหมู', '', 'อื่นๆ-เสื้อคอวีลายหมาสีแดงเลือดหมู-L-แดง', 'BV013TRRR-DOG2-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(28, 3, 1, 4, 'S', 'Green', 'เสื้อผ่าตัดใหญ่', '', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดใหญ่-S-เขียว', 'NBE004TSCG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(29, 3, 3, 4, 'M', 'Green', 'เสื้อผ่าตัดใหญ่', '', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดใหญ่-M-เขียว', 'NBE004TSCG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(30, 3, 4, 4, 'L', 'Green', 'เสื้อผ่าตัดใหญ่', '', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดใหญ่-L-เขียว', 'NBE004TSCG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(31, 6, 1, 2, 'S', 'Blue', 'เสื้อผ่าตัดเล็กสีฟ้า', '', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดเล็กสีฟ้า-S-น้ำเงิน', 'NBE006TSLB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(32, 6, 3, 2, 'M', 'Blue', 'เสื้อผ่าตัดเล็กสีฟ้า', '', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดเล็กสีฟ้า-M-น้ำเงิน', 'NBE006TSLB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(33, 6, 4, 2, 'L', 'Blue', 'เสื้อผ่าตัดเล็กสีฟ้า', '', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดเล็กสีฟ้า-L-น้ำเงิน', 'NBE006TSLB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(34, 6, 1, 4, 'S', 'Green', 'เสื้อผ่าตัดเล็กสีเขียว', '', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดเล็กสีเขียว-S-เขียว', 'NBE006TSLGL-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(35, 6, 3, 4, 'M', 'Green', 'เสื้อผ่าตัดเล็กสีเขียว', '', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดเล็กสีเขียว-M-เขียว', 'NBE006TSLGL-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(36, 6, 4, 4, 'L', 'Green', 'เสื้อผ่าตัดเล็กสีเขียว', '', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดเล็กสีเขียว-L-เขียว', 'NBE006TSLGL-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(37, 7, 1, 5, 'S', 'Purple', 'เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาวสีม่วงชมพู', '', 'เสื้อกาวน์-เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาวสีม่วงชมพู-S-ม่วง', 'OCE007TRRV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(38, 7, 3, 5, 'M', 'Purple', 'เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาวสีม่วงชมพู', '', 'เสื้อกาวน์-เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาวสีม่วงชมพู-M-ม่วง', 'OCE007TRRV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(39, 7, 4, 5, 'L', 'Purple', 'เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาวสีม่วงชมพู', '', 'เสื้อกาวน์-เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาวสีม่วงชมพู-L-ม่วง', 'OCE007TRRV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE IF NOT EXISTS `size` (
  `SIZE_ID` int(11) NOT NULL,
  `SIZE_NM` varchar(3) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`SIZE_ID`, `SIZE_NM`) VALUES
(1, 'S'),
(2, 'SS'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
 ADD PRIMARY KEY (`CATALOG_ID`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
 ADD PRIMARY KEY (`COLOR_ID`), ADD UNIQUE KEY `COLOR_ID` (`COLOR_ID`);

--
-- Indexes for table `product_dtl`
--
ALTER TABLE `product_dtl`
 ADD PRIMARY KEY (`PRODUCT_DTL_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
MODIFY `CATALOG_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_dtl`
--
ALTER TABLE `product_dtl`
MODIFY `PRODUCT_DTL_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
