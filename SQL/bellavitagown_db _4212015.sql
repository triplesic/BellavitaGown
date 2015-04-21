-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- โฮสต์: localhost
-- เวลาในการสร้าง: 
-- รุ่นของเซิร์ฟเวอร์: 5.0.51
-- รุ่นของ PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- ฐานข้อมูล: `bellavitagown_db`
-- 

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `catalog`
-- 

CREATE TABLE `catalog` (
  `CATALOG_ID` int(11) NOT NULL auto_increment,
  `CATALOG_NAME` varchar(255) collate utf8_unicode_ci NOT NULL,
  `CREATED_BY` varchar(100) collate utf8_unicode_ci NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) collate utf8_unicode_ci NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  PRIMARY KEY  (`CATALOG_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

-- 
-- dump ตาราง `catalog`
-- 

INSERT INTO `catalog` VALUES (1, 'เสื้อกาวน์', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `catalog` VALUES (2, 'เสื้อผ่าตัดใหญ่', '', '0000-00-00', '', '0000-00-00');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `product`
-- 

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL auto_increment,
  `CATALOG_ID` int(11) NOT NULL,
  `PRODUCT_NM_TH` varchar(50) collate utf8_unicode_ci NOT NULL,
  `PRODUCT_NM_EN` varchar(50) collate utf8_unicode_ci NOT NULL,
  `PRICE` int(11) NOT NULL,
  `CREATED_BY` varchar(100) collate utf8_unicode_ci NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) collate utf8_unicode_ci NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  PRIMARY KEY  (`PRODUCT_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

-- 
-- dump ตาราง `product`
-- 

INSERT INTO `product` VALUES (1, 1, 'เสื้อคอจีนป้ายตัวสั้นแขนสั้น', '', 990, '', '0000-00-00', '', '0000-00-00');
INSERT INTO `product` VALUES (2, 1, 'เสื้อฮาวายตัวสั้นแขนสั้น', '', 560, '', '0000-00-00', '', '0000-00-00');
INSERT INTO `product` VALUES (3, 2, 'เสื้อผ่าตัดใหญ่', '', 1990, '', '0000-00-00', '', '0000-00-00');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `product_dtl`
-- 

CREATE TABLE `product_dtl` (
  `PRODUCT_DTL_ID` int(11) NOT NULL auto_increment,
  `PRODUCT_ID` int(11) NOT NULL,
  `SIZE` varchar(1) collate utf8_unicode_ci NOT NULL,
  `COLOR` varchar(16) collate utf8_unicode_ci NOT NULL,
  `DETAIL` text collate utf8_unicode_ci NOT NULL,
  `IMAGE_NAME` varchar(20) collate utf8_unicode_ci NOT NULL,
  `SUGGEST_FLG` int(11) NOT NULL,
  `CREATED_BY` varchar(100) collate utf8_unicode_ci NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) collate utf8_unicode_ci NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  PRIMARY KEY  (`PRODUCT_DTL_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

-- 
-- dump ตาราง `product_dtl`
-- 

INSERT INTO `product_dtl` VALUES (1, 1, 'm', 'white', 'เสื้อผ้าป่าน หน้าป้าย คอจีน แขนกระบอก 4 ส่วน\r\nตัวเสื้อเป็นทรงสั้นแบบที่แม่ค้าใส่เลยค่ะ\r\nกระดุมเป็นกระดิ่งกรุ๊งกริ๊ง ใส่สบาย แถมน่ารักมากๆ ใส่กับกระโปรงยาวๆก็เก๋ไม่ใช่เล่นเลย', 'BC005TSTWH-big.jpg', 0, '', '0000-00-00', '', '0000-00-00');
INSERT INTO `product_dtl` VALUES (2, 1, 'm', 'red', 'เสื้อผ้าป่าน หน้าป้าย คอจีน แขนกระบอก 4 ส่วน\r\nตัวเสื้อเป็นทรงสั้นแบบที่แม่ค้าใส่เลยค่ะ\r\nกระดุมเป็นกระดิ่งกรุ๊งกริ๊ง ใส่สบาย แถมน่ารักมากๆ ใส่กับกระโปรงยาวๆก็เก๋ไม่ใช่เล่นเลย', 'BC005TSTWH-big.jpg', 0, '', '0000-00-00', '', '0000-00-00');
INSERT INTO `product_dtl` VALUES (3, 1, 'm', 'blue', 'เสื้อผ้าป่าน หน้าป้าย คอจีน แขนกระบอก 4 ส่วน\r\nตัวเสื้อเป็นทรงสั้นแบบที่แม่ค้าใส่เลยค่ะ\r\nกระดุมเป็นกระดิ่งกรุ๊งกริ๊ง ใส่สบาย แถมน่ารักมากๆ ใส่กับกระโปรงยาวๆก็เก๋ไม่ใช่เล่นเลย', 'BC005TSTWH-big.jpg', 0, '', '0000-00-00', '', '0000-00-00');
INSERT INTO `product_dtl` VALUES (4, 2, 'm', 'blue', 'เสื้อผ้าป่าน หน้าป้าย คอจีน แขนกระบอก 4 ส่วน\r\nตัวเสื้อเป็นทรงสั้นแบบที่แม่ค้าใส่เลยค่ะ\r\nกระดุมเป็นกระดิ่งกรุ๊งกริ๊ง ใส่สบาย แถมน่ารักมากๆ ใส่กับกระโปรงยาวๆก็เก๋ไม่ใช่เล่นเลย', 'BH001TSTWH-big.jpg', 0, '', '0000-00-00', '', '0000-00-00');
INSERT INTO `product_dtl` VALUES (5, 2, 'm', 'red', 'เสื้อผ้าป่าน หน้าป้าย คอจีน แขนกระบอก 4 ส่วน\r\nตัวเสื้อเป็นทรงสั้นแบบที่แม่ค้าใส่เลยค่ะ\r\nกระดุมเป็นกระดิ่งกรุ๊งกริ๊ง ใส่สบาย แถมน่ารักมากๆ ใส่กับกระโปรงยาวๆก็เก๋ไม่ใช่เล่นเลย', 'BH001TSTWH-big.jpg', 0, '', '0000-00-00', '', '0000-00-00');
INSERT INTO `product_dtl` VALUES (6, 3, 'm', 'blue', 'เสื้อผ้าป่าน หน้าป้าย คอจีน แขนกระบอก 4 ส่วน\r\nตัวเสื้อเป็นทรงสั้นแบบที่แม่ค้าใส่เลยค่ะ\r\nกระดุมเป็นกระดิ่งกรุ๊งกริ๊ง ใส่สบาย แถมน่ารักมากๆ ใส่กับกระโปรงยาวๆก็เก๋ไม่ใช่เล่นเลย', 'NBE004TSCG-big.jpg', 0, '', '0000-00-00', '', '0000-00-00');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `stock`
-- 

CREATE TABLE `stock` (
  `STOCK_ID` int(11) NOT NULL,
  `PRODUCT_DTL_ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `BASE_PRICE` int(11) NOT NULL,
  `CREATED_BY` varchar(100) collate utf8_unicode_ci NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` varchar(100) collate utf8_unicode_ci NOT NULL,
  `UPDATED_DATE` date NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- dump ตาราง `stock`
-- 

INSERT INTO `stock` VALUES (0, 1, 50, 0, '', '0000-00-00', '', '0000-00-00');
INSERT INTO `stock` VALUES (0, 2, 51, 0, '', '0000-00-00', '', '0000-00-00');
INSERT INTO `stock` VALUES (0, 3, 52, 0, '', '0000-00-00', '', '0000-00-00');
INSERT INTO `stock` VALUES (0, 4, 53, 0, '', '0000-00-00', '', '0000-00-00');
INSERT INTO `stock` VALUES (0, 5, 54, 0, '', '0000-00-00', '', '0000-00-00');
INSERT INTO `stock` VALUES (0, 6, 55, 0, '', '0000-00-00', '', '0000-00-00');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `users`
-- 

CREATE TABLE `users` (
  `USER_ID` int(11) NOT NULL auto_increment,
  `USER_TYPE` varchar(10) collate utf8_unicode_ci default NULL,
  `USERNAME` varchar(12) collate utf8_unicode_ci default NULL,
  `PASSWORD` varchar(100) collate utf8_unicode_ci default NULL,
  `FIRSTNAME` varchar(20) collate utf8_unicode_ci default NULL,
  `LASTNAME` varchar(20) collate utf8_unicode_ci default NULL,
  `EMAIL` int(48) default NULL,
  `ADDRESS` int(255) default NULL,
  `CREATED_BY` varchar(100) collate utf8_unicode_ci default NULL,
  `CREATED_DATE` date default NULL,
  `UPDATED_BY` varchar(100) collate utf8_unicode_ci default NULL,
  `UPDATED_DATE` date default NULL,
  PRIMARY KEY  (`USER_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- 
-- dump ตาราง `users`
-- 

INSERT INTO `users` VALUES (0, 'admin', 'pai', '03c9a9346fcc572b1ccf21ec81aeaef9', 'กีรติ', 'อ่อนโฉม', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (1, 'user', 'test', '03c9a9346fcc572b1ccf21ec81aeaef9', 'ทดสอบ', 'ระบบ', NULL, NULL, NULL, NULL, NULL, NULL);
