/*
 Navicat Premium Data Transfer

 Source Server         : localhost1
 Source Server Type    : MySQL
 Source Server Version : 50741
 Source Host           : localhost:3306
 Source Schema         : book-manage-sys

 Target Server Type    : MySQL
 Target Server Version : 50741
 File Encoding         : 65001

 Date: 25/05/2025 11:03:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书籍表主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '书籍名',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '书籍封面',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '出版社',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '书籍的作者',
  `isbn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国际标准书号',
  `num` int(11) NULL DEFAULT NULL COMMENT '馆藏数量',
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '书籍简介',
  `bookshelf_id` int(11) NULL DEFAULT NULL COMMENT '书架ID',
  `category_id` int(11) NULL DEFAULT NULL COMMENT '书籍类别ID',
  `is_plan_buy` tinyint(1) NULL DEFAULT NULL COMMENT '是否计划购买',
  `plan_buy_time` date NULL DEFAULT NULL COMMENT '计划购买时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (11, '狂人日记', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=e07eee1Snipaste_2024-12-07_22-42-43.png', '中国友谊出版公司', '鲁迅', '4234324E', 10, '中国现代白话小说开山之作，收录鲁迅全部小说《呐喊》《彷徨》《故事新编》。以1938年上海复社版为底本，原汁原味原版风貌，另收录鲁迅生平及照片', 1, 3, 0, '2024-12-17', '2024-12-07 22:43:32');
INSERT INTO `book` VALUES (16, '萤火谷的梦想家', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=9337258Snipaste_2024-12-08_15-45-06.png', '长江少年儿童出版社', '艾莉森·麦吉', '67878798HHH', 9, '入围2018深圳读书月“年度十大童书”30强。《纽约时报》畅销书作家艾莉森·麦吉六年打磨，温情励志获奖小说《哈利·波特》译者马爱农翻译。荣获国际阅读协会教师选择奖、美国父母选择奖等。（心喜阅童书出品）', 1, 2, 1, '2025-05-24', '2024-12-08 15:46:06');
INSERT INTO `book` VALUES (17, '凡人修仙传', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=33addcaSnipaste_2025-05-25_10-14-20.png', '起点读书', '忘语', ' 9789395978958', 5, '一个普通的山村穷小子，偶然之下，跨入到一个江湖小门派，成了一名记名弟子。他以这样身份，如何在门派中立足,如何以平庸的资质进入到修仙者的行列，从而笑傲三界之中！又如何以平庸的资质，进入到修仙者的行列。和其他巨枭魔头、仙宗仙师并列于山海内外。修仙世界尔虞我诈、弱肉强食，大道漫漫，仙途凶险，看普通山村少年韩立如何艰难修仙。虽然资质平庸，但依靠自身努力和合理算计修炼成仙。修仙的过程极为不易，不仅需要克服自身的种种缺陷，同时还要接受敌人和天地的考验，经过重重“跋涉”才能得道。', 1, 2, 1, '2025-05-27', '2025-05-25 10:20:08');

-- ----------------------------
-- Table structure for book_order_history
-- ----------------------------
DROP TABLE IF EXISTS `book_order_history`;
CREATE TABLE `book_order_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图书预约历史ID',
  `book_id` int(11) NULL DEFAULT NULL COMMENT '图书ID',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `deadline_num` int(11) NULL DEFAULT NULL COMMENT '借书的数量',
  `is_return` tinyint(1) NULL DEFAULT NULL COMMENT '是否已经归还',
  `return_time` date NULL DEFAULT NULL COMMENT '归还时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '借书时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book_order_history
-- ----------------------------
INSERT INTO `book_order_history` VALUES (41, 11, 18, 1, 0, '2025-05-28', '2025-05-25 10:39:45');
INSERT INTO `book_order_history` VALUES (42, 11, 16, 1, 1, '2025-05-26', '2025-05-25 10:57:44');

-- ----------------------------
-- Table structure for book_rss_history
-- ----------------------------
DROP TABLE IF EXISTS `book_rss_history`;
CREATE TABLE `book_rss_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图书订阅ID',
  `book_id` int(11) NULL DEFAULT NULL COMMENT '图书ID',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '订阅时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book_rss_history
-- ----------------------------
INSERT INTO `book_rss_history` VALUES (9, 11, 2, '2024-12-08 15:12:37');
INSERT INTO `book_rss_history` VALUES (11, 17, 18, '2025-05-25 10:39:32');
INSERT INTO `book_rss_history` VALUES (12, 17, 16, '2025-05-25 10:43:35');

-- ----------------------------
-- Table structure for book_save
-- ----------------------------
DROP TABLE IF EXISTS `book_save`;
CREATE TABLE `book_save`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图书收藏主键ID',
  `book_id` int(11) NULL DEFAULT NULL COMMENT '图书ID',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book_save
-- ----------------------------
INSERT INTO `book_save` VALUES (16, 15, 2);
INSERT INTO `book_save` VALUES (17, 14, 2);
INSERT INTO `book_save` VALUES (18, 11, 16);

-- ----------------------------
-- Table structure for bookshelf
-- ----------------------------
DROP TABLE IF EXISTS `bookshelf`;
CREATE TABLE `bookshelf`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书架表主键ID',
  `floor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '书架所在的楼层',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '书架所属的区域',
  `frame` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '书架名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bookshelf
-- ----------------------------
INSERT INTO `bookshelf` VALUES (1, '1楼', '东区', 'A1');
INSERT INTO `bookshelf` VALUES (3, '2楼', '北区', 'A2');

-- ----------------------------
-- Table structure for bookshelf_category
-- ----------------------------
DROP TABLE IF EXISTS `bookshelf_category`;
CREATE TABLE `bookshelf_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书架种类关联表主键',
  `bookshelf_id` int(11) NULL DEFAULT NULL COMMENT '书架ID',
  `category_id` int(11) NULL DEFAULT NULL COMMENT '书籍类别ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bookshelf_category
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书籍类别主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '类别名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '历史大类1');
INSERT INTO `category` VALUES (2, '小说');
INSERT INTO `category` VALUES (3, '文学');
INSERT INTO `category` VALUES (5, '社交');
INSERT INTO `category` VALUES (6, '心理学');
INSERT INTO `category` VALUES (7, '外国小说');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '内容',
  `create_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (15, '关于图书馆开馆的详细公告', '<p>本次发布的关于图书馆开馆的公告，旨在向广大读者清晰地传达图书馆开馆的相关重要信息。图书馆一直以来都是知识的宝库，承载着无数人对知识的渴望与追求。在经过一段时间的筹备与准备后，现郑重地向大家公布开馆的具体事宜。无论是开馆时间的明确，还是馆内各项服务设施的介绍，都将在这份公告中详细呈现，以方便读者们提前知晓并做好相应的规划，确保大家能够顺利地开启在图书馆的学习与阅读之旅</p>', '2025-05-25 10:29:26');

-- ----------------------------
-- Table structure for reader_proposal
-- ----------------------------
DROP TABLE IF EXISTS `reader_proposal`;
CREATE TABLE `reader_proposal`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '读者反馈ID',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '反馈者用户ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '反馈的问题内容',
  `is_publish` tinyint(1) NULL DEFAULT NULL COMMENT '是否公开',
  `reply_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '回复内容',
  `reply_time` datetime NULL DEFAULT NULL COMMENT '回复时间',
  `is_reply` tinyint(1) NULL DEFAULT NULL COMMENT '是否已经回复',
  `create_time` datetime NULL DEFAULT NULL COMMENT '用户反馈时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reader_proposal
-- ----------------------------
INSERT INTO `reader_proposal` VALUES (31, 18, '书太少啦！', 1, '后续会有更多书引进，敬请等待！', '2025-05-25 10:42:53', 1, '2025-05-25 10:41:18');
INSERT INTO `reader_proposal` VALUES (32, 16, '我要看凡人，能不能提前几天上架啊', 1, '会尽量快，请耐心等待哦', '2025-05-25 10:56:18', 1, '2025-05-25 10:43:56');
INSERT INTO `reader_proposal` VALUES (33, 16, '能不能引进《仙逆》啊？', 1, NULL, NULL, 0, '2025-05-25 10:57:29');

-- ----------------------------
-- Table structure for rss_notification
-- ----------------------------
DROP TABLE IF EXISTS `rss_notification`;
CREATE TABLE `rss_notification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订阅通知ID',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '通知的内容',
  `is_read` tinyint(1) NULL DEFAULT NULL COMMENT '用户是否已经阅读',
  `create_time` datetime NULL DEFAULT NULL COMMENT '通知的时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rss_notification
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `user_pwd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `user_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `user_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `user_role` int(11) NULL DEFAULT NULL COMMENT '用户角色',
  `is_login` tinyint(1) NULL DEFAULT NULL COMMENT '可登录状态(0：可用，1：不可用)',
  `is_word` tinyint(1) NULL DEFAULT NULL COMMENT '禁言状态(0：可用，1：不可用)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '用户注册时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '怀民（管理员）', '14e1b600b1fd579f47433b88e8d85291', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=72924207A01D7F478B47733A1E0D3B0C09AB037.jpg', '46235556@qq.com', 1, 0, 0, '2025-05-25 10:05:41');
INSERT INTO `user` VALUES (16, 'danking', '蛋总', '4c80f67b7e9a7b9db9b9e9558c139b93', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=fd8b9b827EFE21364FE500D2459363476145853.jpg', 'danking@qq.com', 2, 0, 0, '2025-05-25 10:05:41');
INSERT INTO `user` VALUES (17, 'donking', '蛋蛋', '14e1b600b1fd579f47433b88e8d85291', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=7dc8bf5E70E1E5E2C2C60500866B8F7C3565113.jpg', 'donking@qq.com', 2, 0, 1, '2025-05-25 10:21:53');
INSERT INTO `user` VALUES (18, 'hanpaopao', '韩立！', '14e1b600b1fd579f47433b88e8d85291', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=e54b23eIMG_5059.PNG', 'hanpaopao@qq.com', 2, 0, 0, '2025-05-25 10:39:04');

-- ----------------------------
-- Table structure for user_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_log`;
CREATE TABLE `user_operation_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户行为日志表主键ID',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '行为描述',
  `create_time` datetime NULL DEFAULT NULL COMMENT '记录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_operation_log
-- ----------------------------
INSERT INTO `user_operation_log` VALUES (108, 18, '借阅书籍', '2025-05-25 10:39:45');
INSERT INTO `user_operation_log` VALUES (109, 18, '向系统提交建议', '2025-05-25 10:41:18');
INSERT INTO `user_operation_log` VALUES (110, 16, '向系统提交建议', '2025-05-25 10:43:56');
INSERT INTO `user_operation_log` VALUES (111, 16, '向系统提交建议', '2025-05-25 10:57:29');
INSERT INTO `user_operation_log` VALUES (112, 16, '借阅书籍', '2025-05-25 10:57:44');
INSERT INTO `user_operation_log` VALUES (113, 16, '归还书籍', '2025-05-25 10:57:48');

SET FOREIGN_KEY_CHECKS = 1;
