/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50637
Source Host           : localhost:3306
Source Database       : echosite

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2017-08-31 23:46:12
*/

SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `echosite` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci; 

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('1', '1');
INSERT INTO `auth_group` VALUES ('2', '123');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES ('1', '1', '1');
INSERT INTO `auth_group_permissions` VALUES ('2', '2', '1');
INSERT INTO `auth_group_permissions` VALUES ('3', '2', '2');

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add group', '2', 'add_group');
INSERT INTO `auth_permission` VALUES ('5', 'Can change group', '2', 'change_group');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete group', '2', 'delete_group');
INSERT INTO `auth_permission` VALUES ('7', 'Can add permission', '3', 'add_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can change permission', '3', 'change_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete permission', '3', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add upload', '7', 'add_upload');
INSERT INTO `auth_permission` VALUES ('20', 'Can change upload', '7', 'change_upload');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete upload', '7', 'delete_upload');
INSERT INTO `auth_permission` VALUES ('22', 'Can add device', '8', 'add_device');
INSERT INTO `auth_permission` VALUES ('23', 'Can change device', '8', 'change_device');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete device', '8', 'delete_device');
INSERT INTO `auth_permission` VALUES ('25', 'Can add node', '9', 'add_node');
INSERT INTO `auth_permission` VALUES ('26', 'Can change node', '9', 'change_node');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete node', '9', 'delete_node');
INSERT INTO `auth_permission` VALUES ('28', 'Can add task', '10', 'add_task');
INSERT INTO `auth_permission` VALUES ('29', 'Can change task', '10', 'change_task');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete task', '10', 'delete_task');
INSERT INTO `auth_permission` VALUES ('31', 'Can add process', '11', 'add_process');
INSERT INTO `auth_permission` VALUES ('32', 'Can change process', '11', 'change_process');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete process', '11', 'delete_process');
INSERT INTO `auth_permission` VALUES ('34', 'Can add employee', '12', 'add_employee');
INSERT INTO `auth_permission` VALUES ('35', 'Can change employee', '12', 'change_employee');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete employee', '12', 'delete_employee');
INSERT INTO `auth_permission` VALUES ('37', 'Can add line', '13', 'add_line');
INSERT INTO `auth_permission` VALUES ('38', 'Can change line', '13', 'change_line');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete line', '13', 'delete_line');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$36000$zpLHKYaLv6Aj$0oMTt3Z052K5GqU3vsmj+LNVQ0sIyyVtke4bg7+HIXM=', '2017-08-31 10:51:52', '1', 'hwz', '', '', '', '1', '1', '2017-08-31 02:22:12');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$36000$5vacFRdecdPK$sXa/jyPB8Fjb/ReCvVJCHEwMjzkK4rI267dmvfueGFo=', '2017-08-31 10:50:59', '0', 'hwz1', '', '', '', '0', '1', '2017-08-31 02:23:32');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2017-08-31 02:23:32', '2', 'hwz1', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2017-08-31 02:24:02', '1', '1', '1', '[{\"added\": {}}]', '2', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2017-08-31 02:24:22', '2', '123', '1', '[{\"added\": {}}]', '2', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2017-08-31 10:45:21', '1', 'hwz', '1', '[{\"added\": {}}]', '12', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('8', 'echo', 'device');
INSERT INTO `django_content_type` VALUES ('12', 'echo', 'employee');
INSERT INTO `django_content_type` VALUES ('13', 'echo', 'line');
INSERT INTO `django_content_type` VALUES ('9', 'echo', 'node');
INSERT INTO `django_content_type` VALUES ('11', 'echo', 'process');
INSERT INTO `django_content_type` VALUES ('10', 'echo', 'task');
INSERT INTO `django_content_type` VALUES ('7', 'echo', 'upload');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-08-31 02:21:10');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-08-31 02:21:11');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-08-31 02:21:11');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-08-31 02:21:11');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('13', 'echo', '0001_initial', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('14', 'echo', '0002_auto_20160224_1419', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('15', 'echo', '0003_auto_20160224_1455', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('16', 'echo', '0004_device_line', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('17', 'echo', '0005_auto_20160307_1114', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('18', 'echo', '0006_auto_20160311_1455', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('19', 'echo', '0007_remove_line_line_status', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('20', 'echo', '0008_line_line_status', '2017-08-31 02:21:12');
INSERT INTO `django_migrations` VALUES ('21', 'echo', '0009_auto_20160613_1634', '2017-08-31 02:21:13');
INSERT INTO `django_migrations` VALUES ('22', 'sessions', '0001_initial', '2017-08-31 02:21:13');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('76tq1m395dt1kj3jv20oa9qzr5s5czlj', 'MTUzODM2NjZlYTljMTc5MGE4OWU2MjY3MjU2OWNlN2E5MTQ5OWIyNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjMyMTdmYmUwMzFiZjViMjE0YWM4OWE3YjQyMGJjYTUxOTlkODJhOTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-09-14 10:51:52');

-- ----------------------------
-- Table structure for echo_device
-- ----------------------------
DROP TABLE IF EXISTS `echo_device`;
CREATE TABLE `echo_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_caption` varchar(100) NOT NULL,
  `device_serial` varchar(100) NOT NULL,
  `device_type` varchar(50) NOT NULL,
  `device_vendor` varchar(50) NOT NULL,
  `device_remark` varchar(50) NOT NULL,
  `device_ip` char(39) NOT NULL,
  `device_status` varchar(10) NOT NULL,
  `device_signer` varchar(30) NOT NULL,
  `device_signtime` date NOT NULL,
  `node_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `echo_device_node_id_373baf06_fk_echo_node_id` (`node_id`),
  CONSTRAINT `echo_device_node_id_373baf06_fk_echo_node_id` FOREIGN KEY (`node_id`) REFERENCES `echo_node` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of echo_device
-- ----------------------------
INSERT INTO `echo_device` VALUES ('1', '设备1', '99999999', 'ppp', 'CISCO', '', '0.0.0.0', '启用', 'hwz', '2017-08-31', '1');

-- ----------------------------
-- Table structure for echo_employee
-- ----------------------------
DROP TABLE IF EXISTS `echo_employee`;
CREATE TABLE `echo_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `responsibility` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `echo_employee_user_id_c080f922_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of echo_employee
-- ----------------------------
INSERT INTO `echo_employee` VALUES ('1', '管理员', '1');

-- ----------------------------
-- Table structure for echo_line
-- ----------------------------
DROP TABLE IF EXISTS `echo_line`;
CREATE TABLE `echo_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line_code` varchar(100) NOT NULL,
  `line_local` varchar(50) NOT NULL,
  `line_speed` varchar(10) NOT NULL,
  `line_spname` varchar(10) NOT NULL,
  `line_type` varchar(50) NOT NULL,
  `line_open` date NOT NULL,
  `line_closed` date DEFAULT NULL,
  `line_signer` varchar(30) NOT NULL,
  `line_signtime` date NOT NULL,
  `line_remarks` varchar(255) NOT NULL,
  `node_id` int(11) NOT NULL,
  `line_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `echo_line_node_id_e52aa451_fk_echo_node_id` (`node_id`),
  CONSTRAINT `echo_line_node_id_e52aa451_fk_echo_node_id` FOREIGN KEY (`node_id`) REFERENCES `echo_node` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of echo_line
-- ----------------------------
INSERT INTO `echo_line` VALUES ('1', '线路1', '上海数据中心', '6M', '中国电信', 'MSTP', '2017-07-09', null, 'hwz', '2017-08-31', '', '1', '1');

-- ----------------------------
-- Table structure for echo_node
-- ----------------------------
DROP TABLE IF EXISTS `echo_node`;
CREATE TABLE `echo_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(255) NOT NULL,
  `node_type` varchar(50) NOT NULL,
  `node_address` varchar(255) NOT NULL,
  `node_contact` varchar(255) NOT NULL,
  `node_signer` varchar(50) NOT NULL,
  `node_remarks` varchar(255) NOT NULL,
  `node_signtime` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of echo_node
-- ----------------------------
INSERT INTO `echo_node` VALUES ('1', '节点1', '总部', '123', '', 'hwz', '', '2017-08-31');
INSERT INTO `echo_node` VALUES ('2', '节点2', '总部', '2', '', 'hwz1', '', '2017-08-31');

-- ----------------------------
-- Table structure for echo_process
-- ----------------------------
DROP TABLE IF EXISTS `echo_process`;
CREATE TABLE `echo_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_content` longtext NOT NULL,
  `process_signtime` datetime NOT NULL,
  `process_signer` varchar(30) NOT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `echo_process_task_id_91217e0e_fk_echo_task_id` (`task_id`),
  CONSTRAINT `echo_process_task_id_91217e0e_fk_echo_task_id` FOREIGN KEY (`task_id`) REFERENCES `echo_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of echo_process
-- ----------------------------

-- ----------------------------
-- Table structure for echo_task
-- ----------------------------
DROP TABLE IF EXISTS `echo_task`;
CREATE TABLE `echo_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_code` varchar(30) NOT NULL,
  `task_title` varchar(100) NOT NULL,
  `task_category` varchar(100) NOT NULL,
  `task_contacts` longtext NOT NULL,
  `task_status` varchar(20) NOT NULL,
  `task_signer` varchar(30) NOT NULL,
  `task_signtime` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of echo_task
-- ----------------------------

-- ----------------------------
-- Table structure for echo_task_task_member
-- ----------------------------
DROP TABLE IF EXISTS `echo_task_task_member`;
CREATE TABLE `echo_task_task_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `echo_task_task_member_task_id_employee_id_cda3e822_uniq` (`task_id`,`employee_id`),
  KEY `echo_task_task_member_employee_id_e3300436_fk_echo_employee_id` (`employee_id`),
  CONSTRAINT `echo_task_task_member_employee_id_e3300436_fk_echo_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `echo_employee` (`id`),
  CONSTRAINT `echo_task_task_member_task_id_a1ad4bff_fk_echo_task_id` FOREIGN KEY (`task_id`) REFERENCES `echo_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of echo_task_task_member
-- ----------------------------

-- ----------------------------
-- Table structure for echo_upload
-- ----------------------------
DROP TABLE IF EXISTS `echo_upload`;
CREATE TABLE `echo_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_title` varchar(255) NOT NULL,
  `upload_path` varchar(255) NOT NULL,
  `upload_signtime` datetime DEFAULT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `echo_upload_task_id_7e1d7b21_fk_echo_task_id` (`task_id`),
  CONSTRAINT `echo_upload_task_id_7e1d7b21_fk_echo_task_id` FOREIGN KEY (`task_id`) REFERENCES `echo_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of echo_upload
-- ----------------------------
