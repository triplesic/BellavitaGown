-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2015 at 04:48 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`CATALOG_ID`, `CATALOG_NAME`, `CATALOG_NAME_EN`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(1, 'เสื้อกาวน์', 'Doctor suit', 'Pai', '2015-04-20', 'Tow', '2015-04-20'),
(2, 'เสื้อผ่าตัดใหญ่', 'Scrubs', 'Pai', '2015-04-20', 'Tow', '2015-04-20'),
(3, 'เสื้อคอกลม', '', 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(4, 'เสื้อคอวี', '', 'Tow', '2015-05-24', 'Tow', '2015-05-24'),
(5, 'เสื้อคอฮาวาย', '', 'Tow', '2015-05-24', 'Tow', '2015-05-24'),
(6, 'เสื้อปีกนก', '', 'Tow', '2015-05-24', 'Tow', '2015-05-24'),
(7, 'เสื้อปกเชิ้ต', '', 'Tow', '2015-05-24', 'Tow', '2015-05-24'),
(8, 'อื่นๆ', 'Other', 'Tow', '2015-05-24', 'Tow', '2015-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `COLOR_ID` int(11) NOT NULL,
  `COLOR_NM_TH` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `COLOR_NM_EN` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(10, 'ม่วงอมฟ้า', 'purple-blue'),
(11, 'เขียวเข้ม', 'dark-green'),
(12, 'เขียวอ่อน', 'light-green'),
(13, 'เขียวมะนาว', 'lemon-green'),
(14, 'น้ำเงินกรมท่า', 'navy'),
(15, 'ฟ้าเข้ม', 'dark-blue'),
(16, 'ฟ้าอ่อน', 'light-blue'),
(17, 'เหลือง', 'yellow'),
(18, 'ชมพูบานเย็น', 'magenta'),
(19, 'ม่วงเข้ม', 'dark-purple'),
(20, 'ม่วงชมพู', 'purple-pink'),
(21, 'สีฟ้าเข้มแต่งขาว', 'dark-blue and white'),
(22, 'ม่วงอมน้ำเงินแต่งขาว', 'blue-purple-white'),
(23, 'ชมพูแต่งขาว', 'pink with white'),
(24, 'ลายม่วง', 'purple-style'),
(25, 'ลายชมพู', 'pink-style'),
(26, 'ลายฟ้า', 'blue-style'),
(27, 'ฟ้า-ขาว', 'white-blue'),
(28, 'ม่วง-ขาว', 'white-purple');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`ORDER_ID` int(11) NOT NULL,
  `ORDER_PRICE_TOTAL` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `ORDER_CFM_TIME` datetime DEFAULT NULL,
  `ORDER_PAY_TIME` datetime DEFAULT NULL,
  `ORDER_PAY_SLIP` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORDER_PST_CODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORDER_FLG` int(11) NOT NULL DEFAULT '1',
  `ORDER_GNR_NUMBER` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_dtl`
--

CREATE TABLE IF NOT EXISTS `order_dtl` (
`ORDER_DTL_ID` int(11) NOT NULL,
  `PRODUCT_DTL_ID` int(11) NOT NULL,
  `SIZE_ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `ORDER_GRN_NUMBER` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TOTAL` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `CATALOG_ID`, `PRODUCT_NM_TH`, `PRODUCT_NM_EN`, `PRICE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(1, 1, 'เสื้อกาวน์คอจีนป้ายตัวสั้นแขนสั้น', '', 990, '', '2015-04-20', '', '2015-04-20'),
(2, 1, 'เสื้อฮาวายตัวสั้นแขนสั้น', '', 560, '', '2015-04-20', '', '2015-04-20'),
(3, 2, 'เสื้อผ่าตัดใหญ่', 'Scrub', 1990, '', '2015-04-20', '', '2015-04-20'),
(4, 3, 'เสื้อคอวี', '', 790, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(5, 3, 'เสื้อคอวีลายหมา', '', 790, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(6, 2, 'เสื้อผ่าตัดเล็ก', '', 1990, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(7, 1, 'เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาว', '', 990, 'Tow', '2015-04-25', 'Tow', '2015-04-25'),
(8, 1, 'เสื้อกาวน์แพทย์ปกฮาวายตัวสั้นแขนสั้น', 'Short-sleeved Hawaii scrubs suit', 990, 'Tow', '2015-05-24', 'Tow', '2015-05-24'),
(9, 3, 'เสื้อคอกลมตัวสั้นแขนสั้น', 'T-shirt short-sleeve', 990, 'Tow', '2015-05-24', 'Tow', '2015-05-24'),
(10, 4, 'เสื้อคอวีตัวสั้นแขนสั้น  เสื้อสครัป', '', 990, 'Tow', '2015-06-01', 'Tow', '2015-06-01'),
(11, 1, 'เสื้อกาวน์ปกฮาวายตัวสั้นแขนสั้น', '', 990, 'Tow', '2015-06-01', 'Tow', '2015-06-01'),
(12, 1, 'เสื้อกาวน์คอจีนป้ายตัวสั้นแขนยาวแบบซิป', '', 990, 'Tow', '2015-06-01', 'Tow', '2015-06-01'),
(13, 5, 'เสื้อคอฮาวายตัวสั้นแขนสั้นแบบเข้ารูป', '', 990, 'Tow', '2015-06-01', 'Tow', '2015-06-01'),
(14, 1, 'เสื้อกาวน์คอจีนผ่ากลางแบบซิปแต่งสีที่กระเป๋า', '', 990, 'Tow', '2015-06-01', 'Tow', '2015-06-01'),
(15, 6, 'เสื้อปีกนกตัวสั้นแขนสั้นเข้ารูป', '', 990, 'Tow', '2015-06-01', 'Tow', '2015-06-01'),
(16, 1, 'เสื้อกาวน์คอวีตัวสั้นแขนสั้นเข้ารูป', '', 990, 'Tow', '2015-06-01', 'Tow', '2015-06-01'),
(17, 4, 'เสื้อคอวีคอทูโทนตัวสั้นแขนสั้น', '', 990, 'Tow', '2015-06-01', 'Tow', '2015-06-01'),
(18, 7, 'เสื้อปกเชิ้ตตัวสั้นแขนสั้นเป๋าคู่เข้ารูป', '', 990, 'Tow', '2015-06-01', 'Tow', '2015-06-01'),
(19, 1, 'เสื้อกาวน์คอจีนกระดุมแป๊ะซ่อนตัวสั้นแขนสั้น', '', 990, 'Tow', '2015-06-01', 'Tow', '2015-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `product_dtl`
--

CREATE TABLE IF NOT EXISTS `product_dtl` (
`PRODUCT_DTL_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_dtl`
--

INSERT INTO `product_dtl` (`PRODUCT_DTL_ID`, `PRODUCT_ID`, `CODE`, `SIZE_ID`, `COLOR_ID`, `SIZE`, `COLOR`, `DETAIL`, `DETAIL_EN`, `DETAIL_SLUG`, `IMAGE_NAME`, `SUGGEST_FLG`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `IS_AVAILABLE_FLG`) VALUES
(1, 1, '', 1, 8, 'S', 'white', 'เสื้อคอจีนป้ายตัวสั้นแขนสั้น', '', 'เสื้อกาวน์-เสื้อคอจีนป้ายตัวสั้นแขนสั้น-S-ขาว', 'BC005TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25', 1),
(22, 5, '', 1, 9, 'S', 'Gray', 'เสื้อคอวีลายหมาสีเทา', '', 'อื่นๆ-เสื้อคอวีลายหมาสีเทา-S-เทา', 'BV013TRRGR-DOG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(19, 5, '', 1, 4, 'S', 'Green', 'เสื้อคอวีลายหมาสีเขียว', '', 'อื่นๆ-เสื้อคอวีลายหมาสีเขียว-S-เขียว', 'BV013TRRG-DOG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(4, 2, '', 1, 8, 'S', 'white', 'เสื้อฮาวายตัวสั้นแขนสั้น', '', 'เสื้อกาวน์-เสื้อฮาวายตัวสั้นแขนสั้น-S-ขาว', 'BH001TSTWH-big.jpg', 0, 'Pai', '2015-04-20', 'Tow', '2015-04-25', 1),
(13, 4, '', 1, 4, 'S', 'Green', 'เสื้อคอวีสีเขียว', '', 'อื่นๆ-เสื้อคอวีสีเขียว-S-เขียว', 'BV013TSLG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(16, 4, '', 1, 1, 'S', 'Red', 'เสื้อคอวีสีแดงเลือดหมู', '', 'อื่นๆ-เสื้อคอวีสีแดงเลือดหมู-S-แดง', 'BV013TSLR-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(10, 4, '', 1, 2, 'S', 'Blue', 'เสื้อคอวีสีน้ำเงิน', '', 'อื่นๆ-เสื้อคอวีสีน้ำเงิน-S-น้ำเงิน', 'BV013TSLDDB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(7, 4, '', 1, 10, 'S', 'Purple-Blue', 'เสื้อคอวีสีม่วงฟ้า', '', 'อื่นๆ-เสื้อคอวีสีม่วงฟ้า-S-ม่วง-ฟ้า', 'BV013TSLBV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(25, 5, '', 1, 1, 'S', 'Red', 'เสื้อคอวีลายหมาสีแดงเลือดหมู', '', 'อื่นๆ-เสื้อคอวีลายหมาสีแดงเลือดหมู-S-แดง', 'BV013TRRR-DOG2-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(28, 3, '', 1, 4, 'S', 'Green', 'เสื้อผ่าตัดใหญ่', 'Scrub', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดใหญ่-S-เขียว', 'NBE004TSCG-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(31, 6, '', 1, 2, 'S', 'Blue', 'เสื้อผ่าตัดเล็กสีฟ้า', '', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดเล็กสีฟ้า-S-น้ำเงิน', 'NBE006TSLB-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(34, 6, '', 1, 4, 'S', 'Green', 'เสื้อผ่าตัดเล็กสีเขียว', '', 'เสื้อผ่าตัดใหญ่-เสื้อผ่าตัดเล็กสีเขียว-S-เขียว', 'NBE006TSLGL-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(37, 7, '', 1, 5, 'S', 'Purple', 'เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาวสีม่วงชมพู', '', 'เสื้อกาวน์-เสื้อกาวน์คอจีนป้ายตัวยาวแขนยาวสีม่วงชมพู-S-ม่วง', 'OCE007TRRV-big.jpg', 0, 'Tow', '2015-04-25', 'Tow', '2015-04-25', 1),
(38, 8, 'BH001', 1, 8, '', '', 'ผ้าโทเร ทอพิเศษ ผ้าหนานุ่ม', 'Retro fabric, thick/soft, special weave', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-05-24', 'Tow', '2015-05-24', 1),
(39, 8, 'BHL004', 0, 8, '', '', 'ผ้าโทเร ทอพิเศษ ผ้าหนานุ่ม', 'Retro fabric, thick/soft, special weave', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-05-24', 'Tow', '2015-05-24', 1),
(40, 9, 'BR007', 0, 10, '', '', 'กระดุมเบาสบายที่ไหล่ 2 เม็ด เสื้อสครัป, ผ้าผสม Cotton เนื้อบาง', '2 sleeve button , short-sleev, mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-05-24', 'Tow', '2015-05-24', 1),
(41, 9, 'BR007', 0, 7, '', '', 'กระดุมเบาสบายที่ไหล่ 2 เม็ด เสื้อสครัป, ผ้าผสม Cotton เนื้อบาง', '2 sleeve button , short-sleev, mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-05-24', 'Tow', '2015-05-24', 1),
(42, 9, 'BR007', 0, 11, '', '', 'กระดุมเบาสบายที่ไหล่ 2 เม็ด เสื้อสครัป, ผ้าผสม Cotton เนื้อบาง', '2 sleeve button , short-sleev, mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-05-24', 'Tow', '2015-05-24', 1),
(43, 10, 'BV013', 0, 12, '', '', 'ผ้าผสม Cotton เนื้อบาง', 'mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(44, 10, 'BV013', 0, 11, '', '', 'ผ้าผสม Cotton เนื้อบาง', 'mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(45, 10, 'BV013', 0, 13, '', '', 'ผ้าผสม Cotton เนื้อบาง', 'mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(46, 10, 'BV013', 0, 7, '', '', 'ผ้าผสม Cotton เนื้อบาง', 'mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(47, 10, 'BV013', 0, 2, '', '', 'ผ้าผสม Cotton เนื้อบาง', 'mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(48, 10, 'BV013', 0, 14, '', '', 'ผ้าผสม Cotton เนื้อบาง', 'mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(49, 10, 'BV013', 0, 15, '', '', 'ผ้าผสม Cotton เนื้อบาง', 'mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(50, 10, 'BV013', 0, 16, '', '', 'ผ้าผสม Cotton เนื้อบาง', 'mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(51, 10, 'BV013', 0, 17, '', '', 'ผ้าผสม Cotton เนื้อบาง', 'mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(52, 10, 'BV013', 0, 6, '', '', 'ผ้าผสม Cotton เนื้อบาง', 'mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(53, 10, 'BV013', 0, 10, '', '', 'ผ้าผสม Cotton เนื้อบาง', 'mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(54, 10, 'BV013', 0, 18, '', '', 'ผ้าผสม Cotton เนื้อบาง', 'mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(55, 10, 'BV013', 0, 19, '', '', 'ผ้าผสม Cotton เนื้อบาง', 'mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(56, 10, 'BV013', 0, 20, '', '', 'ผ้าผสม Cotton เนื้อบาง', 'mixed thin cotton', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(57, 11, 'BHK014', 0, 21, '', '', 'ผ้าโทเร ทอพิเศษ ผ้าหนานุ่ม', '', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(58, 11, 'BHK014', 0, 22, '', '', 'ผ้าโทเร ทอพิเศษ ผ้าหนานุ่ม', '', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(59, 11, 'BHK014', 0, 23, '', '', 'ผ้าโทเร ทอพิเศษ ผ้าหนานุ่ม', '', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(60, 12, 'BCLZ018', 0, 8, '', '', 'ผ้าโทเร ทอพิเศษ ผ้าหนานุ่ม', '', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(61, 13, 'BH019', 0, 8, '', '', 'ผ้า 2 ชนิด ผ้านุ่มลื่น ซักออกง่า  และผ้าโทเร ผอพิเศษ ผ้าหนานุ่ม', '', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(62, 14, 'BCZ031', 0, 5, '', '', 'ผ้าโทเร ทอพิเศษ ผ้าหนานุ่ม \r\nสีขาวแต่งกระเป๋าตามสี', '', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(63, 14, 'BCZ031', 0, 4, '', '', 'ผ้าโทเร ทอพิเศษ ผ้าหนานุ่ม \r\nสีขาวแต่งกระเป๋าตามสี', '', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(64, 14, 'BCZ031', 0, 3, '', '', 'ผ้าโทเร ทอพิเศษ ผ้าหนานุ่ม \r\nสีขาวแต่งกระเป๋าตามสี', '', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(65, 15, 'BWK035', 0, 8, '', '', 'TLL', 'TLL', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(66, 15, 'BWK035', 0, 20, '', '', 'TLL', 'TLL', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(67, 19, 'BCK084', 0, 24, '', '', 'TRR TST', 'TRR TST', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(68, 19, 'BCK084', 0, 25, '', '', 'TRR TST', 'TRR TST', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(69, 19, 'BCK084', 0, 26, '', '', 'TRR TST', 'TRR TST', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(70, 19, 'BCK084', 0, 27, '', '', 'TRR TST', 'TRR TST', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1),
(71, 19, 'BCK084', 0, 28, '', '', 'TRR TST', 'TRR TST', '', 'OCE007TRRV-big.jpg', 1, 'Tow', '2015-06-01', 'Tow', '2015-06-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_dtl_image`
--

CREATE TABLE IF NOT EXISTS `product_dtl_image` (
`PRODUCT_DTL_IMAGE_ID` int(11) NOT NULL,
  `PRODUCT_DTL_ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_dtl_size`
--

CREATE TABLE IF NOT EXISTS `product_dtl_size` (
`PRODUCT_DTL_SZ_ID` int(11) NOT NULL,
  `PRODUCT_DTL_ID` int(11) NOT NULL,
  `SIZE_ID` int(11) NOT NULL,
  `CREATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `UPDATED_DATE` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_dtl_size`
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
(42, 34, 4, 'pai', '2015-05-17 00:00:00', 'pai', '2015-05-17 00:00:00'),
(43, 38, 1, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(44, 38, 3, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(45, 38, 4, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(46, 38, 5, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(47, 38, 7, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(48, 38, 8, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(49, 39, 1, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(50, 39, 3, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(51, 39, 4, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(52, 39, 5, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(53, 39, 7, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(54, 39, 8, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(55, 40, 1, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(56, 40, 3, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(57, 40, 4, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(58, 40, 5, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(59, 40, 7, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(60, 40, 8, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(61, 41, 1, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(62, 41, 3, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(63, 41, 4, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(64, 41, 5, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(65, 41, 7, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(66, 41, 8, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(67, 42, 1, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(68, 42, 3, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(69, 42, 4, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(70, 42, 5, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(71, 42, 7, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(72, 42, 8, 'tow', '2015-05-24 00:00:00', 'tow', '2015-05-24 00:00:00'),
(73, 43, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(74, 43, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(75, 43, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(76, 43, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(77, 43, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(78, 43, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(90, 44, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(89, 44, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(88, 44, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(87, 44, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(86, 44, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(85, 44, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(91, 45, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(92, 45, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(93, 45, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(94, 45, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(95, 45, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(96, 45, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(97, 46, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(98, 46, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(99, 46, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(100, 46, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(101, 46, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(102, 46, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(103, 47, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(104, 47, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(105, 47, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(106, 47, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(107, 47, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(108, 47, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(109, 48, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(110, 48, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(111, 48, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(112, 48, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(113, 48, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(114, 48, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(115, 49, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(116, 49, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(117, 49, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(118, 49, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(119, 49, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(120, 49, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(121, 50, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(122, 50, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(123, 50, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(124, 50, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(125, 50, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(126, 50, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(127, 51, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(128, 51, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(129, 51, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(130, 51, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(131, 51, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(132, 51, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(133, 52, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(134, 52, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(135, 52, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(136, 52, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(137, 52, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(138, 52, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(139, 53, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(140, 53, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(141, 53, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(142, 53, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(143, 53, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(144, 53, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(145, 54, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(146, 54, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(147, 54, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(148, 54, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(149, 54, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(150, 54, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(151, 55, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(152, 55, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(153, 55, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(154, 55, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(155, 55, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(156, 55, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(157, 56, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(158, 56, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(159, 56, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(160, 56, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(161, 56, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(162, 56, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(174, 57, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(173, 57, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(172, 57, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(171, 57, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(170, 57, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(169, 57, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(175, 58, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(176, 58, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(177, 58, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(178, 58, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(179, 58, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(180, 58, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(181, 59, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(182, 59, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(183, 59, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(184, 59, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(185, 59, 7, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(186, 59, 8, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(187, 60, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(188, 60, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(189, 60, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(190, 60, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(191, 61, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(192, 61, 2, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(193, 61, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(194, 61, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(195, 61, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(196, 62, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(197, 62, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(198, 62, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(199, 62, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(200, 63, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(201, 63, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(202, 63, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(203, 63, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(204, 64, 1, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(205, 64, 3, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(206, 64, 4, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00'),
(207, 64, 5, 'Tow', '2015-06-01 00:00:00', 'Tow', '2015-06-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE IF NOT EXISTS `size` (
  `SIZE_ID` int(11) NOT NULL,
  `SIZE_NM` varchar(3) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`SIZE_ID`, `SIZE_NM`) VALUES
(1, 'S'),
(2, 'SS'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3L'),
(8, '4L'),
(9, '5L');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
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
-- Dumping data for table `stock`
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
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`USER_ID` int(11) NOT NULL,
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
  `UPDATED_DATE` date DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USER_ID`, `USER_TYPE`, `USERNAME`, `PASSWORD`, `FIRSTNAME`, `LASTNAME`, `EMAIL`, `ADDRESS`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(0, 'admin', 'pai', '03c9a9346fcc572b1ccf21ec81aeaef9', 'กีรติ', 'อ่อนโฉม', NULL, NULL, NULL, NULL, NULL, NULL),
(1, 'user', 'test', '03c9a9346fcc572b1ccf21ec81aeaef9', 'ทดสอบ', 'ระบบ', NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`ORDER_ID`,`ORDER_GNR_NUMBER`);

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
-- Indexes for table `product_dtl_image`
--
ALTER TABLE `product_dtl_image`
 ADD PRIMARY KEY (`PRODUCT_DTL_IMAGE_ID`);

--
-- Indexes for table `product_dtl_size`
--
ALTER TABLE `product_dtl_size`
 ADD PRIMARY KEY (`PRODUCT_DTL_SZ_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
MODIFY `CATALOG_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_dtl`
--
ALTER TABLE `order_dtl`
MODIFY `ORDER_DTL_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `product_dtl`
--
ALTER TABLE `product_dtl`
MODIFY `PRODUCT_DTL_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `product_dtl_image`
--
ALTER TABLE `product_dtl_image`
MODIFY `PRODUCT_DTL_IMAGE_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_dtl_size`
--
ALTER TABLE `product_dtl_size`
MODIFY `PRODUCT_DTL_SZ_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=208;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
