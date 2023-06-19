/*
MySQL Data Transfer
Source Host: localhost
Source Database: ebook_to_presentation
Target Host: localhost
Target Database: ebook_to_presentation
Date: 20-05-2023 14:46:12
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for book_details
-- ----------------------------
DROP TABLE IF EXISTS `book_details`;
CREATE TABLE `book_details` (
  `id` varchar(10) NOT NULL,
  `bname` varchar(40) default NULL,
  `author` varchar(40) default NULL,
  `fname` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `uname` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `utype` varchar(30) NOT NULL,
  PRIMARY KEY  (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `book_details` VALUES ('1', 'ddf', 'ppp', 'survey paper2.pdf');
INSERT INTO `book_details` VALUES ('10', 'cc', 'ccc', 'cc.pdf');
INSERT INTO `book_details` VALUES ('11', 'dd', 'ddd', 'dd.pdf');
INSERT INTO `book_details` VALUES ('12', 'toce', 'xyz', '1.pdf');
INSERT INTO `book_details` VALUES ('13', 'xya', 'xy', 'Region-Based_Removal_of_Thermal_Reflection_Using_P.pdf');
INSERT INTO `book_details` VALUES ('14', 'sample', 'ddd', 'Grievance_app (report).pdf');
INSERT INTO `book_details` VALUES ('15', 'dddd', 'fffs', 'Grievance_app (report).pdf');
INSERT INTO `book_details` VALUES ('16', 'btest', 'pp nn', 'final.pdf');
INSERT INTO `book_details` VALUES ('17', 'pppp', 'pjjjjjjjjjj', 'EVchain_An_Anonymous_Blockchain-Based_System_for_Charging-Connected_Electric_Vehicles.pdf');
INSERT INTO `book_details` VALUES ('18', 'Report', 'Naveen', 'report1.pdf');
INSERT INTO `book_details` VALUES ('19', 'Report', 'Naveen', 'report1.pdf');
INSERT INTO `book_details` VALUES ('2', 'test1', 'bbb', 'Indoor_Localization_System_using_RSSI_Measurement_.pdf');
INSERT INTO `book_details` VALUES ('20', 'dd', 'dg', 'report1.pdf');
INSERT INTO `book_details` VALUES ('21', 'sdd', 'ddd', 'report1.pdf');
INSERT INTO `book_details` VALUES ('22', 'ddd', 'bnnn', 'report1.pdf');
INSERT INTO `book_details` VALUES ('23', 'ddd', 'www', 'report1.pdf');
INSERT INTO `book_details` VALUES ('24', 'ffff', 'weee', 'report1.pdf');
INSERT INTO `book_details` VALUES ('25', 'cccc', 'sxasas', 'report1.pdf');
INSERT INTO `book_details` VALUES ('26', 'cccccccc', 'sds', 'report1.pdf');
INSERT INTO `book_details` VALUES ('27', 'dfeff', 'fffef', 'report1.pdf');
INSERT INTO `book_details` VALUES ('28', 'dscsdcds', 'dscdscds', 'report1.pdf');
INSERT INTO `book_details` VALUES ('29', 'sdasds', 'dassdafdsa', 'report1.pdf');
INSERT INTO `book_details` VALUES ('3', 'ddf', 'fdsdf', 'Abstractive Sentence Summarization with Attentive Recurrent Neural Networks (1).pdf');
INSERT INTO `book_details` VALUES ('30', 'xzccx', 'xzcxc', 'report1.pdf');
INSERT INTO `book_details` VALUES ('31', 'xzcxzc', 'scxzc', 'report1.pdf');
INSERT INTO `book_details` VALUES ('32', 'scdc', 'bbg', 'report1.pdf');
INSERT INTO `book_details` VALUES ('33', 'sdcsdc', 'dscdsc', 'report1.pdf');
INSERT INTO `book_details` VALUES ('34', 'ccdsc', 'dscdcs', 'report1.pdf');
INSERT INTO `book_details` VALUES ('35', 'sdcdvfv', 'fgvfbgb', 'report1.pdf');
INSERT INTO `book_details` VALUES ('36', 'fedfragr', 'dsffdsfs', 'report1.pdf');
INSERT INTO `book_details` VALUES ('37', 'sgfgfdrg', 'dsfdsfds', 'report1.pdf');
INSERT INTO `book_details` VALUES ('38', 'cxcc', 'dscdscs', 'report1.pdf');
INSERT INTO `book_details` VALUES ('39', 'sdds', 'dsfdsf', 'MODULE -I (SAN).pdf');
INSERT INTO `book_details` VALUES ('4', 'ddd', 'fgff', 'Abstractive Sentence Summarization with Attentive Recurrent Neural Networks (1).pdf');
INSERT INTO `book_details` VALUES ('40', 'xsdSAD', 'DSDCSDC', 'MODULE -I (SAN).pdf');
INSERT INTO `book_details` VALUES ('5', 'test2', 'pppddd', 'test.pdf');
INSERT INTO `book_details` VALUES ('6', 'test3', 'pppdddd', 'test.pdf');
INSERT INTO `book_details` VALUES ('7', 'temp', 'sam', 'temp.pdf');
INSERT INTO `book_details` VALUES ('8', 'aa', 'aaa', 'aa.pdf');
INSERT INTO `book_details` VALUES ('9', 'bb', 'bbb', 'bb.pdf');
INSERT INTO `login` VALUES ('admin', '123456', 'admin');
