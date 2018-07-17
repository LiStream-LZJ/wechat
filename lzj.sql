/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : lzj

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2018-07-17 16:44:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` varchar(10) NOT NULL DEFAULT '0',
  `question` varchar(256) NOT NULL,
  `optA` varchar(256) NOT NULL,
  `optB` varchar(256) NOT NULL,
  `optC` varchar(256) NOT NULL,
  `optD` varchar(256) NOT NULL,
  `answer` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', '1+1=?', 'A.1+1+1-1+1-1', 'B.2*2-2+2^56-2^55*2', 'C.log2 8', 'D.2.0000001', 'B');
INSERT INTO `questions` VALUES ('10', '123456789鐨勯€嗗簭灞?, 'A.0', 'B.1', 'C.2', 'D.3', 'A');
INSERT INTO `questions` VALUES ('2', '1-1^9+10=?', 'A.10', 'B.100', 'C.11', 'D.121', 'A');
INSERT INTO `questions` VALUES ('3', '涓浗浜哄彛鏁伴噺锛?, 'A.13000000000', 'B.13涓?, 'C.13浜夸竾', 'D.13浜?, 'D');
INSERT INTO `questions` VALUES ('4', '涓ゆ儏鑻ユ槸涔呴暱鏃跺嚭鑷簬锛?, 'A.绉﹁', 'B.澶у', 'C.涓笓', 'D.鍚曟皬鏄ョ', 'A');
INSERT INTO `questions` VALUES ('5', '灏嗚繘閰?, 'A.鏉庣櫧', 'B.鐗?, 'C.鏉庡晢闅?, 'D.鏉滅敨', 'A');
INSERT INTO `questions` VALUES ('6', '鐙兼潵浜嗭紙鐚滄按鏋滐級锛?', 'A.鏉ㄦ', 'B.鏋?, 'C.鏉庡瓙', 'D.棣欒晧', 'A');
INSERT INTO `questions` VALUES ('7', '涓€鍙殏铓佸眳鐒朵粠鍥涘窛鐖埌浜嗕笢浜紝鍙兘鍚? ', 'A.鍙兘鎶?, 'B.why not', 'C.鍡摷', 'D.鍦板浘涓婄埇', 'D');
INSERT INTO `questions` VALUES ('8', '涓€鍙毊鐞冨拰涓€涓搧鐞冧粠楂樻ゼ涓婃帀涓嬫潵锛岃皝鍏堣惤鍦帮紵', 'A.閾佺悆 ', 'B.鐞?, 'C.鍚屾椂', 'D.涓嶇煡閬?, 'A');
INSERT INTO `questions` VALUES ('9', '鏂圭▼2x+3y=1鍦ㄧ┖闂磋〃绀虹殑鍥惧舰鏄?( )', 'A.骞宠浜巟oy闈㈢殑骞抽潰', 'B.琛屼簬oz杞寸殑骞抽潰', 'C.杩噊z杞寸殑骞抽潰', 'D.鐩寸嚎', 'B');

-- ----------------------------
-- Table structure for `result`
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `id` int(10) NOT NULL DEFAULT '0',
  `WeiXinnumber` varchar(20) NOT NULL,
  `result` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES ('1', 'Tom', '100');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(15) NOT NULL DEFAULT '0',
  `name` char(16) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `zxc` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'lll', '18', '123');
INSERT INTO `student` VALUES ('2', 'lzj', '20', '123');
INSERT INTO `student` VALUES ('3', 'jzl', '22', '123');
INSERT INTO `student` VALUES ('4', 'sam', '25', '123');

-- ----------------------------
-- Table structure for `zimu`
-- ----------------------------
DROP TABLE IF EXISTS `zimu`;
CREATE TABLE `zimu` (
  `number` int(2) DEFAULT NULL,
  `char` char(10) DEFAULT NULL,
  `!!!` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zimu
-- ----------------------------
INSERT INTO `zimu` VALUES ('1', 'a', 'A');
INSERT INTO `zimu` VALUES ('2', 'b', 'B');
INSERT INTO `zimu` VALUES ('3', 'c', 'C');
INSERT INTO `zimu` VALUES ('4', 'd', 'D');
INSERT INTO `zimu` VALUES ('5', 'e', 'E');
INSERT INTO `zimu` VALUES ('6', 'f', 'F');
INSERT INTO `zimu` VALUES ('7', 'g', 'G');
