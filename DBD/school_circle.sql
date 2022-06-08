/*
 Navicat Premium Data Transfer

 Source Server         : localroot
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : school_circle

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 08/06/2022 22:25:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ccomment
-- ----------------------------
DROP TABLE IF EXISTS `ccomment`;
CREATE TABLE `ccomment`  (
  `ccid` int NOT NULL AUTO_INCREMENT COMMENT '评论的评论id',
  `cid` int NOT NULL COMMENT '评论id',
  `uid` int NOT NULL COMMENT '评论用户',
  `time` datetime NOT NULL COMMENT '时间',
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '评论内容',
  `tid` int NULL DEFAULT NULL COMMENT '评论处在的帖子的id',
  `is_alive` tinyint NOT NULL DEFAULT 1,
  PRIMARY KEY (`ccid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '此表用于对于评论的回复的保存（类似于楼中楼的效果）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `chat_id` int NOT NULL AUTO_INCREMENT COMMENT '聊天号',
  `uid_from` int NOT NULL COMMENT '发送者id',
  `uid_to` int NOT NULL COMMENT '接收者id',
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发送内容',
  `time` datetime NOT NULL COMMENT '时间',
  PRIMARY KEY (`chat_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天记录保存表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `cid` int NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `uid` int NOT NULL COMMENT '评论者id',
  `tid` int NOT NULL COMMENT '评论的帖子id',
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `time` datetime NOT NULL COMMENT '回复时间',
  `is_alive` tinyint NOT NULL DEFAULT 1 COMMENT '评论是否未被删除',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for favourite
-- ----------------------------
DROP TABLE IF EXISTS `favourite`;
CREATE TABLE `favourite`  (
  `fid` int NOT NULL AUTO_INCREMENT,
  `tid` int NOT NULL,
  `uid` int NOT NULL,
  `time` datetime NULL DEFAULT NULL,
  `is_alive` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow`  (
  `fid` int NOT NULL AUTO_INCREMENT,
  `followed` int NULL DEFAULT NULL,
  `following` int NULL DEFAULT NULL,
  `f_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE,
  INDEX `be`(`followed`) USING BTREE,
  INDEX `doing`(`following`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for friend_ask
-- ----------------------------
DROP TABLE IF EXISTS `friend_ask`;
CREATE TABLE `friend_ask`  (
  `uid_from` int NULL DEFAULT NULL COMMENT '好友请求发送者',
  `uid_to` int NULL DEFAULT NULL COMMENT '好友请求接受者',
  `is_success` tinyint NULL DEFAULT 0 COMMENT '是否成功',
  `success_time` datetime NULL DEFAULT NULL COMMENT '成功时间',
  `time` datetime NULL DEFAULT NULL COMMENT '发送时间',
  `is_alive` tinyint NOT NULL DEFAULT 1 COMMENT '有效性',
  `aid` int NOT NULL AUTO_INCREMENT,
  `is_fail` tinyint NULL DEFAULT NULL COMMENT '是否被拒绝',
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '添加好友请求表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for login_info
-- ----------------------------
DROP TABLE IF EXISTS `login_info`;
CREATE TABLE `login_info`  (
  `uid` int NOT NULL COMMENT '登录者id',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录ip',
  `time` datetime NOT NULL COMMENT '登录时间',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for relation
-- ----------------------------
DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation`  (
  `rid` int NOT NULL AUTO_INCREMENT,
  `uid1` int NOT NULL,
  `uid2` int NOT NULL,
  `is_alive` tinyint NOT NULL DEFAULT 1,
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '测试id',
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '测试文字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tweet
-- ----------------------------
DROP TABLE IF EXISTS `tweet`;
CREATE TABLE `tweet`  (
  `tid` int NOT NULL AUTO_INCREMENT COMMENT '帖子id',
  `uid` int NOT NULL COMMENT '发帖者id',
  `time` datetime NOT NULL COMMENT '发帖时间',
  `type` int NOT NULL COMMENT '帖子类型',
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '贴文内容',
  `is_alive` tinyint NOT NULL DEFAULT 1 COMMENT '是否有效',
  `good_num` int UNSIGNED NULL DEFAULT 0,
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '标题',
  `have_img` tinyint NULL DEFAULT NULL COMMENT '是否有图片',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片名称',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '帖子列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `pin` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '验证码',
  `pin_time` datetime NOT NULL COMMENT '验证码有效期',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `uid` int NOT NULL COMMENT '用户id',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq',
  `wechat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信号',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `college` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
