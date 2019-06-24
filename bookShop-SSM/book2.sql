/*
 Navicat Premium Data Transfer

 Source Server         : ZhengJiaWei
 Source Server Type    : MySQL
 Source Server Version : 50643
 Source Host           : localhost:3306
 Source Schema         : book2

 Target Server Type    : MySQL
 Target Server Version : 50643
 File Encoding         : 65001

 Date: 24/06/2019 14:46:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for avatar
-- ----------------------------
DROP TABLE IF EXISTS `avatar`;
CREATE TABLE `avatar`  (
  `id` smallint(6) NOT NULL,
  `avatar_txt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of avatar
-- ----------------------------
INSERT INTO `avatar` VALUES (1, '040601', 'resources/images/avatars/040601.jpg');
INSERT INTO `avatar` VALUES (2, '040602', 'resources/images/avatars/040602.jpg');
INSERT INTO `avatar` VALUES (3, '040603', 'resources/images/avatars/040603.jpg');
INSERT INTO `avatar` VALUES (4, '040604', 'resources/images/avatars/040604.jpg');
INSERT INTO `avatar` VALUES (5, '040605', 'resources/images/avatars/040605.jpg');
INSERT INTO `avatar` VALUES (6, '040606', 'resources/images/avatars/040606.jpg');
INSERT INTO `avatar` VALUES (7, '040607', 'resources/images/avatars/040607.jpg');
INSERT INTO `avatar` VALUES (8, '040608', 'resources/images/avatars/040608.jpg');
INSERT INTO `avatar` VALUES (9, '040609', 'resources/images/avatars/040609.jpg');
INSERT INTO `avatar` VALUES (10, '040610', 'resources/images/avatars/040610.jpg');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` bigint(20) NOT NULL,
  `book_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `book_author` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `book_summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `type_id` int(11) NULL DEFAULT NULL,
  `download_times` int(11) NULL DEFAULT NULL,
  `book_pubYear` date NULL DEFAULT NULL,
  `book_file` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_format` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (11990201190624244, '2', '2', '2', 11, 1, '1899-02-01', 'D:/1/data/经典文学/现代文学/2.txt', 'D:/1/data/bookCovers//2.jpg', 'txt');
INSERT INTO `book` VALUES (12010601180407991, '三国演义', '罗贯中', '这是一本三国演义。。。', 12, 2, '2001-06-01', 'F:/lianshu/ebooks/经典文学/古典文学/三国演义.txt', 'F:/lianshu/bookCovers/经典文学/古典文学/三国演义.jpg', 'txt');
INSERT INTO `book` VALUES (12950801180403252, '资治通鉴', '司马光', '这是一本资治通鉴', 12, 3, '1995-08-01', 'F:/lianshu/ebooks/经典文学/古典文学/资治通鉴.txt', 'F:/lianshu/bookCovers/经典文学/古典文学/资治通鉴.jpg', 'txt');
INSERT INTO `book` VALUES (15990201190624387, '1', '1', '1', 15, 2, '1899-02-01', 'D:/1/data/经典文学/诗词歌赋/1.txt', 'D:/1/data/bookCovers/1.jpg', 'txt');
INSERT INTO `book` VALUES (31190201190624788, 'test', 'test', '123', 31, 12, '2019-02-01', 'D:/1/data/计算机类/编程语言/test.txt', 'D:/1/data/bookCovers//test.jpg', 'txt');

-- ----------------------------
-- Table structure for book_type
-- ----------------------------
DROP TABLE IF EXISTS `book_type`;
CREATE TABLE `book_type`  (
  `id` int(11) NOT NULL,
  `book_large_type` int(11) NOT NULL,
  `book_small_type` int(11) NOT NULL,
  `large_type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `small_type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of book_type
-- ----------------------------
INSERT INTO `book_type` VALUES (11, 1, 1, '经典文学', '现代文学');
INSERT INTO `book_type` VALUES (12, 1, 2, '经典文学', '古典文学');
INSERT INTO `book_type` VALUES (13, 1, 3, '经典文学', '国外文学');
INSERT INTO `book_type` VALUES (14, 1, 4, '经典文学', '纪实文学');
INSERT INTO `book_type` VALUES (15, 1, 5, '经典文学', '诗词歌赋');
INSERT INTO `book_type` VALUES (21, 2, 1, '通俗小说', '武侠玄幻');
INSERT INTO `book_type` VALUES (22, 2, 2, '通俗小说', '青春言情');
INSERT INTO `book_type` VALUES (23, 2, 3, '通俗小说', '悬疑推理');
INSERT INTO `book_type` VALUES (24, 2, 4, '通俗小说', '历史军事');
INSERT INTO `book_type` VALUES (25, 2, 5, '通俗小说', '职场生活');
INSERT INTO `book_type` VALUES (31, 3, 1, '计算机类', '编程语言');
INSERT INTO `book_type` VALUES (32, 3, 2, '计算机类', '数据库');
INSERT INTO `book_type` VALUES (33, 3, 3, '计算机类', '人工智能');
INSERT INTO `book_type` VALUES (34, 3, 4, '计算机类', '移动开发');
INSERT INTO `book_type` VALUES (35, 3, 5, '计算机类', '图形图像');
INSERT INTO `book_type` VALUES (41, 4, 1, '杂志期刊', '科学技术');
INSERT INTO `book_type` VALUES (42, 4, 2, '杂志期刊', '人文艺术');
INSERT INTO `book_type` VALUES (43, 4, 3, '杂志期刊', '政治军事');
INSERT INTO `book_type` VALUES (44, 4, 4, '杂志期刊', '经济管理');
INSERT INTO `book_type` VALUES (45, 4, 5, '杂志期刊', '娱乐休闲');

-- ----------------------------
-- Table structure for contribution
-- ----------------------------
DROP TABLE IF EXISTS `contribution`;
CREATE TABLE `contribution`  (
  `id` smallint(6) NOT NULL,
  `level_txt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lowerLimit` int(11) NULL DEFAULT NULL,
  `upperLimit` int(11) NULL DEFAULT NULL,
  `level_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of contribution
-- ----------------------------
INSERT INTO `contribution` VALUES (1, '普通会员', 0, 20, '/resources/images/level/level1.jpg');
INSERT INTO `contribution` VALUES (2, '白银会员', 21, 50, '/resources/images/level/level2.jpg');
INSERT INTO `contribution` VALUES (3, '黄金会员', 51, 100, '/resources/images/level/level3.jpg');
INSERT INTO `contribution` VALUES (4, '铂金会员', 101, 200, '/resources/images/level/level4.jpg');
INSERT INTO `contribution` VALUES (5, '钻石会员', 201, 999999, '/resources/images/level/level5.jpg');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginedUser` bigint(20) NULL DEFAULT NULL,
  `contact` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `suggestion` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(2) NOT NULL,
  `postTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES (1, 1, '782996468', '正在测试中。。。', 1, '2018-04-07 19:03:40');

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uploader` bigint(20) NOT NULL,
  `uploadedBook` bigint(11) NOT NULL,
  `uploadedDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES (1, 1, 12950801180403252, '2018-04-03');
INSERT INTO `upload` VALUES (2, 1, 12010601180407991, '2018-04-07');
INSERT INTO `upload` VALUES (3, 1, 15990201190624387, '2019-06-24');
INSERT INTO `upload` VALUES (4, 1, 11990201190624244, '2019-06-24');
INSERT INTO `upload` VALUES (5, 1, 31190201190624788, '2019-06-24');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userPassword` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatarNum` smallint(11) NULL DEFAULT NULL,
  `contribution` int(11) NULL DEFAULT NULL,
  `creationDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'abc123', '管理员', '', 8, 12, '2018-04-03');

SET FOREIGN_KEY_CHECKS = 1;
