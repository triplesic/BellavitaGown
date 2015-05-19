-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 
-- Server version: 5.6.17
-- PHP Version: 5.5.12

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
-- โครงสร้างตาราง `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
  `CATALOG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATALOG_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CATALOG_NAME_EN` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  PRIMARY KEY (`CATALOG_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- dump ตาราง `catalog`
--

INSERT INTO `catalog` (`CATALOG_ID`, `CATALOG_NAME`, `CATALOG_NAME_EN`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(1, 'เสื้อกาวน์', '', 'Pai', '2015-04-20', 'Tow', '2015-04-20'),
(2, 'เสื้อผ่าตัดใหญ่', '', 'Pai', '2015-04-20', 'Tow', '2015-04-20'),
(3, 'อื่นๆ', '', 'Tow', '2015-04-25', 'Tow', '2015-04-25');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `COLOR_ID` int(11) NOT NULL,
  `COLOR_NM_TH` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `COLOR_NM_EN` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`COLOR_ID`),
  UNIQUE KEY `COLOR_ID` (`COLOR_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `colors`
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
-- โครงสร้างตาราง `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_PRICE_TOTAL` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `ORDER_CFM_TIME` datetime DEFAULT NULL,
  `ORDER_PAY_TIME` datetime DEFAULT NULL,
  `ORDER_PAY_SLIP` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORDER_PST_CODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORDER_FLG` int(11) NOT NULL DEFAULT '1',
  `ORDER_GNR_NUMBER` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ORDER_ID`,`ORDER_GNR_NUMBER`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `order_dtl`
--

CREATE TABLE IF NOT EXISTS `order_dtl` (
  `ORDER_DTL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_DTL_ID` int(11) NOT NULL,
  `SIZE_ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `ORDER_GRN_NUMBER` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TOTAL` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL,
  PRIMARY KEY (`ORDER_DTL_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATALOG_ID` int(11) NOT NULL,
  `PRODUCT_NM_TH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PRODUCT_NM_EN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PRICE` int(11) NOT NULL,
  `CREATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- dump ตาราง `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `CATALOG_ID`, `PRODUCT_NM_TH`, `PRODUCT_NM_EN`, `PRICE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(1, 1, 'เสื้อกาวน์คอจีนป้ายตัวสั้นแขนสั้น', '', 990, '', '2015-04-20', '', '2015-04-20'),
(2, 1, 'เสื้อฮาวายตัวสั้นแขนสั้น', '', 560, '', '2015-04-20', '', '2015-04-20'),
(3, 2, 'เสื้อผ่าตัดใหญ่', '', 1990, '', '2015-04-20', '', '2015-04-20'),
(4, 3, 'เสื้อคอวี', '', 790, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(5, 3, 'เสื้อคอวีลายหมา', '', 790, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(6, 2, 'เสื้อผ่าตัดเล็ก', '', 1990, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(7, 1, 'เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาว', '', 990, 'Tow', '2015-04-25', 'Tow', '2015-04-25');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `product_dtl`
--

CREATE TABLE IF NOT EXISTS `product_dtl` (
  `PRODUCT_DTL_ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `IS_AVAILABLE_FLG` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`PRODUCT_DTL_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- dump ตาราง `product_dtl`
--

INSERT INTO `product_dtl` (`PRODUCT_DTL_ID`, `PRODUCT_ID`, `SIZE_ID`, `COLOR_ID`, `SIZE`, `COLOR`, `DETAIL`, `DETAIL_EN`, `DETAIL_SLUG`, `IMAGE_NAME`, `SUGGEST_FLG`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `IS_AVAILABLE_FLG`) VALUES
(1, 1, 1, 8, 'S', 'white', 'เสื้อคอจีนป้ายตัวสั้นแขนสั้น', '', 'เสื้อกาวน์-เสื้อคอจีนป้ายตัวสั้นแขนสั้น-S-ขาว', 'BC005TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25', 1),
(22, 5, 1, 9, 'S', 'Gray', 'เสื้อคอวีลายหมาสีเทา', '', 'อื่นๆ-เสื้อคอวีลายหมาสีเทา-S-เทา', 'BV013TRRGR-DOG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(19, 5, 1, 4, 'S', 'Green', 'เสื้อคอวีลายหมาสีเขียว', '', 'อื่นๆ-เสื้อคอวีลายหมาสีเขียว-S-เขียว', 'BV013TRRG-DOG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(4, 2, 1, 8, 'S', 'white', 'เสื้อฮาวายตัวสั้นแขนสั้น', '', 'เสื้อกาวน์-เสื้อฮาวายตัวสั้นแขนสั้น-S-ขาว', 'BH001TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25', 1),
(13, 4, 1, 4, 'S', 'Green', 'เสื้อคอวีสีเขียว', '', 'อื่นๆ-เสื้อคอวีสีเขียว-S-เขียว', 'BV013TSLG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(16, 4, 1, 1, 'S', 'Red', 'เสื้อคอวีสีแดงเลือดหมู', '', 'อื่นๆ-เสื้อคอวีสีแดงเลือดหมู-S-แดง', 'BV013TSLR-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(10, 4, 1, 2, 'S', 'Blue', 'เสื้อคอวีสีน้ำเงิน', '', 'อื่นๆ-เสื้อคอวีสีน้ำเงิน-S-น้ำเงิน', 'BV013TSLDDB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(7, 4, 1, 10, 'S', 'Purple-Blue', 'เสื้อคอวีสีม่วงฟ้า', '', 'อื่นๆ-เสื้อคอวีสีม่วงฟ้า-S-ม่วง-ฟ้า', 'BV013TSLBV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(25, 5, 1, 1, 'S', 'Red', 'เสื้อคอวีลายหมาสีแดงเลือดหมู', '', 'อื่นๆ-เสื้อคอวีลายหมาสีแดงเลือดหมู-S-แดง', 'BV013TRRR-DOG2-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(28, 3, 1, 4, 'S', 'Green', 'เสื้อผ่าตัดใหญ่', '', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดใหญ่-S-เขียว', 'NBE004TSCG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(31, 6, 1, 2, 'S', 'Blue', 'เสื้อผ่าตัดเล็กสีฟ้า', '', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดเล็กสีฟ้า-S-น้ำเงิน', 'NBE006TSLB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(34, 6, 1, 4, 'S', 'Green', 'เสื้อผ่าตัดเล็กสีเขียว', '', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดเล็กสีเขียว-S-เขียว', 'NBE006TSLGL-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(37, 7, 1, 5, 'S', 'Purple', 'เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาวสีม่วงชมพู', '', 'เสื้อกาวน์-เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาวสีม่วงชมพู-S-ม่วง', 'OCE007TRRV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `product_dtl_image`
--

CREATE TABLE IF NOT EXISTS `product_dtl_image` (
  `PRODUCT_DTL_IMAGE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_DTL_ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`PRODUCT_DTL_IMAGE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `product_dtl_size`
--

CREATE TABLE IF NOT EXISTS `product_dtl_size` (
  `PRODUCT_DTL_SZ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_DTL_ID` int(11) NOT NULL,
  `SIZE_ID` int(11) NOT NULL,
  `CREATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`PRODUCT_DTL_SZ_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=43 ;

--
-- dump ตาราง `product_dtl_size`
--

INSERT INTO `product_dtl_size` (`PRODUCT_DTL_SZ_ID`, `PRODUCT_DTL_ID`, `SIZE_ID`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(1, 1, 1, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(2, 1, 3, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(3, 1, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(4, 4, 1, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(5, 4, 3, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(6, 4, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(7, 28, 1, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(8, 28, 3, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(9, 28, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(10, 7, 1, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(11, 7, 3, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(12, 7, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(13, 22, 1, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(14, 22, 3, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(15, 22, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(16, 31, 1, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(17, 31, 3, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(18, 31, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(19, 37, 1, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(20, 37, 3, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(21, 37, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(22, 16, 1, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(23, 16, 3, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(24, 16, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(25, 13, 1, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(26, 13, 3, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(27, 13, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(28, 10, 1, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(29, 10, 3, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(30, 10, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(31, 7, 1, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(32, 7, 3, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(33, 7, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(34, 19, 1, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(35, 19, 3, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(36, 19, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(37, 25, 1, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(38, 25, 3, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(39, 25, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(40, 34, 1, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(41, 34, 3, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(42, 34, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `size`
--

CREATE TABLE IF NOT EXISTS `size` (
  `SIZE_ID` int(11) NOT NULL,
  `SIZE_NM` varchar(3) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `size`
--

INSERT INTO `size` (`SIZE_ID`, `SIZE_NM`) VALUES
(1, 'S'),
(2, 'SS'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `STOCK_ID` int(11) NOT NULL,
  `PRODUCT_DTL_ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `BASE_PRICE` int(11) NOT NULL,
  `CREATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `UPDATED_DATE` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `stock`
--

INSERT INTO `stock` (`STOCK_ID`, `PRODUCT_DTL_ID`, `QUANTITY`, `BASE_PRICE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(0, 1, 50, 0, '', '0000-00-00', '', '0000-00-00'),
(0, 2, 51, 0, '', '0000-00-00', '', '0000-00-00'),
(0, 3, 52, 0, '', '0000-00-00', '', '0000-00-00'),
(0, 4, 53, 0, '', '0000-00-00', '', '0000-00-00'),
(0, 5, 54, 0, '', '0000-00-00', '', '0000-00-00'),
(0, 6, 55, 0, '', '0000-00-00', '', '0000-00-00');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USERNAME` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIRSTNAME` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LASTNAME` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` int(48) DEFAULT NULL,
  `ADDRESS` int(255) DEFAULT NULL,
  `CREATED_BY` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_DATE` date DEFAULT NULL,
  `UPDATED_BY` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATED_DATE` date DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- dump ตาราง `users`
--

INSERT INTO `users` (`USER_ID`, `USER_TYPE`, `USERNAME`, `PASSWORD`, `FIRSTNAME`, `LASTNAME`, `EMAIL`, `ADDRESS`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(0, 'admin', 'pai', '03c9a9346fcc572b1ccf21ec81aeaef9', 'กีรติ', 'อ่อนโฉม', NULL, NULL, NULL, NULL, NULL, NULL),
(1, 'user', 'test', '03c9a9346fcc572b1ccf21ec81aeaef9', 'ทดสอบ', 'ระบบ', NULL, NULL, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
