/*
Navicat MySQL Data Transfer

Source Server         : Flowers
Source Server Version : 80025
Source Host           : localhost:3306
Source Database       : javaweb

Target Server Type    : MYSQL
Target Server Version : 80025
File Encoding         : 65001

Date: 2022-06-11 21:45:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for baseinfo
-- ----------------------------
DROP TABLE IF EXISTS `baseinfo`;
CREATE TABLE `baseinfo` (
  `项目` char(12) NOT NULL,
  `描述` char(200) NOT NULL,
  `值` char(200) NOT NULL,
  `头像` char(200) DEFAULT NULL,
  `状态` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`项目`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of baseinfo
-- ----------------------------

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `代码` char(12) NOT NULL,
  `描述` char(50) NOT NULL,
  `专业代码` char(12) NOT NULL,
  `入学年份` varchar(9999) DEFAULT NULL,
  `联系人` char(10) DEFAULT NULL,
  `联系电话` char(20) DEFAULT NULL,
  `状态` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`代码`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('jsjkxyjs1', '计算机科学与技术', 'jsjkxyjs', '2019', '刘菲', '16588997565', '1');
INSERT INTO `class` VALUES ('jxxy1', '机械学院', 'xdjxgc', '2019', '马田与', '19986523654', '1');

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `代码` char(12) NOT NULL,
  `描述` char(50) NOT NULL,
  `联系人` char(10) DEFAULT NULL,
  `联系电话` char(20) DEFAULT NULL,
  `状态` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`代码`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('jsjgc', '计算机工程学院', '任体夏', '15566241265', '1');
INSERT INTO `college` VALUES ('jxgc', '机械工程学院', '汪洋', '19966563325', '1');

-- ----------------------------
-- Table structure for electiveclass
-- ----------------------------
DROP TABLE IF EXISTS `electiveclass`;
CREATE TABLE `electiveclass` (
  `代码` char(12) NOT NULL,
  `描述` char(50) NOT NULL,
  `联系人` char(10) DEFAULT NULL,
  `联系电话` char(20) DEFAULT NULL,
  `状态` int DEFAULT '1',
  PRIMARY KEY (`代码`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of electiveclass
-- ----------------------------

-- ----------------------------
-- Table structure for electivestudent
-- ----------------------------
DROP TABLE IF EXISTS `electivestudent`;
CREATE TABLE `electivestudent` (
  `代码` char(12) NOT NULL,
  `选修班级代码` char(12) NOT NULL,
  `学号` char(13) NOT NULL,
  `状态` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`代码`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of electivestudent
-- ----------------------------

-- ----------------------------
-- Table structure for homework
-- ----------------------------
DROP TABLE IF EXISTS `homework`;
CREATE TABLE `homework` (
  `代码` varchar(12) NOT NULL,
  `描述` text NOT NULL,
  `授课信息代码` varchar(12) NOT NULL,
  `创建时间` datetime(6) NOT NULL,
  `发布时间` datetime(6) DEFAULT NULL,
  `撤销时间` datetime(6) DEFAULT NULL,
  `状态` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of homework
-- ----------------------------

-- ----------------------------
-- Table structure for homeworkdetial
-- ----------------------------
DROP TABLE IF EXISTS `homeworkdetial`;
CREATE TABLE `homeworkdetial` (
  `代码` char(12) NOT NULL,
  `作业代码` char(12) NOT NULL,
  `学号` char(13) NOT NULL,
  `描述` text NOT NULL,
  `提交时间` datetime(6) NOT NULL,
  `成绩` char(6) DEFAULT NULL,
  `批改时间` datetime(6) DEFAULT NULL,
  `状态` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`代码`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of homeworkdetial
-- ----------------------------

-- ----------------------------
-- Table structure for homeworkdetialmore
-- ----------------------------
DROP TABLE IF EXISTS `homeworkdetialmore`;
CREATE TABLE `homeworkdetialmore` (
  `作业明细代码` char(12) NOT NULL,
  `描述` text NOT NULL,
  `附件位置` char(200) NOT NULL,
  `提交时间` datetime(6) NOT NULL,
  `状态` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of homeworkdetialmore
-- ----------------------------

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `序号` int NOT NULL,
  `项目` char(50) NOT NULL,
  `关键词` char(50) NOT NULL,
  `值/内容` char(200) NOT NULL,
  `提交时间` datetime(6) NOT NULL,
  `状态` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`序号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `代码` char(12) NOT NULL,
  `描述` char(50) NOT NULL,
  `学院代码` char(12) NOT NULL,
  `联系人` char(10) DEFAULT NULL,
  `联系电话` char(20) DEFAULT NULL,
  `状态` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`代码`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES ('jsjkxyjs', '计算机科学与技术', 'jsjgc', '夏曦', '15545652233', '1');
INSERT INTO `major` VALUES ('jxxy1', '机械工程', 'jxgc', '前森', '14788659965', '1');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `代码` char(12) NOT NULL,
  `标题` char(50) NOT NULL,
  `内容` text,
  `创建时间` datetime(6) DEFAULT NULL,
  `创建人代码` char(12) DEFAULT NULL,
  `审核时间` datetime(6) DEFAULT NULL,
  `审核人代码` char(12) DEFAULT NULL,
  `发布时间` datetime(6) DEFAULT NULL,
  `发布人代码` char(12) DEFAULT NULL,
  `撤销时间` datetime(6) DEFAULT NULL,
  `撤销人代码` char(12) DEFAULT NULL,
  `状态` int DEFAULT '1',
  PRIMARY KEY (`代码`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for noticereading
-- ----------------------------
DROP TABLE IF EXISTS `noticereading`;
CREATE TABLE `noticereading` (
  `代码` char(12) NOT NULL,
  `通知人代码` char(12) NOT NULL,
  `阅读人代码` char(12) NOT NULL,
  `阅读时间` datetime(6) NOT NULL,
  `状态` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`代码`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of noticereading
-- ----------------------------

-- ----------------------------
-- Table structure for root
-- ----------------------------
DROP TABLE IF EXISTS `root`;
CREATE TABLE `root` (
  `代码` char(12) NOT NULL,
  `姓名` char(50) NOT NULL,
  `email` char(50) NOT NULL,
  `密码` char(64) NOT NULL,
  `手机电话` char(11) NOT NULL,
  `状态` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`代码`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of root
-- ----------------------------

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `学号` char(13) NOT NULL,
  `姓名` char(50) NOT NULL,
  `email` char(50) NOT NULL,
  `密码` char(64) NOT NULL,
  `班级代码` char(12) NOT NULL,
  `手机电话` char(11) NOT NULL,
  `头像` char(200) DEFAULT NULL,
  `状态` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`学号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1901100016', '申亚威', '1687457099@qq.com', '123456', 'zxzx', '13865964772', null, '1');
INSERT INTO `students` VALUES ('1901100099', '李顺', 'lishun@qq.com', '1234', 'vbzx', '18899995632', null, '1');

-- ----------------------------
-- Table structure for teachers
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `代码` char(12) NOT NULL,
  `姓名` char(50) NOT NULL,
  `email` char(50) NOT NULL,
  `密码` char(64) NOT NULL,
  `手机电话` char(11) NOT NULL,
  `头像` char(200) DEFAULT NULL,
  `状态` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`代码`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of teachers
-- ----------------------------
INSERT INTO `teachers` VALUES ('45678', '王天水', 'wts@qq.com', '1234', '15578975566', null, '1');

-- ----------------------------
-- Table structure for teachinginfo
-- ----------------------------
DROP TABLE IF EXISTS `teachinginfo`;
CREATE TABLE `teachinginfo` (
  `代码` char(12) NOT NULL,
  `教师代码` char(12) NOT NULL,
  `班级代码` char(12) NOT NULL,
  `课程描述` char(50) NOT NULL,
  `状态` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`代码`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of teachinginfo
-- ----------------------------
