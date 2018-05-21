-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: mxonline
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can add group',3,'add_group'),(9,'Can change group',3,'change_group'),(10,'Can delete group',3,'delete_group'),(11,'Can view group',3,'view_group'),(12,'Can view permission',2,'view_permission'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add 用户信息',6,'add_userprofile'),(22,'Can change 用户信息',6,'change_userprofile'),(23,'Can delete 用户信息',6,'delete_userprofile'),(24,'Can add 轮播图',7,'add_banner'),(25,'Can change 轮播图',7,'change_banner'),(26,'Can delete 轮播图',7,'delete_banner'),(27,'Can add 邮箱验证码',8,'add_emailverifyrecord'),(28,'Can change 邮箱验证码',8,'change_emailverifyrecord'),(29,'Can delete 邮箱验证码',8,'delete_emailverifyrecord'),(30,'Can view 轮播图',7,'view_banner'),(31,'Can view 邮箱验证码',8,'view_emailverifyrecord'),(32,'Can view 用户信息',6,'view_userprofile'),(33,'Can add 课程',9,'add_course'),(34,'Can change 课程',9,'change_course'),(35,'Can delete 课程',9,'delete_course'),(36,'Can add 课程资源',10,'add_courseresource'),(37,'Can change 课程资源',10,'change_courseresource'),(38,'Can delete 课程资源',10,'delete_courseresource'),(39,'Can add 章节',11,'add_lesson'),(40,'Can change 章节',11,'change_lesson'),(41,'Can delete 章节',11,'delete_lesson'),(42,'Can add 视频',12,'add_vedio'),(43,'Can change 视频',12,'change_vedio'),(44,'Can delete 视频',12,'delete_vedio'),(45,'Can view 课程',9,'view_course'),(46,'Can view 课程资源',10,'view_courseresource'),(47,'Can view 章节',11,'view_lesson'),(48,'Can view 视频',12,'view_vedio'),(49,'Can add 城市',13,'add_citydict'),(50,'Can change 城市',13,'change_citydict'),(51,'Can delete 城市',13,'delete_citydict'),(52,'Can add 课程机构',14,'add_courseorg'),(53,'Can change 课程机构',14,'change_courseorg'),(54,'Can delete 课程机构',14,'delete_courseorg'),(55,'Can add 教师',15,'add_teacher'),(56,'Can change 教师',15,'change_teacher'),(57,'Can delete 教师',15,'delete_teacher'),(58,'Can view 城市',13,'view_citydict'),(59,'Can view 课程机构',14,'view_courseorg'),(60,'Can view 教师',15,'view_teacher'),(61,'Can add 课程评论',16,'add_coursccomments'),(62,'Can change 课程评论',16,'change_coursccomments'),(63,'Can delete 课程评论',16,'delete_coursccomments'),(64,'Can add 用户咨询',17,'add_userask'),(65,'Can change 用户咨询',17,'change_userask'),(66,'Can delete 用户咨询',17,'delete_userask'),(67,'Can add 用户课程',18,'add_usercourse'),(68,'Can change 用户课程',18,'change_usercourse'),(69,'Can delete 用户课程',18,'delete_usercourse'),(70,'Can add 用户收藏',19,'add_userfavorate'),(71,'Can change 用户收藏',19,'change_userfavorate'),(72,'Can delete 用户收藏',19,'delete_userfavorate'),(73,'Can add 用户消息',20,'add_usermessage'),(74,'Can change 用户消息',20,'change_usermessage'),(75,'Can delete 用户消息',20,'delete_usermessage'),(76,'Can view 课程评论',16,'view_coursccomments'),(77,'Can view 用户咨询',17,'view_userask'),(78,'Can view 用户课程',18,'view_usercourse'),(79,'Can view 用户收藏',19,'view_userfavorate'),(80,'Can view 用户消息',20,'view_usermessage'),(81,'Can add Bookmark',21,'add_bookmark'),(82,'Can change Bookmark',21,'change_bookmark'),(83,'Can delete Bookmark',21,'delete_bookmark'),(84,'Can add User Setting',22,'add_usersettings'),(85,'Can change User Setting',22,'change_usersettings'),(86,'Can delete User Setting',22,'delete_usersettings'),(87,'Can add User Widget',23,'add_userwidget'),(88,'Can change User Widget',23,'change_userwidget'),(89,'Can delete User Widget',23,'delete_userwidget'),(90,'Can add log entry',24,'add_log'),(91,'Can change log entry',24,'change_log'),(92,'Can delete log entry',24,'delete_log'),(93,'Can view Bookmark',21,'view_bookmark'),(94,'Can view log entry',24,'view_log'),(95,'Can view User Setting',22,'view_usersettings'),(96,'Can view User Widget',23,'view_userwidget'),(97,'Can add captcha store',25,'add_captchastore'),(98,'Can change captcha store',25,'change_captchastore'),(99,'Can delete captcha store',25,'delete_captchastore'),(100,'Can view captcha store',25,'view_captchastore'),(101,'Can view 课程评论',16,'view_coursecomments'),(102,'Can add 课程评论',16,'add_coursecomments'),(103,'Can change 课程评论',16,'change_coursecomments'),(104,'Can delete 课程评论',16,'delete_coursecomments'),(105,'Can view 视频',12,'view_video'),(106,'Can add 视频',12,'add_video'),(107,'Can change 视频',12,'change_video'),(108,'Can delete 视频',12,'delete_video');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (6,'SDDA','sdda','123bdaea2de6d1e9672c6cf1db9e56c30d0aae97','2017-09-06 17:05:58.603865'),(7,'OFTH','ofth','9d3c03114365989d15e9ae36b06a8ac6c5890840','2017-09-06 17:09:21.295855'),(8,'YLZG','ylzg','05a1f9d6ba935e98e52dec642670df9dc2984b0b','2017-09-18 14:57:12.816023');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course`
--

DROP TABLE IF EXISTS `courses_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `desc` longtext NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_say` varchar(300) NOT NULL,
  `you_need_know` varchar(1000) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_course_org_id_4d2c4aab_fk_organizat` (`course_org_id`),
  KEY `courses_course_teacher_id_846fa526_fk_organization_teacher_id` (`teacher_id`),
  CONSTRAINT `courses_course_course_org_id_4d2c4aab_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
INSERT INTO `courses_course` VALUES (1,'Python基础','Python基础','要闻18℃昆明\r\n习近平：内蒙古各族干部群众要守望相助	治国理政 新华网评：强军兴军迈出历史性步伐俞正声听取内蒙古自治区工作汇报	观看晚会	专题 四川九寨沟县发生7级地震：强烈震感持续十几秒\r\n军队集结：四川省军区和武警部队做好救灾准备辟谣：九寨沟地震部分谣言网上流传 不信谣不传谣王毅：日本2017版《防卫白皮书》老调重弹超级杯-2:45视频直播皇马vs曼联 穆帅战旧主','zj',3443,2,32,'course/2017/08/07年度全球最性感女郎26.jpg',5542,'2017-08-08 23:50:00.000000',1,'后端开发',1,'学习改变命运','人要没决心，一事无成！',1),(2,'JAVA基础','要闻18℃昆明 习近平：内蒙古各族干部群众要守望相助	治国理政 新华网评：强军兴军迈出历史性步伐俞正声听取内蒙古自治区工作汇报	观看晚会	专题 四川九寨沟县发生7级地震：强烈震感持续十几秒 军队集结：四川省军区和武警部队做好救灾准备辟谣：九寨沟地震部分谣言网上流传 不信谣不传谣王毅：日本2017版《防卫白皮书》老调重弹超级杯-2:45视频直播皇马vs曼联 穆帅战旧主','习近平：内蒙古各族干部群众要守望相助	治国理政 新华网评：强军兴军迈出历史性步伐俞正声听取内蒙古自治区工作汇报	观看晚会	专题 四川九寨沟县发生7级地震：强烈震感持续十几秒\r\n军队集结：四川省军区和武警部队做好救灾准备辟谣：九寨沟地震部分谣言网上流传 不信谣不传谣王毅：日本2017版《防卫白皮书》老调重弹超级杯-2:45视频直播皇马vs曼联 穆帅战旧主要闻18℃昆明\r\n习近平：内蒙古各族干部群众要守望相助	治国理政 新华网评：强军兴军迈出历史性步伐俞正声听取内蒙古自治区工作汇报	观看晚会	专题 四川九寨沟县发生7级地震：强烈震感持续十几秒\r\n军队集结：四川省军区和武警部队做好救灾准备辟谣：九寨沟地震部分谣言网上流传 不信谣不传谣王毅：日本2017版《防卫白皮书》老调重弹超级杯-2:45视频直播皇马vs曼联 穆帅战旧主','cj',6665,0,566,'course/2017/08/07年度全球最性感女郎36.jpg',5701,'2017-08-08 23:51:00.000000',2,'后端开发',2,'学习改变命运','人要没决心，一事无成！',1),(3,'C基础课程','C基础课程','警部队做好救灾准备辟谣：九寨沟地震部分谣言网上流传 不信谣不传谣王毅：日本2017版《防卫白皮书》老调重弹超级杯-2:45视频直播皇马vs曼联 穆帅战旧主 直击九寨沟地震现场：酒店群众跑到户外避险 直击九寨沟地震现场：酒店群众跑到户外避险4名男子着日军制服合影 四行仓库抗战纪念馆回应招行驳乐视：你发不出工资 跟我有啥关系根据BMI，孙杨居然超重？判断胖瘦，这些方法更好北大清华校园游乱象：伪造公章混校园 导游讲解编造信息女儿美国捧杯 刘国梁跪地“献吻”','zj',67567,0,5675,'course/2017/08/026.JPG',671,'2017-08-08 23:51:00.000000',3,'后端开发',3,'学习改变命运','人要没决心，一事无成！',0),(4,'Linux高级教程','蒙古各族干部群众要守望相助	治国理政 新华网评：强军兴军迈出历史性步伐俞正声听取内蒙古自治区工作汇报	观看晚会	专题 四川九寨沟县发生7级地震：强烈震感持续十几秒 军队集结：四川省军区和武警部队做好救灾准备辟谣：九寨沟地震部分谣言网上流传 不信谣不传谣王毅：日本2017版《防卫白皮书》老调重弹超级杯-2:45视频直播皇马vs曼联 穆帅战旧主 直击九寨沟地震现场：酒店群众跑','寨沟地震现场：酒店群众跑到户外避险4名男子着日军制服合影 四行仓库抗战纪念馆回应招行驳乐视：你发不出工资 跟我有啥关系根据BMI，孙杨居然超重？判断胖瘦，这些方法更好北大清华校园游乱象：伪造公章混校园 导游讲解编造信息女儿美国捧杯 刘国梁跪地“献吻”要闻18℃昆明\r\n习近平：内蒙古各族干部群众要守望相助	治国理政 新华网评：强军兴军迈出历史性步伐俞正声听取内蒙古自治区工作汇报	观看晚会	专题 四川九寨沟县发生7级地震：强烈震感持续十几秒\r\n军队集结：四川省军区和武警部队做好救灾准备辟谣：九寨沟地震部分谣言网上流传 不信谣不传谣王毅：日本2017版《防卫白皮书》老调重弹超级杯-2:45视频直播皇马vs曼联 穆帅战旧主 直击九寨沟地震现场：酒店群众跑到户外避险 直击九','zj',6776,0,4656,'course/2017/08/寂寞少妇的渴望03.JPG',7567,'2017-08-08 23:52:00.000000',9,'后端开发',2,'学习改变命运','人要没决心，一事无成！',0),(5,'WIN10开发者指南','蒙古各族干部群众要守望相助	治国理政 新华网评：强军兴军迈出历史性步伐俞正声听取内蒙古自治区工作汇报	观看晚会	专题 四川九寨沟县发生7级地震：强烈震感持续十几秒 军队集结：四川省军区和武警部队做好救灾准备辟谣：九寨沟地震部分谣言网上流传 不信谣不传谣王毅：日本2017版《防卫白皮书》老调重弹超级杯-2:45视频直播皇马vs曼联 穆帅战旧主 直击九寨沟地震现场：酒店群众跑','要闻18℃昆明\r\n习近平：内蒙古各族干部群众要守望相助	治国理政 新华网评：强军兴军迈出历史性步伐俞正声听取内蒙古自治区工作汇报	观看晚会	专题 四川九寨沟县发生7级地震：强烈震感持续十几秒\r\n军队集结：四川省军区和武警部队做好救灾准备辟谣：九寨沟地震部分谣言网上流传 不信谣不传谣王毅：日本2017版《防卫白皮书》老调重弹超级杯-2:45视频直播皇马vs曼联 穆帅战旧主 直击九寨沟地震现场：酒店群众跑到户外避险 直击九','gj',31221,0,3123,'course/2017/08/清醇漂亮22.JPG',34549,'2017-08-08 23:53:00.000000',4,'后端开发',1,'学习改变命运','人要没决心，一事无成！',0),(6,'hadoop基础','hadoop基础','hadoop基础hadoop基础hadoop基础hadoop基础hadoop基础','gj',234,0,0,'course/2017/09/清秀女骑手05.JPG',0,'2017-09-13 14:34:00.000000',10,'后端开发',1,'学习改变命运','人要没决心，一事无成！',0);
/*!40000 ALTER TABLE `courses_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_courseresource`
--

DROP TABLE IF EXISTS `courses_courseresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_courseresource`
--

LOCK TABLES `courses_courseresource` WRITE;
/*!40000 ALTER TABLE `courses_courseresource` DISABLE KEYS */;
INSERT INTO `courses_courseresource` VALUES (1,'eclipse安装包','course/resource/2017/08/eclipse-inst-win64.exe','2017-08-29 18:00:00.000000',2),(2,'xshell安装包','course/resource/2017/08/Xshell5.exe','2017-08-29 18:01:00.000000',2);
/*!40000 ALTER TABLE `courses_courseresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_lesson`
--

DROP TABLE IF EXISTS `courses_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_lesson`
--

LOCK TABLES `courses_lesson` WRITE;
/*!40000 ALTER TABLE `courses_lesson` DISABLE KEYS */;
INSERT INTO `courses_lesson` VALUES (1,'第一章 基础','2017-08-29 16:24:00.000000',2),(2,'第二章 入门','2017-08-29 16:25:00.000000',2),(3,'第三章 进阶','2017-08-29 16:25:00.000000',2),(4,'第四章 高级','2017-08-29 16:25:00.000000',2),(5,'第五章 实战','2017-08-29 16:25:00.000000',2),(6,'第六章 终级','2017-08-29 16:25:00.000000',2),(7,'第七章 脱坑','2017-08-29 16:26:00.000000',2);
/*!40000 ALTER TABLE `courses_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_video`
--

DROP TABLE IF EXISTS `courses_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_vedio_lession_id_31da8f86_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_video`
--

LOCK TABLES `courses_video` WRITE;
/*!40000 ALTER TABLE `courses_video` DISABLE KEYS */;
INSERT INTO `courses_video` VALUES (1,'1.1 学前必读','2017-08-29 17:51:00.000000',1,'http://ovsfoamyq.bkt.clouddn.com/%E9%9A%BE%E5%BF%B5%E7%9A%84%E7%BB%8F%20-%E7%BE%A4%E6%98%9F.mp3'),(2,'python介绍','2017-08-29 17:51:00.000000',1,'http://ovsfoamyq.bkt.clouddn.com/1-1.mp4'),(3,'python安装','2017-08-29 17:52:00.000000',1,'https://ke.qq.com/webcourse/index.html#course_id=51345&term_id=100036259&taid=1434476127242385&vid=x14198jfh8x'),(4,'python数据类型','2017-08-29 17:52:00.000000',1,'https://ke.qq.com/webcourse/index.html#course_id=51345&term_id=100036259&taid=1434476127242385&vid=x14198jfh8x');
/*!40000 ALTER TABLE `courses_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(25,'captcha','captchastore'),(4,'contenttypes','contenttype'),(9,'courses','course'),(10,'courses','courseresource'),(11,'courses','lesson'),(12,'courses','video'),(16,'operation','coursecomments'),(17,'operation','userask'),(18,'operation','usercourse'),(19,'operation','userfavorate'),(20,'operation','usermessage'),(13,'organization','citydict'),(14,'organization','courseorg'),(15,'organization','teacher'),(5,'sessions','session'),(7,'users','banner'),(8,'users','emailverifyrecord'),(6,'users','userprofile'),(21,'xadmin','bookmark'),(24,'xadmin','log'),(22,'xadmin','usersettings'),(23,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-08-03 22:49:31.119687'),(2,'contenttypes','0002_remove_content_type_name','2017-08-03 22:49:31.300141'),(3,'auth','0001_initial','2017-08-03 22:49:31.886699'),(4,'auth','0002_alter_permission_name_max_length','2017-08-03 22:49:31.989974'),(5,'auth','0003_alter_user_email_max_length','2017-08-03 22:49:32.003011'),(6,'auth','0004_alter_user_username_opts','2017-08-03 22:49:32.014039'),(7,'auth','0005_alter_user_last_login_null','2017-08-03 22:49:32.026104'),(8,'auth','0006_require_contenttypes_0002','2017-08-03 22:49:32.033121'),(9,'auth','0007_alter_validators_add_error_messages','2017-08-03 22:49:32.044120'),(10,'users','0001_initial','2017-08-03 22:49:32.885360'),(11,'admin','0001_initial','2017-08-03 22:49:33.145049'),(12,'admin','0002_logentry_remove_auto_add','2017-08-03 22:49:33.165102'),(13,'auth','0008_alter_user_username_max_length','2017-08-03 22:49:33.187161'),(14,'captcha','0001_initial','2017-08-03 22:49:33.324525'),(15,'organization','0001_initial','2017-08-03 22:49:33.701530'),(16,'organization','0002_courseorg_category','2017-08-03 22:49:33.804802'),(17,'organization','0003_auto_20170728_0001','2017-08-03 22:49:34.329200'),(18,'organization','0004_auto_20170730_2036','2017-08-03 22:49:34.344239'),(19,'courses','0001_initial','2017-08-03 22:49:34.881668'),(20,'courses','0002_course_course_org','2017-08-03 22:49:35.090225'),(21,'operation','0001_initial','2017-08-03 22:49:36.056826'),(22,'organization','0005_teacher_img','2017-08-03 22:49:36.165114'),(23,'sessions','0001_initial','2017-08-03 22:49:36.331526'),(24,'users','0002_auto_20170803_2249','2017-08-03 22:49:36.455891'),(25,'xadmin','0001_initial','2017-08-03 22:49:37.105620'),(26,'xadmin','0002_log','2017-08-03 22:49:37.469558'),(27,'xadmin','0003_auto_20160715_0100','2017-08-03 22:49:37.605919'),(28,'operation','0002_auto_20170829_1045','2017-08-29 11:07:02.354285'),(29,'courses','0002_remove_course_category','2017-08-29 11:08:57.802607'),(30,'courses','0003_course_category','2017-08-29 11:08:57.814643'),(31,'courses','0004_remove_course_category','2017-08-29 11:09:38.301413'),(32,'courses','0005_course_category','2017-08-29 11:10:02.234056'),(33,'courses','0006_auto_20170829_1111','2017-08-29 11:11:48.719148'),(34,'courses','0007_lesson_url','2017-08-29 16:28:03.150221'),(35,'courses','0008_auto_20170829_1712','2017-08-29 17:12:57.170434'),(36,'courses','0009_course_teacher','2017-08-29 18:16:27.201361'),(37,'courses','0010_auto_20170829_1819','2017-08-29 18:19:14.923090'),(38,'operation','0003_auto_20170904_1413','2017-09-04 14:14:02.743092'),(39,'courses','0011_auto_20170905_1421','2017-09-05 14:21:28.314642'),(40,'courses','0012_auto_20170905_1428','2017-09-05 14:28:44.493418'),(41,'organization','0002_teacher_age','2017-09-05 15:53:05.375394'),(42,'organization','0003_teacher_level','2017-09-05 16:14:51.180197'),(43,'organization','0004_auto_20170905_1736','2017-09-05 17:36:26.918148'),(44,'organization','0005_auto_20170905_1737','2017-09-05 17:37:47.562194'),(45,'organization','0006_auto_20170905_1754','2017-09-05 17:54:51.360996'),(46,'operation','0004_usersignup','2017-09-06 09:48:51.625883'),(47,'operation','0005_auto_20170906_0948','2017-09-06 09:48:51.950747'),(48,'users','0002_auto_20170907_1059','2017-09-07 10:59:23.666031'),(49,'courses','0013_course_is_banner','2017-09-12 14:19:19.018330'),(50,'courses','0014_auto_20170918_1434','2017-09-18 14:34:43.736249');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1ga1nk160ayoax9dd6v2pk5o8snp7rpq','NmJiNjdlMGY0MzVlOTkyMjZlZTI4MDUzZDhmNGI1YjI5NzEyYTE5ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjJlZWMxZjhhNzcyNDhhZGJkMTVjNzc5MmNjNTU0MzczYTVlOThiMmUifQ==','2017-09-04 16:43:06.071875'),('6blefnfswqvm471uhez10iqucllruw96','ZDA2OGE5YmFjNWM0YTZjNTM1NWVhYTlkOGE1MGI0Yzg5ZTAxYjhiMzp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTk3NTA5NDkxMDk0NjBkMmE2ZjU1YzE3MjFkMzRkMjllZGFiNDEwIn0=','2017-10-02 14:55:26.781028'),('7tth8651u08hwqhetsiurbtx8zbvxygr','ZWVhOWVmOWI1YzVkMWU0YmQwMDQwZTVlODgwNmU1Y2UyNjU2YWFjZjp7fQ==','2017-10-02 14:52:21.101117'),('cc0zypo9uwry7ph5phfuhzbbbtfynl1q','Nzk4YjdhYzBmZTE4ZTE1MmJlOWIzN2I2OTg4NjRmNmJmZTRkNTM4Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjJlZWMxZjhhNzcyNDhhZGJkMTVjNzc5MmNjNTU0MzczYTVlOThiMmUiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJ0ZWFjaGVyIl0sIiJdfQ==','2017-08-18 20:27:04.849802'),('t5k5pau8qv6teqrq9rblkrnrpjfn1nyn','ZWVhOWVmOWI1YzVkMWU0YmQwMDQwZTVlODgwNmU1Y2UyNjU2YWFjZjp7fQ==','2017-10-02 14:52:32.923847'),('w7ivtj07m1wdtmsq8gmjwejhsmyde9y4','NGQ4NzA1Mzk2ODQ2MzMyYTJiMWM0OWYwMjA2M2M0Nzg5NDdiNzEyYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImM3ODVjYWI2ZTYzNjk2YTA4NDg2NTJkNmI3Y2M4MzZiZjA4MmU2NTUiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJuYXZfbWVudSI6Ilt7XCJ0aXRsZVwiOiBcIlx1NjRjZFx1NGY1Y1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NTRhOFx1OGJlMlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJhc2svXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE0fSwge1widGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThiYzRcdThiYmFcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi9jb3Vyc2Vjb21tZW50cy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTV9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NjUzNlx1ODVjZlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJmYXZvcmF0ZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTZ9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NmQ4OFx1NjA2ZlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJtZXNzYWdlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxN30sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU4YmZlXHU3YTBiXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmNvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTh9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wifSwge1widGl0bGVcIjogXCJcdTY3M2FcdTY3ODRcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTU3Y2VcdTVlMDJcIiwgXCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jaXR5ZGljdC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTF9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NjczYVx1Njc4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NvdXJzZW9yZy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NjU1OVx1NWUwOFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL3RlYWNoZXIvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEzfV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY2l0eWRpY3QvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTkwYWVcdTdiYjFcdTlhOGNcdThiYzFcdTc4MDFcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2VtYWlsdmVyaWZ5cmVjb3JkL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA1fSwge1widGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdTU2ZmVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2Jhbm5lci9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogNn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS11c2VyXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIn0sIHtcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCIsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAyMH1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1N2VjNFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9jb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1N2FlMFx1ODI4MlwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9sZXNzb24vXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDh9LCB7XCJ0aXRsZVwiOiBcIlx1ODljNlx1OTg5MVwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy92aWRlby9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4ZDQ0XHU2ZTkwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZXJlc291cmNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMH1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vY291cnNlcy9jb3Vyc2UvXCJ9XSJ9','2017-10-02 14:37:04.281826');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_coursecomments`
--

DROP TABLE IF EXISTS `operation_coursecomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursccomments_course_id_edce6e39_fk_courses_course_id` (`course_id`),
  KEY `operation_coursccomm_user_id_b7e77307_fk_users_use` (`user_id`),
  CONSTRAINT `operation_coursccomm_user_id_b7e77307_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursccomments_course_id_edce6e39_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_coursecomments`
--

LOCK TABLES `operation_coursecomments` WRITE;
/*!40000 ALTER TABLE `operation_coursecomments` DISABLE KEYS */;
INSERT INTO `operation_coursecomments` VALUES (1,'呵呵哒','2017-09-04 11:52:14.000000',2,1),(2,'讲得很不错','2017-09-04 15:00:33.278026',2,1),(3,'good','2017-09-04 15:58:27.722236',1,1),(4,'还行还行，不错','2017-09-04 17:21:55.215325',3,3);
/*!40000 ALTER TABLE `operation_coursecomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userask`
--

DROP TABLE IF EXISTS `operation_userask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userask`
--

LOCK TABLES `operation_userask` WRITE;
/*!40000 ALTER TABLE `operation_userask` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation_userask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usercourse`
--

DROP TABLE IF EXISTS `operation_usercourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usercourse`
--

LOCK TABLES `operation_usercourse` WRITE;
/*!40000 ALTER TABLE `operation_usercourse` DISABLE KEYS */;
INSERT INTO `operation_usercourse` VALUES (1,'2017-08-22 17:02:00.000000',1,2),(2,'2017-08-22 17:03:00.000000',2,2),(3,'2017-08-22 17:03:00.000000',4,2),(4,'2017-08-22 17:03:00.000000',3,1),(6,'2017-09-04 17:03:03.678640',2,3),(7,'2017-09-04 17:11:39.398579',1,3),(8,'2017-09-04 17:17:50.043198',3,3),(9,'2017-09-04 17:18:00.226264',5,3),(13,'2017-09-06 09:59:32.017219',1,1),(14,'2017-09-06 10:00:02.103925',2,1);
/*!40000 ALTER TABLE `operation_usercourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userfavorate`
--

DROP TABLE IF EXISTS `operation_userfavorate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_userfavorate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorate_user_id_38565717_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorate_user_id_38565717_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userfavorate`
--

LOCK TABLES `operation_userfavorate` WRITE;
/*!40000 ALTER TABLE `operation_userfavorate` DISABLE KEYS */;
INSERT INTO `operation_userfavorate` VALUES (28,2,2,'2017-09-06 10:06:16.414184',1),(29,4,2,'2017-09-06 10:08:13.758911',1),(31,1,3,'2017-09-06 10:17:03.191459',1),(33,2,1,'2017-09-07 16:35:24.440294',10),(38,1,2,'2017-09-08 15:12:11.491140',10),(39,1,3,'2017-09-12 12:05:30.625305',10),(40,5,3,'2017-09-12 12:05:47.265553',10),(41,9,2,'2017-09-12 12:15:12.220753',1);
/*!40000 ALTER TABLE `operation_userfavorate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usermessage`
--

DROP TABLE IF EXISTS `operation_usermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(400) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usermessage`
--

LOCK TABLES `operation_usermessage` WRITE;
/*!40000 ALTER TABLE `operation_usermessage` DISABLE KEYS */;
INSERT INTO `operation_usermessage` VALUES (1,10,'你好',1,'2017-09-11 09:58:11.000000'),(2,10,' 欢迎首次登录',1,'2017-09-11 09:58:49.000000'),(3,10,'呵呵哒',1,'2017-09-11 09:59:13.000000');
/*!40000 ALTER TABLE `operation_usermessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_citydict`
--

DROP TABLE IF EXISTS `organization_citydict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `desc` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_citydict`
--

LOCK TABLES `organization_citydict` WRITE;
/*!40000 ALTER TABLE `organization_citydict` DISABLE KEYS */;
INSERT INTO `organization_citydict` VALUES (1,'北京','北京','2017-08-04 20:13:00.000000'),(2,'上海','上海','2017-08-04 20:13:00.000000'),(3,'深圳','深圳','2017-08-04 20:13:00.000000'),(4,'武汉','武汉','2017-08-04 20:13:00.000000'),(5,'成都','成都','2017-08-04 20:14:00.000000');
/*!40000 ALTER TABLE `organization_citydict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_courseorg`
--

DROP TABLE IF EXISTS `organization_courseorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(4) NOT NULL,
  `courses` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseo_city_id_4a842f85_fk_organizat` (`city_id`),
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_courseorg`
--

LOCK TABLES `organization_courseorg` WRITE;
/*!40000 ALTER TABLE `organization_courseorg` DISABLE KEYS */;
INSERT INTO `organization_courseorg` VALUES (1,'Pthon之家','要闻 习近平治国理政的“立与破”三大关键词解码习近平的强军策人民日报：不断开辟中国特色社会主义发展新境界',2365,1,'org/2017/08/004.JPG','北京','2017-08-04 20:14:00.000000',1,'pxjg',344,4455),(2,'Java之家','国产航母将提前开始系泊试验 专家：服役或需2年西藏军区某旅进行多炮种跨昼夜实弹射击演练油价两连涨 明起加一箱油多花7元',3446,2,'org/2017/08/07年度全球最性感女郎02.jpg','上海','2017-08-04 20:15:00.000000',2,'pxjg',776,45667),(3,'C++之家','三大关键词解码习近平的强军策 人民日报：不断开辟中国特色社会主义发展新境界',67788,0,'org/2017/08/07年度全球最性感女郎16.jpg','五环外','2017-08-04 20:15:00.000000',3,'gr',55,556),(4,'win10之家','油价两连涨 明起加一箱油多花7元  女子被狗咬伤打疫苗后死亡 当地卫计委：疫苗没问题',44343,1,'org/2017/08/07年度全球最性感女郎21.jpg','三环内','2017-08-04 20:16:00.000000',4,'gx',454,5666),(5,'MAC之家','要闻 习近平治国理政的“立与破”三大关键词解码习近平的强军策人民日报：不断开辟中国特色社会主义发展新境界日本蛙人抵近侦察吉布提港中国军舰？国防部回应 国产航母将提前开始系泊试验 专家：服役或需2年西藏',4434,0,'org/2017/08/7fd10b621ee96350f887d3449fcf2c53.JPG','内环','2017-08-04 20:17:00.000000',5,'gr',666,55454),(6,'IT之家','中信股份收购麦当劳中国业务 估值160亿港元马蓉被曝投资1500万带孩子移民 已通过初步审核腾讯体育全平台视频直播法甲 看内马尔首秀乐视大厦现高人：收费帮债主联系贾跃亭河北传销组织在饭店聚会 600警',33334,0,'org/2017/08/当之无愧_清醇妹妹04.JPG','呵呵达','2017-08-04 20:18:00.000000',1,'gx',43343,466655),(7,'音乐天堂','辽宁岫岩遭强降雨人员被困 多个村庄失联  辽宁舰原舰长张峥、原政委梅文双双晋升少将军衔  辽宁省委原书记王珉被判处无期徒刑 并没收全部财产  中信股份收购麦当劳中国业务 估值160亿港元  马蓉被曝投',45454,0,'org/2017/08/012.JPG','二环外','2017-08-04 20:18:00.000000',2,'gr',5354,43343),(8,'数据库之家','西藏军区某旅进行多炮种跨昼夜实弹射击演练  时政新闻央视新闻客户端2017-08-04 14:12分享 686评论 收藏 [摘要]远程火力打击刚结束，加榴炮分队就采用齐射、急促射等多种打击方式，对正面',43434,0,'org/2017/08/白嫩美女一抹黛06.JPG','一环','2017-08-04 20:20:00.000000',3,'gx',434,23232),(9,'Linux之家','兵分队，跨昼夜进行多弹种、多引信精确打击不同类型目标的实兵实弹演练，全方位锤炼部队全域火力打击能力。  演练在凌晨4点开始，气温也在0度以下。远火分队迅速占领阵地，装填弹药，完成射击前准备。天刚亮，射',34358,1,'org/2017/08/美少女撩开衣襟的瞬间魅力02.JPG','五环内','2017-08-04 20:21:00.000000',5,'pxjg',65656,454546),(10,'Hadoop之家','演练中，远火分队需要连续射击多种弹种对模拟装甲集群、导弹发射架、指挥所等不同种类的目标进行精确打击摧毁，并跟踪采集远火打击毁伤效能，这考验了官兵远程火力打击压制的能力。  与此同时，加榴炮分队异地组织',32334,0,'org/2017/09/7fd10b621ee96350f887d3449fcf2c53.JPG','三环外','2017-08-04 20:22:00.000000',4,'pxjg',1,5454554);
/*!40000 ALTER TABLE `organization_courseorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_teacher`
--

DROP TABLE IF EXISTS `organization_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(40) NOT NULL,
  `work_position` varchar(40) NOT NULL,
  `points` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `level` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teacher_org_id_cd000a1a_fk_organizat` (`org_id`),
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_teacher`
--

LOCK TABLES `organization_teacher` WRITE;
/*!40000 ALTER TABLE `organization_teacher` DISABLE KEYS */;
INSERT INTO `organization_teacher` VALUES (1,'杜老师',5,'武汉亿阳','工程师','什么都会点',878686,667,'2017-08-04 20:23:00.000000',1,'teacher/2017/08/奔放的妹妹08.JPG',30,'JPJS'),(2,'李老师',5,'湖北XXX','XXXXX','FFFFFF',3424324,432,'2017-08-04 20:24:00.000000',3,'teacher/2017/08/020.JPG',30,'YPJS'),(3,'果老师',1,'GGFSSFG','FADSFDASF','FASFDSFDASFSAFDDS',111222,23423,'2017-08-04 20:25:00.000000',4,'teacher/2017/08/清纯美少女09.JPG',30,'TPJS'),(4,'陈老师',5,'GAGFFSAF','GAFGASGFA','GFGDGFSDSDHSD',455335,32,'2017-08-04 20:25:00.000000',8,'teacher/2017/08/清纯唯美13.JPG',30,'YPJS'),(5,'JIM-DU',7,'FSDSAFASGSAG','FADGASGGERTT','ASGASVASDFZG',6546,5436,'2017-08-04 20:26:00.000000',10,'teacher/2017/08/柔媚惊艳写真刘羽琦04.JPG',30,'JPJS');
/*!40000 ALTER TABLE `organization_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_banner`
--

DROP TABLE IF EXISTS `users_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_banner`
--

LOCK TABLES `users_banner` WRITE;
/*!40000 ALTER TABLE `users_banner` DISABLE KEYS */;
INSERT INTO `users_banner` VALUES (1,'1','banner/2017/09/內地新出道清純美女大賞33.JPG','http://www.baidu.com',22,'2017-09-12 14:20:00.000000'),(2,'2','banner/2017/09/迷人风韵02.JPG','http://www.baidu.com',44,'2017-09-12 14:20:00.000000'),(3,'3','banner/2017/09/清醇漂亮67.JPG','http://www.baidu.com',33,'2017-09-12 14:21:00.000000'),(4,'4','banner/2017/09/野性十足的跆拳道妹妹16.JPG','http://www.baidu.com',100,'2017-09-12 14:21:00.000000'),(5,'5','banner/2017/09/究极美少女02.JPG','http://www.baidu.com',32,'2017-09-12 14:21:00.000000');
/*!40000 ALTER TABLE `users_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_emailverifyrecord`
--

DROP TABLE IF EXISTS `users_emailverifyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(15) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_emailverifyrecord`
--

LOCK TABLES `users_emailverifyrecord` WRITE;
/*!40000 ALTER TABLE `users_emailverifyrecord` DISABLE KEYS */;
INSERT INTO `users_emailverifyrecord` VALUES (1,'X6zU2QcW3K','860435288@qq.com','register','2017-09-06 16:51:38.047377'),(2,'54OB','860435288@qq.com','changeemail','2017-09-07 11:51:46.833487'),(3,'81cA','5555@11.com','changeemail','2017-09-07 12:02:23.777375'),(4,'7y0Z','860435288@qq.com','changeemail','2017-09-07 12:05:08.232972');
/*!40000 ALTER TABLE `users_emailverifyrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile` (
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
  `nick_name` varchar(50) NOT NULL,
  `birday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(80) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (1,'pbkdf2_sha256$36000$JX9qzGPhUOGH$fOZ4ofvLlD12sr77oPUxMq9vLDpl2NUaCi9U5OBy+Xk=','2017-09-12 14:19:53.798341',1,'duqing','','','88888888@email.com',1,1,'2017-08-04 20:12:00.000000','杜',NULL,'male','武汉',NULL,'image/2017/09/058.JPG'),(2,'pbkdf2_sha256$36000$FIvjoUumpWKh$AbHKbd2TT9LrjtGARYV+xcbXPXomzzAPd1qhZdiFzWM=',NULL,0,'李凡','','','',0,1,'2017-08-22 16:55:00.000000','凡凡凡',NULL,'female','武汉',NULL,'image/2017/08/07年度全球最性感女郎14.jpg'),(3,'pbkdf2_sha256$36000$AS3gjTHnwO9L$46ih0KGPVKuHiCoUuUv5rkQPAE55MUB0q1k06vVoxck=','2017-09-06 16:35:05.865216',0,'guoguo','','','',0,1,'2017-09-04 16:58:00.000000','杜果果',NULL,'male','武汉',NULL,'image/2017/09/07年度全球最性感女郎09.jpg'),(4,'pbkdf2_sha256$36000$BisACNqd0Hc5$H5Y454ZgCZz3zWzQfnTVO7lIgJ3pip14wCavUjtLbC4=',NULL,0,'heheda','','','',0,1,'2017-09-04 16:58:52.523369','',NULL,'male','',NULL,'image/default.png'),(5,'pbkdf2_sha256$36000$BePvuPkPbgeY$jFRioJe/6fX69m3sVsbOkYFarOz2BFc+1y630kZL81E=',NULL,0,'root','','','',0,1,'2017-09-04 16:59:00.479938','',NULL,'male','',NULL,'image/default.png'),(10,'pbkdf2_sha256$36000$NkNbC0R89Oqf$Mq9M4bMtEo1Lx8Gim4TtUox1wEocqKp6gWb7+U7aObU=','2017-09-18 14:55:39.523148',0,'860435288@qq.com','','','860435288@qq.com',0,1,'2017-09-06 16:51:38.473926','杜庆','1989-04-09','male','武汉',NULL,'image/2017/09/07年度全球最性感女郎09_Fs4su0D.jpg');
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_groups`
--

DROP TABLE IF EXISTS `users_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_groups`
--

LOCK TABLES `users_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `users_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_user_permissions`
--

LOCK TABLES `users_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` DISABLE KEYS */;
INSERT INTO `users_userprofile_user_permissions` VALUES (1,3,1),(2,3,2),(3,3,3),(4,3,4),(5,3,5),(6,3,6),(7,3,7),(8,3,8),(9,3,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,3,15),(16,3,16),(17,3,17),(18,3,18),(19,3,19),(20,3,20),(21,3,21),(22,3,22),(23,3,23),(24,3,24),(25,3,25),(26,3,26),(27,3,27),(28,3,28),(29,3,29),(30,3,30),(31,3,31),(32,3,32),(33,3,33),(34,3,34),(35,3,35),(36,3,36),(37,3,37),(38,3,38),(39,3,39),(40,3,40),(41,3,41),(42,3,42),(43,3,43),(44,3,44),(45,3,45),(46,3,46),(47,3,47),(48,3,48),(49,3,49),(50,3,50),(51,3,51),(52,3,52),(53,3,53),(54,3,54),(55,3,55),(56,3,56),(57,3,57),(58,3,58),(59,3,59),(60,3,60),(61,3,61),(62,3,62),(63,3,63),(64,3,64),(65,3,65),(66,3,66),(67,3,67),(68,3,68),(69,3,69),(70,3,70),(71,3,71),(72,3,72),(73,3,73),(74,3,74),(75,3,75),(76,3,76),(77,3,77),(78,3,78),(79,3,79),(80,3,80),(81,3,81),(82,3,82),(83,3,83),(84,3,84),(85,3,85),(86,3,86),(87,3,87),(88,3,88),(89,3,89),(90,3,90),(91,3,91),(92,3,92),(93,3,93),(94,3,94),(95,3,95),(96,3,96),(97,3,97),(98,3,98),(99,3,99),(100,3,100),(101,3,101),(102,3,102),(103,3,103),(104,3,104);
/*!40000 ALTER TABLE `users_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2017-08-04 20:13:33.903482','127.0.0.1','1','北京','create','已添加。',13,1),(2,'2017-08-04 20:13:43.487643','127.0.0.1','2','上海','create','已添加。',13,1),(3,'2017-08-04 20:13:51.524831','127.0.0.1','3','深圳','create','已添加。',13,1),(4,'2017-08-04 20:14:00.307846','127.0.0.1','4','武汉','create','已添加。',13,1),(5,'2017-08-04 20:14:07.919108','127.0.0.1','5','成都','create','已添加。',13,1),(6,'2017-08-04 20:15:01.404308','127.0.0.1','1','Pthon之家','create','已添加。',14,1),(7,'2017-08-04 20:15:49.639091','127.0.0.1','2','Java之家','create','已添加。',14,1),(8,'2017-08-04 20:16:36.977697','127.0.0.1','3','C++之家','create','已添加。',14,1),(9,'2017-08-04 20:17:16.459485','127.0.0.1','4','win10之家','create','已添加。',14,1),(10,'2017-08-04 20:18:05.471938','127.0.0.1','5','MAC之家','create','已添加。',14,1),(11,'2017-08-04 20:18:59.214783','127.0.0.1','6','IT之家','create','已添加。',14,1),(12,'2017-08-04 20:20:09.333776','127.0.0.1','7','音乐天堂','create','已添加。',14,1),(13,'2017-08-04 20:21:07.358489','127.0.0.1','8','数据库之家','create','已添加。',14,1),(14,'2017-08-04 20:22:15.453620','127.0.0.1','9','Linux之家','create','已添加。',14,1),(15,'2017-08-04 20:23:21.838412','127.0.0.1','10','Hadoop之家','create','已添加。',14,1),(16,'2017-08-04 20:24:33.840688','127.0.0.1','1','Teacher object','create','已添加。',15,1),(17,'2017-08-04 20:25:10.933168','127.0.0.1','2','Teacher object','create','已添加。',15,1),(18,'2017-08-04 20:25:51.484965','127.0.0.1','3','Teacher object','create','已添加。',15,1),(19,'2017-08-04 20:26:24.749353','127.0.0.1','4','Teacher object','create','已添加。',15,1),(20,'2017-08-04 20:27:04.693284','127.0.0.1','5','Teacher object','create','已添加。',15,1),(21,'2017-08-08 23:51:03.577260','127.0.0.1','1','Python基础','create','已添加。',9,1),(22,'2017-08-08 23:51:46.328357','127.0.0.1','2','JAVA基础','create','已添加。',9,1),(23,'2017-08-08 23:52:29.879556','127.0.0.1','3','C基础课程','create','已添加。',9,1),(24,'2017-08-08 23:53:20.041107','127.0.0.1','4','Linux高级教程','create','已添加。',9,1),(25,'2017-08-08 23:54:30.071325','127.0.0.1','5','WIN10开发者指南','create','已添加。',9,1),(26,'2017-08-22 16:55:49.961513','127.0.0.1','2','李凡','create','已添加。',6,1),(27,'2017-08-22 17:01:19.970500','127.0.0.1','2','李凡','change','修改 nick_name，gender，address 和 image',6,1),(28,'2017-08-22 17:01:43.469399','127.0.0.1','1','duqing','change','修改 last_login，nick_name，address 和 image',6,1),(29,'2017-08-22 17:03:06.344695','127.0.0.1','1','UserCourse object','create','已添加。',18,1),(30,'2017-08-22 17:03:21.511714','127.0.0.1','2','UserCourse object','create','已添加。',18,1),(31,'2017-08-22 17:03:33.826297','127.0.0.1','3','UserCourse object','create','已添加。',18,1),(32,'2017-08-22 17:03:53.851253','127.0.0.1','4','UserCourse object','create','已添加。',18,1),(33,'2017-08-29 16:25:09.280227','127.0.0.1','1','第一章 基础','create','已添加。',11,1),(34,'2017-08-29 16:25:19.280819','127.0.0.1','2','第二章 入门','create','已添加。',11,1),(35,'2017-08-29 16:25:32.200804','127.0.0.1','3','第三章 进阶','create','已添加。',11,1),(36,'2017-08-29 16:25:41.861659','127.0.0.1','4','第四章 高级','create','已添加。',11,1),(37,'2017-08-29 16:25:51.846431','127.0.0.1','5','第五章 实战','create','已添加。',11,1),(38,'2017-08-29 16:26:14.652489','127.0.0.1','6','第六章 终级','create','已添加。',11,1),(39,'2017-08-29 16:26:33.061379','127.0.0.1','7','第七章 脱坑','create','已添加。',11,1),(40,'2017-08-29 17:51:45.037165','127.0.0.1','1','1.1 学前必读','create','已添加。',12,1),(41,'2017-08-29 17:52:10.188135','127.0.0.1','2','python介绍','create','已添加。',12,1),(42,'2017-08-29 17:52:17.925150','127.0.0.1','3','python安装','create','已添加。',12,1),(43,'2017-08-29 17:52:31.148025','127.0.0.1','4','python数据类型','create','已添加。',12,1),(44,'2017-08-29 18:01:07.329189','127.0.0.1','1','eclipse安装包','create','已添加。',10,1),(45,'2017-08-29 18:01:24.918826','127.0.0.1','2','xshell安装包','create','已添加。',10,1),(46,'2017-09-04 16:58:41.288796','127.0.0.1','3','guoguo','create','已添加。',6,1),(47,'2017-09-04 16:58:52.570513','127.0.0.1','4','heheda','create','已添加。',6,1),(48,'2017-09-04 16:59:00.524057','127.0.0.1','5','root','create','已添加。',6,1),(49,'2017-09-04 17:01:33.439218','127.0.0.1','3','guoguo','change','修改 user_permissions，nick_name，address 和 image',6,1),(50,'2017-09-12 14:20:56.776849','127.0.0.1','1','Banner object','create','已添加。',7,1),(51,'2017-09-12 14:21:18.354404','127.0.0.1','2','Banner object','create','已添加。',7,1),(52,'2017-09-12 14:21:36.123394','127.0.0.1','3','Banner object','create','已添加。',7,1),(53,'2017-09-12 14:21:58.749264','127.0.0.1','4','Banner object','create','已添加。',7,1),(54,'2017-09-12 14:22:19.729096','127.0.0.1','5','Banner object','create','已添加。',7,1),(55,'2017-09-13 09:28:37.980948','127.0.0.1',NULL,'','delete','批量删除 1 个 用户信息',NULL,1),(56,'2017-09-13 14:23:20.861744','127.0.0.1','10','Hadoop之家','change','修改 image 和 courses',14,1);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-20 11:20:01
