/*
 Navicat MySQL Data Transfer

 Source Server         : testdjango
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : travel

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 23/02/2018 23:00:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (11, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (12, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (13, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (14, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (15, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (16, 'Can add 用户信息', 6, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (17, 'Can change 用户信息', 6, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (18, 'Can delete 用户信息', 6, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (19, 'Can add 主题', 7, 'add_theme');
INSERT INTO `auth_permission` VALUES (20, 'Can change 主题', 7, 'change_theme');
INSERT INTO `auth_permission` VALUES (21, 'Can delete 主题', 7, 'delete_theme');
INSERT INTO `auth_permission` VALUES (22, 'Can add 景点', 8, 'add_spot');
INSERT INTO `auth_permission` VALUES (23, 'Can change 景点', 8, 'change_spot');
INSERT INTO `auth_permission` VALUES (24, 'Can delete 景点', 8, 'delete_spot');
INSERT INTO `auth_permission` VALUES (25, 'Can add 评论', 9, 'add_comment');
INSERT INTO `auth_permission` VALUES (26, 'Can change 评论', 9, 'change_comment');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 评论', 9, 'delete_comment');
INSERT INTO `auth_permission` VALUES (28, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (29, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (30, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (31, 'Can view 评论', 9, 'view_comment');
INSERT INTO `auth_permission` VALUES (32, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (33, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (34, 'Can view 景点', 8, 'view_spot');
INSERT INTO `auth_permission` VALUES (35, 'Can view 主题', 7, 'view_theme');
INSERT INTO `auth_permission` VALUES (36, 'Can view 用户信息', 6, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (37, 'Can add Bookmark', 10, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (38, 'Can change Bookmark', 10, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (39, 'Can delete Bookmark', 10, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (40, 'Can add User Setting', 11, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (41, 'Can change User Setting', 11, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (42, 'Can delete User Setting', 11, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (43, 'Can add User Widget', 12, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (44, 'Can change User Widget', 12, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (45, 'Can delete User Widget', 12, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (46, 'Can add log entry', 13, 'add_log');
INSERT INTO `auth_permission` VALUES (47, 'Can change log entry', 13, 'change_log');
INSERT INTO `auth_permission` VALUES (48, 'Can delete log entry', 13, 'delete_log');
INSERT INTO `auth_permission` VALUES (49, 'Can view Bookmark', 10, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (50, 'Can view log entry', 13, 'view_log');
INSERT INTO `auth_permission` VALUES (51, 'Can view User Setting', 11, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (52, 'Can view User Widget', 12, 'view_userwidget');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comments_comment
-- ----------------------------
DROP TABLE IF EXISTS `comments_comment`;
CREATE TABLE `comments_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `spot_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `comments_comment_spot_id_89955884_fk_theme_spot_id`(`spot_id`) USING BTREE,
  INDEX `comments_comment_user_id_a1db4881_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `comments_comment_spot_id_89955884_fk_theme_spot_id` FOREIGN KEY (`spot_id`) REFERENCES `theme_spot` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comments_comment_user_id_a1db4881_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments_comment
-- ----------------------------
INSERT INTO `comments_comment` VALUES (2, '66666', '2018-02-23 20:44:15.690220', 7, 1);
INSERT INTO `comments_comment` VALUES (3, '哈哈哈哈哈哈', '2018-02-23 20:48:48.381947', 7, 1);
INSERT INTO `comments_comment` VALUES (4, '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或或或或或', '2018-02-23 21:25:02.264839', 7, 2);
INSERT INTO `comments_comment` VALUES (5, '嘿嘿嘿', '2018-02-23 21:46:36.225301', 6, 3);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (9, 'comments', 'comment');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (8, 'theme', 'spot');
INSERT INTO `django_content_type` VALUES (7, 'theme', 'theme');
INSERT INTO `django_content_type` VALUES (6, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (10, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (13, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (11, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (12, 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-02-20 11:52:07.925826');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2018-02-20 11:52:09.256972');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2018-02-20 11:52:14.947639');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2018-02-20 11:52:16.055295');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2018-02-20 11:52:16.114631');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2018-02-20 11:52:16.181649');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2018-02-20 11:52:16.214143');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2018-02-20 11:52:16.244256');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2018-02-20 11:52:16.281165');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2018-02-20 11:52:16.315258');
INSERT INTO `django_migrations` VALUES (11, 'users', '0001_initial', '2018-02-20 11:52:22.582228');
INSERT INTO `django_migrations` VALUES (12, 'admin', '0001_initial', '2018-02-20 11:52:25.396445');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0002_logentry_remove_auto_add', '2018-02-20 11:52:25.436785');
INSERT INTO `django_migrations` VALUES (14, 'sessions', '0001_initial', '2018-02-20 11:52:26.067743');
INSERT INTO `django_migrations` VALUES (15, 'theme', '0001_initial', '2018-02-20 18:31:16.727037');
INSERT INTO `django_migrations` VALUES (16, 'comments', '0001_initial', '2018-02-20 18:31:19.444625');
INSERT INTO `django_migrations` VALUES (17, 'xadmin', '0001_initial', '2018-02-21 23:12:27.762580');
INSERT INTO `django_migrations` VALUES (18, 'xadmin', '0002_log', '2018-02-21 23:12:30.568954');
INSERT INTO `django_migrations` VALUES (19, 'xadmin', '0003_auto_20160715_0100', '2018-02-21 23:12:31.834965');
INSERT INTO `django_migrations` VALUES (20, 'theme', '0002_auto_20180223_2220', '2018-02-23 22:20:15.551323');
INSERT INTO `django_migrations` VALUES (21, 'users', '0002_auto_20180223_2235', '2018-02-23 22:35:08.987067');
INSERT INTO `django_migrations` VALUES (22, 'theme', '0003_auto_20180223_2239', '2018-02-23 22:39:43.121811');
INSERT INTO `django_migrations` VALUES (23, 'users', '0003_auto_20180223_2241', '2018-02-23 22:41:23.730682');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('95osherbbm3v1c8kj3h5fuvnhkk3ls3b', 'N2JlM2UzMzFjMTc3MThjYmFjOWM0NTY4NTE3NGU4ZGQxY2NmYzA1NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlM2I5ZmE2MTQyYWUxZjAyOGVlZDM3YTMzMTdhODE1MDJhMzAyZjg3IiwiTElTVF9RVUVSWSI6W1sieGFkbWluIiwibG9nIl0sIiJdfQ==', '2018-03-08 19:46:39.671260');
INSERT INTO `django_session` VALUES ('leedcipwycc75zasxocncdsz1he6l71e', 'MWNiMDVkNTk2ZWU0ODFlMWE1NDI2ZjM2MGQyNmEyMTU4ODdhYzFiMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlM2I5ZmE2MTQyYWUxZjAyOGVlZDM3YTMzMTdhODE1MDJhMzAyZjg3In0=', '2018-03-08 19:59:03.637321');
INSERT INTO `django_session` VALUES ('omlvz6zdzvmgnkp2zph9bcafhgmhdfws', 'NjQ0N2IzYWM1OTUxYTNkYjZlNDFhMWVkYzRkODg5ZGM0YzY4NTI0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlM2I5ZmE2MTQyYWUxZjAyOGVlZDM3YTMzMTdhODE1MDJhMzAyZjg3IiwiTElTVF9RVUVSWSI6W1sidGhlbWUiLCJ0aGVtZSJdLCIiXSwid2l6YXJkX3hhZG1pbnVzZXJ3aWRnZXRfYWRtaW5fd2l6YXJkX2Zvcm1fcGx1Z2luIjp7InN0ZXAiOiJXaWRnZXRcdTdjN2JcdTU3OGIiLCJzdGVwX2RhdGEiOnt9LCJzdGVwX2ZpbGVzIjp7fSwiZXh0cmFfZGF0YSI6e319fQ==', '2018-03-09 22:47:04.556344');

-- ----------------------------
-- Table structure for theme_spot
-- ----------------------------
DROP TABLE IF EXISTS `theme_spot`;
CREATE TABLE `theme_spot`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banner` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cost` int(11) NOT NULL,
  `image1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `summary1` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `summary2` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `theme_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `theme_spot_theme_id_be2ae52e_fk_theme_theme_id`(`theme_id`) USING BTREE,
  CONSTRAINT `theme_spot_theme_id_be2ae52e_fk_theme_theme_id` FOREIGN KEY (`theme_id`) REFERENCES `theme_theme` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of theme_spot
-- ----------------------------
INSERT INTO `theme_spot` VALUES (2, '富士山', '富士山（日文：ふじさん，英文：Mount Fuji）是日本国内最高峰，日本重要国家象征之一。横跨静冈县和山梨县的活火山，接近太平洋岸，东京西南方约80公里。', 'theme/spot/2018/02/728da9773912b31bba0c0d8e8c18367adab4e131.jpg', 4000, 'theme/spot/2018/02/u7225623611323906953fm27gp0.jpg', 'theme/spot/2018/02/timg.jpg', '富士山被日本人民誉为“圣岳”，是日本民族的象征。作为日本的国家象征之一，在全球享有盛誉。它也经常被称作“芙蓉峰”或“富岳”以及“不二的高岭”。自古以来，这座山的名字就经常在日本的传统诗歌“和歌”中出现。日本诗人曾用“玉扇倒悬东海天”、“富士白雪映朝阳”等诗句赞美它。', '富士山是世界上最大的活火山之一。目前处于休眠状态，但地质学家仍然把它列入活火山之类。自781年有文字记载以来，共喷发了18次，最后一次喷发是在1707年，此后休眠至今。', '2018-02-23 17:30:00.000000', 2);
INSERT INTO `theme_spot` VALUES (3, '武汉大学', '武大校内樱花约1000多株，以日本樱花、山樱花、垂枝大叶早樱和红花高盆樱4种为主。这些花既有侵华日军当年所留下的“国耻之花”，也有中日恢复邦交后由日本友人多次赠送的“友谊之花”。', 'theme/spot/2018/02/timg1.jpg', 50, 'theme/spot/2018/02/b64543a98226cffcafeacf1bb3014a90f703ea53.jpg', 'theme/spot/2018/02/6159252dd42a28343ce6486d5bb5c9ea15cebf17.jpg', '武汉大学的樱花已经有着很长的历史，更有着复杂的历史背景，关于武大樱花多数人并不很清楚，只是停留在日本军人栽种的那种认识状态上。因此美丽的樱花虽然渲染春色，给了人们美的享受，但也带了一些“烦恼”。有人认为樱花是国耻的象征，有人说不要把樱花复杂化；有人说武大因樱花而美丽；也有人说樱花因武大才迷人。2015年，著名书法家吴舍燃组织100名书法家来武大赏樱。', '武大还经常将自己繁殖培育的各种樱花品种赠送给其他兄弟院校和社会单位，如1988年就转让16株名贵品种垂枝樱花给当时的中南财经大学（现中南财经政法大学首义校区），在财大的思园落户生根，1991年又转让200多株3个种、近10个品种的樱花树苗给北京玉渊潭公园的樱花园。', '2018-02-23 17:44:00.000000', 2);
INSERT INTO `theme_spot` VALUES (4, '雅鲁藏布大峡谷', '雅鲁藏布大峡谷是地球上最深的峡谷。据国家测绘局公布的数据：这个大峡谷北起米林县派镇大渡卡村（海拔2880米），经排龙乡的雅鲁藏布江大拐弯，南到墨脱县巴昔卡村（海拔115米，在藏南地区靠近印度阿萨姆邦的地方），主体在墨脱县。', 'theme/spot/2018/02/50da81cb39dbb6fd6537491c0224ab18972b379f.jpg', 100, 'theme/spot/2018/02/Y0ZNWNbjOTgr039DruwaEA3D3D2F6597209404633850590.jpg', 'theme/spot/2018/02/雅鲁藏布江大峡谷.jpg', '全长504.6千米，最深处6009米，平均深度2268米，是不容置疑的世界第一大峡谷。远远大于全球第二的帕隆藏布大峡谷、及美国科罗拉多大峡谷（深2133米，长370千米）和秘鲁的科尔卡大峡谷（深3203米，长90千米）。', '大峡谷核心无人区河段的峡谷河床上有罕见的四处大瀑布群，其中一些主体瀑布落差都在30-50米。峡谷具有从高山冰雪带到低河谷热带雨林等9个垂直自然带，汇集了多种生物资源，包括青藏高原已知高等植物种类的2/3，已知哺乳动物的1/2，已知昆虫的4/5，以及中国已知大型真菌的3/5。', '2018-02-23 17:46:00.000000', 3);
INSERT INTO `theme_spot` VALUES (5, '金沙江虎跳峡', '虎跳峡，以“险”名天下，是中国最深的峡谷之一。虎跳峡有香格里拉段和丽江段和之分，而香格里拉虎跳峡是国家AAAA级旅游风景名胜区，它包括上、中、下虎跳峡，高路徒步线。', 'theme/spot/2018/02/a08b87d6277f9e2f057f24f21630e924b999f385.jpg', 120, 'theme/spot/2018/02/359b033b5bb5c9eaffc45544df39b6003af3b366.jpg', 'theme/spot/2018/02/55e736d12f2eb938333a9c46dd628535e5dd6f2b.jpg', '虎跳峡位于香格里拉市虎跳峡镇境内，距香格里拉市96公里，距丽江市80公里。发源自青海格拉丹东雪山的金沙江迢迢千里奔波到此，', '突遇玉龙、哈巴两座雪山的阻挡，原本平静祥和的江水顿时变得怒不可遏，虎跳峡是万里长江第一大峡谷，横穿与哈巴和玉龙雪山之间因猛虎跃江心石过江的传说而得名。3900米下的水石咆哮，216米短距离落差，以其山高谷深，雄奇险峻闻名于世。', '2018-02-23 17:51:00.000000', 3);
INSERT INTO `theme_spot` VALUES (6, '纳米比亚', '位于非洲西南部的纳米比亚有着世界最古老的沙漠和广阔的非洲草原。在这片草原上，不仅有着野生巨兽栖息，也生活着红土涂满全身的辛巴族人。当然，纳米比亚最不能错过的是美丽又震撼的星空。它被列为世界上5个国际暗黑天空保护区之一。由于气候干燥无云，纳米比亚是世界上最佳的星空观赏地，每年吸引着无数星空爱好者到这里拍摄。', 'theme/spot/2018/02/57fb0c1d9fd28.jpg', 5000, 'theme/spot/2018/02/a97678061d950a7b2cc282610ad162d9f3d3c91b.jpg', 'theme/spot/2018/02/d26838a949984fca9a3d690d5cee1d2d_th.jpg', '埃托沙野生动物园上空的星轨，草棚就是我们的房间。在这里，我们很晚才睡觉，忙着守候在水点等动物，大象、长颈鹿、犀牛等等都让我们等上了。当然，星空也不能放弃，拍完动物赶紧支起脚架拍星空。', '纳米比亚南的箭袋树公园是最好的星空拍摄地。我们为了拍摄星空，下午就进园子里了，拍摄了箭袋树后早早的寻了有利地形支上脚架调好相机，就是为了等待这个时刻。', '2018-02-23 17:53:00.000000', 4);
INSERT INTO `theme_spot` VALUES (7, '新天鹅城堡', '新天鹅堡（英语：New Swan Stone Castle、德语：Schloss Neuschwanstein）全名新天鹅石城堡，是19世纪晚期的建筑，位于德国巴伐利亚西南方，邻近年代较早的高天鹅堡（Schloss Hohenschwangau，又称旧天鹅堡），距离菲森（Fussen）镇约4公里，离德国与奥地利边界不远。', 'theme/spot/2018/02/359b033b5bb5c9eab9979d80d539b6003af3b369.jpg', 1000, 'theme/spot/2018/02/6a600c338744ebf867b8977bd1f9d72a6159a7ad.jpg', 'theme/spot/2018/02/902397dda144ad340c74bf90dba20cf430ad85d9.jpg', '新天鹅城堡是德国的象征，由于是迪斯尼城堡的原型，也有人叫灰姑娘城堡。建于1869年。这座城堡是巴伐利亚国王路德维希二世的行宫之一。共有360个房间，其中只有14个房间依照设计完工，其他的346个房间则因为国王在1886年逝世而未完成。是德国境内受拍照最多的建筑物，也是最受欢迎的旅游景点之一。', '世界上没有一个国家像德国那样拥有如此众多的城堡，据说仍有14000个。在众多的城堡中，最著名的是位于慕尼黑以南富森(Fussen)的阿尔卑斯山麓的新天鹅城堡。', '2018-02-23 17:57:00.000000', 5);
INSERT INTO `theme_spot` VALUES (8, '天门山', '天门山，古称云梦山、嵩梁山，是张家界永定区海拔最高的山，北距城区8公里，因自然奇观天门洞而得名，最早被记入史册的名山。主峰1518.6米，1992年7月被批准为国家森林公园。', 'theme/spot/2018/02/5738.jpg', 150, 'theme/spot/2018/02/5737.jpg', 'theme/spot/2018/02/5739.jpg', '形成迄今罕见的世界奇观――天门洞，天门洞南北对穿，门高131.5米，宽57米，深60米，拔地依天，宛若一道通天的门户，从此而得名天门山，至今已有1754年历史。山顶相对平坦，保存着完整的原始次森林，有着很多极为珍贵和独特的植物品种，森林覆盖率达90%。', '其间古树参天，藤蔓缠绕，青苔遍布，石笋、石芽举步皆是，处处如天成的盆景，被世人誉为世界最美的空中花园和天界仙境。2012年7月22日中午，法国轮滑大师让伊夫·布朗杜挑战天门山。', '2018-02-23 17:59:00.000000', 6);
INSERT INTO `theme_spot` VALUES (9, '九寨沟', '九寨沟：世界自然遗产、国家重点风景名胜区、国家AAAAA级旅游景区、国家级自然保护区、国家地质公园、世界生物圈保护区网络，是中国第一个以保护自然风景为主要目的的自然保护区。', 'theme/spot/2018/02/timg2.jpg', 200, 'theme/spot/2018/02/timg3.jpg', 'theme/spot/2018/02/timg4.jpg', '九寨沟位于四川省阿坝藏族羌族自治州九寨沟县境内，地处青藏高原、川西高原、山地向四川盆地过渡地带，南距成都市300多公里，是一条纵深50余千米的山沟谷地，总面积64297公顷，森林覆盖率超过80%。因沟内有树正寨、荷叶寨、则查洼寨等九个藏族村寨坐落在这片高山湖泊群中而得名。', '九寨沟国家级自然保护区主要保护对象是以大熊猫、金丝猴等珍稀动物及其自然生态环境。有74种国家保护珍稀植物，有18种国家保护动物，还有丰富的古生物化石、古冰川地貌。', '2018-02-23 18:01:00.000000', 7);

-- ----------------------------
-- Table structure for theme_theme
-- ----------------------------
DROP TABLE IF EXISTS `theme_theme`;
CREATE TABLE `theme_theme`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of theme_theme
-- ----------------------------
INSERT INTO `theme_theme` VALUES (2, '樱花世界', '樱花是爱情与希望的象征，代表着高雅，质朴纯洁的爱情。心中的某个人，就如那场寂寞的樱花雨，缓缓消失在时光的深处，留下永恒的记忆。', 'theme/2018/02/demo2.jpg', '2018-02-23 16:22:00.000000');
INSERT INTO `theme_theme` VALUES (3, '峡谷奇观', '两岸连山，略无阙处；重岩叠嶂，隐天蔽日，自非亭午夜不见曦月。绝巘多生怪柏，悬泉瀑布，飞漱其间。清荣峻茂，良多趣味。', 'theme/2018/02/demo3.jpg', '2018-02-23 16:24:00.000000');
INSERT INTO `theme_theme` VALUES (4, '奇幻星空', '夜，是宁静的。夜空，是典雅的。繁星点点的夜空，是奇幻的，是充满光明的，是无瑕的。躺在一望无际的绿地上，仰望着灿烂星空，感觉是那么美妙。', 'theme/2018/02/demo4.jpg', '2018-02-23 16:25:00.000000');
INSERT INTO `theme_theme` VALUES (5, '童话城堡', '在众多荆棘和蔷薇的环绕下，矗立着一座古老的城堡，古堡似乎年代已经很久远了，高高的灰色城墙上爬满了暗绿色的蔓藤，如此之多，有的甚至钻进了窗子里，透出几分阴森。', 'theme/2018/02/demo5.jpg', '2018-02-23 16:26:00.000000');
INSERT INTO `theme_theme` VALUES (6, '最美的路', '世上的路千千万万条，美丽的风景常常在路上，请千万不要因为行色匆匆忽视一路的美丽，让我们带你走走这最美的风景', 'theme/2018/02/demo9.jpg', '2018-02-23 16:26:00.000000');
INSERT INTO `theme_theme` VALUES (7, '自然世界', '<p>&nbsp; &nbsp; 细雨湿流光,芳草年年与恨长。春草明年绿，王孙归不归。墙头雨细垂纤草，水面风回聚落花。</p>', 'theme/2018/02/demo6.6.jpg', '2018-02-23 16:27:00.000000');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$36000$uknVGAPY01lA$XEp0DuBd3DIg8N2L2Oy5djsNcJOJ6hz+pRFzWfoX/l8=', '2018-02-23 21:47:32.960810', 1, '2559', '', '', '1234567@qq.com', 1, 1, '2018-02-21 07:48:38.889311', 'image/default.png');
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$36000$bUNRgIqNK62A$UWaLRHS6rYqJgqMykTu04udJLRMX0FRUnP5kx/7iQY0=', '2018-02-23 21:24:00.000000', 0, '233', '', '', '', 0, 1, '2018-02-23 02:41:00.000000', 'users/2018/02/P5282546.JPG');
INSERT INTO `users_userprofile` VALUES (3, 'pbkdf2_sha256$36000$FnGx6EZTHBfQ$LW/Ku0LLK1TGDX2AQa5xrsk4OOREWpavwzAAFodMun4=', '2018-02-23 21:46:08.438714', 0, '嘿嘿', '', '', '', 0, 1, '2018-02-23 21:45:58.471268', 'image/default.png');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_us_permission_id_393136b6_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_content_type_id_60941679_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2018-02-22 02:26:48.364439', '127.0.0.1', '1', 'HAHAHAHA', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (2, '2018-02-22 02:58:38.084954', '127.0.0.1', '1', '11111111111111', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (3, '2018-02-22 02:59:10.363268', '127.0.0.1', '1', 'Comment object', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (4, '2018-02-23 16:23:25.795883', '127.0.0.1', '2', '樱花世界', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (5, '2018-02-23 16:25:24.324982', '127.0.0.1', '3', '峡谷奇观', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (6, '2018-02-23 16:25:36.335484', '127.0.0.1', '1', 'HAHAHAHA', 'delete', '', 7, 1);
INSERT INTO `xadmin_log` VALUES (7, '2018-02-23 16:26:06.387192', '127.0.0.1', '4', '奇幻星空', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (8, '2018-02-23 16:26:43.749290', '127.0.0.1', '5', '童话城堡', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (9, '2018-02-23 16:27:23.434361', '127.0.0.1', '6', '最美的路', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (10, '2018-02-23 16:28:09.075582', '127.0.0.1', '7', '自然世界', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (11, '2018-02-23 16:39:49.356195', '127.0.0.1', '7', '自然世界', 'change', '修改 image', 7, 1);
INSERT INTO `xadmin_log` VALUES (12, '2018-02-23 16:40:42.386851', '127.0.0.1', '6', '最美的路', 'change', '修改 image', 7, 1);
INSERT INTO `xadmin_log` VALUES (13, '2018-02-23 16:40:51.912241', '127.0.0.1', '5', '童话城堡', 'change', '修改 image', 7, 1);
INSERT INTO `xadmin_log` VALUES (14, '2018-02-23 16:41:00.997350', '127.0.0.1', '4', '奇幻星空', 'change', '修改 image', 7, 1);
INSERT INTO `xadmin_log` VALUES (15, '2018-02-23 16:41:12.046909', '127.0.0.1', '3', '峡谷奇观', 'change', '修改 image', 7, 1);
INSERT INTO `xadmin_log` VALUES (16, '2018-02-23 16:41:19.547452', '127.0.0.1', '2', '樱花世界', 'change', '修改 image', 7, 1);
INSERT INTO `xadmin_log` VALUES (17, '2018-02-23 17:35:45.631101', '127.0.0.1', '2', '富士山', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (18, '2018-02-23 17:46:41.432511', '127.0.0.1', '3', '武汉大学', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (19, '2018-02-23 17:50:25.729445', '127.0.0.1', '4', '雅鲁藏布大峡谷', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (20, '2018-02-23 17:53:32.957950', '127.0.0.1', '5', '金沙江虎跳峡', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (21, '2018-02-23 17:56:55.697474', '127.0.0.1', '6', '纳米比亚', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (22, '2018-02-23 17:59:01.468826', '127.0.0.1', '7', '新天鹅城堡', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (23, '2018-02-23 18:01:43.578757', '127.0.0.1', '8', '天门山', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (24, '2018-02-23 18:03:51.306608', '127.0.0.1', '9', '九寨沟', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (25, '2018-02-23 22:40:12.965275', '127.0.0.1', '7', '自然世界', 'change', '修改 desc', 7, 1);
INSERT INTO `xadmin_log` VALUES (26, '2018-02-23 22:45:13.099267', '127.0.0.1', '7', '自然世界', 'change', '修改 desc', 7, 1);
INSERT INTO `xadmin_log` VALUES (27, '2018-02-23 22:45:41.878806', '127.0.0.1', '2', '233', 'change', '修改 last_login 和 image', 6, 1);
INSERT INTO `xadmin_log` VALUES (28, '2018-02-23 22:46:21.074753', '127.0.0.1', '7', '自然世界', 'change', '修改 desc', 7, 1);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
INSERT INTO `xadmin_usersettings` VALUES (2, 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', 1);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
