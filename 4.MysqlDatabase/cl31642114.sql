-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl31642114
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl31642114`
--

/*!40000 DROP DATABASE IF EXISTS `cl31642114`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl31642114` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl31642114`;

--
-- Table structure for table `chengjixinxi`
--

DROP TABLE IF EXISTS `chengjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chengjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `chengji` double NOT NULL COMMENT '成绩',
  `chengjileixing` varchar(200) DEFAULT NULL COMMENT '成绩类型',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='成绩信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chengjixinxi`
--

LOCK TABLES `chengjixinxi` WRITE;
/*!40000 ALTER TABLE `chengjixinxi` DISABLE KEYS */;
INSERT INTO `chengjixinxi` VALUES (191,'2024-04-08 15:12:12','课程名称1','学期1',1,'考试成绩','用户账号1','用户姓名1','教师工号1','教师姓名1'),(192,'2024-04-08 15:12:12','课程名称2','学期2',2,'考试成绩','用户账号2','用户姓名2','教师工号2','教师姓名2'),(193,'2024-04-08 15:12:12','课程名称3','学期3',3,'考试成绩','用户账号3','用户姓名3','教师工号3','教师姓名3'),(194,'2024-04-08 15:12:12','课程名称4','学期4',4,'考试成绩','用户账号4','用户姓名4','教师工号4','教师姓名4'),(195,'2024-04-08 15:12:12','课程名称5','学期5',5,'考试成绩','用户账号5','用户姓名5','教师工号5','教师姓名5'),(196,'2024-04-08 15:12:12','课程名称6','学期6',6,'考试成绩','用户账号6','用户姓名6','教师工号6','教师姓名6');
/*!40000 ALTER TABLE `chengjixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskechengxinxi`
--

DROP TABLE IF EXISTS `discusskechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskechengxinxi`
--

LOCK TABLES `discusskechengxinxi` WRITE;
/*!40000 ALTER TABLE `discusskechengxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusskechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxuexiziyuan`
--

DROP TABLE IF EXISTS `discussxuexiziyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxuexiziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学习资源评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxuexiziyuan`
--

LOCK TABLES `discussxuexiziyuan` WRITE;
/*!40000 ALTER TABLE `discussxuexiziyuan` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussxuexiziyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` varchar(200) DEFAULT NULL COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='在线考试';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1,'2024-04-08 15:12:11','试卷1',120,'1');
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT NULL COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT NULL COMMENT '试题类型',
  `sequence` bigint(20) DEFAULT NULL COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='试题管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1,'2024-04-08 15:12:11',1,'试卷1','1+1等于多少?','[{\"text\":\"2\",\"code\":\"A\"},{\"text\":\"11\",\"code\":\"B\"},{\"text\":\"十\",\"code\":\"C\"},{\"text\":\"王\",\"code\":\"D\"}]',20,'A','2',0,1),(2,'2024-04-08 15:12:11',1,'试卷1','2-1等于1，对吗?','[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]',20,'A','2-1等于1',2,2),(3,'2024-04-08 15:12:11',1,'试卷1','下面哪些数是质数？。','[{\"text\":\"2\",\"code\":\"A\"},{\"text\":\"3\",\"code\":\"B\"},{\"text\":\"4\",\"code\":\"C\"},{\"text\":\"5\",\"code\":\"D\"}]',30,'A,B,D','2,3,5属于质数',1,3),(4,'2024-04-08 15:12:11',1,'试卷1','最小的自然是( )。','[]',30,'0','最小的自然数是0',3,4);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT NULL COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) DEFAULT NULL COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (101,'2024-04-08 15:12:12','帖子标题1','帖子内容1',0,'用户名1','file/forumAvatarurl1.jpg,file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg','开放',1),(102,'2024-04-08 15:12:12','帖子标题2','帖子内容2',0,'用户名2','file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg','开放',2),(103,'2024-04-08 15:12:12','帖子标题3','帖子内容3',0,'用户名3','file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg','开放',3),(104,'2024-04-08 15:12:12','帖子标题4','帖子内容4',0,'用户名4','file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg','开放',4),(105,'2024-04-08 15:12:12','帖子标题5','帖子内容5',0,'用户名5','file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg','开放',5),(106,'2024-04-08 15:12:12','帖子标题6','帖子内容6',0,'用户名6','file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg,file/forumAvatarurl8.jpg','开放',6);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `touxiang` longtext COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (181,'2024-04-08 15:12:12','教师工号1','123456','教师姓名1','file/jiaoshiTouxiang1.jpg','19819881111','男'),(182,'2024-04-08 15:12:12','教师工号2','123456','教师姓名2','file/jiaoshiTouxiang2.jpg','19819881112','男'),(183,'2024-04-08 15:12:12','教师工号3','123456','教师姓名3','file/jiaoshiTouxiang3.jpg','19819881113','男'),(184,'2024-04-08 15:12:12','教师工号4','123456','教师姓名4','file/jiaoshiTouxiang4.jpg','19819881114','男'),(185,'2024-04-08 15:12:12','教师工号5','123456','教师姓名5','file/jiaoshiTouxiang5.jpg','19819881115','男'),(186,'2024-04-08 15:12:12','教师工号6','123456','教师姓名6','file/jiaoshiTouxiang6.jpg','19819881116','男');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengfenlei`
--

DROP TABLE IF EXISTS `kechengfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengfenlei` varchar(200) NOT NULL COMMENT '课程分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengfenlei` (`kechengfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='课程分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengfenlei`
--

LOCK TABLES `kechengfenlei` WRITE;
/*!40000 ALTER TABLE `kechengfenlei` DISABLE KEYS */;
INSERT INTO `kechengfenlei` VALUES (71,'2024-04-08 15:12:12','课程分类1'),(72,'2024-04-08 15:12:12','课程分类2'),(73,'2024-04-08 15:12:12','课程分类3'),(74,'2024-04-08 15:12:12','课程分类4'),(75,'2024-04-08 15:12:12','课程分类5'),(76,'2024-04-08 15:12:12','课程分类6');
/*!40000 ALTER TABLE `kechengfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengfengmian` longtext COMMENT '课程封面',
  `kechengfenlei` varchar(200) NOT NULL COMMENT '课程分类',
  `kechengjianjie` longtext COMMENT '课程简介',
  `shipin` longtext COMMENT '视频',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `kechengdagang` longtext COMMENT '课程大纲',
  `kechengzhongdian` longtext COMMENT '课程重点',
  `kechengnandian` longtext COMMENT '课程难点',
  `jinduanpai` longtext COMMENT '进度安排',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (131,'2024-04-08 15:12:12','课程名称1','file/kechengxinxiKechengfengmian1.jpg,file/kechengxinxiKechengfengmian2.jpg,file/kechengxinxiKechengfengmian3.jpg','课程分类1','课程简介1','','2024-04-08 23:12:12',1,'课程大纲1','课程重点1','课程难点1','进度安排1','教师工号1','教师姓名1'),(132,'2024-04-08 15:12:12','课程名称2','file/kechengxinxiKechengfengmian2.jpg,file/kechengxinxiKechengfengmian3.jpg,file/kechengxinxiKechengfengmian4.jpg','课程分类2','课程简介2','','2024-04-08 23:12:12',2,'课程大纲2','课程重点2','课程难点2','进度安排2','教师工号2','教师姓名2'),(133,'2024-04-08 15:12:12','课程名称3','file/kechengxinxiKechengfengmian3.jpg,file/kechengxinxiKechengfengmian4.jpg,file/kechengxinxiKechengfengmian5.jpg','课程分类3','课程简介3','','2024-04-08 23:12:12',3,'课程大纲3','课程重点3','课程难点3','进度安排3','教师工号3','教师姓名3'),(134,'2024-04-08 15:12:12','课程名称4','file/kechengxinxiKechengfengmian4.jpg,file/kechengxinxiKechengfengmian5.jpg,file/kechengxinxiKechengfengmian6.jpg','课程分类4','课程简介4','','2024-04-08 23:12:12',4,'课程大纲4','课程重点4','课程难点4','进度安排4','教师工号4','教师姓名4'),(135,'2024-04-08 15:12:12','课程名称5','file/kechengxinxiKechengfengmian5.jpg,file/kechengxinxiKechengfengmian6.jpg,file/kechengxinxiKechengfengmian7.jpg','课程分类5','课程简介5','','2024-04-08 23:12:12',5,'课程大纲5','课程重点5','课程难点5','进度安排5','教师工号5','教师姓名5'),(136,'2024-04-08 15:12:12','课程名称6','file/kechengxinxiKechengfengmian6.jpg,file/kechengxinxiKechengfengmian7.jpg,file/kechengxinxiKechengfengmian8.jpg','课程分类6','课程简介6','','2024-04-08 23:12:12',6,'课程大纲6','课程重点6','课程难点6','进度安排6','教师工号6','教师姓名6');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxuexi`
--

DROP TABLE IF EXISTS `kechengxuexi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) NOT NULL COMMENT '课程分类',
  `kechengjianjie` longtext COMMENT '课程简介',
  `kechengdagang` longtext COMMENT '课程大纲',
  `kechengzhongdian` longtext COMMENT '课程重点',
  `kechengnandian` longtext COMMENT '课程难点',
  `jinduanpai` longtext COMMENT '进度安排',
  `xuexishijian` datetime DEFAULT NULL COMMENT '学习时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xuexishizhang` double DEFAULT NULL COMMENT '学习时长',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='课程学习';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxuexi`
--

LOCK TABLES `kechengxuexi` WRITE;
/*!40000 ALTER TABLE `kechengxuexi` DISABLE KEYS */;
INSERT INTO `kechengxuexi` VALUES (171,'2024-04-08 15:12:12','课程名称1','课程分类1','课程简介1','课程大纲1','课程重点1','课程难点1','进度安排1','2024-04-08 23:12:12','用户账号1','用户姓名1',1,'教师工号1','教师姓名1'),(172,'2024-04-08 15:12:12','课程名称2','课程分类2','课程简介2','课程大纲2','课程重点2','课程难点2','进度安排2','2024-04-08 23:12:12','用户账号2','用户姓名2',2,'教师工号2','教师姓名2'),(173,'2024-04-08 15:12:12','课程名称3','课程分类3','课程简介3','课程大纲3','课程重点3','课程难点3','进度安排3','2024-04-08 23:12:12','用户账号3','用户姓名3',3,'教师工号3','教师姓名3'),(174,'2024-04-08 15:12:12','课程名称4','课程分类4','课程简介4','课程大纲4','课程重点4','课程难点4','进度安排4','2024-04-08 23:12:12','用户账号4','用户姓名4',4,'教师工号4','教师姓名4'),(175,'2024-04-08 15:12:12','课程名称5','课程分类5','课程简介5','课程大纲5','课程重点5','课程难点5','进度安排5','2024-04-08 23:12:12','用户账号5','用户姓名5',5,'教师工号5','教师姓名5'),(176,'2024-04-08 15:12:12','课程名称6','课程分类6','课程简介6','课程大纲6','课程重点6','课程难点6','进度安排6','2024-04-08 23:12:12','用户账号6','用户姓名6',6,'教师工号6','教师姓名6');
/*!40000 ALTER TABLE `kechengxuexi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-04-08 15:12:12','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"查看评论\",\"删除\"],\"menu\":\"论坛交流\",\"tableName\":\"forum\"}],\"menu\":\"论坛管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"操作日志\",\"menuJump\":\"列表\",\"tableName\":\"syslog\"}],\"fontClass\":\"icon-common15\",\"menu\":\"操作日志管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\",\"成绩统计\",\"首页总数\",\"首页统计\"],\"menu\":\"成绩信息\",\"menuJump\":\"列表\",\"tableName\":\"chengjixinxi\"}],\"fontClass\":\"icon-common32\",\"menu\":\"学生成绩管理\",\"unicode\":\"&#xee66;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common26\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xee2b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"},{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"课程分类\",\"menuJump\":\"列表\",\"tableName\":\"kechengfenlei\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\",\"删除\",\"首页总数\",\"首页统计\",\"学习时长统计\"],\"menu\":\"课程学习\",\"menuJump\":\"列表\",\"tableName\":\"kechengxuexi\"}],\"fontClass\":\"icon-common3\",\"menu\":\"课程信息管理\",\"unicode\":\"&#xeda5;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"},{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"教师\",\"menuJump\":\"列表\",\"tableName\":\"jiaoshi\"}],\"fontClass\":\"icon-user5\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"删除\",\"发放\"],\"menu\":\"作业提交\",\"menuJump\":\"列表\",\"tableName\":\"zuoyetijiao\"},{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"作业发放\",\"menuJump\":\"列表\",\"tableName\":\"zuoyefafang\"}],\"fontClass\":\"icon-common41\",\"menu\":\"作业信息管理\",\"unicode\":\"&#xeede;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"在线考试\",\"tableName\":\"exampaper\"},{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"打印\",\"导出\"],\"menu\":\"试题管理\",\"menuJump\":\"列表\",\"tableName\":\"examquestion\"},{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\"},{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"删除\",\"批卷\"],\"menu\":\"考试记录\",\"tableName\":\"examrecord\"}],\"fontClass\":\"icon-common20\",\"menu\":\"试卷管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"学习资源\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziyuan\"},{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"资源类型\",\"menuJump\":\"列表\",\"tableName\":\"ziyuanleixing\"},{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"资源下载\",\"menuJump\":\"列表\",\"tableName\":\"ziyuanxiazai\"}],\"fontClass\":\"icon-common44\",\"menu\":\"学习资源管理\",\"unicode\":\"&#xef28;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"下载\"],\"menu\":\"学习资源\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziyuan\"}],\"menu\":\"学习课程管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"答案\"],\"menu\":\"主观题\",\"menuJump\":\"列表\",\"tableName\":\"zhuguanti\"}],\"menu\":\"主观题管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"论坛交流\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common42\",\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\",\"unicode\":\"&#xef24;\"}],\"fontClass\":\"icon-common42\",\"menu\":\"在线考试\",\"unicode\":\"&#xef24;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"学习\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"}],\"menu\":\"课程信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common6\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xedad;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"我的发布\",\"menuJump\":\"14\",\"tableName\":\"forum\"}],\"menu\":\"论坛管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"作业提交\",\"menuJump\":\"列表\",\"tableName\":\"zuoyetijiao\"},{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"作业发放\",\"menuJump\":\"列表\",\"tableName\":\"zuoyefafang\"}],\"fontClass\":\"icon-common41\",\"menu\":\"作业信息管理\",\"unicode\":\"&#xeede;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"批改信息\",\"menuJump\":\"列表\",\"tableName\":\"pigaixinxi\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"提交答案\",\"menuJump\":\"列表\",\"tableName\":\"tijiaodaan\"}],\"fontClass\":\"icon-common49\",\"menu\":\"主观题管理\",\"unicode\":\"&#xef79;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"课程学习\",\"menuJump\":\"列表\",\"tableName\":\"kechengxuexi\"}],\"fontClass\":\"icon-common3\",\"menu\":\"课程信息管理\",\"unicode\":\"&#xeda5;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"删除\",\"修改\"],\"menu\":\"资源下载\",\"menuJump\":\"列表\",\"tableName\":\"ziyuanxiazai\"}],\"fontClass\":\"icon-common44\",\"menu\":\"学习资源管理\",\"unicode\":\"&#xef28;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"考试记录\",\"tableName\":\"examrecord\"},{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\"],\"menu\":\"错题本\",\"menuJump\":\"22\",\"tableName\":\"examrecord\"}],\"fontClass\":\"icon-common20\",\"menu\":\"试卷管理\",\"unicode\":\"&#xee02;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"下载\"],\"menu\":\"学习资源\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziyuan\"}],\"menu\":\"学习课程管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"答案\"],\"menu\":\"主观题\",\"menuJump\":\"列表\",\"tableName\":\"zhuguanti\"}],\"menu\":\"主观题管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"论坛交流\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common42\",\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\",\"unicode\":\"&#xef24;\"}],\"fontClass\":\"icon-common42\",\"menu\":\"在线考试\",\"unicode\":\"&#xef24;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"学习\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"}],\"menu\":\"课程信息管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"成绩统计\",\"首页总数\",\"首页统计\"],\"menu\":\"成绩信息\",\"menuJump\":\"列表\",\"tableName\":\"chengjixinxi\"}],\"fontClass\":\"icon-common32\",\"menu\":\"学生成绩管理\",\"unicode\":\"&#xee66;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"在线考试\",\"tableName\":\"exampaper\"},{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"打印\",\"导出\"],\"menu\":\"试题管理\",\"menuJump\":\"列表\",\"tableName\":\"examquestion\"},{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\"},{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"考试记录\",\"tableName\":\"examrecord\"}],\"fontClass\":\"icon-common20\",\"menu\":\"试卷管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"删除\",\"发放\"],\"menu\":\"作业提交\",\"menuJump\":\"列表\",\"tableName\":\"zuoyetijiao\"},{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"作业发放\",\"menuJump\":\"列表\",\"tableName\":\"zuoyefafang\"}],\"fontClass\":\"icon-common41\",\"menu\":\"作业信息管理\",\"unicode\":\"&#xeede;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"主观题\",\"menuJump\":\"列表\",\"tableName\":\"zhuguanti\"},{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"批改信息\",\"menuJump\":\"列表\",\"tableName\":\"pigaixinxi\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\",\"批改\"],\"menu\":\"提交答案\",\"menuJump\":\"列表\",\"tableName\":\"tijiaodaan\"}],\"fontClass\":\"icon-common49\",\"menu\":\"主观题管理\",\"unicode\":\"&#xef79;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"学习时长统计\",\"首页总数\",\"首页统计\"],\"menu\":\"课程学习\",\"menuJump\":\"列表\",\"tableName\":\"kechengxuexi\"}],\"fontClass\":\"icon-common3\",\"menu\":\"课程信息管理\",\"unicode\":\"&#xeda5;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"下载\"],\"menu\":\"学习资源\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziyuan\"}],\"menu\":\"学习课程管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"答案\"],\"menu\":\"主观题\",\"menuJump\":\"列表\",\"tableName\":\"zhuguanti\"}],\"menu\":\"主观题管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"论坛交流\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common42\",\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\",\"unicode\":\"&#xef24;\"}],\"fontClass\":\"icon-common42\",\"menu\":\"在线考试\",\"unicode\":\"&#xef24;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"学习\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"}],\"menu\":\"课程信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"教师\",\"tableName\":\"jiaoshi\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pigaixinxi`
--

DROP TABLE IF EXISTS `pigaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pigaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijuanmingcheng` varchar(200) DEFAULT NULL COMMENT '试卷名称',
  `timujianshu` longtext COMMENT '题目简述',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `pigaineirong` longtext COMMENT '批改内容',
  `fenshu` double DEFAULT NULL COMMENT '分数',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 COMMENT='批改信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pigaixinxi`
--

LOCK TABLES `pigaixinxi` WRITE;
/*!40000 ALTER TABLE `pigaixinxi` DISABLE KEYS */;
INSERT INTO `pigaixinxi` VALUES (221,'2024-04-08 15:12:12','试卷名称1','题目简述1','用户账号1','用户姓名1','',1,'教师工号1',1,1),(222,'2024-04-08 15:12:12','试卷名称2','题目简述2','用户账号2','用户姓名2','',2,'教师工号2',2,2),(223,'2024-04-08 15:12:12','试卷名称3','题目简述3','用户账号3','用户姓名3','',3,'教师工号3',3,3),(224,'2024-04-08 15:12:12','试卷名称4','题目简述4','用户账号4','用户姓名4','',4,'教师工号4',4,4),(225,'2024-04-08 15:12:12','试卷名称5','题目简述5','用户账号5','用户姓名5','',5,'教师工号5',5,5),(226,'2024-04-08 15:12:12','试卷名称6','题目简述6','用户账号6','用户姓名6','',6,'教师工号6',6,6);
/*!40000 ALTER TABLE `pigaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog`
--

DROP TABLE IF EXISTS `syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `operation` varchar(200) NOT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` longtext COMMENT '请求参数',
  `time` bigint(20) DEFAULT NULL COMMENT '请求时长(毫秒)',
  `ip` varchar(200) DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog`
--

LOCK TABLES `syslog` WRITE;
/*!40000 ALTER TABLE `syslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tijiaodaan`
--

DROP TABLE IF EXISTS `tijiaodaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tijiaodaan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijuanmingcheng` varchar(200) DEFAULT NULL COMMENT '试卷名称',
  `timujianshu` longtext COMMENT '题目简述',
  `daanxinxi` longtext COMMENT '答案信息',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COMMENT='提交答案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tijiaodaan`
--

LOCK TABLES `tijiaodaan` WRITE;
/*!40000 ALTER TABLE `tijiaodaan` DISABLE KEYS */;
INSERT INTO `tijiaodaan` VALUES (211,'2024-04-08 15:12:12','试卷名称1','题目简述1','','2024-04-08 23:12:12','用户账号1','用户姓名1','教师工号1'),(212,'2024-04-08 15:12:12','试卷名称2','题目简述2','','2024-04-08 23:12:12','用户账号2','用户姓名2','教师工号2'),(213,'2024-04-08 15:12:12','试卷名称3','题目简述3','','2024-04-08 23:12:12','用户账号3','用户姓名3','教师工号3'),(214,'2024-04-08 15:12:12','试卷名称4','题目简述4','','2024-04-08 23:12:12','用户账号4','用户姓名4','教师工号4'),(215,'2024-04-08 15:12:12','试卷名称5','题目简述5','','2024-04-08 23:12:12','用户账号5','用户姓名5','教师工号5'),(216,'2024-04-08 15:12:12','试卷名称6','题目简述6','','2024-04-08 23:12:12','用户账号6','用户姓名6','教师工号6');
/*!40000 ALTER TABLE `tijiaodaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-04-08 15:12:12','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexiziyuan`
--

DROP TABLE IF EXISTS `xuexiziyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexiziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanmingcheng` varchar(200) NOT NULL COMMENT '资源名称',
  `fengmian` longtext COMMENT '封面',
  `ziyuanleixing` varchar(200) NOT NULL COMMENT '资源类型',
  `ziyuanfujian` longtext COMMENT '资源附件',
  `ziyuanjianshu` longtext COMMENT '资源简述',
  `ziyuanxiangqing` longtext COMMENT '资源详情',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='学习资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexiziyuan`
--

LOCK TABLES `xuexiziyuan` WRITE;
/*!40000 ALTER TABLE `xuexiziyuan` DISABLE KEYS */;
INSERT INTO `xuexiziyuan` VALUES (81,'2024-04-08 15:12:12','资源名称1','file/xuexiziyuanFengmian1.jpg,file/xuexiziyuanFengmian2.jpg,file/xuexiziyuanFengmian3.jpg','资源类型1','','资源简述1','资源详情1',1),(82,'2024-04-08 15:12:12','资源名称2','file/xuexiziyuanFengmian2.jpg,file/xuexiziyuanFengmian3.jpg,file/xuexiziyuanFengmian4.jpg','资源类型2','','资源简述2','资源详情2',2),(83,'2024-04-08 15:12:12','资源名称3','file/xuexiziyuanFengmian3.jpg,file/xuexiziyuanFengmian4.jpg,file/xuexiziyuanFengmian5.jpg','资源类型3','','资源简述3','资源详情3',3),(84,'2024-04-08 15:12:12','资源名称4','file/xuexiziyuanFengmian4.jpg,file/xuexiziyuanFengmian5.jpg,file/xuexiziyuanFengmian6.jpg','资源类型4','','资源简述4','资源详情4',4),(85,'2024-04-08 15:12:12','资源名称5','file/xuexiziyuanFengmian5.jpg,file/xuexiziyuanFengmian6.jpg,file/xuexiziyuanFengmian7.jpg','资源类型5','','资源简述5','资源详情5',5),(86,'2024-04-08 15:12:12','资源名称6','file/xuexiziyuanFengmian6.jpg,file/xuexiziyuanFengmian7.jpg,file/xuexiziyuanFengmian8.jpg','资源类型6','','资源简述6','资源详情6',6);
/*!40000 ALTER TABLE `xuexiziyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (61,'2024-04-08 15:12:12','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111'),(62,'2024-04-08 15:12:12','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112'),(63,'2024-04-08 15:12:12','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113'),(64,'2024-04-08 15:12:12','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114'),(65,'2024-04-08 15:12:12','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115'),(66,'2024-04-08 15:12:12','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuguanti`
--

DROP TABLE IF EXISTS `zhuguanti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuguanti` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijuanmingcheng` varchar(200) DEFAULT NULL COMMENT '试卷名称',
  `fengmian` longtext COMMENT '封面',
  `timujianshu` longtext COMMENT '题目简述',
  `timuxiangqing` longtext COMMENT '题目详情',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='主观题';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuguanti`
--

LOCK TABLES `zhuguanti` WRITE;
/*!40000 ALTER TABLE `zhuguanti` DISABLE KEYS */;
INSERT INTO `zhuguanti` VALUES (201,'2024-04-08 15:12:12','试卷名称1','file/zhuguantiFengmian1.jpg,file/zhuguantiFengmian2.jpg,file/zhuguantiFengmian3.jpg','题目简述1','','2024-04-08 23:12:12','教师工号1'),(202,'2024-04-08 15:12:12','试卷名称2','file/zhuguantiFengmian2.jpg,file/zhuguantiFengmian3.jpg,file/zhuguantiFengmian4.jpg','题目简述2','','2024-04-08 23:12:12','教师工号2'),(203,'2024-04-08 15:12:12','试卷名称3','file/zhuguantiFengmian3.jpg,file/zhuguantiFengmian4.jpg,file/zhuguantiFengmian5.jpg','题目简述3','','2024-04-08 23:12:12','教师工号3'),(204,'2024-04-08 15:12:12','试卷名称4','file/zhuguantiFengmian4.jpg,file/zhuguantiFengmian5.jpg,file/zhuguantiFengmian6.jpg','题目简述4','','2024-04-08 23:12:12','教师工号4'),(205,'2024-04-08 15:12:12','试卷名称5','file/zhuguantiFengmian5.jpg,file/zhuguantiFengmian6.jpg,file/zhuguantiFengmian7.jpg','题目简述5','','2024-04-08 23:12:12','教师工号5'),(206,'2024-04-08 15:12:12','试卷名称6','file/zhuguantiFengmian6.jpg,file/zhuguantiFengmian7.jpg,file/zhuguantiFengmian8.jpg','题目简述6','','2024-04-08 23:12:12','教师工号6');
/*!40000 ALTER TABLE `zhuguanti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ziyuanleixing`
--

DROP TABLE IF EXISTS `ziyuanleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ziyuanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanleixing` varchar(200) NOT NULL COMMENT '资源类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ziyuanleixing` (`ziyuanleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='资源类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ziyuanleixing`
--

LOCK TABLES `ziyuanleixing` WRITE;
/*!40000 ALTER TABLE `ziyuanleixing` DISABLE KEYS */;
INSERT INTO `ziyuanleixing` VALUES (121,'2024-04-08 15:12:12','资源类型1'),(122,'2024-04-08 15:12:12','资源类型2'),(123,'2024-04-08 15:12:12','资源类型3'),(124,'2024-04-08 15:12:12','资源类型4'),(125,'2024-04-08 15:12:12','资源类型5'),(126,'2024-04-08 15:12:12','资源类型6');
/*!40000 ALTER TABLE `ziyuanleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ziyuanxiazai`
--

DROP TABLE IF EXISTS `ziyuanxiazai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ziyuanxiazai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanmingcheng` varchar(200) NOT NULL COMMENT '资源名称',
  `ziyuanleixing` varchar(200) NOT NULL COMMENT '资源类型',
  `ziyuanjianshu` longtext COMMENT '资源简述',
  `xiazaishijian` datetime DEFAULT NULL COMMENT '下载时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='资源下载';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ziyuanxiazai`
--

LOCK TABLES `ziyuanxiazai` WRITE;
/*!40000 ALTER TABLE `ziyuanxiazai` DISABLE KEYS */;
INSERT INTO `ziyuanxiazai` VALUES (141,'2024-04-08 15:12:12','资源名称1','资源类型1','资源简述1','2024-04-08 23:12:12','用户账号1','用户姓名1'),(142,'2024-04-08 15:12:12','资源名称2','资源类型2','资源简述2','2024-04-08 23:12:12','用户账号2','用户姓名2'),(143,'2024-04-08 15:12:12','资源名称3','资源类型3','资源简述3','2024-04-08 23:12:12','用户账号3','用户姓名3'),(144,'2024-04-08 15:12:12','资源名称4','资源类型4','资源简述4','2024-04-08 23:12:12','用户账号4','用户姓名4'),(145,'2024-04-08 15:12:12','资源名称5','资源类型5','资源简述5','2024-04-08 23:12:12','用户账号5','用户姓名5'),(146,'2024-04-08 15:12:12','资源名称6','资源类型6','资源简述6','2024-04-08 23:12:12','用户账号6','用户姓名6');
/*!40000 ALTER TABLE `ziyuanxiazai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuoyefafang`
--

DROP TABLE IF EXISTS `zuoyefafang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuoyefafang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `zuoyepingjia` longtext COMMENT '作业评价',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `fafangshijian` datetime DEFAULT NULL COMMENT '发放时间',
  `pingfen` double DEFAULT NULL COMMENT '评分',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='作业发放';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuoyefafang`
--

LOCK TABLES `zuoyefafang` WRITE;
/*!40000 ALTER TABLE `zuoyefafang` DISABLE KEYS */;
INSERT INTO `zuoyefafang` VALUES (161,'2024-04-08 15:12:12','作业名称1','作业评价1','用户账号1','用户姓名1','2024-04-08 23:12:12',1,'教师工号1','教师姓名1'),(162,'2024-04-08 15:12:12','作业名称2','作业评价2','用户账号2','用户姓名2','2024-04-08 23:12:12',2,'教师工号2','教师姓名2'),(163,'2024-04-08 15:12:12','作业名称3','作业评价3','用户账号3','用户姓名3','2024-04-08 23:12:12',3,'教师工号3','教师姓名3'),(164,'2024-04-08 15:12:12','作业名称4','作业评价4','用户账号4','用户姓名4','2024-04-08 23:12:12',4,'教师工号4','教师姓名4'),(165,'2024-04-08 15:12:12','作业名称5','作业评价5','用户账号5','用户姓名5','2024-04-08 23:12:12',5,'教师工号5','教师姓名5'),(166,'2024-04-08 15:12:12','作业名称6','作业评价6','用户账号6','用户姓名6','2024-04-08 23:12:12',6,'教师工号6','教师姓名6');
/*!40000 ALTER TABLE `zuoyefafang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuoyetijiao`
--

DROP TABLE IF EXISTS `zuoyetijiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuoyetijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `tijiaozuoye` longtext NOT NULL COMMENT '提交作业',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='作业提交';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuoyetijiao`
--

LOCK TABLES `zuoyetijiao` WRITE;
/*!40000 ALTER TABLE `zuoyetijiao` DISABLE KEYS */;
INSERT INTO `zuoyetijiao` VALUES (151,'2024-04-08 15:12:12','作业名称1','','2024-04-08 23:12:12','用户账号1','用户姓名1','教师工号1','教师姓名1'),(152,'2024-04-08 15:12:12','作业名称2','','2024-04-08 23:12:12','用户账号2','用户姓名2','教师工号2','教师姓名2'),(153,'2024-04-08 15:12:12','作业名称3','','2024-04-08 23:12:12','用户账号3','用户姓名3','教师工号3','教师姓名3'),(154,'2024-04-08 15:12:12','作业名称4','','2024-04-08 23:12:12','用户账号4','用户姓名4','教师工号4','教师姓名4'),(155,'2024-04-08 15:12:12','作业名称5','','2024-04-08 23:12:12','用户账号5','用户姓名5','教师工号5','教师姓名5'),(156,'2024-04-08 15:12:12','作业名称6','','2024-04-08 23:12:12','用户账号6','用户姓名6','教师工号6','教师姓名6');
/*!40000 ALTER TABLE `zuoyetijiao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-10 14:07:49
