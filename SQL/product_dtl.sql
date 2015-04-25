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
-- Table structure for table `product_dtl`
--

CREATE TABLE IF NOT EXISTS `product_dtl` (
`PRODUCT_DTL_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `SIZE` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `COLOR` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `DETAIL` text COLLATE utf8_unicode_ci NOT NULL,
  `IMAGE_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SUGGEST_FLG` int(11) NOT NULL,
  `CREATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `UPDATED_DATE` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_dtl`
--

INSERT INTO `product_dtl` (`PRODUCT_DTL_ID`, `PRODUCT_ID`, `SIZE`, `COLOR`, `DETAIL`, `IMAGE_NAME`, `SUGGEST_FLG`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(1, 1, 'S', 'white', 'เสื้อคอจีนป้ายตัวสั้นแขนสั้น', 'BC005TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25'),
(2, 1, 'M', 'white', 'เสื้อคอจีนป้ายตัวสั้นแขนสั้น', 'BC005TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25'),
(3, 1, 'L', 'white', 'เสื้อคอจีนป้ายตัวสั้นแขนสั้น', 'BC005TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25'),
(4, 2, 'S', 'white', 'เสื้อฮาวายตัวสั้นแขนสั้น', 'BH001TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25'),
(5, 2, 'M', 'white', 'เสื้อฮาวายตัวสั้นแขนสั้น', 'BH001TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25'),
(6, 2, 'L', 'white', 'เสื้อฮาวายตัวสั้นแขนสั้น', 'BH001TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25'),
(7, 4, 'S', 'Purple-Blue', 'เสื้อคอวีสีม่วงฟ้า', 'BV013TSLBV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(8, 4, 'M', 'Purple-Blue', 'เสื้อคอวีสีม่วงฟ้า', 'BV013TSLBV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(9, 4, 'L', 'Purple-Blue', 'เสื้อคอวีสีม่วงฟ้า', 'BV013TSLBV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(10, 4, 'S', 'Blue', 'เสื้อคอวีสีน้ำเงิน', 'BV013TSLDDB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(11, 4, 'M', 'Blue', 'เสื้อคอวีสีน้ำเงิน', 'BV013TSLDDB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(12, 4, 'L', 'Blue', 'เสื้อคอวีสีน้ำเงิน', 'BV013TSLDDB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(13, 4, 'S', 'Green', 'เสื้อคอวีสีเขียว', 'BV013TSLG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(14, 4, 'M', 'Green', 'เสื้อคอวีสีเขียว', 'BV013TSLG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(15, 4, 'L', 'Green', 'เสื้อคอวีสีเขียว', 'BV013TSLG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(16, 4, 'S', 'Red', 'เสื้อคอวีสีแดงเลือดหมู', 'BV013TSLR-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(17, 4, 'M', 'Red', 'เสื้อคอวีสีแดงเลือดหมู', 'BV013TSLR-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(18, 4, 'L', 'Red', 'เสื้อคอวีสีแดงเลือดหมู', 'BV013TSLR-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(19, 5, 'S', 'Green', 'เสื้อคอวีลายหมาสีเขียว', 'BV013TRRG-DOG-big.jp', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(20, 5, 'M', 'Green', 'เสื้อคอวีลายหมาสีเขียว', 'BV013TRRG-DOG-big.jp', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(21, 5, 'L', 'Green', 'เสื้อคอวีลายหมาสีเขียว', 'BV013TRRG-DOG-big.jp', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(22, 5, 'S', 'Gray', 'เสื้อคอวีลายหมาสีเทา', 'BV013TRRGR-DOG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(23, 5, 'M', 'Gray', 'เสื้อคอวีลายหมาสีเทา', 'BV013TRRGR-DOG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(24, 5, 'L', 'Gray', 'เสื้อคอวีลายหมาสีเทา', 'BV013TRRGR-DOG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(25, 5, 'S', 'Red', 'เสื้อคอวีลายหมาสีแดงเลือดหมู', 'BV013TRRR-DOG2-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(26, 5, 'M', 'Red', 'เสื้อคอวีลายหมาสีแดงเลือดหมู', 'BV013TRRR-DOG2-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(27, 5, 'L', 'Red', 'เสื้อคอวีลายหมาสีแดงเลือดหมู', 'BV013TRRR-DOG2-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(28, 3, 'S', 'Green', 'เสื้อผ่าตัดใหญ่', 'NBE004TSCG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(29, 3, 'M', 'Green', 'เสื้อผ่าตัดใหญ่', 'NBE004TSCG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(30, 3, 'L', 'Green', 'เสื้อผ่าตัดใหญ่', 'NBE004TSCG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(31, 6, 'S', 'Blue', 'เสื้อผ่าตัดเล็กสีฟ้า', 'NBE006TSLB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(32, 6, 'M', 'Blue', 'เสื้อผ่าตัดเล็กสีฟ้า', 'NBE006TSLB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(33, 6, 'L', 'Blue', 'เสื้อผ่าตัดเล็กสีฟ้า', 'NBE006TSLB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(34, 6, 'S', 'Green', 'เสื้อผ่าตัดเล็กสีเขียว', 'NBE006TSLGL-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(35, 6, 'M', 'Green', 'เสื้อผ่าตัดเล็กสีเขียว', 'NBE006TSLGL-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(36, 6, 'L', 'Green', 'เสื้อผ่าตัดเล็กสีเขียว', 'NBE006TSLGL-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(37, 7, 'S', 'Purple', 'เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาวสีม่วงชมพู', 'OCE007TRRV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(38, 7, 'M', 'Purple', 'เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาวสีม่วงชมพู', 'OCE007TRRV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(39, 7, 'L', 'Purple', 'เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาวสีม่วงชมพู', 'OCE007TRRV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_dtl`
--
ALTER TABLE `product_dtl`
 ADD PRIMARY KEY (`PRODUCT_DTL_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_dtl`
--
ALTER TABLE `product_dtl`
MODIFY `PRODUCT_DTL_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
