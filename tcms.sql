/*
 Navicat Premium Data Transfer

 Source Server         : localhost_sql
 Source Server Type    : MySQL
 Source Server Version : 80037
 Source Host           : localhost:3306
 Source Schema         : tcms

 Target Server Type    : MySQL
 Target Server Version : 80037
 File Encoding         : 65001

 Date: 01/08/2024 13:50:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tcms_medicine
-- ----------------------------
DROP TABLE IF EXISTS `tcms_medicine`;
CREATE TABLE `tcms_medicine`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cid` bigint NOT NULL DEFAULT 0 COMMENT '药品大类目',
  `scid` bigint NOT NULL DEFAULT 0 COMMENT '药品子类目',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '药品名称',
  `pinyin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '药品拼音名称',
  `abbr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '药品拼音简写',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '无' COMMENT '药品别名',
  `character_id` bigint NOT NULL DEFAULT 0 COMMENT '药性，如温、寒等',
  `tasting_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '无' COMMENT '药味集合',
  `attribution_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '无' COMMENT '药品属性集合，如肝、胆等',
  `effect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '无' COMMENT '药效',
  `toxic` tinyint(1) NOT NULL DEFAULT 0 COMMENT '药品有无毒性',
  `unit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '斤' COMMENT '药品进货单位',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '药品进货价格',
  `create_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `deleted_at` datetime(3) NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_tcms_medicine_name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tcms_medicine
-- ----------------------------
INSERT INTO `tcms_medicine` VALUES (3, 0, 0, '薏苡仁', 'yiyiren', 'yy,yr,yyr', '0', 0, '0', '0', '0', 0, '斤', 30.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (4, 0, 0, '桂圆', 'guiyuan', 'gy', '0', 0, '0', '0', '0', 0, '斤', 70.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (5, 0, 0, '莲子', 'lianzi', 'lz', '0', 0, '0', '0', '0', 0, '斤', 90.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (6, 0, 0, '百合', 'baihe', 'bh', '0', 0, '0', '0', '0', 0, '斤', 150.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (7, 0, 0, '芡实', 'qianshi', 'qs', '0', 0, '0', '0', '0', 0, '斤', 40.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (8, 0, 0, '生甘草', 'shenggancao', 'sgc,gc', '0', 0, '0', '0', '0', 0, '斤', 40.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (9, 0, 0, '茯苓', 'fuling', 'fl', '0', 0, '0', '0', '0', 0, '斤', 40.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (10, 0, 0, '葛根', 'gegen', 'gg', '0', 0, '0', '0', '0', 0, '斤', 25.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (11, 0, 0, '红参', 'hongshen', 'hs', '0', 0, '0', '0', '0', 0, '斤', 450.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (12, 0, 0, '西洋参', 'xiyangshen', 'xys', '0', 0, '0', '0', '0', 0, '斤', 500.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (13, 0, 0, '淮山药', 'huaishanyao', 'hsy,sy', '0', 0, '0', '0', '0', 0, '斤', 70.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (14, 0, 0, '黄芪', 'huangqi', 'hq', '0', 0, '0', '0', '0', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (15, 0, 0, '益智仁', 'yizhiren', 'yzr', '0', 0, '0', '0', '0', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (16, 0, 0, '麦冬', 'maidong', 'md', '0', 0, '0', '0', '0', 0, '斤', 180.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (17, 0, 0, '金银花', 'jinyinhua', 'jyh,yh', '0', 0, '0', '0', '0', 0, '斤', 160.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (18, 0, 0, '菊花', 'juhua', 'jh', '0', 0, '0', '0', '0', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (19, 0, 0, '决明子', 'juemingzi', 'jmz', '0', 0, '0', '0', '0', 0, '斤', 20.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (20, 0, 0, '蒲公英', 'pugongying', 'pgy', '0', 0, '0', '0', '0', 0, '斤', 35.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (21, 0, 0, '金桔', 'jinju', 'jj', '0', 0, '0', '0', '0', 0, '斤', 25.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (22, 0, 0, '陈皮', 'chenpi', 'cp,jp', '0', 0, '0', '0', '0', 0, '斤', 25.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (23, 0, 0, '荷叶', 'heye', 'hy', '0', 0, '0', '0', '0', 0, '斤', 30.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (24, 0, 0, '大黄', 'dahuang', 'dh', '0', 0, '0', '0', '0', 0, '斤', 50.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (25, 0, 0, '芒硝', 'mangxiao', 'mx', '0', 0, '0', '0', '0', 0, '斤', 180.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (26, 0, 0, '茯神木', 'fushenmu', 'fs,fsm', '0', 0, '0', '0', '0', 0, '斤', 80.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (27, 0, 0, '薄荷', 'bohe', 'bh', '0', 0, '0', '0', '0', 0, '斤', 50.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (28, 0, 0, '山楂', 'shanzha', 'sz', '0', 0, '0', '0', '0', 0, '斤', 50.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (29, 0, 0, '大枣', 'dazao', 'dz', '0', 0, '0', '0', '0', 0, '斤', 15.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (30, 0, 0, '牛蒡根', 'niubanggen', 'nbg', '0', 0, '0', '0', '0', 0, '斤', 30.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (31, 0, 0, '覆盆子', 'fupenzi', 'fpz', '0', 0, '0', '0', '0', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (32, 0, 0, '桑叶', 'sangye', 'sy', '0', 0, '0', '0', '0', 0, '斤', 25.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (33, 0, 0, '夏枯草', 'xiakucao', 'xkc', '0', 0, '0', '0', '0', 0, '斤', 30.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (34, 0, 0, '罗汉果', 'luohanguo', 'lhg', '0', 0, '0', '0', '0', 0, '个', 2.50, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (35, 0, 0, '天麻', 'tianma', 'tm', '0', 0, '0', '0', '0', 0, '斤', 300.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (36, 0, 0, '三七', 'sanqi', 'sq', '0', 0, '0', '0', '0', 0, '斤', 260.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (37, 0, 0, '黄精', 'huangjin', 'hj', '0', 0, '0', '0', '0', 0, '斤', 180.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (38, 0, 0, '川芎', 'chuanxiong', 'cx', '0', 0, '0', '0', '0', 0, '斤', 80.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (39, 0, 0, '枸杞', 'gouqi', 'gq', '0', 0, '0', '0', '0', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (40, 0, 0, '灵芝', 'lingzhi', 'lz', '0', 0, '0', '0', '0', 0, '斤', 280.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (41, 0, 0, '金钱草', 'jinqiancao', 'jqc', '0', 0, '0', '0', '0', 0, '斤', 50.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (42, 0, 0, '桑葚', 'sangshen', 'ss', '0', 0, '0', '0', '0', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (43, 0, 0, '平贝母', 'pingbeimu', 'pbm,bm', '0', 0, '0', '0', '0', 0, '斤', 300.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (44, 0, 0, '党参', 'dangshen', 'ds', '0', 0, '0', '0', '0', 0, '斤', 180.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (45, 0, 0, '丹参', 'danshen', 'ds', '0', 0, '0', '0', '0', 0, '斤', 60.00, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tcms_medicine_attribution
-- ----------------------------
DROP TABLE IF EXISTS `tcms_medicine_attribution`;
CREATE TABLE `tcms_medicine_attribution`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tcms_medicine_attribution
-- ----------------------------
INSERT INTO `tcms_medicine_attribution` VALUES (1, '肝');
INSERT INTO `tcms_medicine_attribution` VALUES (2, '心');
INSERT INTO `tcms_medicine_attribution` VALUES (3, '脾');
INSERT INTO `tcms_medicine_attribution` VALUES (4, '肺');
INSERT INTO `tcms_medicine_attribution` VALUES (5, '肾');
INSERT INTO `tcms_medicine_attribution` VALUES (6, '胃');
INSERT INTO `tcms_medicine_attribution` VALUES (7, '大肠');
INSERT INTO `tcms_medicine_attribution` VALUES (8, '膀胱');
INSERT INTO `tcms_medicine_attribution` VALUES (9, '胆');
INSERT INTO `tcms_medicine_attribution` VALUES (10, '三焦');
INSERT INTO `tcms_medicine_attribution` VALUES (11, '小肠');

-- ----------------------------
-- Table structure for tcms_medicine_category
-- ----------------------------
DROP TABLE IF EXISTS `tcms_medicine_category`;
CREATE TABLE `tcms_medicine_category`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tcms_medicine_category
-- ----------------------------
INSERT INTO `tcms_medicine_category` VALUES (1, '解表类');
INSERT INTO `tcms_medicine_category` VALUES (2, '泻火类');
INSERT INTO `tcms_medicine_category` VALUES (3, '泻下类');
INSERT INTO `tcms_medicine_category` VALUES (4, '祛风湿类');
INSERT INTO `tcms_medicine_category` VALUES (5, '化湿类');
INSERT INTO `tcms_medicine_category` VALUES (6, '温里类');
INSERT INTO `tcms_medicine_category` VALUES (7, '理气类');
INSERT INTO `tcms_medicine_category` VALUES (8, '消食类');
INSERT INTO `tcms_medicine_category` VALUES (9, '止血类');
INSERT INTO `tcms_medicine_category` VALUES (10, '活血化瘀类');
INSERT INTO `tcms_medicine_category` VALUES (11, '化痰止咳平喘类');
INSERT INTO `tcms_medicine_category` VALUES (12, '安神类');
INSERT INTO `tcms_medicine_category` VALUES (13, '平肝熄风类');
INSERT INTO `tcms_medicine_category` VALUES (14, '开窍类');
INSERT INTO `tcms_medicine_category` VALUES (15, '补虚类');
INSERT INTO `tcms_medicine_category` VALUES (16, '收涩类');
INSERT INTO `tcms_medicine_category` VALUES (17, '利水利湿类');
INSERT INTO `tcms_medicine_category` VALUES (18, '驱虫类');

-- ----------------------------
-- Table structure for tcms_medicine_character
-- ----------------------------
DROP TABLE IF EXISTS `tcms_medicine_character`;
CREATE TABLE `tcms_medicine_character`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tcms_medicine_character
-- ----------------------------
INSERT INTO `tcms_medicine_character` VALUES (1, '寒性');
INSERT INTO `tcms_medicine_character` VALUES (2, '微寒性');
INSERT INTO `tcms_medicine_character` VALUES (3, '凉性');
INSERT INTO `tcms_medicine_character` VALUES (4, '微凉性');
INSERT INTO `tcms_medicine_character` VALUES (5, '温性');
INSERT INTO `tcms_medicine_character` VALUES (6, '微温性');
INSERT INTO `tcms_medicine_character` VALUES (7, '热性');
INSERT INTO `tcms_medicine_character` VALUES (8, '微热性');

-- ----------------------------
-- Table structure for tcms_medicine_subcategory
-- ----------------------------
DROP TABLE IF EXISTS `tcms_medicine_subcategory`;
CREATE TABLE `tcms_medicine_subcategory`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tcms_medicine_subcategory
-- ----------------------------
INSERT INTO `tcms_medicine_subcategory` VALUES (1, 1, '发散风寒药');
INSERT INTO `tcms_medicine_subcategory` VALUES (2, 1, '发散风热药');
INSERT INTO `tcms_medicine_subcategory` VALUES (3, 2, '清热泻火药');
INSERT INTO `tcms_medicine_subcategory` VALUES (4, 2, '清热燥湿药');
INSERT INTO `tcms_medicine_subcategory` VALUES (5, 2, '清热泻火药');
INSERT INTO `tcms_medicine_subcategory` VALUES (6, 2, '清热凉血药');
INSERT INTO `tcms_medicine_subcategory` VALUES (7, 2, '清虚热药');
INSERT INTO `tcms_medicine_subcategory` VALUES (8, 3, '攻下药');
INSERT INTO `tcms_medicine_subcategory` VALUES (9, 3, '润下药');
INSERT INTO `tcms_medicine_subcategory` VALUES (10, 3, '峻下逐水药');
INSERT INTO `tcms_medicine_subcategory` VALUES (11, 4, '祛风散寒药');
INSERT INTO `tcms_medicine_subcategory` VALUES (12, 4, '祛风湿清热药');
INSERT INTO `tcms_medicine_subcategory` VALUES (13, 4, '祛风湿强筋骨药');
INSERT INTO `tcms_medicine_subcategory` VALUES (14, 17, '利水消肿药');
INSERT INTO `tcms_medicine_subcategory` VALUES (15, 17, '利水通淋药');
INSERT INTO `tcms_medicine_subcategory` VALUES (16, 17, '利湿退黄药');
INSERT INTO `tcms_medicine_subcategory` VALUES (17, 18, '驱虫药');
INSERT INTO `tcms_medicine_subcategory` VALUES (18, 9, '凉血止血药');
INSERT INTO `tcms_medicine_subcategory` VALUES (19, 9, '化瘀止血药');
INSERT INTO `tcms_medicine_subcategory` VALUES (20, 9, '收敛止血药');
INSERT INTO `tcms_medicine_subcategory` VALUES (21, 9, '温经止血药');
INSERT INTO `tcms_medicine_subcategory` VALUES (22, 10, '活血止痛药');
INSERT INTO `tcms_medicine_subcategory` VALUES (23, 10, '活血调经药');
INSERT INTO `tcms_medicine_subcategory` VALUES (24, 10, '活血疗伤药');
INSERT INTO `tcms_medicine_subcategory` VALUES (25, 10, '破血消癥');
INSERT INTO `tcms_medicine_subcategory` VALUES (26, 11, '温化寒痰药');
INSERT INTO `tcms_medicine_subcategory` VALUES (27, 11, '清热化痰药');
INSERT INTO `tcms_medicine_subcategory` VALUES (28, 11, '止咳平喘药');
INSERT INTO `tcms_medicine_subcategory` VALUES (29, 15, '补气药');
INSERT INTO `tcms_medicine_subcategory` VALUES (30, 15, '补阳药');
INSERT INTO `tcms_medicine_subcategory` VALUES (31, 15, '补血药');
INSERT INTO `tcms_medicine_subcategory` VALUES (32, 15, '补阴药');

-- ----------------------------
-- Table structure for tcms_medicine_tasting
-- ----------------------------
DROP TABLE IF EXISTS `tcms_medicine_tasting`;
CREATE TABLE `tcms_medicine_tasting`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tcms_medicine_tasting
-- ----------------------------
INSERT INTO `tcms_medicine_tasting` VALUES (1, '辛');
INSERT INTO `tcms_medicine_tasting` VALUES (2, '甘');
INSERT INTO `tcms_medicine_tasting` VALUES (3, '苦');
INSERT INTO `tcms_medicine_tasting` VALUES (4, '酸');
INSERT INTO `tcms_medicine_tasting` VALUES (5, '咸');

-- ----------------------------
-- Table structure for tcms_user
-- ----------------------------
DROP TABLE IF EXISTS `tcms_user`;
CREATE TABLE `tcms_user`  (
  `create_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `deleted_at` datetime(3) NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NULL DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `mobile_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gender` tinyint(1) NULL DEFAULT 0 COMMENT '0 for male, 1 for female',
  `role` tinyint(1) NULL DEFAULT 1 COMMENT '0 for banned-user, 1 for common-user, 2 for administrator',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_tcms_user_mobile_number`(`mobile_number` ASC) USING BTREE,
  UNIQUE INDEX `uni_tcms_user_nickname`(`nickname` ASC) USING BTREE,
  INDEX `idx_mobile_number`(`mobile_number` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tcms_user
-- ----------------------------
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 1, '13800000000', 'user-00', '$pbkdf2-sha512$TCUvwcYPUB44lJPg$6bf3121232574a5c344e66f070009d651dfd8021f9a33143b0eed942db892368', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 2, '13800000001', 'user-01', '$pbkdf2-sha512$Uc9h26RV8gTPDn0i$6697ad58b1cc68e4ce8b14e80dfc23f1bea0bb1e46de2cd877886d0ccd6529db', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 3, '13800000002', 'user-02', '$pbkdf2-sha512$12B8HJp7cUQtAfUf$abe82560bd7910ab5fde032a2f15d0d2f8f3cda275f4de046794ec4db795dcbd', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 4, '13800000003', 'user-03', '$pbkdf2-sha512$n81RuoPYAjd5MGtX$3e3071ae8042ae060f535a4da32ebf69c4cd95bd2e143aeb4d0e4dc1ac844fee', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 5, '13800000004', 'user-04', '$pbkdf2-sha512$9sFdkh2zRzL2OLS1$1855ad60fd97c2c79ee8b31268a1901ee4cc8fa80549d3802eb35bdc36f9912d', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 6, '13800000005', 'user-05', '$pbkdf2-sha512$Rd0kkDIZchr6VCbP$5f19adb21464083d629fb73a8aae9e0bea30698e04c1096e467e38685da46232', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 7, '13800000006', 'user-06', '$pbkdf2-sha512$6o6EMkFWc4fBX4oq$d168b33964470965dd4347d1c2e20cfa5a1ec2790fbc52e20606eeb74d9b6daf', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 8, '13800000007', 'user-07', '$pbkdf2-sha512$opYWC9FEtOrQNzBJ$34c1cb3fd6bc586255c93dcb1366faaf739ae2508317a4553784ef40368cfe24', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 9, '13800000008', 'user-08', '$pbkdf2-sha512$76O640O0mOjzMbvR$81d402d090587f7139265018fbfb0373dc4199361dd3dc59a7fb6a43b1c3b2c0', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 10, '13800000009', 'user-09', '$pbkdf2-sha512$kO3LrA65aiHg3zmI$367ad79c8453e02f1b3177ea235bac6a33135b850302458d88c2c8be0db3a9df', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 11, '13800000010', 'user-10', '$pbkdf2-sha512$PAarF8nt1GTF9z5o$c4b9494551c703b2b5183c91b8d9efe453cea12dc6c95ba71ff65bad106a82a9', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 12, '13800000011', 'user-11', '$pbkdf2-sha512$xxfAvroiFxoMLWck$ecf769a3369077204d6386e190a482560cfbf8e4c083505e6040858d51a0ffd9', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 13, '13800000012', 'user-12', '$pbkdf2-sha512$4g4q37TZsHMktMus$22bad276e18b760fc09728461c1d0c4540e5cba3fa414cd6ccb19e554e7aa00e', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 14, '13800000013', 'user-13', '$pbkdf2-sha512$w07A4OBQQmCQenSq$158fa13e0f857b4c8bf33759450f17360d87facaab4e09e658511dfd4eede34b', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 15, '13800000014', 'user-14', '$pbkdf2-sha512$KwQwp7fqOopAeXpk$d2e4846465d88c49e04cd26167ad37608a3d899d224dd4990724df5fc143ed22', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 16, '13800000015', 'user-15', '$pbkdf2-sha512$Y6lx38QOCbV5R4WQ$7d76d2f16c5d09b4d3a33c7bfe986c6f0f764ee2ac36a24fc1c3f06de7526655', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 17, '13800000016', 'user-16', '$pbkdf2-sha512$CoulLRSjBZ0aFlA3$798265caa433b7a2a20cb9cb5ac6760da97ce6bc4bd82fbd57ce555dd917f1d9', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 18, '13800000017', 'user-17', '$pbkdf2-sha512$hoZKzgCUpDx5k4fz$abbb2cb6904242b5cd9eff98bc76a156cbd849a2e5d345f6dce11f07d0878e27', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 19, '13800000018', 'user-18', '$pbkdf2-sha512$5Akg4Zw5WMJYevYm$19aaec9f42b62ee15093ecc06c5a52a64bf9502bb7828414be8b3543a6f0860b', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 20, '13800000019', 'user-19', '$pbkdf2-sha512$23kNWz1dnSzdvmwR$ea39ae100a12e088351e4bd7d919feb0173fb6748bf4689958c3065e2639c2ff', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 21, '13800000020', 'user-20', '$pbkdf2-sha512$LWL7QXeKn65wMhFo$0580333fa7ccfd1f79a1024bda50083e7523d50fb9c009aa153ca60797f08962', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 22, '13800000021', 'user-21', '$pbkdf2-sha512$RSX1Z3Mol57CjwGj$2db6d602ab55f0124d001663218a1f71156d09652e6499a11828eea9fab51111', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 23, '13800000022', 'user-22', '$pbkdf2-sha512$6tQFG7bV4SxbGVKE$024710591155b8bfe2fef522f82c8e87584f58d25a1464db62b21456e4fb39ac', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 24, '13800000023', 'user-23', '$pbkdf2-sha512$4BumjbsjCK3AXX9x$91c7bf84f3bab05cda2dad97bb9d259a1bd28da9bd977a3e1d62f38ef81121a9', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 25, '13800000024', 'user-24', '$pbkdf2-sha512$61tpum3EZooZPc0f$42d81c1a28d443d044cc2109f6b4494375b6af801b24a73a0bc5541b726a0937', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 26, '13800000025', 'user-25', '$pbkdf2-sha512$4fWLdKkOwS3dziEz$00835edbf45a48f73f03b5d020d8859f51909d89bb63014a37a0fdc0aa8507ef', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 27, '13800000026', 'user-26', '$pbkdf2-sha512$gew3CRJPg9faDTb2$3f10363962e78d95bdcf8a9ebc9ab07e4da26485fc414aac68e06520acdf0ba4', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 28, '13800000027', 'user-27', '$pbkdf2-sha512$70ilZyXl5xtyITel$90637daf21554e89e1d5b0e9e284f70ef3bf0e80527c73736c67bb33b3d1f5d3', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 29, '13800000028', 'user-28', '$pbkdf2-sha512$irTucX1P3rPI2ILO$2f213ed2e4da61bd1ca6bff669336b7dcfabb4bc1843babd6278dfc5f8cef8ca', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 30, '13800000029', 'user-29', '$pbkdf2-sha512$1D04TZM7MUoPCOZh$2d44cc33477554b824349fec8b1eb074b9b5891d414118d1d610b3083d2d3739', 0, 1);

SET FOREIGN_KEY_CHECKS = 1;
