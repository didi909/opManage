/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50637
Source Host           : localhost:3306
Source Database       : echosite

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2017-09-01 17:32:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

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
INSERT INTO `auth_permission` VALUES ('40', 'Can add process instance', '14', 'add_processinstance');
INSERT INTO `auth_permission` VALUES ('41', 'Can change process instance', '14', 'change_processinstance');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete process instance', '14', 'delete_processinstance');
INSERT INTO `auth_permission` VALUES ('43', 'Can add work item', '15', 'add_workitem');
INSERT INTO `auth_permission` VALUES ('44', 'Can change work item', '15', 'change_workitem');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete work item', '15', 'delete_workitem');
INSERT INTO `auth_permission` VALUES ('46', 'Can change priority', '15', 'can_change_priority');
INSERT INTO `auth_permission` VALUES ('47', 'Can add event', '16', 'add_event');
INSERT INTO `auth_permission` VALUES ('48', 'Can change event', '16', 'change_event');
INSERT INTO `auth_permission` VALUES ('49', 'Can delete event', '16', 'delete_event');
INSERT INTO `auth_permission` VALUES ('50', 'Can add Activity', '17', 'add_activity');
INSERT INTO `auth_permission` VALUES ('51', 'Can change Activity', '17', 'change_activity');
INSERT INTO `auth_permission` VALUES ('52', 'Can delete Activity', '17', 'delete_activity');
INSERT INTO `auth_permission` VALUES ('53', 'Can add process', '18', 'add_process');
INSERT INTO `auth_permission` VALUES ('54', 'Can change process', '18', 'change_process');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete process', '18', 'delete_process');
INSERT INTO `auth_permission` VALUES ('56', 'Can instantiate', '18', 'can_instantiate');
INSERT INTO `auth_permission` VALUES ('57', 'Can browse', '18', 'can_browse');
INSERT INTO `auth_permission` VALUES ('58', 'Can add application', '19', 'add_application');
INSERT INTO `auth_permission` VALUES ('59', 'Can change application', '19', 'change_application');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete application', '19', 'delete_application');
INSERT INTO `auth_permission` VALUES ('61', 'Can add push application', '20', 'add_pushapplication');
INSERT INTO `auth_permission` VALUES ('62', 'Can change push application', '20', 'change_pushapplication');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete push application', '20', 'delete_pushapplication');
INSERT INTO `auth_permission` VALUES ('64', 'Can add transition', '21', 'add_transition');
INSERT INTO `auth_permission` VALUES ('65', 'Can change transition', '21', 'change_transition');
INSERT INTO `auth_permission` VALUES ('66', 'Can delete transition', '21', 'delete_transition');
INSERT INTO `auth_permission` VALUES ('67', 'Can add Workflow user profile', '22', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('68', 'Can change Workflow user profile', '22', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('69', 'Can delete Workflow user profile', '22', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('70', 'Can add Simulation object', '23', 'add_defaultappmodel');
INSERT INTO `auth_permission` VALUES ('71', 'Can change Simulation object', '23', 'change_defaultappmodel');
INSERT INTO `auth_permission` VALUES ('72', 'Can delete Simulation object', '23', 'delete_defaultappmodel');
INSERT INTO `auth_permission` VALUES ('73', 'Can add image', '24', 'add_image');
INSERT INTO `auth_permission` VALUES ('74', 'Can change image', '24', 'change_image');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete image', '24', 'delete_image');
INSERT INTO `auth_permission` VALUES ('76', 'Can add icon', '25', 'add_icon');
INSERT INTO `auth_permission` VALUES ('77', 'Can change icon', '25', 'change_icon');
INSERT INTO `auth_permission` VALUES ('78', 'Can delete icon', '25', 'delete_icon');
INSERT INTO `auth_permission` VALUES ('79', 'Can add image button', '26', 'add_imagebutton');
INSERT INTO `auth_permission` VALUES ('80', 'Can change image button', '26', 'change_imagebutton');
INSERT INTO `auth_permission` VALUES ('81', 'Can delete image button', '26', 'delete_imagebutton');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('23', 'apptools', 'defaultappmodel');
INSERT INTO `django_content_type` VALUES ('25', 'apptools', 'icon');
INSERT INTO `django_content_type` VALUES ('24', 'apptools', 'image');
INSERT INTO `django_content_type` VALUES ('26', 'apptools', 'imagebutton');
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
INSERT INTO `django_content_type` VALUES ('16', 'runtime', 'event');
INSERT INTO `django_content_type` VALUES ('14', 'runtime', 'processinstance');
INSERT INTO `django_content_type` VALUES ('15', 'runtime', 'workitem');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('17', 'workflow', 'activity');
INSERT INTO `django_content_type` VALUES ('19', 'workflow', 'application');
INSERT INTO `django_content_type` VALUES ('18', 'workflow', 'process');
INSERT INTO `django_content_type` VALUES ('20', 'workflow', 'pushapplication');
INSERT INTO `django_content_type` VALUES ('21', 'workflow', 'transition');
INSERT INTO `django_content_type` VALUES ('22', 'workflow', 'userprofile');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-09-01 07:50:09');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-09-01 07:50:10');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-09-01 07:50:10');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-09-01 07:50:10');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-09-01 07:50:10');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-09-01 07:50:10');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-09-01 07:50:11');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-09-01 07:50:11');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-09-01 07:50:11');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-09-01 07:50:11');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-09-01 07:50:11');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2017-09-01 07:50:11');
INSERT INTO `django_migrations` VALUES ('13', 'echo', '0001_initial', '2017-09-01 07:50:11');
INSERT INTO `django_migrations` VALUES ('14', 'echo', '0002_auto_20160224_1419', '2017-09-01 07:50:11');
INSERT INTO `django_migrations` VALUES ('15', 'echo', '0003_auto_20160224_1455', '2017-09-01 07:50:11');
INSERT INTO `django_migrations` VALUES ('16', 'echo', '0004_device_line', '2017-09-01 07:50:11');
INSERT INTO `django_migrations` VALUES ('17', 'echo', '0005_auto_20160307_1114', '2017-09-01 07:50:11');
INSERT INTO `django_migrations` VALUES ('18', 'echo', '0006_auto_20160311_1455', '2017-09-01 07:50:11');
INSERT INTO `django_migrations` VALUES ('19', 'echo', '0007_remove_line_line_status', '2017-09-01 07:50:11');
INSERT INTO `django_migrations` VALUES ('20', 'echo', '0008_line_line_status', '2017-09-01 07:50:11');
INSERT INTO `django_migrations` VALUES ('21', 'echo', '0009_auto_20160613_1634', '2017-09-01 07:50:12');
INSERT INTO `django_migrations` VALUES ('22', 'sessions', '0001_initial', '2017-09-01 07:50:12');
INSERT INTO `django_migrations` VALUES ('23', 'workflow', '0001_initial', '2017-09-01 09:27:31');
INSERT INTO `django_migrations` VALUES ('24', 'runtime', '0001_initial', '2017-09-01 09:27:31');
INSERT INTO `django_migrations` VALUES ('25', 'runtime', '0002_auto_20170901_1727', '2017-09-01 09:27:33');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of echo_device
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of echo_employee
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of echo_line
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of echo_node
-- ----------------------------

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

-- ----------------------------
-- Table structure for runtime_event
-- ----------------------------
DROP TABLE IF EXISTS `runtime_event`;
CREATE TABLE `runtime_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `name` varchar(50) NOT NULL,
  `workitem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `runtime_event_workitem_id_357488d0_fk_runtime_workitem_id` (`workitem_id`),
  CONSTRAINT `runtime_event_workitem_id_357488d0_fk_runtime_workitem_id` FOREIGN KEY (`workitem_id`) REFERENCES `runtime_workitem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of runtime_event
-- ----------------------------

-- ----------------------------
-- Table structure for runtime_processinstance
-- ----------------------------
DROP TABLE IF EXISTS `runtime_processinstance`;
CREATE TABLE `runtime_processinstance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `creationTime` datetime NOT NULL,
  `status` varchar(10) NOT NULL,
  `old_status` varchar(10) DEFAULT NULL,
  `condition` varchar(50) DEFAULT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `process_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `runtime_processinsta_content_type_id_512c103e_fk_django_co` (`content_type_id`),
  KEY `runtime_processinsta_process_id_12452abd_fk_workflow_` (`process_id`),
  KEY `runtime_processinstance_user_id_cd0ed982_fk_auth_user_id` (`user_id`),
  CONSTRAINT `runtime_processinsta_content_type_id_512c103e_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `runtime_processinsta_process_id_12452abd_fk_workflow_` FOREIGN KEY (`process_id`) REFERENCES `workflow_process` (`id`),
  CONSTRAINT `runtime_processinstance_user_id_cd0ed982_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of runtime_processinstance
-- ----------------------------

-- ----------------------------
-- Table structure for runtime_workitem
-- ----------------------------
DROP TABLE IF EXISTS `runtime_workitem`;
CREATE TABLE `runtime_workitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `blocked` tinyint(1) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `instance_id` int(11) NOT NULL,
  `others_workitems_from_id` int(11) DEFAULT NULL,
  `pull_roles_id` int(11) DEFAULT NULL,
  `push_roles_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `workitem_from_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `runtime_workitem_activity_id_12e59be7_fk_workflow_activity_id` (`activity_id`),
  KEY `runtime_workitem_instance_id_a4a56ba9_fk_runtime_p` (`instance_id`),
  KEY `runtime_workitem_others_workitems_fro_f77afaa7_fk_runtime_w` (`others_workitems_from_id`),
  KEY `runtime_workitem_pull_roles_id_bc58cb39_fk_auth_group_id` (`pull_roles_id`),
  KEY `runtime_workitem_push_roles_id_4303d254_fk_auth_group_id` (`push_roles_id`),
  KEY `runtime_workitem_user_id_3e4b827b_fk_auth_user_id` (`user_id`),
  KEY `runtime_workitem_workitem_from_id_1cf47762_fk_runtime_w` (`workitem_from_id`),
  CONSTRAINT `runtime_workitem_activity_id_12e59be7_fk_workflow_activity_id` FOREIGN KEY (`activity_id`) REFERENCES `workflow_activity` (`id`),
  CONSTRAINT `runtime_workitem_instance_id_a4a56ba9_fk_runtime_p` FOREIGN KEY (`instance_id`) REFERENCES `runtime_processinstance` (`id`),
  CONSTRAINT `runtime_workitem_others_workitems_fro_f77afaa7_fk_runtime_w` FOREIGN KEY (`others_workitems_from_id`) REFERENCES `runtime_workitem` (`id`),
  CONSTRAINT `runtime_workitem_pull_roles_id_bc58cb39_fk_auth_group_id` FOREIGN KEY (`pull_roles_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `runtime_workitem_push_roles_id_4303d254_fk_auth_group_id` FOREIGN KEY (`push_roles_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `runtime_workitem_user_id_3e4b827b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `runtime_workitem_workitem_from_id_1cf47762_fk_runtime_w` FOREIGN KEY (`workitem_from_id`) REFERENCES `runtime_workitem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of runtime_workitem
-- ----------------------------

-- ----------------------------
-- Table structure for workflow_activity
-- ----------------------------
DROP TABLE IF EXISTS `workflow_activity`;
CREATE TABLE `workflow_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `kind` varchar(10) NOT NULL,
  `pushapp_param` varchar(100) DEFAULT NULL,
  `app_param` varchar(100) DEFAULT NULL,
  `description` longtext,
  `autostart` tinyint(1) NOT NULL,
  `autofinish` tinyint(1) NOT NULL,
  `join_mode` varchar(3) NOT NULL,
  `split_mode` varchar(3) NOT NULL,
  `application_id` int(11) DEFAULT NULL,
  `process_id` int(11) NOT NULL,
  `push_application_id` int(11) DEFAULT NULL,
  `roles_id` int(11) DEFAULT NULL,
  `subflow_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `workflow_activity_title_process_id_0bc0676f_uniq` (`title`,`process_id`),
  KEY `workflow_activity_application_id_aa9bd8f5_fk_workflow_` (`application_id`),
  KEY `workflow_activity_process_id_abc17f85_fk_workflow_process_id` (`process_id`),
  KEY `workflow_activity_push_application_id_9b9f0366_fk_workflow_` (`push_application_id`),
  KEY `workflow_activity_roles_id_b3148ef1_fk_auth_group_id` (`roles_id`),
  KEY `workflow_activity_subflow_id_44e0f481_fk_workflow_process_id` (`subflow_id`),
  CONSTRAINT `workflow_activity_application_id_aa9bd8f5_fk_workflow_` FOREIGN KEY (`application_id`) REFERENCES `workflow_application` (`id`),
  CONSTRAINT `workflow_activity_process_id_abc17f85_fk_workflow_process_id` FOREIGN KEY (`process_id`) REFERENCES `workflow_process` (`id`),
  CONSTRAINT `workflow_activity_push_application_id_9b9f0366_fk_workflow_` FOREIGN KEY (`push_application_id`) REFERENCES `workflow_pushapplication` (`id`),
  CONSTRAINT `workflow_activity_roles_id_b3148ef1_fk_auth_group_id` FOREIGN KEY (`roles_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `workflow_activity_subflow_id_44e0f481_fk_workflow_process_id` FOREIGN KEY (`subflow_id`) REFERENCES `workflow_process` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_activity
-- ----------------------------

-- ----------------------------
-- Table structure for workflow_application
-- ----------------------------
DROP TABLE IF EXISTS `workflow_application`;
CREATE TABLE `workflow_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `suffix` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_application
-- ----------------------------

-- ----------------------------
-- Table structure for workflow_process
-- ----------------------------
DROP TABLE IF EXISTS `workflow_process`;
CREATE TABLE `workflow_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `priority` int(11) NOT NULL,
  `begin_id` int(11) DEFAULT NULL,
  `end_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_process_begin_id_4c52ce66_fk_workflow_activity_id` (`begin_id`),
  KEY `workflow_process_end_id_901499c2_fk_workflow_activity_id` (`end_id`),
  CONSTRAINT `workflow_process_begin_id_4c52ce66_fk_workflow_activity_id` FOREIGN KEY (`begin_id`) REFERENCES `workflow_activity` (`id`),
  CONSTRAINT `workflow_process_end_id_901499c2_fk_workflow_activity_id` FOREIGN KEY (`end_id`) REFERENCES `workflow_activity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_process
-- ----------------------------

-- ----------------------------
-- Table structure for workflow_pushapplication
-- ----------------------------
DROP TABLE IF EXISTS `workflow_pushapplication`;
CREATE TABLE `workflow_pushapplication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_pushapplication
-- ----------------------------

-- ----------------------------
-- Table structure for workflow_transition
-- ----------------------------
DROP TABLE IF EXISTS `workflow_transition`;
CREATE TABLE `workflow_transition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `condition` varchar(200) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `precondition` varchar(50) DEFAULT NULL,
  `input_id` int(11) NOT NULL,
  `output_id` int(11) NOT NULL,
  `process_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_transition_input_id_673bdca9_fk_workflow_activity_id` (`input_id`),
  KEY `workflow_transition_output_id_b45119a1_fk_workflow_activity_id` (`output_id`),
  KEY `workflow_transition_process_id_16496a8f_fk_workflow_process_id` (`process_id`),
  KEY `workflow_transition_precondition_2a38b8ff` (`precondition`),
  CONSTRAINT `workflow_transition_input_id_673bdca9_fk_workflow_activity_id` FOREIGN KEY (`input_id`) REFERENCES `workflow_activity` (`id`),
  CONSTRAINT `workflow_transition_output_id_b45119a1_fk_workflow_activity_id` FOREIGN KEY (`output_id`) REFERENCES `workflow_activity` (`id`),
  CONSTRAINT `workflow_transition_process_id_16496a8f_fk_workflow_process_id` FOREIGN KEY (`process_id`) REFERENCES `workflow_process` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_transition
-- ----------------------------

-- ----------------------------
-- Table structure for workflow_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `workflow_userprofile`;
CREATE TABLE `workflow_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `web_host` varchar(100) NOT NULL,
  `notified` tinyint(1) NOT NULL,
  `last_notif` datetime NOT NULL,
  `nb_wi_notif` int(11) NOT NULL,
  `notif_delay` int(11) NOT NULL,
  `urgent_priority` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `workflow_userprofile_user_id_fad216b8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_userprofile
-- ----------------------------
