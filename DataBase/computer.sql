/*
MySQL Backup
Source Server Version: 5.7.21
Source Database: computer
Date: 2018/3/11 04:04:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `AdminName` varchar(50) NOT NULL,
  `AdminPassword` varchar(50) NOT NULL,
  `AdminRealName` varchar(50) NOT NULL,
  PRIMARY KEY (`AdminName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `gapfilling`
-- ----------------------------
DROP TABLE IF EXISTS `gapfilling`;
CREATE TABLE `gapfilling` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- ----------------------------
--  Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `testID` varchar(255) NOT NULL,
  `studentID` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gapfilling` int(11) NOT NULL,
  `judge` int(11) NOT NULL,
  `only_choose` int(11) NOT NULL,
  `many_choose` int(11) NOT NULL,
  `grade` int(20) NOT NULL,
  PRIMARY KEY (`testID`),
  KEY `studentID` (`studentID`,`name`),
  CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`studentID`, `name`) REFERENCES `student` (`studentID`, `name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- ----------------------------
--  Table structure for `judge`
-- ----------------------------
DROP TABLE IF EXISTS `judge`;
CREATE TABLE `judge` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `answer` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- ----------------------------
--  Table structure for `many_choose`
-- ----------------------------
DROP TABLE IF EXISTS `many_choose`;
CREATE TABLE `many_choose` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `A` varchar(50) NOT NULL,
  `B` varchar(50) NOT NULL,
  `C` varchar(50) NOT NULL,
  `D` varchar(50) NOT NULL,
  `answer` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- ----------------------------
--  Table structure for `only_choose`
-- ----------------------------
DROP TABLE IF EXISTS `only_choose`;
CREATE TABLE `only_choose` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) NOT NULL,
  `A` varchar(50) NOT NULL,
  `B` varchar(50) NOT NULL,
  `C` varchar(50) NOT NULL,
  `D` varchar(50) NOT NULL,
  `answer` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf32;

-- ----------------------------
--  Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `studentID` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `class` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`studentID`),
  KEY `studentID` (`studentID`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('sp','573F5E80E4CD6FBEB12AC2B6DB3E47AF','孙鹏');
INSERT INTO `only_choose` VALUES ('1','1','1','1','1','1','1'), ('2','1','1','1','1','1','1'), ('3','爱仕达多','2','3','1','1','1');
INSERT INTO `student` VALUES ('2014020332038','孙鹏','1402','q9t3e5q2');
