/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50735
Source Host           : localhost:3306
Source Database       : ssmbuild

Target Server Type    : MYSQL
Target Server Version : 50735
File Encoding         : 65001

Date: 2025-05-21 09:49:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `comments` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_article_cv` (`category_id`,`views`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', '1', '1', '1', '1', '1');
INSERT INTO `article` VALUES ('2', '2', '2', '2', '2', '2', '2');
INSERT INTO `article` VALUES ('3', '1', '1', '3', '3', '3', '3');

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bookid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bookid`),
  KEY `y` (`card`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('3', '1');
INSERT INTO `book` VALUES ('17', '1');
INSERT INTO `book` VALUES ('9', '3');
INSERT INTO `book` VALUES ('4', '4');
INSERT INTO `book` VALUES ('11', '4');
INSERT INTO `book` VALUES ('12', '6');
INSERT INTO `book` VALUES ('2', '7');
INSERT INTO `book` VALUES ('10', '11');
INSERT INTO `book` VALUES ('5', '13');
INSERT INTO `book` VALUES ('8', '14');
INSERT INTO `book` VALUES ('6', '15');
INSERT INTO `book` VALUES ('7', '16');
INSERT INTO `book` VALUES ('16', '16');
INSERT INTO `book` VALUES ('18', '16');
INSERT INTO `book` VALUES ('19', '17');
INSERT INTO `book` VALUES ('20', '17');
INSERT INTO `book` VALUES ('1', '18');
INSERT INTO `book` VALUES ('15', '19');
INSERT INTO `book` VALUES ('13', '20');
INSERT INTO `book` VALUES ('14', '20');

-- ----------------------------
-- Table structure for `books`
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `bookID` int(10) NOT NULL AUTO_INCREMENT COMMENT '书id',
  `bookName` varchar(100) NOT NULL COMMENT '书名',
  `bookCounts` int(11) NOT NULL COMMENT '数量',
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('1', 'Java从入门到放弃', '3');
INSERT INTO `books` VALUES ('2', 'MySQL从删库到跑路', '10');
INSERT INTO `books` VALUES ('3', 'Linux从进门到入狱', '5');

-- ----------------------------
-- Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '10');
INSERT INTO `class` VALUES ('2', '10');
INSERT INTO `class` VALUES ('3', '18');
INSERT INTO `class` VALUES ('4', '19');
INSERT INTO `class` VALUES ('5', '1');
INSERT INTO `class` VALUES ('6', '7');
INSERT INTO `class` VALUES ('7', '11');
INSERT INTO `class` VALUES ('8', '12');
INSERT INTO `class` VALUES ('9', '10');
INSERT INTO `class` VALUES ('10', '13');
INSERT INTO `class` VALUES ('11', '15');
INSERT INTO `class` VALUES ('12', '14');
INSERT INTO `class` VALUES ('13', '4');
INSERT INTO `class` VALUES ('14', '20');
INSERT INTO `class` VALUES ('15', '7');
INSERT INTO `class` VALUES ('16', '16');
INSERT INTO `class` VALUES ('17', '17');
INSERT INTO `class` VALUES ('18', '18');
INSERT INTO `class` VALUES ('19', '19');
INSERT INTO `class` VALUES ('20', '18');
INSERT INTO `class` VALUES ('21', '15');

-- ----------------------------
-- Table structure for `emp`
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `empno` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ename` varchar(20) NOT NULL DEFAULT '',
  `job` varchar(9) NOT NULL DEFAULT '',
  `mgr` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hiredate` date NOT NULL,
  `sal` decimal(7,2) NOT NULL,
  `comm` decimal(7,2) NOT NULL,
  `deptno` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp
-- ----------------------------

-- ----------------------------
-- Table structure for `mylock`
-- ----------------------------
DROP TABLE IF EXISTS `mylock`;
CREATE TABLE `mylock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mylock
-- ----------------------------
INSERT INTO `mylock` VALUES ('1', 'k');
INSERT INTO `mylock` VALUES ('2', 'b');
INSERT INTO `mylock` VALUES ('3', 'c');
INSERT INTO `mylock` VALUES ('4', 'd');
INSERT INTO `mylock` VALUES ('5', 'e');

-- ----------------------------
-- Table structure for `phone`
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `phoneid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card` int(10) unsigned NOT NULL,
  PRIMARY KEY (`phoneid`),
  KEY `z` (`card`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone
-- ----------------------------
INSERT INTO `phone` VALUES ('6', '2');
INSERT INTO `phone` VALUES ('1', '3');
INSERT INTO `phone` VALUES ('4', '3');
INSERT INTO `phone` VALUES ('8', '3');
INSERT INTO `phone` VALUES ('18', '7');
INSERT INTO `phone` VALUES ('19', '7');
INSERT INTO `phone` VALUES ('11', '8');
INSERT INTO `phone` VALUES ('5', '10');
INSERT INTO `phone` VALUES ('10', '10');
INSERT INTO `phone` VALUES ('20', '10');
INSERT INTO `phone` VALUES ('16', '12');
INSERT INTO `phone` VALUES ('12', '13');
INSERT INTO `phone` VALUES ('15', '14');
INSERT INTO `phone` VALUES ('3', '15');
INSERT INTO `phone` VALUES ('17', '16');
INSERT INTO `phone` VALUES ('2', '17');
INSERT INTO `phone` VALUES ('7', '18');
INSERT INTO `phone` VALUES ('14', '19');
INSERT INTO `phone` VALUES ('9', '20');
INSERT INTO `phone` VALUES ('13', '20');

-- ----------------------------
-- Table structure for `staffs`
-- ----------------------------
DROP TABLE IF EXISTS `staffs`;
CREATE TABLE `staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL DEFAULT '' COMMENT '姓名',
  `age` int(11) NOT NULL DEFAULT '0' COMMENT '年龄',
  `pos` varchar(20) NOT NULL DEFAULT '' COMMENT '职位',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '入职时间',
  PRIMARY KEY (`id`),
  KEY `index_staffs_nameAgePos` (`name`,`age`,`pos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工记录表';

-- ----------------------------
-- Records of staffs
-- ----------------------------
INSERT INTO `staffs` VALUES ('1', 'z3', '22', 'manager', '2021-12-29 13:06:53');
INSERT INTO `staffs` VALUES ('2', 'July', '23', 'dev', '2021-12-29 13:06:53');
INSERT INTO `staffs` VALUES ('3', '2000', '23', 'dev', '2021-12-29 13:06:53');

-- ----------------------------
-- Table structure for `tbla`
-- ----------------------------
DROP TABLE IF EXISTS `tbla`;
CREATE TABLE `tbla` (
  `age` int(11) DEFAULT NULL,
  `birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `idx_A_ageBirth` (`age`,`birth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbla
-- ----------------------------
INSERT INTO `tbla` VALUES ('22', '2021-12-29 18:59:48');
INSERT INTO `tbla` VALUES ('23', '2021-12-29 18:59:48');
INSERT INTO `tbla` VALUES ('24', '2021-12-29 18:59:48');

-- ----------------------------
-- Table structure for `tbl_dept`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(30) DEFAULT NULL,
  `locAdd` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES ('1', 'RD', '11');
INSERT INTO `tbl_dept` VALUES ('2', 'HR', '12');
INSERT INTO `tbl_dept` VALUES ('3', 'MK', '13');
INSERT INTO `tbl_dept` VALUES ('4', 'MIS', '14');
INSERT INTO `tbl_dept` VALUES ('5', 'FD', '15');

-- ----------------------------
-- Table structure for `tbl_emp`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp`;
CREATE TABLE `tbl_emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `deptId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dept_id` (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_emp
-- ----------------------------
INSERT INTO `tbl_emp` VALUES ('1', 'z3', '1');
INSERT INTO `tbl_emp` VALUES ('2', 'z4', '1');
INSERT INTO `tbl_emp` VALUES ('3', 'z5', '1');
INSERT INTO `tbl_emp` VALUES ('4', 'w5', '2');
INSERT INTO `tbl_emp` VALUES ('5', 'w6', '2');
INSERT INTO `tbl_emp` VALUES ('6', 's7', '3');
INSERT INTO `tbl_emp` VALUES ('7', 's8', '4');
INSERT INTO `tbl_emp` VALUES ('8', 's9', '51');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_nameAge` (`name`,`age`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', '1aa1', '21', 'a@163.com');
INSERT INTO `tbl_user` VALUES ('2', '2bb2', '23', 'b@163.com');
INSERT INTO `tbl_user` VALUES ('3', '3cc3', '24', 'c@163.com');
INSERT INTO `tbl_user` VALUES ('4', '4dd4', '26', 'd@163.com');

-- ----------------------------
-- Table structure for `test03`
-- ----------------------------
DROP TABLE IF EXISTS `test03`;
CREATE TABLE `test03` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c1` char(10) DEFAULT NULL,
  `c2` char(10) DEFAULT NULL,
  `c3` char(10) DEFAULT NULL,
  `c4` char(10) DEFAULT NULL,
  `c5` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_test03_c1234` (`c1`,`c2`,`c3`,`c4`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test03
-- ----------------------------
INSERT INTO `test03` VALUES ('1', 'a1', 'a2', 'a3', 'a4', 'a5');
INSERT INTO `test03` VALUES ('2', 'b1', 'b2', 'b3', 'b4', 'b5');
INSERT INTO `test03` VALUES ('3', 'c1', 'c2', 'c3', 'c4', 'c5');
INSERT INTO `test03` VALUES ('4', 'd1', 'd2', 'd3', 'd4', 'd5');
INSERT INTO `test03` VALUES ('5', 'e1', 'e2', 'e3', 'e4', 'e5');

-- ----------------------------
-- Table structure for `test_innodb_lock`
-- ----------------------------
DROP TABLE IF EXISTS `test_innodb_lock`;
CREATE TABLE `test_innodb_lock` (
  `a` int(11) DEFAULT NULL,
  `b` varchar(16) DEFAULT NULL,
  KEY `test_innodb_a_ind` (`a`),
  KEY `test_innodb_lock_b_ind` (`b`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_innodb_lock
-- ----------------------------
INSERT INTO `test_innodb_lock` VALUES ('1', '1');
INSERT INTO `test_innodb_lock` VALUES ('3', '60');
INSERT INTO `test_innodb_lock` VALUES ('4', '80');
INSERT INTO `test_innodb_lock` VALUES ('5', '5000');
INSERT INTO `test_innodb_lock` VALUES ('6', '6000');
INSERT INTO `test_innodb_lock` VALUES ('7', '7000');
INSERT INTO `test_innodb_lock` VALUES ('8', '8000');
INSERT INTO `test_innodb_lock` VALUES ('9', '9000');
INSERT INTO `test_innodb_lock` VALUES ('1', '1');
