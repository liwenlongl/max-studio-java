/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50739 (5.7.39-log)
 Source Host           : localhost:3306
 Source Schema         : max_studio

 Target Server Type    : MySQL
 Target Server Version : 50739 (5.7.39-log)
 File Encoding         : 65001

 Date: 12/07/2023 23:38:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for catalog
-- ----------------------------
DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '目录id',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目录名称',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父节点id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of catalog
-- ----------------------------
INSERT INTO `catalog` VALUES (1, '数据可视化类', 0, NULL, NULL);
INSERT INTO `catalog` VALUES (2, '智能分析类', 0, NULL, NULL);
INSERT INTO `catalog` VALUES (3, '数据监控类', 0, NULL, NULL);
INSERT INTO `catalog` VALUES (11, '智慧城市', 1, NULL, NULL);
INSERT INTO `catalog` VALUES (12, '数字医疗', 1, NULL, NULL);
INSERT INTO `catalog` VALUES (13, '物联网', 1, NULL, NULL);
INSERT INTO `catalog` VALUES (21, '人工智能', 2, NULL, NULL);
INSERT INTO `catalog` VALUES (22, '业务分析', 2, NULL, NULL);
INSERT INTO `catalog` VALUES (23, '地方情况', 2, NULL, NULL);
INSERT INTO `catalog` VALUES (31, '交通物流', 3, NULL, NULL);
INSERT INTO `catalog` VALUES (33, '水力电力', 3, NULL, NULL);
INSERT INTO `catalog` VALUES (111, '智慧政务', 11, NULL, NULL);
INSERT INTO `catalog` VALUES (112, '智慧碳排放', 11, NULL, NULL);
INSERT INTO `catalog` VALUES (221, '各地区经济', 22, NULL, NULL);
INSERT INTO `catalog` VALUES (222, '服务中心分布', 22, NULL, NULL);
INSERT INTO `catalog` VALUES (1111, '政务办理点', 111, NULL, NULL);
INSERT INTO `catalog` VALUES (1112, '处理事件统计', 111, NULL, NULL);

-- ----------------------------
-- Table structure for large_screen
-- ----------------------------
DROP TABLE IF EXISTS `large_screen`;
CREATE TABLE `large_screen`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '大屏id，主键唯一',
  `screen_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '大屏名称',
  `creator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '大屏创作者',
  `current_status` int(1) NULL DEFAULT NULL COMMENT '大屏当前状态，1代表开发中，2代表测试中，3代表应用中',
  `access_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '大屏访问地址',
  `catalog_id` int(20) NULL DEFAULT NULL COMMENT '所属的目录id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '大屏创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '大屏更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of large_screen
-- ----------------------------
INSERT INTO `large_screen` VALUES (5, '关系包括.', '梁玉英', 1, 'https://www.54.cn/tag/about.html', 21, '2004-11-14 00:00:00', NULL);
INSERT INTO `large_screen` VALUES (7, '日本类别.', '黄晨', 3, 'https://www.nawang.cn/app/tag/main/', 32, '1990-12-21 00:00:00', NULL);
INSERT INTO `large_screen` VALUES (8, '用户得到.', '刘俊', 1, 'http://www.qiangli.cn/main/home.jsp', 32, '2000-01-21 00:00:00', NULL);
INSERT INTO `large_screen` VALUES (9, '中国不能文化.', '高小红', 2, 'https://www.xiedeng.cn/privacy.asp', 21, '2021-01-10 00:00:00', NULL);
INSERT INTO `large_screen` VALUES (11, '参加不过.', '吴军', 3, 'http://liao.cn/login.asp', 21, '2003-12-28 00:00:00', NULL);
INSERT INTO `large_screen` VALUES (12, '注册学习记者.', '岳利', 1, 'https://qin.net/tag/tags/about.html', 221, '1998-03-04 00:00:00', NULL);
INSERT INTO `large_screen` VALUES (14, '环境这些首页.', '佟兵', 2, 'http://www.junxiulan.net/login/', 1112, '1989-12-02 00:00:00', NULL);
INSERT INTO `large_screen` VALUES (16, '国内注意.', '杜杨', 1, 'http://www.jiejuan.cn/', 221, '1987-08-02 00:00:00', NULL);
INSERT INTO `large_screen` VALUES (20, '起来地方需要.', '何桂兰', 3, 'https://www.taolai.cn/list/main/', 221, '1977-09-10 00:00:00', NULL);
INSERT INTO `large_screen` VALUES (21, '男人阅读法律.', '李强', 2, 'http://chaoli.com/main/tag/home.asp', 21, '1988-06-17 00:00:00', NULL);
INSERT INTO `large_screen` VALUES (22, '合作.', '赵勇', 2, 'https://xia.cn/tag/main/categories/homepage.htm', 221, '2004-12-04 00:00:00', NULL);
INSERT INTO `large_screen` VALUES (23, '操作不能.', '刘玉华', 3, 'http://www.huyi.cn/', 221, '1970-10-17 00:00:00', NULL);
INSERT INTO `large_screen` VALUES (25, '大家不同您的.', '傅宁', 3, 'https://www.yanqiang.cn/', 32, '1999-09-04 00:00:00', NULL);
INSERT INTO `large_screen` VALUES (26, '以下规定.', '刘平', 3, 'http://yongchao.cn/category/', 1112, '2022-08-01 00:00:00', NULL);
INSERT INTO `large_screen` VALUES (27, '发表各种.', '刘鑫', 3, 'https://www.jing.cn/login.html', 22, '1994-05-22 00:00:00', NULL);

-- ----------------------------
-- Table structure for screen_share
-- ----------------------------
DROP TABLE IF EXISTS `screen_share`;
CREATE TABLE `screen_share`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '分享记录id，主键自增',
  `screen_id` int(20) NOT NULL COMMENT '大屏id，唯一',
  `screen_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分享名称',
  `screen_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '大屏地址',
  `expire_time` datetime NULL DEFAULT NULL COMMENT '过期时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `pk_id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of screen_share
-- ----------------------------
INSERT INTO `screen_share` VALUES (10, 859, 'Du Rui', '72 Xiaoping E Rd, Baiyun ', '2001-09-25 00:41:55', '2012-03-15 21:28:07', '2015-06-09 06:51:40');
INSERT INTO `screen_share` VALUES (11, 301, 'Glenn Turner', '937 Lark Street', '2005-10-01 10:58:41', '2016-12-08 09:21:30', '2011-08-18 07:55:29');
INSERT INTO `screen_share` VALUES (12, 624, 'Aaron Snyder', '226 Stephenson Street', '2011-03-20 04:14:29', '2004-09-24 20:09:42', '2023-04-05 16:55:01');
INSERT INTO `screen_share` VALUES (13, 618, 'Zhao Ziyi', 'No.236, Dongsan Road, Erxianqiao, Chenghua District', '2014-09-17 02:23:25', '2008-01-25 23:17:13', '2006-10-27 14:24:50');
INSERT INTO `screen_share` VALUES (14, 437, 'Sugawara Rena', '5-2-13 Kikusui 3 Jo, Shiroishi Ward', '2011-06-03 01:44:43', '2015-04-30 22:26:39', '2022-01-10 06:39:26');
INSERT INTO `screen_share` VALUES (15, 925, 'Sakurai Riku', '6-1-4, Miyanomori 4 Jō, Chuo Ward', '2021-10-08 13:19:03', '2018-02-24 10:52:10', '2008-10-22 15:36:55');
INSERT INTO `screen_share` VALUES (16, 544, 'Wong Siu Wai', '714 Dongtai 5th St', '2008-08-30 20:41:27', '2003-08-26 15:23:28', '2014-09-01 20:48:00');
INSERT INTO `screen_share` VALUES (17, 185, 'To Tin Lok', '1-7-7 Saidaiji Akodacho', '2011-03-09 13:53:42', '2012-09-11 16:34:51', '2011-06-19 04:49:16');
INSERT INTO `screen_share` VALUES (18, 481, 'Miu Ting Fung', '363 Ganlan Rd, Pudong', '2003-11-18 16:46:45', '2001-09-15 03:30:57', '2003-11-19 09:31:16');
INSERT INTO `screen_share` VALUES (19, 971, 'Kudo Yamato', '454 Wall Street', '2001-01-14 11:05:23', '2022-10-12 10:04:36', '2012-09-05 00:05:40');
INSERT INTO `screen_share` VALUES (20, 916, 'Yamazaki Aoi', '387 Broadway', '2002-11-07 07:24:28', '2019-04-06 07:14:42', '2021-03-12 17:59:14');
INSERT INTO `screen_share` VALUES (21, 546, 'Long Xiaoming', '967 3rd Section Hongxing Road, Jinjiang District', '2003-02-18 17:48:56', '2004-03-02 21:53:11', '2011-07-05 00:25:44');
INSERT INTO `screen_share` VALUES (22, 329, 'Leung Wing Fat', '1-5-7, Higashi-Shimbashi, Minato-ku', '2000-07-06 02:29:03', '2003-11-17 04:18:32', '2008-08-11 05:22:07');
INSERT INTO `screen_share` VALUES (23, 190, 'Sasaki Ikki', '954 Edward Ave, Braunstone Town', '2011-07-01 22:09:26', '2014-09-22 18:21:53', '2017-11-30 08:45:59');
INSERT INTO `screen_share` VALUES (24, 336, 'Hirano Minato', '843 Edward Ave, Braunstone Town', '2016-03-07 00:50:34', '2020-06-20 18:28:13', '2017-12-14 15:12:32');
INSERT INTO `screen_share` VALUES (25, 318, 'Qin Lu', '405 Grape Street', '2018-11-22 07:12:35', '2017-10-15 00:41:00', '2011-10-14 07:14:43');
INSERT INTO `screen_share` VALUES (26, 551, 'Mark Gomez', '343 4th Section  Renmin South Road, Jinjiang District', '2017-02-06 23:05:20', '2015-07-10 03:33:41', '2005-03-13 23:42:08');
INSERT INTO `screen_share` VALUES (27, 428, 'Ku Ho Yin', '927 Lark Street', '2000-05-29 04:21:29', '2002-04-01 07:51:54', '2002-03-23 21:14:30');
INSERT INTO `screen_share` VALUES (28, 151, 'Carrie Scott', '16 3-803 Kusunokiajima, Kita Ward', '2012-12-05 04:14:03', '2002-03-13 06:37:37', '2000-12-02 23:41:59');
INSERT INTO `screen_share` VALUES (29, 69, 'Maeda Rena', '1-7-17 Saidaiji Akodacho', '2013-11-07 19:59:42', '2016-07-17 11:14:02', '2019-11-15 02:50:07');
INSERT INTO `screen_share` VALUES (30, 257, 'Ueno Aoi', '3-27-3 Higashitanabe, Higashisumiyoshi Ward', '2011-11-27 08:09:41', '2006-03-01 12:43:01', '2005-04-23 00:48:01');
INSERT INTO `screen_share` VALUES (31, 58, 'Ishikawa Kazuma', '120 Kengmei 15th Alley', '2023-04-04 06:06:47', '2018-01-19 06:03:46', '2017-08-24 21:17:39');
INSERT INTO `screen_share` VALUES (32, 291, 'Tang Sau Man', '953 Jingtian East 1st St, Futian District', '2017-02-04 10:59:57', '2006-03-11 21:00:42', '2004-12-08 09:31:46');
INSERT INTO `screen_share` VALUES (33, 508, 'Chow Tin Wing', '379 49/50 Strand, Charing Cross', '2018-05-19 05:31:34', '2004-08-20 21:01:53', '2016-12-20 07:13:02');
INSERT INTO `screen_share` VALUES (34, 546, 'Koyama Kenta', '702 Canal Street', '2008-08-22 18:51:19', '2011-11-02 09:05:05', '2018-05-13 10:46:56');
INSERT INTO `screen_share` VALUES (35, 20, 'Ren Zhennan', '364 Collier Road', '2021-06-12 20:58:36', '2013-06-27 22:49:45', '2007-11-17 12:50:38');
INSERT INTO `screen_share` VALUES (36, 832, 'Yu Zhiyuan', '3-15-8 Ginza, Chuo-ku', '2001-04-30 14:47:32', '2022-02-13 02:05:30', '2006-06-08 17:27:43');
INSERT INTO `screen_share` VALUES (37, 677, 'Mao Jiehong', '56 Hanover Street', '2009-08-27 12:36:16', '2019-06-20 20:50:36', '2016-12-02 02:20:01');
INSERT INTO `screen_share` VALUES (38, 708, 'Long Lan', '701 Diplomacy Drive', '2010-05-14 01:07:27', '2015-04-21 04:45:53', '2014-05-20 04:36:35');
INSERT INTO `screen_share` VALUES (39, 387, 'Yamada Miu', '263 New Street', '2006-12-06 20:59:38', '2022-02-01 17:01:18', '2001-03-11 21:35:45');
INSERT INTO `screen_share` VALUES (40, 914, 'Tong Ching Wan', '41 Yueliu Rd, Fangshan District', '2001-07-22 16:40:44', '2022-09-30 18:15:59', '2013-10-01 19:59:24');
INSERT INTO `screen_share` VALUES (41, 655, 'Iwasaki Sakura', '7 1-1715 Sekohigashi, Moriyama Ward', '2019-06-02 18:19:20', '2010-11-27 08:28:28', '2015-04-06 11:11:13');
INSERT INTO `screen_share` VALUES (42, 241, 'Che Wai Man', '18 Tangyuan Street 5th Alley, Airport Road, Baiyun', '2005-09-21 23:21:33', '2011-06-30 21:54:27', '2019-11-19 20:51:36');
INSERT INTO `screen_share` VALUES (43, 725, 'Lori Payne', '2-3-9 Yoyogi, Shibuya-ku', '2012-06-24 06:28:29', '2009-01-15 21:21:05', '2003-10-30 07:04:48');
INSERT INTO `screen_share` VALUES (44, 523, 'Pan Rui', '197 North Michigan Ave', '2020-03-31 07:10:57', '2021-05-02 10:39:22', '2008-01-31 03:40:22');
INSERT INTO `screen_share` VALUES (45, 803, 'Choi Fu Shing', 'No.698, Dongsan Road, Erxianqiao, Chenghua District', '2005-04-15 05:44:49', '2007-10-02 07:52:50', '2005-01-13 00:30:59');
INSERT INTO `screen_share` VALUES (46, 755, 'Che Wing Kuen', '935 Lower Temple Street', '2012-04-07 17:10:07', '2003-12-12 18:44:07', '2004-10-14 10:54:53');
INSERT INTO `screen_share` VALUES (47, 222, 'Xu Zitao', '750 Yueliu Rd, Fangshan District', '2021-03-30 03:44:28', '2012-12-07 03:54:31', '2003-03-15 16:09:19');
INSERT INTO `screen_share` VALUES (48, 222, 'Siu Sai Wing', '713 Wall Street', '2021-07-01 09:47:59', '2009-01-27 19:53:24', '2000-06-27 04:04:00');
INSERT INTO `screen_share` VALUES (49, 417, 'Siu Ting Fung', '363 1st Ave', '2000-06-08 15:47:24', '2020-04-20 14:53:56', '2013-06-10 07:17:49');
INSERT INTO `screen_share` VALUES (50, 207, 'Ku Wing Suen', '302 Jiangnan West Road, Haizhu District', '2022-01-18 17:24:13', '2006-11-27 05:33:49', '2000-04-25 22:53:32');
INSERT INTO `screen_share` VALUES (51, 882, 'Kinoshita Hina', '191 Papworth Rd, Trumpington', '2009-12-08 08:24:30', '2016-09-03 05:14:18', '2022-05-21 14:25:14');
INSERT INTO `screen_share` VALUES (52, 567, 'Luis Bennett', '758 Wall Street', '2004-06-19 16:50:23', '2007-01-16 05:24:41', '2000-10-09 14:39:46');
INSERT INTO `screen_share` VALUES (53, 825, 'Wanda Jordan', '607 Hongqiao Rd., Xu Hui District', '2006-03-11 20:45:28', '2022-05-05 18:31:51', '2002-02-18 23:12:17');
INSERT INTO `screen_share` VALUES (54, 662, 'Arthur Warren', '350 Pollen Street', '2001-09-25 14:12:48', '2021-03-02 01:35:56', '2001-04-12 03:26:26');
INSERT INTO `screen_share` VALUES (55, 152, 'Kam Kwok Ming', '967 Mosley St', '2009-11-28 01:05:00', '2018-04-28 20:20:59', '2006-09-08 08:29:56');
INSERT INTO `screen_share` VALUES (56, 695, 'Zheng Lu', '569 Canal Street', '2008-09-18 22:55:07', '2020-01-26 20:29:03', '2016-08-03 04:02:31');
INSERT INTO `screen_share` VALUES (57, 766, 'Yuen Tin Lok', '170 Wicklow Road', '2016-12-24 15:11:29', '2013-11-04 07:02:11', '2018-06-09 23:19:50');
INSERT INTO `screen_share` VALUES (58, 496, 'Murakami Ayato', '473 Whitehouse Lane, Huntingdon Rd', '2008-06-25 17:38:59', '2008-07-05 07:35:32', '2013-05-05 05:20:17');
INSERT INTO `screen_share` VALUES (59, 908, 'Tin Wing Suen', '600 Alameda Street', '2016-03-04 18:45:12', '2018-12-19 12:12:59', '2019-02-19 10:12:41');
INSERT INTO `screen_share` VALUES (60, 256, 'Sugiyama Misaki', '384 Yueliu Rd, Fangshan District', '2006-10-12 14:25:17', '2000-05-20 05:34:57', '2012-02-14 09:19:20');
INSERT INTO `screen_share` VALUES (61, 964, 'Sato Yuto', '636 New Wakefield St', '2000-08-31 02:10:07', '2000-05-31 02:40:35', '2011-04-04 09:39:37');
INSERT INTO `screen_share` VALUES (62, 988, 'Kobayashi Sakura', '170 Ganlan Rd, Pudong', '2006-04-17 20:52:54', '2003-04-20 09:58:36', '2003-01-29 18:30:47');
INSERT INTO `screen_share` VALUES (63, 854, 'Ren Lan', '2-5-3 Chitose, Atsuta Ward', '2017-11-18 16:17:48', '2005-09-26 13:38:59', '2017-07-29 06:12:39');
INSERT INTO `screen_share` VALUES (64, 949, 'Meng Ting Fung', '423 West Chang\'an Avenue, Xicheng District', '2010-12-06 23:52:19', '2021-05-21 22:54:23', '2011-06-14 16:20:41');
INSERT INTO `screen_share` VALUES (65, 487, 'Kenneth Webb', '63 Alameda Street', '2010-01-07 17:23:53', '2008-10-09 09:35:47', '2015-07-27 11:10:49');
INSERT INTO `screen_share` VALUES (66, 185, 'Tang Shihan', '273 Figueroa Street', '2014-07-20 01:46:55', '2018-04-17 19:05:38', '2020-11-06 00:18:50');
INSERT INTO `screen_share` VALUES (67, 885, 'Leonard Powell', '29 Broadway', '2006-08-04 05:07:37', '2015-09-14 09:12:22', '2006-11-29 09:21:54');
INSERT INTO `screen_share` VALUES (68, 982, 'Wang Zhennan', '7 Portland St', '2014-09-16 14:29:37', '2015-06-04 23:37:58', '2015-04-12 02:10:29');
INSERT INTO `screen_share` VALUES (69, 552, 'Fukuda Tsubasa', '872 State Street', '2007-10-30 14:56:49', '2018-10-06 21:37:44', '2012-07-29 10:19:17');
INSERT INTO `screen_share` VALUES (70, 591, 'Yao Xiaoming', '213 East Cooke Road', '2023-04-25 10:47:52', '2008-01-05 21:30:01', '2006-02-21 10:31:42');
INSERT INTO `screen_share` VALUES (71, 861, 'Koo Suk Yee', '90 Central Avenue', '2017-11-08 16:35:52', '2022-08-27 07:51:07', '2004-10-12 20:52:05');
INSERT INTO `screen_share` VALUES (72, 26, 'Melvin Castillo', '452 S Broadway', '2015-03-24 07:53:19', '2004-05-02 14:55:31', '2023-02-26 00:20:03');
INSERT INTO `screen_share` VALUES (73, 697, 'Chan Kwok Wing', '267 Sackville St', '2006-05-25 01:48:21', '2018-05-24 13:52:00', '2017-03-31 14:31:19');
INSERT INTO `screen_share` VALUES (74, 81, 'Joe Morgan', '22 Stephenson Street', '2020-06-09 19:22:12', '2018-12-21 12:36:49', '2008-09-03 12:53:02');
INSERT INTO `screen_share` VALUES (75, 423, 'Sakamoto Riku', '293 Narborough Rd', '2013-12-03 07:38:27', '2023-03-11 16:29:00', '2012-07-16 13:43:17');
INSERT INTO `screen_share` VALUES (76, 62, 'Shao Anqi', '543 Hanover St', '2023-06-04 07:26:19', '2009-06-27 16:45:11', '2019-01-19 23:02:58');
INSERT INTO `screen_share` VALUES (77, 106, 'Xie Yunxi', '3-15-19 Ginza, Chuo-ku', '2022-09-03 03:10:50', '2010-02-19 00:06:15', '2016-01-24 17:55:06');
INSERT INTO `screen_share` VALUES (78, 587, 'Gloria Hughes', '425 Huanqu South Street 2nd Alley', '2003-03-03 14:27:35', '2003-05-01 22:27:38', '2005-05-01 10:16:00');
INSERT INTO `screen_share` VALUES (79, 783, 'Arimura Kazuma', '280 68 Qinghe Middle St, Haidian District', '2009-07-15 20:29:43', '2005-06-18 00:22:18', '2017-01-31 06:04:38');
INSERT INTO `screen_share` VALUES (80, 237, 'Billy Gardner', '853 Fifth Avenue', '2018-05-14 22:54:53', '2022-11-22 22:04:20', '2004-01-22 12:20:04');
INSERT INTO `screen_share` VALUES (81, 581, 'Matsumoto Sakura', '1-6-17, Marunouchi, Chiyoda-ku', '2014-08-06 19:47:59', '2006-04-24 01:02:59', '2021-11-21 01:36:31');
INSERT INTO `screen_share` VALUES (82, 578, 'Takahashi Ikki', '4-9-16 Kamihigashi, Hirano Ward', '2016-05-01 15:30:28', '2018-11-30 17:43:50', '2008-02-08 15:01:05');
INSERT INTO `screen_share` VALUES (83, 447, 'Lam Wai Yee', '16 4-20 Kawagishicho, Mizuho Ward', '2003-07-22 21:50:14', '2020-10-19 11:54:09', '2001-09-05 23:58:28');
INSERT INTO `screen_share` VALUES (84, 325, 'Meng Chieh Lun', '119 Broadway', '2011-01-09 03:40:09', '2005-09-17 05:36:11', '2006-01-15 00:59:58');
INSERT INTO `screen_share` VALUES (85, 659, 'Peggy Davis', '118 2nd Zhongshan Road, Yuexiu District', '2002-08-18 23:31:17', '2020-10-04 02:47:18', '2005-12-05 23:38:57');
INSERT INTO `screen_share` VALUES (86, 27, 'Yau Tsz Hin', '1-5-1, Higashi-Shimbashi, Minato-ku', '2003-10-09 00:58:42', '2020-03-16 13:25:26', '2018-07-05 09:05:57');
INSERT INTO `screen_share` VALUES (87, 969, 'Xiong Rui', '429 Yueliu Rd, Fangshan District', '2005-09-21 09:13:32', '2008-06-08 16:37:25', '2011-06-11 17:18:31');
INSERT INTO `screen_share` VALUES (88, 950, 'Wan Wai Lam', '981 Figueroa Street', '2017-01-10 10:12:45', '2006-06-26 11:34:26', '2006-07-25 04:28:38');
INSERT INTO `screen_share` VALUES (89, 576, 'Lok Wing Fat', '743 State Street', '2011-11-03 02:42:25', '2004-07-20 01:07:11', '2010-07-10 06:12:03');
INSERT INTO `screen_share` VALUES (90, 775, 'Feng Rui', '738 2nd Zhongshan Road, Yuexiu District', '2015-03-20 13:58:55', '2021-10-14 16:13:26', '2006-04-28 01:40:50');
INSERT INTO `screen_share` VALUES (91, 343, 'Kwan Sze Kwan', '207 Alameda Street', '2015-05-01 23:17:21', '2012-06-29 01:50:34', '2001-06-01 08:59:42');
INSERT INTO `screen_share` VALUES (92, 253, 'Che Wing Fat', '820 Lark Street', '2011-12-31 01:13:50', '2006-03-17 10:37:42', '2002-06-28 22:27:02');
INSERT INTO `screen_share` VALUES (93, 225, 'Zhong Lan', '349 Hanover St', '2013-12-23 04:35:50', '2002-08-06 07:11:01', '2012-02-04 12:28:27');
INSERT INTO `screen_share` VALUES (94, 837, 'Yang Ziyi', '488 Yueliu Rd, Fangshan District', '2002-08-20 20:39:10', '2019-11-14 04:42:58', '2021-01-02 09:03:39');
INSERT INTO `screen_share` VALUES (95, 676, 'Tin Ming Sze', '414 Mosley St', '2012-06-26 12:37:55', '2010-11-17 19:57:43', '2006-08-31 16:24:36');
INSERT INTO `screen_share` VALUES (96, 247, 'So Ka Ling', '3-15-12 Ginza, Chuo-ku', '2006-11-09 12:45:58', '2012-01-28 17:14:36', '2016-01-26 16:04:21');
INSERT INTO `screen_share` VALUES (97, 622, 'Morita Daisuke', '953 New Wakefield St', '2003-08-24 03:01:13', '2020-01-16 16:45:32', '2021-12-27 02:41:23');
INSERT INTO `screen_share` VALUES (98, 305, 'Ota Nanami', '52 NO.6, YuShuang Road, ChengHua Distric', '2000-03-28 22:35:13', '2023-02-27 14:55:27', '2018-08-11 00:15:18');
INSERT INTO `screen_share` VALUES (99, 295, 'Imai Yuna', '985 Nostrand Ave', '2018-02-27 07:18:02', '2009-05-06 05:54:57', '2006-09-12 14:22:54');
INSERT INTO `screen_share` VALUES (100, 495, 'Mo Shihan', '1-7-3 Omido, Higashiosaka', '2010-07-28 15:38:14', '2004-07-21 11:24:21', '2019-07-13 00:23:59');
INSERT INTO `screen_share` VALUES (101, 754, 'Shen Zhennan', '86 W Ring Rd, Buji Town, Longgang', '2018-01-13 05:59:34', '2004-07-24 14:26:48', '2022-11-07 08:20:14');
INSERT INTO `screen_share` VALUES (102, 77, 'Douglas Crawford', '701 State Street', '2022-12-20 09:04:46', '2005-08-27 10:43:50', '2003-08-30 23:56:19');
INSERT INTO `screen_share` VALUES (103, 436, 'Tang Zitao', '2-1-3 Tenjinnomori, Nishinari Ward', '2023-05-22 09:13:43', '2023-03-03 22:54:49', '2009-05-31 15:32:39');
INSERT INTO `screen_share` VALUES (104, 950, 'Jamie Baker', '658 Daxin S Rd, Daxin Shangquan, Tianhe Qu', '2022-07-31 02:14:47', '2006-04-03 13:50:20', '2000-10-13 09:13:08');
INSERT INTO `screen_share` VALUES (105, 872, 'Sugawara Miu', '742 68 Qinghe Middle St, Haidian District', '2011-02-10 13:34:50', '2021-03-20 19:01:59', '2021-11-12 00:03:39');
INSERT INTO `screen_share` VALUES (106, 67, 'Yung On Kay', '3-9-2 Gakuenminami', '2001-10-09 22:09:54', '2007-10-17 00:13:18', '2005-05-20 05:10:26');
INSERT INTO `screen_share` VALUES (107, 870, 'Kondo Yota', '1-1-13 Deshiro, Nishinari Ward', '2001-10-18 07:40:29', '2005-02-07 00:52:05', '2008-12-03 00:35:34');
INSERT INTO `screen_share` VALUES (108, 749, 'Hou Zhiyuan', '2-5-11 Chitose, Atsuta Ward', '2020-05-21 15:42:51', '2018-11-08 07:12:59', '2009-03-14 09:08:45');
INSERT INTO `screen_share` VALUES (109, 242, 'Miguel Spencer', '964 2nd Zhongshan Road, Yuexiu District', '2000-02-29 12:40:21', '2012-04-12 00:19:02', '2022-01-12 05:02:57');
INSERT INTO `screen_share` VALUES (110, 584, 'Sheila Patel', '13-3-17 Toyohira 3 Jo, Toyohira Ward', '2018-06-03 13:32:39', '2023-03-07 13:19:47', '2020-09-01 15:47:58');
INSERT INTO `screen_share` VALUES (111, 933, 'Kaneko Daisuke', '418 Binchuan Rd, Minhang District', '2011-01-03 11:06:54', '2015-11-01 13:57:07', '2011-03-28 02:12:24');
INSERT INTO `screen_share` VALUES (112, 313, 'Chow On Kay', '1-5-5, Higashi-Shimbashi, Minato-ku', '2007-07-08 18:45:06', '2017-01-06 02:54:54', '2021-01-04 10:48:32');
INSERT INTO `screen_share` VALUES (113, 24, 'Kono Rena', '232 S Broadway', '2011-04-14 16:46:29', '2013-01-14 15:38:46', '2019-05-22 18:51:00');
INSERT INTO `screen_share` VALUES (114, 881, 'Leslie Williams', '313 Jiangnan West Road, Haizhu District', '2022-07-26 00:20:56', '2016-03-08 06:33:26', '2013-09-16 04:00:19');
INSERT INTO `screen_share` VALUES (115, 288, 'Lok Kar Yan', '438 Aigburth Rd, Aigburth', '2020-02-14 17:21:33', '2022-06-04 19:51:41', '2022-07-03 02:58:50');
INSERT INTO `screen_share` VALUES (116, 266, 'Teresa Flores', '947 West Chang\'an Avenue, Xicheng District', '2020-01-21 20:48:21', '2012-10-13 22:00:07', '2011-01-23 23:50:02');
INSERT INTO `screen_share` VALUES (117, 831, 'Yeow Suk Yee', '751 Sanlitun Road, Chaoyang District', '2015-01-14 13:01:37', '2006-12-29 22:05:49', '2016-01-18 10:30:39');
INSERT INTO `screen_share` VALUES (118, 560, 'Catherine Shaw', '29 State Street', '2020-03-23 19:00:09', '2016-05-01 16:05:16', '2002-09-23 20:19:44');
INSERT INTO `screen_share` VALUES (119, 945, 'Inoue Yuna', '741 Jingtian East 1st St, Futian District', '2002-11-22 12:30:29', '2009-06-23 21:17:11', '2018-06-26 16:48:09');
INSERT INTO `screen_share` VALUES (120, 347, 'Kong Sai Wing', '211 Mosley St', '2006-05-10 22:19:06', '2013-12-27 12:29:11', '2001-06-20 04:39:40');
INSERT INTO `screen_share` VALUES (121, 634, 'Chin Tak Wah', '283 Figueroa Street', '2011-04-20 08:00:02', '2014-04-25 17:25:04', '2012-08-02 18:36:56');
INSERT INTO `screen_share` VALUES (122, 787, 'Sasaki Kasumi', '140 1st Ave', '2001-04-24 04:23:01', '2011-12-03 06:30:10', '2018-05-15 17:05:46');
INSERT INTO `screen_share` VALUES (123, 63, 'Guo Zhennan', '269 Stephenson Street', '2003-03-12 14:45:15', '2004-04-24 22:22:14', '2002-04-18 09:49:19');
INSERT INTO `screen_share` VALUES (124, 271, 'Mak Chung Yin', '676 Abingdon Rd, Cumnor', '2001-03-22 11:29:03', '2016-06-13 08:55:58', '2010-09-26 13:34:19');
INSERT INTO `screen_share` VALUES (125, 500, 'Gao Xiaoming', '655 Wooster Street', '2004-07-02 22:25:10', '2020-08-05 09:55:01', '2023-03-18 07:49:51');
INSERT INTO `screen_share` VALUES (126, 925, 'Zhang Xiaoming', '620 Stephenson Street', '2005-10-06 20:32:47', '2016-10-02 10:23:27', '2014-08-27 16:01:45');
INSERT INTO `screen_share` VALUES (127, 136, 'Hirano Ren', '594 Huanqu South Street 2nd Alley', '2001-02-25 09:20:03', '2014-03-19 16:12:17', '2023-03-05 12:10:38');
INSERT INTO `screen_share` VALUES (128, 84, 'Yamada Rena', '2-3-19 Yoyogi, Shibuya-ku', '2015-09-13 08:21:24', '2012-11-19 11:09:50', '2014-10-21 09:38:47');
INSERT INTO `screen_share` VALUES (129, 565, 'Jiang Yunxi', '789 North Michigan Ave', '2020-02-20 23:37:56', '2009-11-14 06:10:51', '2008-09-18 05:03:31');
INSERT INTO `screen_share` VALUES (130, 552, 'Patrick Jimenez', '3-19-16 Shimizu, Kita Ward', '2003-06-30 14:22:24', '2000-07-24 14:07:28', '2012-04-14 23:41:59');
INSERT INTO `screen_share` VALUES (131, 352, 'Hou Jiehong', '13-3-8 Toyohira 3 Jo, Toyohira Ward', '2021-03-05 14:28:09', '2006-06-05 18:00:48', '2004-07-18 00:03:34');
INSERT INTO `screen_share` VALUES (132, 973, 'Tang Kwok Ming', '713 NO.6, YuShuang Road, ChengHua Distric', '2022-04-03 15:38:57', '2000-06-28 09:53:42', '2003-04-27 20:41:25');
INSERT INTO `screen_share` VALUES (133, 248, 'Sakurai Sara', '526 Osney Mead', '2001-09-10 19:41:34', '2004-01-25 05:34:17', '2002-04-25 02:53:30');
INSERT INTO `screen_share` VALUES (134, 321, 'Mao Jialun', '3-9-14 Gakuenminami', '2004-12-03 07:42:18', '2010-08-24 06:38:19', '2013-05-09 03:43:01');
INSERT INTO `screen_share` VALUES (135, 54, 'Arimura Hikaru', '77 Earle Rd', '2018-05-27 09:26:48', '2008-06-13 14:53:46', '2020-10-05 12:51:10');
INSERT INTO `screen_share` VALUES (136, 389, 'Hou Xiuying', '2-1-14 Kaminopporo 1 Jo, Atsubetsu Ward', '2007-10-08 15:19:39', '2011-05-30 07:16:23', '2006-02-26 17:25:37');
INSERT INTO `screen_share` VALUES (137, 286, 'Gao Yunxi', '405 West Houston Street', '2005-06-05 20:15:27', '2022-05-20 20:44:47', '2013-11-13 22:48:53');
INSERT INTO `screen_share` VALUES (138, 984, 'Chen Zhiyuan', '15 3-803 Kusunokiajima, Kita Ward', '2005-06-18 17:26:06', '2022-12-01 22:34:49', '2013-11-28 02:57:27');
INSERT INTO `screen_share` VALUES (139, 33, 'Kato Riku', '929 Wyngate Dr', '2001-10-10 18:06:07', '2019-11-28 02:47:29', '2002-03-20 05:41:10');
INSERT INTO `screen_share` VALUES (140, 824, 'Cynthia Harrison', '938 Papworth Rd, Trumpington', '2022-02-14 07:42:22', '2013-06-30 15:40:21', '2017-04-26 13:35:04');
INSERT INTO `screen_share` VALUES (141, 171, 'Mario Foster', '782 Wooster Street', '2014-02-22 10:51:09', '2002-02-07 16:30:12', '2021-08-27 08:33:15');
INSERT INTO `screen_share` VALUES (142, 253, 'Xu Zhennan', '253 Dong Zhi Men, Dongcheng District', '2016-12-15 22:33:06', '2015-12-20 02:26:34', '2004-03-15 05:20:21');
INSERT INTO `screen_share` VALUES (143, 563, 'Mo Cho Yee', '186 Little Clarendon St', '2019-11-11 09:39:50', '2007-02-23 04:22:12', '2009-10-10 02:32:23');
INSERT INTO `screen_share` VALUES (144, 984, 'Tsang Ka Man', '1-7-14 Saidaiji Akodacho', '2013-04-11 01:22:06', '2002-04-23 22:23:53', '2009-12-08 19:20:18');
INSERT INTO `screen_share` VALUES (145, 118, 'Chang Ching Wan', '322 Bank Street', '2020-01-16 10:47:19', '2020-05-24 08:14:49', '2009-03-20 02:31:55');
INSERT INTO `screen_share` VALUES (146, 905, 'Philip Patterson', '409 3rd Section Hongxing Road, Jinjiang District', '2009-11-19 07:46:23', '2006-03-12 00:04:41', '2023-03-05 19:55:33');
INSERT INTO `screen_share` VALUES (147, 677, 'Zou Jiehong', '554 Aigburth Rd, Aigburth', '2002-02-07 05:18:59', '2007-02-24 13:34:35', '2002-05-16 03:35:10');
INSERT INTO `screen_share` VALUES (148, 860, 'Lin Zhiyuan', '128 Sanlitun Road, Chaoyang District', '2015-04-07 17:34:59', '2022-03-12 14:12:11', '2019-12-22 02:32:17');
INSERT INTO `screen_share` VALUES (149, 255, 'Eugene Daniels', '53 Kengmei 15th Alley', '2011-08-03 20:59:24', '2011-05-09 10:09:31', '2006-06-12 19:09:08');
INSERT INTO `screen_share` VALUES (150, 326, 'Fu Sze Kwan', '279 Hanover St', '2002-08-18 23:44:47', '2019-01-21 12:36:05', '2002-10-30 08:55:14');
INSERT INTO `screen_share` VALUES (151, 823, 'Takada Yota', '1-7-9 Saidaiji Akodacho', '2021-12-06 12:39:21', '2007-04-12 23:01:14', '2018-07-10 18:12:32');
INSERT INTO `screen_share` VALUES (152, 537, 'Yu Rui', '16 1-1715 Sekohigashi, Moriyama Ward', '2017-04-21 12:32:33', '2003-05-04 06:48:01', '2022-01-04 17:50:15');
INSERT INTO `screen_share` VALUES (153, 435, 'Jennifer Munoz', '229 W Ring Rd, Buji Town, Longgang', '2019-09-23 06:00:10', '2018-07-30 11:32:56', '2022-01-07 05:19:18');
INSERT INTO `screen_share` VALUES (154, 289, 'Hashimoto Eita', '427 Huaxia St, Jinghua Shangquan', '2009-10-12 17:28:09', '2013-04-02 17:19:54', '2018-10-29 23:58:33');
INSERT INTO `screen_share` VALUES (155, 643, 'Wada Yuna', '594 028 County Rd, Yanqing District', '2004-02-13 12:20:25', '2012-07-13 02:58:11', '2021-10-04 16:16:57');
INSERT INTO `screen_share` VALUES (156, 507, 'Tang On Na', '23 Bank Street', '2019-01-16 02:45:11', '2019-10-16 12:22:55', '2005-08-17 00:13:03');
INSERT INTO `screen_share` VALUES (157, 839, 'Nakayama Rena', '956 Qingshuihe 1st Rd, Luohu District', '2012-06-18 07:09:45', '2000-04-25 06:38:23', '2015-05-24 08:22:50');
INSERT INTO `screen_share` VALUES (158, 605, 'Tong Wai San', '276 Trafalgar Square, Charing Cross', '2003-02-08 22:35:28', '2004-03-13 16:06:52', '2013-05-11 18:29:01');
INSERT INTO `screen_share` VALUES (159, 845, 'Miu Wing Sze', '283 Grape Street', '2022-03-20 16:38:41', '2004-05-17 16:30:02', '2005-12-07 04:54:25');
INSERT INTO `screen_share` VALUES (160, 407, 'Beverly Sanders', '698 Sky Way', '2010-04-10 16:01:21', '2007-04-05 10:12:12', '2013-01-06 08:18:28');
INSERT INTO `screen_share` VALUES (161, 400, 'Ueda Hana', '324 Qingshuihe 1st Rd, Luohu District', '2017-05-13 06:38:09', '2009-07-12 20:09:29', '2009-04-04 00:25:09');
INSERT INTO `screen_share` VALUES (162, 809, 'Zhu Jiehong', '561 Binchuan Rd, Minhang District', '2007-11-03 02:05:37', '2006-07-05 09:23:00', '2022-02-22 05:28:41');
INSERT INTO `screen_share` VALUES (163, 185, 'Ye Jiehong', '244 Qingshuihe 1st Rd, Luohu District', '2017-02-14 13:08:13', '2017-07-19 08:10:57', '2013-09-19 15:13:19');
INSERT INTO `screen_share` VALUES (164, 552, 'Rebecca Allen', '3-9-19 Gakuenminami', '2010-08-25 04:54:36', '2017-05-20 08:37:21', '2020-10-28 09:24:23');
INSERT INTO `screen_share` VALUES (165, 630, 'Fukuda Kenta', '47 Bergen St', '2016-06-17 01:04:56', '2014-07-04 01:40:35', '2005-10-16 10:27:46');
INSERT INTO `screen_share` VALUES (166, 954, 'Earl Olson', '232 Portland St', '2001-04-03 01:24:11', '2011-07-26 12:08:21', '2000-04-24 18:01:30');

SET FOREIGN_KEY_CHECKS = 1;
