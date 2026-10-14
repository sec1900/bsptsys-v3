/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : beta

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 14/09/2022 18:09:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add 脚本分类', 7, 'add_label');
INSERT INTO `auth_permission` VALUES (26, 'Can change 脚本分类', 7, 'change_label');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 脚本分类', 7, 'delete_label');
INSERT INTO `auth_permission` VALUES (28, 'Can view 脚本分类', 7, 'view_label');
INSERT INTO `auth_permission` VALUES (29, 'Can add 导航栏', 8, 'add_navigation');
INSERT INTO `auth_permission` VALUES (30, 'Can change 导航栏', 8, 'change_navigation');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 导航栏', 8, 'delete_navigation');
INSERT INTO `auth_permission` VALUES (32, 'Can view 导航栏', 8, 'view_navigation');
INSERT INTO `auth_permission` VALUES (33, 'Can add 脚本', 9, 'add_script');
INSERT INTO `auth_permission` VALUES (34, 'Can change 脚本', 9, 'change_script');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 脚本', 9, 'delete_script');
INSERT INTO `auth_permission` VALUES (36, 'Can view 脚本', 9, 'view_script');
INSERT INTO `auth_permission` VALUES (37, 'Can add user task', 10, 'add_usertask');
INSERT INTO `auth_permission` VALUES (38, 'Can change user task', 10, 'change_usertask');
INSERT INTO `auth_permission` VALUES (39, 'Can delete user task', 10, 'delete_usertask');
INSERT INTO `auth_permission` VALUES (40, 'Can view user task', 10, 'view_usertask');
INSERT INTO `auth_permission` VALUES (41, 'Can add task result', 11, 'add_taskresult');
INSERT INTO `auth_permission` VALUES (42, 'Can change task result', 11, 'change_taskresult');
INSERT INTO `auth_permission` VALUES (43, 'Can delete task result', 11, 'delete_taskresult');
INSERT INTO `auth_permission` VALUES (44, 'Can view task result', 11, 'view_taskresult');
INSERT INTO `auth_permission` VALUES (45, 'Can add chord counter', 12, 'add_chordcounter');
INSERT INTO `auth_permission` VALUES (46, 'Can change chord counter', 12, 'change_chordcounter');
INSERT INTO `auth_permission` VALUES (47, 'Can delete chord counter', 12, 'delete_chordcounter');
INSERT INTO `auth_permission` VALUES (48, 'Can view chord counter', 12, 'view_chordcounter');
INSERT INTO `auth_permission` VALUES (49, 'Can add group result', 13, 'add_groupresult');
INSERT INTO `auth_permission` VALUES (50, 'Can change group result', 13, 'change_groupresult');
INSERT INTO `auth_permission` VALUES (51, 'Can delete group result', 13, 'delete_groupresult');
INSERT INTO `auth_permission` VALUES (52, 'Can view group result', 13, 'view_groupresult');
INSERT INTO `auth_permission` VALUES (53, 'Can add crontab', 14, 'add_crontabschedule');
INSERT INTO `auth_permission` VALUES (54, 'Can change crontab', 14, 'change_crontabschedule');
INSERT INTO `auth_permission` VALUES (55, 'Can delete crontab', 14, 'delete_crontabschedule');
INSERT INTO `auth_permission` VALUES (56, 'Can view crontab', 14, 'view_crontabschedule');
INSERT INTO `auth_permission` VALUES (57, 'Can add interval', 15, 'add_intervalschedule');
INSERT INTO `auth_permission` VALUES (58, 'Can change interval', 15, 'change_intervalschedule');
INSERT INTO `auth_permission` VALUES (59, 'Can delete interval', 15, 'delete_intervalschedule');
INSERT INTO `auth_permission` VALUES (60, 'Can view interval', 15, 'view_intervalschedule');
INSERT INTO `auth_permission` VALUES (61, 'Can add periodic task', 16, 'add_periodictask');
INSERT INTO `auth_permission` VALUES (62, 'Can change periodic task', 16, 'change_periodictask');
INSERT INTO `auth_permission` VALUES (63, 'Can delete periodic task', 16, 'delete_periodictask');
INSERT INTO `auth_permission` VALUES (64, 'Can view periodic task', 16, 'view_periodictask');
INSERT INTO `auth_permission` VALUES (65, 'Can add periodic tasks', 17, 'add_periodictasks');
INSERT INTO `auth_permission` VALUES (66, 'Can change periodic tasks', 17, 'change_periodictasks');
INSERT INTO `auth_permission` VALUES (67, 'Can delete periodic tasks', 17, 'delete_periodictasks');
INSERT INTO `auth_permission` VALUES (68, 'Can view periodic tasks', 17, 'view_periodictasks');
INSERT INTO `auth_permission` VALUES (69, 'Can add solar event', 18, 'add_solarschedule');
INSERT INTO `auth_permission` VALUES (70, 'Can change solar event', 18, 'change_solarschedule');
INSERT INTO `auth_permission` VALUES (71, 'Can delete solar event', 18, 'delete_solarschedule');
INSERT INTO `auth_permission` VALUES (72, 'Can view solar event', 18, 'view_solarschedule');
INSERT INTO `auth_permission` VALUES (73, 'Can add clocked', 19, 'add_clockedschedule');
INSERT INTO `auth_permission` VALUES (74, 'Can change clocked', 19, 'change_clockedschedule');
INSERT INTO `auth_permission` VALUES (75, 'Can delete clocked', 19, 'delete_clockedschedule');
INSERT INTO `auth_permission` VALUES (76, 'Can view clocked', 19, 'view_clockedschedule');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$150000$Jh4KKhJXUjI8$XaXbQe0bPC6LJWv6fKSZhpgz09hiKAwVyfgoWxr/WnA=', '2022-09-14 17:48:05.159714', 0, 'admin', '', '', 'admin@qq.com', 0, 1, '2022-04-11 11:36:27.118490');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$150000$bi8XyCUuv2Gq$ZS6DlhY43gYr/tAB8saqs2jjtwuoHisQjFlGWY01sgA=', '2022-09-14 17:32:59.348081', 1, 'root', '', '', 'root@qq.com', 1, 1, '2022-04-11 15:44:59.489336');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$150000$67JACj5aMdUW$M3eAO1mmnrH6CmVRS9RndCeGp2XRs8ZPOo2e5cirRpU=', '2022-04-28 15:43:42.537656', 0, 'wangdb', '', '', 'wangdebao2022@163.com', 0, 1, '2022-04-28 15:42:40.512581');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2022-04-11 15:45:43.685286', '1', '信息收集', 1, '[{\"added\": {}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (2, '2022-04-11 16:06:30.179005', '1', '端口扫描', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (3, '2022-04-12 20:05:32.749041', '2', '身份认证', 1, '[{\"added\": {}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (4, '2022-04-12 20:06:19.216043', '3', '漏洞检测', 1, '[{\"added\": {}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (5, '2022-04-12 20:06:46.023329', '4', '加密解密', 1, '[{\"added\": {}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (6, '2022-04-14 22:32:01.466093', '2', 'IP查询', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (7, '2022-04-15 12:45:40.827598', '3', '子域名探测(bing-search)', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (8, '2022-04-16 11:05:06.629778', '4', '字典生成', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (9, '2022-04-17 17:51:57.911194', '5', 'base64编码', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (10, '2022-04-18 16:39:17.778392', '5', '流量分析', 1, '[{\"added\": {}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (11, '2022-04-18 16:43:45.541765', '6', 'ARP毒化', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (12, '2022-05-18 16:13:19.153778', '7', 'md5加密', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (13, '2022-08-16 02:27:41.440334', '8', 'hash', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (14, '2022-08-16 02:27:56.941639', '9', 'md5unlock', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (15, '2022-08-16 02:28:10.017778', '10', 'url', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (16, '2022-08-17 00:00:38.722209', '7', 'md5加密', 3, '', 9, 2);
INSERT INTO `django_admin_log` VALUES (17, '2022-08-19 09:35:45.383069', '11', 'fofa', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (18, '2022-08-22 17:51:27.377699', '12', 'dirscan', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (19, '2022-08-22 17:51:28.521557', '12', 'dirscan', 2, '[]', 9, 2);
INSERT INTO `django_admin_log` VALUES (20, '2022-08-22 17:52:18.054777', '12', 'dirscan', 2, '[{\"changed\": {\"fields\": [\"script_file\"]}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (21, '2022-09-14 12:15:40.982375', '1', '后台', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (22, '2022-09-14 12:18:25.202510', '6', '其他脚本', 1, '[{\"added\": {}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (23, '2022-09-14 12:18:50.826538', '6', 'ARP毒化', 3, '', 9, 2);
INSERT INTO `django_admin_log` VALUES (24, '2022-09-14 12:19:06.294677', '12', '目录扫描(sirscan)', 2, '[{\"changed\": {\"fields\": [\"script_name\"]}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (25, '2022-09-14 12:20:22.628438', '10', 'url加解密', 2, '[{\"changed\": {\"fields\": [\"script_name\"]}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (26, '2022-09-14 12:20:30.212714', '9', 'md5撞库', 2, '[{\"changed\": {\"fields\": [\"script_name\"]}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (27, '2022-09-14 12:20:35.680125', '8', 'hash加密', 2, '[{\"changed\": {\"fields\": [\"script_name\"]}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (28, '2022-09-14 12:20:53.821993', '4', '字典生成(不可用)', 2, '[{\"changed\": {\"fields\": [\"script_name\"]}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (29, '2022-09-14 12:21:35.173772', '11', '网络空间搜索引擎', 2, '[{\"changed\": {\"fields\": [\"script_name\"]}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (30, '2022-09-14 12:21:49.268909', '3', '子域名探测(bing-search)不可用', 2, '[{\"changed\": {\"fields\": [\"script_name\"]}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (31, '2022-09-14 12:22:37.844706', '13', '端口监听(port-listening)', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (32, '2022-09-14 12:23:59.714941', '4', '加密解密', 2, '[{\"changed\": {\"fields\": [\"label_path\"]}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (33, '2022-09-14 12:24:47.132212', '5', '流量分析', 2, '[{\"changed\": {\"fields\": [\"label_path\"]}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (34, '2022-09-14 12:25:05.809938', '3', '漏洞检测', 2, '[{\"changed\": {\"fields\": [\"label_path\"]}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (35, '2022-09-14 12:26:11.539850', '13', '端口监听(port-listening)', 2, '[{\"changed\": {\"fields\": [\"script_file\"]}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (36, '2022-09-14 12:33:51.615471', '14', 'ftp笑脸漏洞', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (37, '2022-09-14 12:33:59.401105', '12', '目录扫描(dirscan)', 2, '[{\"changed\": {\"fields\": [\"script_name\"]}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (38, '2022-09-14 12:58:39.069133', '15', 'httpsys漏洞检测', 1, '[{\"added\": {}}]', 9, 2);

-- ----------------------------
-- Table structure for django_celery_beat_clockedschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_clockedschedule`;
CREATE TABLE `django_celery_beat_clockedschedule`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `clocked_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_beat_crontabschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_crontabschedule`;
CREATE TABLE `django_celery_beat_crontabschedule`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `minute` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `hour` varchar(96) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `day_of_week` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `day_of_month` varchar(124) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `month_of_year` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `timezone` varchar(63) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_beat_intervalschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_intervalschedule`;
CREATE TABLE `django_celery_beat_intervalschedule`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `every` int(0) NOT NULL,
  `period` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_beat_periodictask
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_periodictask`;
CREATE TABLE `django_celery_beat_periodictask`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `task` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `args` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `kwargs` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `queue` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `exchange` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `routing_key` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `expires` datetime(6) NULL DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) NULL DEFAULT NULL,
  `total_run_count` int(0) UNSIGNED NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `crontab_id` int(0) NULL DEFAULT NULL,
  `interval_id` int(0) NULL DEFAULT NULL,
  `solar_id` int(0) NULL DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) NULL DEFAULT NULL,
  `priority` int(0) UNSIGNED NULL DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `clocked_id` int(0) NULL DEFAULT NULL,
  `expire_seconds` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce`(`crontab_id`) USING BTREE,
  INDEX `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce`(`interval_id`) USING BTREE,
  INDEX `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce`(`solar_id`) USING BTREE,
  INDEX `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce`(`clocked_id`) USING BTREE,
  CONSTRAINT `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` FOREIGN KEY (`clocked_id`) REFERENCES `django_celery_beat_clockedschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` FOREIGN KEY (`crontab_id`) REFERENCES `django_celery_beat_crontabschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` FOREIGN KEY (`interval_id`) REFERENCES `django_celery_beat_intervalschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` FOREIGN KEY (`solar_id`) REFERENCES `django_celery_beat_solarschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_beat_periodictasks
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_periodictasks`;
CREATE TABLE `django_celery_beat_periodictasks`  (
  `ident` smallint(0) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_beat_solarschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_solarschedule`;
CREATE TABLE `django_celery_beat_solarschedule`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `event` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `latitude` decimal(9, 6) NOT NULL,
  `longitude` decimal(9, 6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq`(`event`, `latitude`, `longitude`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_results_chordcounter
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_chordcounter`;
CREATE TABLE `django_celery_results_chordcounter`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sub_tasks` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `count` int(0) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_results_groupresult
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_groupresult`;
CREATE TABLE `django_celery_results_groupresult`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `content_type` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_encoding` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `result` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `group_id`(`group_id`) USING BTREE,
  INDEX `django_cele_date_cr_bd6c1d_idx`(`date_created`) USING BTREE,
  INDEX `django_cele_date_do_caae0e_idx`(`date_done`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_results_taskresult
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_taskresult`;
CREATE TABLE `django_celery_results_taskresult`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_type` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_encoding` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `result` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `meta` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `task_args` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `task_kwargs` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `task_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `worker` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `date_created` datetime(6) NOT NULL,
  `periodic_task_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `task_id`(`task_id`) USING BTREE,
  INDEX `django_cele_task_na_08aec9_idx`(`task_name`) USING BTREE,
  INDEX `django_cele_status_9b6201_idx`(`status`) USING BTREE,
  INDEX `django_cele_worker_d54dd8_idx`(`worker`) USING BTREE,
  INDEX `django_cele_date_cr_f04a50_idx`(`date_created`) USING BTREE,
  INDEX `django_cele_date_do_f59aad_idx`(`date_done`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (19, 'django_celery_beat', 'clockedschedule');
INSERT INTO `django_content_type` VALUES (14, 'django_celery_beat', 'crontabschedule');
INSERT INTO `django_content_type` VALUES (15, 'django_celery_beat', 'intervalschedule');
INSERT INTO `django_content_type` VALUES (16, 'django_celery_beat', 'periodictask');
INSERT INTO `django_content_type` VALUES (17, 'django_celery_beat', 'periodictasks');
INSERT INTO `django_content_type` VALUES (18, 'django_celery_beat', 'solarschedule');
INSERT INTO `django_content_type` VALUES (12, 'django_celery_results', 'chordcounter');
INSERT INTO `django_content_type` VALUES (13, 'django_celery_results', 'groupresult');
INSERT INTO `django_content_type` VALUES (11, 'django_celery_results', 'taskresult');
INSERT INTO `django_content_type` VALUES (7, 'index', 'label');
INSERT INTO `django_content_type` VALUES (8, 'index', 'navigation');
INSERT INTO `django_content_type` VALUES (9, 'index', 'script');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (10, 'user', 'usertask');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2022-04-11 11:21:15.890792');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2022-04-11 11:21:16.109247');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2022-04-11 11:21:16.556014');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2022-04-11 11:21:16.634057');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-11 11:21:16.642526');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2022-04-11 11:21:16.716706');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2022-04-11 11:21:16.749775');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2022-04-11 11:21:16.791421');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2022-04-11 11:21:16.800417');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2022-04-11 11:21:16.839641');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2022-04-11 11:21:16.841808');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-11 11:21:16.850418');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2022-04-11 11:21:16.892133');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-11 11:21:16.933222');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2022-04-11 11:21:16.972545');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2022-04-11 11:21:16.982829');
INSERT INTO `django_migrations` VALUES (17, 'django_celery_beat', '0001_initial', '2022-04-11 11:21:17.120324');
INSERT INTO `django_migrations` VALUES (18, 'django_celery_beat', '0002_auto_20161118_0346', '2022-04-11 11:21:17.286313');
INSERT INTO `django_migrations` VALUES (19, 'django_celery_beat', '0003_auto_20161209_0049', '2022-04-11 11:21:17.356719');
INSERT INTO `django_migrations` VALUES (20, 'django_celery_beat', '0004_auto_20170221_0000', '2022-04-11 11:21:17.362340');
INSERT INTO `django_migrations` VALUES (21, 'django_celery_beat', '0005_add_solarschedule_events_choices', '2022-04-11 11:21:17.367778');
INSERT INTO `django_migrations` VALUES (22, 'django_celery_beat', '0006_auto_20180322_0932', '2022-04-11 11:21:17.541184');
INSERT INTO `django_migrations` VALUES (23, 'django_celery_beat', '0007_auto_20180521_0826', '2022-04-11 11:21:17.645069');
INSERT INTO `django_migrations` VALUES (24, 'django_celery_beat', '0008_auto_20180914_1922', '2022-04-11 11:21:17.662506');
INSERT INTO `django_migrations` VALUES (25, 'django_celery_beat', '0006_auto_20180210_1226', '2022-04-11 11:21:17.675140');
INSERT INTO `django_migrations` VALUES (26, 'django_celery_beat', '0006_periodictask_priority', '2022-04-11 11:21:17.715704');
INSERT INTO `django_migrations` VALUES (27, 'django_celery_beat', '0009_periodictask_headers', '2022-04-11 11:21:17.758554');
INSERT INTO `django_migrations` VALUES (28, 'django_celery_beat', '0010_auto_20190429_0326', '2022-04-11 11:21:18.080119');
INSERT INTO `django_migrations` VALUES (29, 'django_celery_beat', '0011_auto_20190508_0153', '2022-04-11 11:21:18.153282');
INSERT INTO `django_migrations` VALUES (30, 'django_celery_beat', '0012_periodictask_expire_seconds', '2022-04-11 11:21:18.233914');
INSERT INTO `django_migrations` VALUES (31, 'django_celery_beat', '0013_auto_20200609_0727', '2022-04-11 11:21:18.241729');
INSERT INTO `django_migrations` VALUES (32, 'django_celery_beat', '0014_remove_clockedschedule_enabled', '2022-04-11 11:21:18.275522');
INSERT INTO `django_migrations` VALUES (33, 'django_celery_beat', '0015_edit_solarschedule_events_choices', '2022-04-11 11:21:18.282163');
INSERT INTO `django_migrations` VALUES (34, 'django_celery_results', '0001_initial', '2022-04-11 11:21:18.321346');
INSERT INTO `django_migrations` VALUES (35, 'django_celery_results', '0002_add_task_name_args_kwargs', '2022-04-11 11:21:18.458858');
INSERT INTO `django_migrations` VALUES (36, 'django_celery_results', '0003_auto_20181106_1101', '2022-04-11 11:21:18.464011');
INSERT INTO `django_migrations` VALUES (37, 'django_celery_results', '0004_auto_20190516_0412', '2022-04-11 11:21:18.568860');
INSERT INTO `django_migrations` VALUES (38, 'django_celery_results', '0005_taskresult_worker', '2022-04-11 11:21:18.611296');
INSERT INTO `django_migrations` VALUES (39, 'django_celery_results', '0006_taskresult_date_created', '2022-04-11 11:21:18.713438');
INSERT INTO `django_migrations` VALUES (40, 'django_celery_results', '0007_remove_taskresult_hidden', '2022-04-11 11:21:18.783271');
INSERT INTO `django_migrations` VALUES (41, 'django_celery_results', '0008_chordcounter', '2022-04-11 11:21:18.817716');
INSERT INTO `django_migrations` VALUES (42, 'django_celery_results', '0009_groupresult', '2022-04-11 11:21:19.196584');
INSERT INTO `django_migrations` VALUES (43, 'django_celery_results', '0010_remove_duplicate_indices', '2022-04-11 11:21:19.213136');
INSERT INTO `django_migrations` VALUES (44, 'django_celery_results', '0011_taskresult_periodic_task_name', '2022-04-11 11:21:19.256956');
INSERT INTO `django_migrations` VALUES (45, 'index', '0001_initial', '2022-04-11 11:21:19.362065');
INSERT INTO `django_migrations` VALUES (46, 'sessions', '0001_initial', '2022-04-11 11:21:19.433225');
INSERT INTO `django_migrations` VALUES (47, 'user', '0001_initial', '2022-04-11 11:21:19.504415');
INSERT INTO `django_migrations` VALUES (48, 'user', '0002_auto_20220411_1120', '2022-04-11 11:21:19.588086');
INSERT INTO `django_migrations` VALUES (49, 'index', '0002_auto_20220430_1613', '2022-04-30 16:13:28.355756');
INSERT INTO `django_migrations` VALUES (50, 'user', '0003_auto_20220430_1613', '2022-04-30 16:13:28.370186');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('1hfq6wqyit09bxccgyhyp6s6ucxzqhqr', 'YjQwNmI2ZmI5OTgyYTVhZWU5YzEyZTgzMGM2YmFkZGEyZDgzMThhZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YzBjMTAzNWUxNWZiMmY3OTljMWI4YTgyMzJlNzJlMmRjYTAyMDhhIiwiaXNfbG9naW4iOjF9', '2022-04-26 16:28:19.693253');
INSERT INTO `django_session` VALUES ('g5oxg38k5fryfw3ij2o5x16b3eejbarf', 'MjlhZjM3NDA4NWM0NWQ2NzA2NDJkNmY2Mzk4NTM5ZWRhZmUwYWU1Njp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOWQ0MDliZTQyZDQ0OGU5YzgzMWM2ZTkzZjZlODAzZjcyOWMzOWEyIiwiaXNfbG9naW4iOjF9', '2022-08-23 23:04:28.864440');
INSERT INTO `django_session` VALUES ('gyencarw66ulifbpm8cwk7kwhatjudyy', 'YjQwNmI2ZmI5OTgyYTVhZWU5YzEyZTgzMGM2YmFkZGEyZDgzMThhZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YzBjMTAzNWUxNWZiMmY3OTljMWI4YTgyMzJlNzJlMmRjYTAyMDhhIiwiaXNfbG9naW4iOjF9', '2022-09-28 17:48:05.169779');
INSERT INTO `django_session` VALUES ('jb7nc9y2yzs6r7v6rp35il7lkrv2h70i', 'YjQwNmI2ZmI5OTgyYTVhZWU5YzEyZTgzMGM2YmFkZGEyZDgzMThhZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YzBjMTAzNWUxNWZiMmY3OTljMWI4YTgyMzJlNzJlMmRjYTAyMDhhIiwiaXNfbG9naW4iOjF9', '2022-04-25 11:56:40.004618');
INSERT INTO `django_session` VALUES ('m3hdtd5dn4qefapfrdin8019bnjz1k7y', 'YWQ5ZjllNTlhYjgxNWRmM2Q3NTY5YTJmNGQwZTM5OTY0YmI4ZDFhODp7IlZlcmlmaWNhdGlvbkNvZGUiOiI2NzkzIn0=', '2022-05-12 15:44:51.765289');
INSERT INTO `django_session` VALUES ('wpy0360tneg50jvopxmbxex11lo4biyv', 'MjlhZjM3NDA4NWM0NWQ2NzA2NDJkNmY2Mzk4NTM5ZWRhZmUwYWU1Njp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOWQ0MDliZTQyZDQ0OGU5YzgzMWM2ZTkzZjZlODAzZjcyOWMzOWEyIiwiaXNfbG9naW4iOjF9', '2022-09-28 17:32:59.364085');

-- ----------------------------
-- Table structure for index_label
-- ----------------------------
DROP TABLE IF EXISTS `index_label`;
CREATE TABLE `index_label`  (
  `label_id` int(0) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `label_path` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`label_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_label
-- ----------------------------
INSERT INTO `index_label` VALUES (1, '信息收集', 'collection');
INSERT INTO `index_label` VALUES (2, '身份认证', 'identityAuth');
INSERT INTO `index_label` VALUES (3, '漏洞检测', 'poc');
INSERT INTO `index_label` VALUES (4, '加密解密', 'dataprocess');
INSERT INTO `index_label` VALUES (5, '流量分析', 'trafficanalysis');
INSERT INTO `index_label` VALUES (6, '其他脚本', 'other');

-- ----------------------------
-- Table structure for index_navigation
-- ----------------------------
DROP TABLE IF EXISTS `index_navigation`;
CREATE TABLE `index_navigation`  (
  `nav_id` int(0) NOT NULL AUTO_INCREMENT,
  `nav_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `nav_link` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`nav_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_navigation
-- ----------------------------
INSERT INTO `index_navigation` VALUES (1, '后台', '/admin');

-- ----------------------------
-- Table structure for index_script
-- ----------------------------
DROP TABLE IF EXISTS `index_script`;
CREATE TABLE `index_script`  (
  `script_id` int(0) NOT NULL AUTO_INCREMENT,
  `script_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `script_file` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `script_label_id` int(0) NOT NULL,
  PRIMARY KEY (`script_id`) USING BTREE,
  INDEX `index_script_script_label_id_b0481add_fk_index_label_label_id`(`script_label_id`) USING BTREE,
  CONSTRAINT `index_script_script_label_id_b0481add_fk_index_label_label_id` FOREIGN KEY (`script_label_id`) REFERENCES `index_label` (`label_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_script
-- ----------------------------
INSERT INTO `index_script` VALUES (1, '端口扫描', 'scaner-port.py', 1);
INSERT INTO `index_script` VALUES (2, 'IP查询', 'getIP.py', 1);
INSERT INTO `index_script` VALUES (3, '子域名探测(bing-search)不可用', 'subdomain.py', 1);
INSERT INTO `index_script` VALUES (4, '字典生成(不可用)', 'producePassword.py', 2);
INSERT INTO `index_script` VALUES (5, 'base64编码', 'base64Test.py', 4);
INSERT INTO `index_script` VALUES (8, 'hash加密', 'hash.py', 4);
INSERT INTO `index_script` VALUES (9, 'md5撞库', 'md5unlock.py', 4);
INSERT INTO `index_script` VALUES (10, 'url加解密', 'url.py', 4);
INSERT INTO `index_script` VALUES (11, '网络空间搜索引擎', 'fofa.py', 1);
INSERT INTO `index_script` VALUES (12, '目录扫描(dirscan)', 'dirscan.py', 1);
INSERT INTO `index_script` VALUES (13, '端口监听(port-listening)', 'portlistening.py', 6);
INSERT INTO `index_script` VALUES (14, 'ftp笑脸漏洞', 'smileftp.py', 3);
INSERT INTO `index_script` VALUES (15, 'httpsys漏洞检测', 'httpsys.py', 3);

-- ----------------------------
-- Table structure for user_usertask
-- ----------------------------
DROP TABLE IF EXISTS `user_usertask`;
CREATE TABLE `user_usertask`  (
  `userTask_id` int(0) NOT NULL AUTO_INCREMENT,
  `date_start` datetime(6) NOT NULL,
  `userTask_task_id` int(0) NOT NULL,
  `userTask_user_id` int(0) NOT NULL,
  PRIMARY KEY (`userTask_id`) USING BTREE,
  INDEX `user_usertask_userTask_task_id_aaf21d58_fk_django_ce`(`userTask_task_id`) USING BTREE,
  INDEX `user_usertask_userTask_user_id_9c8724d2_fk_auth_user_id`(`userTask_user_id`) USING BTREE,
  CONSTRAINT `user_usertask_userTask_task_id_aaf21d58_fk_django_ce` FOREIGN KEY (`userTask_task_id`) REFERENCES `django_celery_results_taskresult` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_usertask_userTask_user_id_9c8724d2_fk_auth_user_id` FOREIGN KEY (`userTask_user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
