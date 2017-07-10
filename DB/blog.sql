/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-07-10 14:20:18
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

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
INSERT INTO `auth_permission` VALUES ('19', 'Can add article classify', '7', 'add_articleclassify');
INSERT INTO `auth_permission` VALUES ('20', 'Can change article classify', '7', 'change_articleclassify');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete article classify', '7', 'delete_articleclassify');
INSERT INTO `auth_permission` VALUES ('22', 'Can add user message', '8', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('23', 'Can change user message', '8', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete user message', '8', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('25', 'Can add user', '9', 'add_user');
INSERT INTO `auth_permission` VALUES ('26', 'Can change user', '9', 'change_user');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete user', '9', 'delete_user');
INSERT INTO `auth_permission` VALUES ('28', 'Can add article', '10', 'add_article');
INSERT INTO `auth_permission` VALUES ('29', 'Can change article', '10', 'change_article');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete article', '10', 'delete_article');
INSERT INTO `auth_permission` VALUES ('31', 'Can add tag', '11', 'add_tag');
INSERT INTO `auth_permission` VALUES ('32', 'Can change tag', '11', 'change_tag');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete tag', '11', 'delete_tag');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$36000$d6fSeVfxT7PC$PoBNZSS5to/WwDdEl7vHAhzMrHyK2e1Vw9hg9Jf0+1c=', '2017-07-03 08:58:35.983000', '1', 'root', '', '', '', '1', '1', '2017-07-03 08:58:33.059000');

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
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `content` longtext NOT NULL,
  `browse` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `classify_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_article_author_id_905add38_fk_blog_user_id` (`author_id`),
  KEY `blog_article_classify_id_a1ec7d56_fk_blog_articleclassify_id` (`classify_id`),
  CONSTRAINT `blog_article_author_id_905add38_fk_blog_user_id` FOREIGN KEY (`author_id`) REFERENCES `blog_user` (`id`),
  CONSTRAINT `blog_article_classify_id_a1ec7d56_fk_blog_articleclassify_id` FOREIGN KEY (`classify_id`) REFERENCES `blog_articleclassify` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_article
-- ----------------------------
INSERT INTO `blog_article` VALUES ('1', 'django中models field详解', '1  null   默认为False，True则表示可以为null。（空字符串在数据库中可能被存储为\'\'）\r\n\r\n　　2  blank  默认为False，True表示可以为空。\r\n\r\n　　3  choice  可选的，限制了该选项的字段值必须是所指定的choice中的一个。\r\nView Code\r\n\r\n 　　4  db_column  数据库column名称。默认为本字段的名称。\r\n\r\n　　5  db_index  如果为True的话，该字段的数据库索引将会被创建\r\n\r\n　　6  default   设置该字段的默认值，可以是值也可以是对象。\r\n\r\n　　7  editable   默认为True，若为False，则不会在admin/界面显示\r\n\r\n　　8  primary_key  若设置为True，则表示将该字段设置为主键。一般情况下django默认会设置一个自增长的id主键。\r\n\r\n　　9  unique   若设置为True，该字段值不可重复', '0', '0', '2017-07-03 17:26:08.000000', '2017-07-03 17:26:05.000000', '1', '12');
INSERT INTO `blog_article` VALUES ('2', '可以哦', '阿斯兰的房间', '10', '0', '2017-07-04 14:16:39.000000', '2017-07-04 14:16:47.000000', '1', '12');
INSERT INTO `blog_article` VALUES ('3', '测试1', '测试水电费', '1000', '0', '2017-08-05 15:01:38.000000', '2017-08-05 15:01:50.000000', '1', '11');
INSERT INTO `blog_article` VALUES ('4', '测试2', '啥的', '200000', '0', '2015-07-05 15:02:21.000000', '2015-07-05 15:02:38.000000', '1', '10');

-- ----------------------------
-- Table structure for blog_articleclassify
-- ----------------------------
DROP TABLE IF EXISTS `blog_articleclassify`;
CREATE TABLE `blog_articleclassify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_articleclassify
-- ----------------------------
INSERT INTO `blog_articleclassify` VALUES ('1', '前端', '0');
INSERT INTO `blog_articleclassify` VALUES ('2', '后端', '0');
INSERT INTO `blog_articleclassify` VALUES ('3', 'React', '1');
INSERT INTO `blog_articleclassify` VALUES ('4', 'Router', '3');
INSERT INTO `blog_articleclassify` VALUES ('5', 'mobx', '3');
INSERT INTO `blog_articleclassify` VALUES ('6', 'vue', '0');
INSERT INTO `blog_articleclassify` VALUES ('7', 'angular', '0');
INSERT INTO `blog_articleclassify` VALUES ('8', 'jquery', '0');
INSERT INTO `blog_articleclassify` VALUES ('9', 'js', '0');
INSERT INTO `blog_articleclassify` VALUES ('10', 'css', '0');
INSERT INTO `blog_articleclassify` VALUES ('11', 'Python', '1');
INSERT INTO `blog_articleclassify` VALUES ('12', 'django', '11');

-- ----------------------------
-- Table structure for blog_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_article_tag`;
CREATE TABLE `blog_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_article_tag_article_id_tag_id_818e752b_uniq` (`article_id`,`tag_id`),
  KEY `blog_article_tag_tag_id_f2afe66b_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_article_tag_article_id_8db2395e_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_article_tag_tag_id_f2afe66b_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_article_tag
-- ----------------------------
INSERT INTO `blog_article_tag` VALUES ('5', '1', '2');
INSERT INTO `blog_article_tag` VALUES ('3', '1', '4');
INSERT INTO `blog_article_tag` VALUES ('6', '2', '8');
INSERT INTO `blog_article_tag` VALUES ('1', '3', '1');
INSERT INTO `blog_article_tag` VALUES ('7', '3', '2');
INSERT INTO `blog_article_tag` VALUES ('4', '3', '4');
INSERT INTO `blog_article_tag` VALUES ('2', '3', '8');

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------
INSERT INTO `blog_tag` VALUES ('1', 'angular');
INSERT INTO `blog_tag` VALUES ('2', 'vue');
INSERT INTO `blog_tag` VALUES ('3', 'react');
INSERT INTO `blog_tag` VALUES ('4', 'mobx');
INSERT INTO `blog_tag` VALUES ('5', 'jquery');
INSERT INTO `blog_tag` VALUES ('6', 'boostrap');
INSERT INTO `blog_tag` VALUES ('7', 'HTML');
INSERT INTO `blog_tag` VALUES ('8', 'Python');

-- ----------------------------
-- Table structure for blog_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `message_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_id` (`message_id`),
  CONSTRAINT `blog_user_message_id_b8349f49_fk_blog_usermessage_id` FOREIGN KEY (`message_id`) REFERENCES `blog_usermessage` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_user
-- ----------------------------
INSERT INTO `blog_user` VALUES ('1', '胡洁如', 'abc123456', '2017-07-03 17:09:45.000000', '2017-07-03 17:09:52.000000', '1');

-- ----------------------------
-- Table structure for blog_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `blog_usermessage`;
CREATE TABLE `blog_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `gender` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_usermessage
-- ----------------------------
INSERT INTO `blog_usermessage` VALUES ('1', '664109500@qq.com', '0');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2017-07-03 08:58:47.035000', '1', '前端', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2017-07-03 09:05:58.775000', '2', 'vue', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2017-07-03 09:06:05.051000', '3', 'react', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2017-07-03 09:06:10.975000', '4', 'mobx', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2017-07-03 09:06:18.687000', '5', 'jquery', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2017-07-03 09:06:26.500000', '6', 'boostrap', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2017-07-03 09:06:32.697000', '7', 'HTML', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2017-07-03 09:06:39.068000', '8', 'Python', '1', '[{\"added\": {}}]', '11', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('10', 'blog', 'article');
INSERT INTO `django_content_type` VALUES ('7', 'blog', 'articleclassify');
INSERT INTO `django_content_type` VALUES ('11', 'blog', 'tag');
INSERT INTO `django_content_type` VALUES ('9', 'blog', 'user');
INSERT INTO `django_content_type` VALUES ('8', 'blog', 'usermessage');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-07-03 08:56:14.391000');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-07-03 08:56:22.154000');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-07-03 08:56:24.051000');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-07-03 08:56:24.134000');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-07-03 08:56:25.072000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-07-03 08:56:26.274000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-07-03 08:56:27.152000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-07-03 08:56:27.228000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-07-03 08:56:27.857000');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-07-03 08:56:27.896000');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-07-03 08:56:27.975000');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2017-07-03 08:56:28.494000');
INSERT INTO `django_migrations` VALUES ('13', 'blog', '0001_initial', '2017-07-03 08:56:36.629000');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2017-07-03 08:56:37.169000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('7ie2ejteuo9tli1bvgu767vw59a5azrx', 'OTE2ODkwNGFkNzc2NTc1MWViYzYxMGRlNTVkMTlkMGUwNWY5YzVmYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjhjMDVmNTA2N2IwMjU5ZjkyODEwMTE5YjJmYTI0ZWE3ZmQ2MWVmMzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-07-17 08:58:36.018000');
