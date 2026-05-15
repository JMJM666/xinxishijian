-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: system
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
                         `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                         `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
                         `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
                         `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
                         `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
                         `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
                         `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
                         `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin','管理员','http://localhost:9090/files/download/1721114905635-柴犬.jpeg','ADMIN','18899990011','admin2@xm.com');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
                          `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                          `username` varchar(255) DEFAULT NULL COMMENT '账号',
                          `password` varchar(255) DEFAULT NULL COMMENT '密码',
                          `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
                          `role` varchar(255) DEFAULT NULL COMMENT '角色',
                          `seniority` int DEFAULT NULL COMMENT '工龄',
                          `content` text COMMENT '简介',
                          `phone` varchar(255) DEFAULT NULL COMMENT '电话',
                          `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
                          `code` varchar(255) DEFAULT NULL COMMENT '身份证',
                          `certificate` varchar(255) DEFAULT NULL COMMENT '资格证',
                          `status` varchar(255) DEFAULT NULL COMMENT '审证状态',
                          `name` varchar(255) DEFAULT NULL COMMENT '姓名',
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='心理医生表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'j','123',NULL,'DOCTOR',NULL,NULL,NULL,NULL,NULL,NULL,'DOCTOR','m'),(2,'aa','123',NULL,'DOCTOR',NULL,NULL,NULL,NULL,NULL,NULL,'DOCTOR','a'),(3,'bb','123',NULL,'DOCTOR',NULL,NULL,NULL,NULL,NULL,NULL,'DOCTOR','b'),(4,'a','123',NULL,'DOCTOR',NULL,NULL,NULL,NULL,NULL,NULL,'DOCTOR','s'),(5,'doctor','123',NULL,'DOCTOR',NULL,NULL,NULL,NULL,NULL,NULL,'待审批','111');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
                          `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                          `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公告标题',
                          `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '公告内容',
                          `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布时间',
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='系统公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'今天天气真的不错','今天好开心呀！因为天气很好，我又可以肆无忌惮的跟着武哥和青哥学习了！！真的好开心！','2024-07-16 15:51:17'),(2,'项目所有功能开发完毕！','我的项目所有的功能都开发完啦！真的很有成就感！','2024-07-16 15:52:22'),(3,'项目功能都测试完成，准备上线！','经过半个月的学习和练习，终于把这个项目完成了，可以打包上线了！','2024-07-16 15:52:56');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propagate`
--

DROP TABLE IF EXISTS `propagate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propagate` (
                             `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                             `doctor_id` int DEFAULT NULL COMMENT '医生ID',
                             `title` varchar(255) DEFAULT NULL COMMENT '宣传标题',
                             `img` varchar(255) DEFAULT NULL COMMENT '宣传封面',
                             `content` longtext COMMENT '宣传内容',
                             `time` varchar(255) DEFAULT NULL COMMENT '发布时间',
                             `num` int DEFAULT '0' COMMENT '浏览量',
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='健康宣传表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propagate`
--

LOCK TABLES `propagate` WRITE;
/*!40000 ALTER TABLE `propagate` DISABLE KEYS */;
/*!40000 ALTER TABLE `propagate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
                        `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
                        `username` varchar(255) DEFAULT NULL COMMENT '账号',
                        `password` varchar(255) DEFAULT NULL COMMENT '密码',
                        `name` varchar(255) DEFAULT NULL COMMENT '姓名',
                        `role` varchar(255) DEFAULT NULL COMMENT '角色',
                        `phone` varchar(255) DEFAULT NULL COMMENT '电话',
                        `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
                        `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'jmjm','123','chen','USER','111','222','http://localhost:9090/files/download/1778333522903-陈宇轩.jpg'),(3,'jj','123','g','USER',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-14 17:01:28
