-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: smf
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `smf_admin_info_files`
--

DROP TABLE IF EXISTS `smf_admin_info_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_admin_info_files` (
  `id_file` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `parameters` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `filetype` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_file`),
  KEY `filename` (`filename`(30))
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_admin_info_files`
--

LOCK TABLES `smf_admin_info_files` WRITE;
/*!40000 ALTER TABLE `smf_admin_info_files` DISABLE KEYS */;
INSERT INTO `smf_admin_info_files` VALUES (1,'current-version.js','/smf/','version=%3$s','','text/javascript'),(2,'detailed-version.js','/smf/','language=%1$s&version=%3$s','','text/javascript'),(3,'latest-news.js','/smf/','language=%1$s&format=%2$s','','text/javascript'),(4,'latest-packages.js','/smf/','language=%1$s&version=%3$s','','text/javascript'),(5,'latest-smileys.js','/smf/','language=%1$s&version=%3$s','','text/javascript'),(6,'latest-support.js','/smf/','language=%1$s&version=%3$s','','text/javascript'),(7,'latest-themes.js','/smf/','language=%1$s&version=%3$s','','text/javascript');
/*!40000 ALTER TABLE `smf_admin_info_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_approval_queue`
--

DROP TABLE IF EXISTS `smf_approval_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_approval_queue` (
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_attach` int(10) unsigned NOT NULL DEFAULT '0',
  `id_event` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_approval_queue`
--

LOCK TABLES `smf_approval_queue` WRITE;
/*!40000 ALTER TABLE `smf_approval_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_approval_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_attachments`
--

DROP TABLE IF EXISTS `smf_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_attachments` (
  `id_attach` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_thumb` int(10) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_folder` tinyint(3) NOT NULL DEFAULT '1',
  `attachment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `file_hash` varchar(40) NOT NULL DEFAULT '',
  `fileext` varchar(8) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `width` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `height` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(20) NOT NULL DEFAULT '',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_attach`),
  UNIQUE KEY `id_member` (`id_member`,`id_attach`),
  KEY `id_msg` (`id_msg`),
  KEY `attachment_type` (`attachment_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_attachments`
--

LOCK TABLES `smf_attachments` WRITE;
/*!40000 ALTER TABLE `smf_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_ban_groups`
--

DROP TABLE IF EXISTS `smf_ban_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_ban_groups` (
  `id_ban_group` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `ban_time` int(10) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned DEFAULT NULL,
  `cannot_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_post` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_login` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  PRIMARY KEY (`id_ban_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_ban_groups`
--

LOCK TABLES `smf_ban_groups` WRITE;
/*!40000 ALTER TABLE `smf_ban_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_ban_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_ban_items`
--

DROP TABLE IF EXISTS `smf_ban_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_ban_items` (
  `id_ban` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_ban_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_low1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hostname` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ban`),
  KEY `id_ban_group` (`id_ban_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_ban_items`
--

LOCK TABLES `smf_ban_items` WRITE;
/*!40000 ALTER TABLE `smf_ban_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_ban_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_board_permissions`
--

DROP TABLE IF EXISTS `smf_board_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_board_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_group`,`id_profile`,`permission`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_board_permissions`
--

LOCK TABLES `smf_board_permissions` WRITE;
/*!40000 ALTER TABLE `smf_board_permissions` DISABLE KEYS */;
INSERT INTO `smf_board_permissions` VALUES (-1,1,'poll_view',1),(0,1,'remove_own',1),(0,1,'lock_own',1),(0,1,'mark_any_notify',1),(0,1,'mark_notify',1),(0,1,'modify_own',1),(0,1,'poll_add_own',1),(0,1,'poll_edit_own',1),(0,1,'poll_lock_own',1),(0,1,'poll_post',1),(0,1,'poll_view',1),(0,1,'poll_vote',1),(0,1,'post_attachment',1),(0,1,'post_new',1),(0,1,'post_reply_any',1),(0,1,'post_reply_own',1),(0,1,'post_unapproved_topics',1),(0,1,'post_unapproved_replies_any',1),(0,1,'post_unapproved_replies_own',1),(0,1,'post_unapproved_attachments',1),(0,1,'delete_own',1),(0,1,'report_any',1),(0,1,'send_topic',1),(0,1,'view_attachments',1),(2,1,'moderate_board',1),(2,1,'post_new',1),(2,1,'post_reply_own',1),(2,1,'post_reply_any',1),(2,1,'post_unapproved_topics',1),(2,1,'post_unapproved_replies_any',1),(2,1,'post_unapproved_replies_own',1),(2,1,'post_unapproved_attachments',1),(2,1,'poll_post',1),(2,1,'poll_add_any',1),(2,1,'poll_remove_any',1),(2,1,'poll_view',1),(2,1,'poll_vote',1),(2,1,'poll_lock_any',1),(2,1,'poll_edit_any',1),(2,1,'report_any',1),(2,1,'lock_own',1),(2,1,'send_topic',1),(2,1,'mark_any_notify',1),(2,1,'mark_notify',1),(2,1,'delete_own',1),(2,1,'modify_own',1),(2,1,'make_sticky',1),(2,1,'lock_any',1),(2,1,'remove_any',1),(2,1,'move_any',1),(2,1,'merge_any',1),(2,1,'split_any',1),(2,1,'delete_any',1),(2,1,'modify_any',1),(2,1,'approve_posts',1),(2,1,'post_attachment',1),(2,1,'view_attachments',1),(3,1,'moderate_board',1),(3,1,'post_new',1),(3,1,'post_reply_own',1),(3,1,'post_reply_any',1),(3,1,'post_unapproved_topics',1),(3,1,'post_unapproved_replies_any',1),(3,1,'post_unapproved_replies_own',1),(3,1,'post_unapproved_attachments',1),(3,1,'poll_post',1),(3,1,'poll_add_any',1),(3,1,'poll_remove_any',1),(3,1,'poll_view',1),(3,1,'poll_vote',1),(3,1,'poll_lock_any',1),(3,1,'poll_edit_any',1),(3,1,'report_any',1),(3,1,'lock_own',1),(3,1,'send_topic',1),(3,1,'mark_any_notify',1),(3,1,'mark_notify',1),(3,1,'delete_own',1),(3,1,'modify_own',1),(3,1,'make_sticky',1),(3,1,'lock_any',1),(3,1,'remove_any',1),(3,1,'move_any',1),(3,1,'merge_any',1),(3,1,'split_any',1),(3,1,'delete_any',1),(3,1,'modify_any',1),(3,1,'approve_posts',1),(3,1,'post_attachment',1),(3,1,'view_attachments',1),(-1,2,'poll_view',1),(0,2,'remove_own',1),(0,2,'lock_own',1),(0,2,'mark_any_notify',1),(0,2,'mark_notify',1),(0,2,'modify_own',1),(0,2,'poll_view',1),(0,2,'poll_vote',1),(0,2,'post_attachment',1),(0,2,'post_new',1),(0,2,'post_reply_any',1),(0,2,'post_reply_own',1),(0,2,'post_unapproved_topics',1),(0,2,'post_unapproved_replies_any',1),(0,2,'post_unapproved_replies_own',1),(0,2,'post_unapproved_attachments',1),(0,2,'delete_own',1),(0,2,'report_any',1),(0,2,'send_topic',1),(0,2,'view_attachments',1),(2,2,'moderate_board',1),(2,2,'post_new',1),(2,2,'post_reply_own',1),(2,2,'post_reply_any',1),(2,2,'post_unapproved_topics',1),(2,2,'post_unapproved_replies_any',1),(2,2,'post_unapproved_replies_own',1),(2,2,'post_unapproved_attachments',1),(2,2,'poll_post',1),(2,2,'poll_add_any',1),(2,2,'poll_remove_any',1),(2,2,'poll_view',1),(2,2,'poll_vote',1),(2,2,'poll_lock_any',1),(2,2,'poll_edit_any',1),(2,2,'report_any',1),(2,2,'lock_own',1),(2,2,'send_topic',1),(2,2,'mark_any_notify',1),(2,2,'mark_notify',1),(2,2,'delete_own',1),(2,2,'modify_own',1),(2,2,'make_sticky',1),(2,2,'lock_any',1),(2,2,'remove_any',1),(2,2,'move_any',1),(2,2,'merge_any',1),(2,2,'split_any',1),(2,2,'delete_any',1),(2,2,'modify_any',1),(2,2,'approve_posts',1),(2,2,'post_attachment',1),(2,2,'view_attachments',1),(3,2,'moderate_board',1),(3,2,'post_new',1),(3,2,'post_reply_own',1),(3,2,'post_reply_any',1),(3,2,'post_unapproved_topics',1),(3,2,'post_unapproved_replies_any',1),(3,2,'post_unapproved_replies_own',1),(3,2,'post_unapproved_attachments',1),(3,2,'poll_post',1),(3,2,'poll_add_any',1),(3,2,'poll_remove_any',1),(3,2,'poll_view',1),(3,2,'poll_vote',1),(3,2,'poll_lock_any',1),(3,2,'poll_edit_any',1),(3,2,'report_any',1),(3,2,'lock_own',1),(3,2,'send_topic',1),(3,2,'mark_any_notify',1),(3,2,'mark_notify',1),(3,2,'delete_own',1),(3,2,'modify_own',1),(3,2,'make_sticky',1),(3,2,'lock_any',1),(3,2,'remove_any',1),(3,2,'move_any',1),(3,2,'merge_any',1),(3,2,'split_any',1),(3,2,'delete_any',1),(3,2,'modify_any',1),(3,2,'approve_posts',1),(3,2,'post_attachment',1),(3,2,'view_attachments',1),(-1,3,'poll_view',1),(0,3,'remove_own',1),(0,3,'lock_own',1),(0,3,'mark_any_notify',1),(0,3,'mark_notify',1),(0,3,'modify_own',1),(0,3,'poll_view',1),(0,3,'poll_vote',1),(0,3,'post_attachment',1),(0,3,'post_reply_any',1),(0,3,'post_reply_own',1),(0,3,'post_unapproved_replies_any',1),(0,3,'post_unapproved_replies_own',1),(0,3,'post_unapproved_attachments',1),(0,3,'delete_own',1),(0,3,'report_any',1),(0,3,'send_topic',1),(0,3,'view_attachments',1),(2,3,'moderate_board',1),(2,3,'post_new',1),(2,3,'post_reply_own',1),(2,3,'post_reply_any',1),(2,3,'post_unapproved_topics',1),(2,3,'post_unapproved_replies_any',1),(2,3,'post_unapproved_replies_own',1),(2,3,'post_unapproved_attachments',1),(2,3,'poll_post',1),(2,3,'poll_add_any',1),(2,3,'poll_remove_any',1),(2,3,'poll_view',1),(2,3,'poll_vote',1),(2,3,'poll_lock_any',1),(2,3,'poll_edit_any',1),(2,3,'report_any',1),(2,3,'lock_own',1),(2,3,'send_topic',1),(2,3,'mark_any_notify',1),(2,3,'mark_notify',1),(2,3,'delete_own',1),(2,3,'modify_own',1),(2,3,'make_sticky',1),(2,3,'lock_any',1),(2,3,'remove_any',1),(2,3,'move_any',1),(2,3,'merge_any',1),(2,3,'split_any',1),(2,3,'delete_any',1),(2,3,'modify_any',1),(2,3,'approve_posts',1),(2,3,'post_attachment',1),(2,3,'view_attachments',1),(3,3,'moderate_board',1),(3,3,'post_new',1),(3,3,'post_reply_own',1),(3,3,'post_reply_any',1),(3,3,'post_unapproved_topics',1),(3,3,'post_unapproved_replies_any',1),(3,3,'post_unapproved_replies_own',1),(3,3,'post_unapproved_attachments',1),(3,3,'poll_post',1),(3,3,'poll_add_any',1),(3,3,'poll_remove_any',1),(3,3,'poll_view',1),(3,3,'poll_vote',1),(3,3,'poll_lock_any',1),(3,3,'poll_edit_any',1),(3,3,'report_any',1),(3,3,'lock_own',1),(3,3,'send_topic',1),(3,3,'mark_any_notify',1),(3,3,'mark_notify',1),(3,3,'delete_own',1),(3,3,'modify_own',1),(3,3,'make_sticky',1),(3,3,'lock_any',1),(3,3,'remove_any',1),(3,3,'move_any',1),(3,3,'merge_any',1),(3,3,'split_any',1),(3,3,'delete_any',1),(3,3,'modify_any',1),(3,3,'approve_posts',1),(3,3,'post_attachment',1),(3,3,'view_attachments',1),(-1,4,'poll_view',1),(0,4,'mark_any_notify',1),(0,4,'mark_notify',1),(0,4,'poll_view',1),(0,4,'poll_vote',1),(0,4,'report_any',1),(0,4,'send_topic',1),(0,4,'view_attachments',1),(2,4,'moderate_board',1),(2,4,'post_new',1),(2,4,'post_reply_own',1),(2,4,'post_reply_any',1),(2,4,'post_unapproved_topics',1),(2,4,'post_unapproved_replies_any',1),(2,4,'post_unapproved_replies_own',1),(2,4,'post_unapproved_attachments',1),(2,4,'poll_post',1),(2,4,'poll_add_any',1),(2,4,'poll_remove_any',1),(2,4,'poll_view',1),(2,4,'poll_vote',1),(2,4,'poll_lock_any',1),(2,4,'poll_edit_any',1),(2,4,'report_any',1),(2,4,'lock_own',1),(2,4,'send_topic',1),(2,4,'mark_any_notify',1),(2,4,'mark_notify',1),(2,4,'delete_own',1),(2,4,'modify_own',1),(2,4,'make_sticky',1),(2,4,'lock_any',1),(2,4,'remove_any',1),(2,4,'move_any',1),(2,4,'merge_any',1),(2,4,'split_any',1),(2,4,'delete_any',1),(2,4,'modify_any',1),(2,4,'approve_posts',1),(2,4,'post_attachment',1),(2,4,'view_attachments',1),(3,4,'moderate_board',1),(3,4,'post_new',1),(3,4,'post_reply_own',1),(3,4,'post_reply_any',1),(3,4,'post_unapproved_topics',1),(3,4,'post_unapproved_replies_any',1),(3,4,'post_unapproved_replies_own',1),(3,4,'post_unapproved_attachments',1),(3,4,'poll_post',1),(3,4,'poll_add_any',1),(3,4,'poll_remove_any',1),(3,4,'poll_view',1),(3,4,'poll_vote',1),(3,4,'poll_lock_any',1),(3,4,'poll_edit_any',1),(3,4,'report_any',1),(3,4,'lock_own',1),(3,4,'send_topic',1),(3,4,'mark_any_notify',1),(3,4,'mark_notify',1),(3,4,'delete_own',1),(3,4,'modify_own',1),(3,4,'make_sticky',1),(3,4,'lock_any',1),(3,4,'remove_any',1),(3,4,'move_any',1),(3,4,'merge_any',1),(3,4,'split_any',1),(3,4,'delete_any',1),(3,4,'modify_any',1),(3,4,'approve_posts',1),(3,4,'post_attachment',1),(3,4,'view_attachments',1);
/*!40000 ALTER TABLE `smf_board_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_boards`
--

DROP TABLE IF EXISTS `smf_boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_boards` (
  `id_board` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_cat` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `child_level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `id_parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `board_order` smallint(5) NOT NULL DEFAULT '0',
  `id_last_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_msg_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `member_groups` varchar(255) NOT NULL DEFAULT '-1,0',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `num_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count_posts` tinyint(4) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `override_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `unapproved_topics` smallint(5) NOT NULL DEFAULT '0',
  `redirect` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_board`),
  UNIQUE KEY `categories` (`id_cat`,`id_board`),
  KEY `id_parent` (`id_parent`),
  KEY `id_msg_updated` (`id_msg_updated`),
  KEY `member_groups` (`member_groups`(48))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_boards`
--

LOCK TABLES `smf_boards` WRITE;
/*!40000 ALTER TABLE `smf_boards` DISABLE KEYS */;
INSERT INTO `smf_boards` VALUES (1,1,0,0,1,1,1,'-1,0,2',1,'General Discussion','Feel free to talk about anything and everything in this board.',1,1,0,0,0,0,0,'');
/*!40000 ALTER TABLE `smf_boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_calendar`
--

DROP TABLE IF EXISTS `smf_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_calendar` (
  `id_event` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL DEFAULT '0001-01-01',
  `end_date` date NOT NULL DEFAULT '0001-01-01',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_event`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`),
  KEY `topic` (`id_topic`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_calendar`
--

LOCK TABLES `smf_calendar` WRITE;
/*!40000 ALTER TABLE `smf_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_calendar_holidays`
--

DROP TABLE IF EXISTS `smf_calendar_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_calendar_holidays` (
  `id_holiday` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `event_date` date NOT NULL DEFAULT '0001-01-01',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_holiday`),
  KEY `event_date` (`event_date`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_calendar_holidays`
--

LOCK TABLES `smf_calendar_holidays` WRITE;
/*!40000 ALTER TABLE `smf_calendar_holidays` DISABLE KEYS */;
INSERT INTO `smf_calendar_holidays` VALUES (1,'0004-01-01','New Year\'s'),(2,'0004-12-25','Christmas'),(3,'0004-02-14','Valentine\'s Day'),(4,'0004-03-17','St. Patrick\'s Day'),(5,'0004-04-01','April Fools'),(6,'0004-04-22','Earth Day'),(7,'0004-10-24','United Nations Day'),(8,'0004-10-31','Halloween'),(9,'2010-05-09','Mother\'s Day'),(10,'2011-05-08','Mother\'s Day'),(11,'2012-05-13','Mother\'s Day'),(12,'2013-05-12','Mother\'s Day'),(13,'2014-05-11','Mother\'s Day'),(14,'2015-05-10','Mother\'s Day'),(15,'2016-05-08','Mother\'s Day'),(16,'2017-05-14','Mother\'s Day'),(17,'2018-05-13','Mother\'s Day'),(18,'2019-05-12','Mother\'s Day'),(19,'2020-05-10','Mother\'s Day'),(20,'2008-06-15','Father\'s Day'),(21,'2009-06-21','Father\'s Day'),(22,'2010-06-20','Father\'s Day'),(23,'2011-06-19','Father\'s Day'),(24,'2012-06-17','Father\'s Day'),(25,'2013-06-16','Father\'s Day'),(26,'2014-06-15','Father\'s Day'),(27,'2015-06-21','Father\'s Day'),(28,'2016-06-19','Father\'s Day'),(29,'2017-06-18','Father\'s Day'),(30,'2018-06-17','Father\'s Day'),(31,'2019-06-16','Father\'s Day'),(32,'2020-06-21','Father\'s Day'),(33,'2010-06-21','Summer Solstice'),(34,'2011-06-21','Summer Solstice'),(35,'2012-06-20','Summer Solstice'),(36,'2013-06-21','Summer Solstice'),(37,'2014-06-21','Summer Solstice'),(38,'2015-06-21','Summer Solstice'),(39,'2016-06-20','Summer Solstice'),(40,'2017-06-20','Summer Solstice'),(41,'2018-06-21','Summer Solstice'),(42,'2019-06-21','Summer Solstice'),(43,'2020-06-20','Summer Solstice'),(44,'2010-03-20','Vernal Equinox'),(45,'2011-03-20','Vernal Equinox'),(46,'2012-03-20','Vernal Equinox'),(47,'2013-03-20','Vernal Equinox'),(48,'2014-03-20','Vernal Equinox'),(49,'2015-03-20','Vernal Equinox'),(50,'2016-03-19','Vernal Equinox'),(51,'2017-03-20','Vernal Equinox'),(52,'2018-03-20','Vernal Equinox'),(53,'2019-03-20','Vernal Equinox'),(54,'2020-03-19','Vernal Equinox'),(55,'2010-12-21','Winter Solstice'),(56,'2011-12-22','Winter Solstice'),(57,'2012-12-21','Winter Solstice'),(58,'2013-12-21','Winter Solstice'),(59,'2014-12-21','Winter Solstice'),(60,'2015-12-21','Winter Solstice'),(61,'2016-12-21','Winter Solstice'),(62,'2017-12-21','Winter Solstice'),(63,'2018-12-21','Winter Solstice'),(64,'2019-12-21','Winter Solstice'),(65,'2020-12-21','Winter Solstice'),(66,'2010-09-22','Autumnal Equinox'),(67,'2011-09-23','Autumnal Equinox'),(68,'2012-09-22','Autumnal Equinox'),(69,'2013-09-22','Autumnal Equinox'),(70,'2014-09-22','Autumnal Equinox'),(71,'2015-09-23','Autumnal Equinox'),(72,'2016-09-22','Autumnal Equinox'),(73,'2017-09-22','Autumnal Equinox'),(74,'2018-09-22','Autumnal Equinox'),(75,'2019-09-23','Autumnal Equinox'),(76,'2020-09-22','Autumnal Equinox'),(77,'0004-07-04','Independence Day'),(78,'0004-05-05','Cinco de Mayo'),(79,'0004-06-14','Flag Day'),(80,'0004-11-11','Veterans Day'),(81,'0004-02-02','Groundhog Day'),(82,'2010-11-25','Thanksgiving'),(83,'2011-11-24','Thanksgiving'),(84,'2012-11-22','Thanksgiving'),(85,'2013-11-28','Thanksgiving'),(86,'2014-11-27','Thanksgiving'),(87,'2015-11-26','Thanksgiving'),(88,'2016-11-24','Thanksgiving'),(89,'2017-11-23','Thanksgiving'),(90,'2018-11-22','Thanksgiving'),(91,'2019-11-28','Thanksgiving'),(92,'2020-11-26','Thanksgiving'),(93,'2010-05-31','Memorial Day'),(94,'2011-05-30','Memorial Day'),(95,'2012-05-28','Memorial Day'),(96,'2013-05-27','Memorial Day'),(97,'2014-05-26','Memorial Day'),(98,'2015-05-25','Memorial Day'),(99,'2016-05-30','Memorial Day'),(100,'2017-05-29','Memorial Day'),(101,'2018-05-28','Memorial Day'),(102,'2019-05-27','Memorial Day'),(103,'2020-05-25','Memorial Day'),(104,'2010-09-06','Labor Day'),(105,'2011-09-05','Labor Day'),(106,'2012-09-03','Labor Day'),(107,'2013-09-02','Labor Day'),(108,'2014-09-01','Labor Day'),(109,'2015-09-07','Labor Day'),(110,'2016-09-05','Labor Day'),(111,'2017-09-04','Labor Day'),(112,'2018-09-03','Labor Day'),(113,'2019-09-02','Labor Day'),(114,'2020-09-07','Labor Day'),(115,'0004-06-06','D-Day');
/*!40000 ALTER TABLE `smf_calendar_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_categories`
--

DROP TABLE IF EXISTS `smf_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_categories` (
  `id_cat` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `cat_order` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `can_collapse` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cat`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_categories`
--

LOCK TABLES `smf_categories` WRITE;
/*!40000 ALTER TABLE `smf_categories` DISABLE KEYS */;
INSERT INTO `smf_categories` VALUES (1,0,'General Category',1);
/*!40000 ALTER TABLE `smf_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_collapsed_categories`
--

DROP TABLE IF EXISTS `smf_collapsed_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_collapsed_categories` (
  `id_cat` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cat`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_collapsed_categories`
--

LOCK TABLES `smf_collapsed_categories` WRITE;
/*!40000 ALTER TABLE `smf_collapsed_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_collapsed_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_custom_fields`
--

DROP TABLE IF EXISTS `smf_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_custom_fields` (
  `id_field` smallint(5) NOT NULL AUTO_INCREMENT,
  `col_name` varchar(12) NOT NULL DEFAULT '',
  `field_name` varchar(40) NOT NULL DEFAULT '',
  `field_desc` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(8) NOT NULL DEFAULT 'text',
  `field_length` smallint(5) NOT NULL DEFAULT '255',
  `field_options` text NOT NULL,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `show_reg` tinyint(3) NOT NULL DEFAULT '0',
  `show_display` tinyint(3) NOT NULL DEFAULT '0',
  `show_profile` varchar(20) NOT NULL DEFAULT 'forumprofile',
  `private` tinyint(3) NOT NULL DEFAULT '0',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `bbc` tinyint(3) NOT NULL DEFAULT '0',
  `can_search` tinyint(3) NOT NULL DEFAULT '0',
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `enclose` text NOT NULL,
  `placement` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_field`),
  UNIQUE KEY `col_name` (`col_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_custom_fields`
--

LOCK TABLES `smf_custom_fields` WRITE;
/*!40000 ALTER TABLE `smf_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_group_moderators`
--

DROP TABLE IF EXISTS `smf_group_moderators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_group_moderators` (
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_group`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_group_moderators`
--

LOCK TABLES `smf_group_moderators` WRITE;
/*!40000 ALTER TABLE `smf_group_moderators` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_group_moderators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_actions`
--

DROP TABLE IF EXISTS `smf_log_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_actions` (
  `id_action` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_log` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `extra` text NOT NULL,
  PRIMARY KEY (`id_action`),
  KEY `id_log` (`id_log`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`),
  KEY `id_board` (`id_board`),
  KEY `id_msg` (`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_actions`
--

LOCK TABLES `smf_log_actions` WRITE;
/*!40000 ALTER TABLE `smf_log_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_activity`
--

DROP TABLE IF EXISTS `smf_log_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_activity` (
  `date` date NOT NULL DEFAULT '0001-01-01',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topics` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `registers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `most_on` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`),
  KEY `most_on` (`most_on`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_activity`
--

LOCK TABLES `smf_log_activity` WRITE;
/*!40000 ALTER TABLE `smf_log_activity` DISABLE KEYS */;
INSERT INTO `smf_log_activity` VALUES ('2016-01-19',0,1,1,1,1),('2016-01-22',0,0,0,0,1),('2016-03-09',0,0,0,0,1);
/*!40000 ALTER TABLE `smf_log_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_banned`
--

DROP TABLE IF EXISTS `smf_log_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_banned` (
  `id_ban_log` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ban_log`),
  KEY `log_time` (`log_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_banned`
--

LOCK TABLES `smf_log_banned` WRITE;
/*!40000 ALTER TABLE `smf_log_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_boards`
--

DROP TABLE IF EXISTS `smf_log_boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_boards` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_board`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_boards`
--

LOCK TABLES `smf_log_boards` WRITE;
/*!40000 ALTER TABLE `smf_log_boards` DISABLE KEYS */;
INSERT INTO `smf_log_boards` VALUES (1,1,1);
/*!40000 ALTER TABLE `smf_log_boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_comments`
--

DROP TABLE IF EXISTS `smf_log_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_comments` (
  `id_comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `comment_type` varchar(8) NOT NULL DEFAULT 'warning',
  `id_recipient` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recipient_name` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_notice` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `counter` tinyint(3) NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_recipient` (`id_recipient`),
  KEY `log_time` (`log_time`),
  KEY `comment_type` (`comment_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_comments`
--

LOCK TABLES `smf_log_comments` WRITE;
/*!40000 ALTER TABLE `smf_log_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_digest`
--

DROP TABLE IF EXISTS `smf_log_digest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_digest` (
  `id_topic` mediumint(8) unsigned NOT NULL,
  `id_msg` int(10) unsigned NOT NULL,
  `note_type` varchar(10) NOT NULL DEFAULT 'post',
  `daily` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exclude` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_digest`
--

LOCK TABLES `smf_log_digest` WRITE;
/*!40000 ALTER TABLE `smf_log_digest` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_digest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_errors`
--

DROP TABLE IF EXISTS `smf_log_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_errors` (
  `id_error` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `message` text NOT NULL,
  `session` char(32) NOT NULL DEFAULT '',
  `error_type` char(15) NOT NULL DEFAULT 'general',
  `file` varchar(255) NOT NULL DEFAULT '',
  `line` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_error`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_errors`
--

LOCK TABLES `smf_log_errors` WRITE;
/*!40000 ALTER TABLE `smf_log_errors` DISABLE KEYS */;
INSERT INTO `smf_log_errors` VALUES (3,1457488280,0,'','?scheduled=task;ts=1453272360','Could not retrieve the file http://www.simplemachines.org/smf/current-version.js?version=SMF+2.0.11.','','general','',0),(4,1457488280,0,'','?action=login2','Password incorrect - &lt;span class=&quot;remove&quot;&gt;castle&lt;/span&gt;','7df10869b0985aa1fdd67a3abe476b8a','user','',0);
/*!40000 ALTER TABLE `smf_log_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_floodcontrol`
--

DROP TABLE IF EXISTS `smf_log_floodcontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_floodcontrol` (
  `ip` char(16) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `log_type` varchar(8) NOT NULL DEFAULT 'post',
  PRIMARY KEY (`ip`,`log_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_floodcontrol`
--

LOCK TABLES `smf_log_floodcontrol` WRITE;
/*!40000 ALTER TABLE `smf_log_floodcontrol` DISABLE KEYS */;
INSERT INTO `smf_log_floodcontrol` VALUES ('',1457488292,'login');
/*!40000 ALTER TABLE `smf_log_floodcontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_group_requests`
--

DROP TABLE IF EXISTS `smf_log_group_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_group_requests` (
  `id_request` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_applied` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` text NOT NULL,
  PRIMARY KEY (`id_request`),
  UNIQUE KEY `id_member` (`id_member`,`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_group_requests`
--

LOCK TABLES `smf_log_group_requests` WRITE;
/*!40000 ALTER TABLE `smf_log_group_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_group_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_karma`
--

DROP TABLE IF EXISTS `smf_log_karma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_karma` (
  `id_target` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_executor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_target`,`id_executor`),
  KEY `log_time` (`log_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_karma`
--

LOCK TABLES `smf_log_karma` WRITE;
/*!40000 ALTER TABLE `smf_log_karma` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_karma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_mark_read`
--

DROP TABLE IF EXISTS `smf_log_mark_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_mark_read` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_board`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_mark_read`
--

LOCK TABLES `smf_log_mark_read` WRITE;
/*!40000 ALTER TABLE `smf_log_mark_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_mark_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_member_notices`
--

DROP TABLE IF EXISTS `smf_log_member_notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_member_notices` (
  `id_notice` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id_notice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_member_notices`
--

LOCK TABLES `smf_log_member_notices` WRITE;
/*!40000 ALTER TABLE `smf_log_member_notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_member_notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_notify`
--

DROP TABLE IF EXISTS `smf_log_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_notify` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_topic`,`id_board`),
  KEY `id_topic` (`id_topic`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_notify`
--

LOCK TABLES `smf_log_notify` WRITE;
/*!40000 ALTER TABLE `smf_log_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_online`
--

DROP TABLE IF EXISTS `smf_log_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_online` (
  `session` varchar(32) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  PRIMARY KEY (`session`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_online`
--

LOCK TABLES `smf_log_online` WRITE;
/*!40000 ALTER TABLE `smf_log_online` DISABLE KEYS */;
INSERT INTO `smf_log_online` VALUES ('c2cnu3c3nqp4tk844nelm1ern5',1457490532,1,0,0,'a:1:{s:10:\"USER_AGENT\";s:133:\"Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1\";}');
/*!40000 ALTER TABLE `smf_log_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_packages`
--

DROP TABLE IF EXISTS `smf_log_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_packages` (
  `id_install` int(10) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `package_id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `id_member_installed` mediumint(8) NOT NULL DEFAULT '0',
  `member_installed` varchar(255) NOT NULL DEFAULT '',
  `time_installed` int(10) NOT NULL DEFAULT '0',
  `id_member_removed` mediumint(8) NOT NULL DEFAULT '0',
  `member_removed` varchar(255) NOT NULL DEFAULT '',
  `time_removed` int(10) NOT NULL DEFAULT '0',
  `install_state` tinyint(3) NOT NULL DEFAULT '1',
  `failed_steps` text NOT NULL,
  `themes_installed` varchar(255) NOT NULL DEFAULT '',
  `db_changes` text NOT NULL,
  PRIMARY KEY (`id_install`),
  KEY `filename` (`filename`(15))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_packages`
--

LOCK TABLES `smf_log_packages` WRITE;
/*!40000 ALTER TABLE `smf_log_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_polls`
--

DROP TABLE IF EXISTS `smf_log_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_polls` (
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `id_poll` (`id_poll`,`id_member`,`id_choice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_polls`
--

LOCK TABLES `smf_log_polls` WRITE;
/*!40000 ALTER TABLE `smf_log_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_reported`
--

DROP TABLE IF EXISTS `smf_log_reported`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_reported` (
  `id_report` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `membername` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `time_started` int(10) NOT NULL DEFAULT '0',
  `time_updated` int(10) NOT NULL DEFAULT '0',
  `num_reports` mediumint(6) NOT NULL DEFAULT '0',
  `closed` tinyint(3) NOT NULL DEFAULT '0',
  `ignore_all` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_report`),
  KEY `id_member` (`id_member`),
  KEY `id_topic` (`id_topic`),
  KEY `closed` (`closed`),
  KEY `time_started` (`time_started`),
  KEY `id_msg` (`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_reported`
--

LOCK TABLES `smf_log_reported` WRITE;
/*!40000 ALTER TABLE `smf_log_reported` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_reported` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_reported_comments`
--

DROP TABLE IF EXISTS `smf_log_reported_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_reported_comments` (
  `id_comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_report` mediumint(8) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL,
  `membername` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `time_sent` int(10) NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_report` (`id_report`),
  KEY `id_member` (`id_member`),
  KEY `time_sent` (`time_sent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_reported_comments`
--

LOCK TABLES `smf_log_reported_comments` WRITE;
/*!40000 ALTER TABLE `smf_log_reported_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_reported_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_scheduled_tasks`
--

DROP TABLE IF EXISTS `smf_log_scheduled_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_scheduled_tasks` (
  `id_log` mediumint(8) NOT NULL AUTO_INCREMENT,
  `id_task` smallint(5) NOT NULL DEFAULT '0',
  `time_run` int(10) NOT NULL DEFAULT '0',
  `time_taken` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_log`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_scheduled_tasks`
--

LOCK TABLES `smf_log_scheduled_tasks` WRITE;
/*!40000 ALTER TABLE `smf_log_scheduled_tasks` DISABLE KEYS */;
INSERT INTO `smf_log_scheduled_tasks` VALUES (12,9,1457488313,0),(7,5,1457488249,0),(8,3,1457488265,0),(9,1,1457488280,0),(10,2,1457488295,2),(11,6,1457488307,0);
/*!40000 ALTER TABLE `smf_log_scheduled_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_search_messages`
--

DROP TABLE IF EXISTS `smf_log_search_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_search_messages` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_search_messages`
--

LOCK TABLES `smf_log_search_messages` WRITE;
/*!40000 ALTER TABLE `smf_log_search_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_search_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_search_results`
--

DROP TABLE IF EXISTS `smf_log_search_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_search_results` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `relevance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `num_matches` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_search_results`
--

LOCK TABLES `smf_log_search_results` WRITE;
/*!40000 ALTER TABLE `smf_log_search_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_search_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_search_subjects`
--

DROP TABLE IF EXISTS `smf_log_search_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_search_subjects` (
  `word` varchar(20) NOT NULL DEFAULT '',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word`,`id_topic`),
  KEY `id_topic` (`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_search_subjects`
--

LOCK TABLES `smf_log_search_subjects` WRITE;
/*!40000 ALTER TABLE `smf_log_search_subjects` DISABLE KEYS */;
INSERT INTO `smf_log_search_subjects` VALUES ('SMF',1),('to',1),('Welcome',1);
/*!40000 ALTER TABLE `smf_log_search_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_search_topics`
--

DROP TABLE IF EXISTS `smf_log_search_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_search_topics` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_search_topics`
--

LOCK TABLES `smf_log_search_topics` WRITE;
/*!40000 ALTER TABLE `smf_log_search_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_search_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_spider_hits`
--

DROP TABLE IF EXISTS `smf_log_spider_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_spider_hits` (
  `id_hit` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `processed` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_hit`),
  KEY `id_spider` (`id_spider`),
  KEY `log_time` (`log_time`),
  KEY `processed` (`processed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_spider_hits`
--

LOCK TABLES `smf_log_spider_hits` WRITE;
/*!40000 ALTER TABLE `smf_log_spider_hits` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_spider_hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_spider_stats`
--

DROP TABLE IF EXISTS `smf_log_spider_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_spider_stats` (
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `page_hits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `last_seen` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_date` date NOT NULL DEFAULT '0001-01-01',
  PRIMARY KEY (`stat_date`,`id_spider`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_spider_stats`
--

LOCK TABLES `smf_log_spider_stats` WRITE;
/*!40000 ALTER TABLE `smf_log_spider_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_spider_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_subscribed`
--

DROP TABLE IF EXISTS `smf_log_subscribed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_subscribed` (
  `id_sublog` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_subscribe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member` int(10) NOT NULL DEFAULT '0',
  `old_id_group` smallint(5) NOT NULL DEFAULT '0',
  `start_time` int(10) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `payments_pending` tinyint(3) NOT NULL DEFAULT '0',
  `pending_details` text NOT NULL,
  `reminder_sent` tinyint(3) NOT NULL DEFAULT '0',
  `vendor_ref` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_sublog`),
  UNIQUE KEY `id_subscribe` (`id_subscribe`,`id_member`),
  KEY `end_time` (`end_time`),
  KEY `reminder_sent` (`reminder_sent`),
  KEY `payments_pending` (`payments_pending`),
  KEY `status` (`status`),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_subscribed`
--

LOCK TABLES `smf_log_subscribed` WRITE;
/*!40000 ALTER TABLE `smf_log_subscribed` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_subscribed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_topics`
--

DROP TABLE IF EXISTS `smf_log_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_topics` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_topic`),
  KEY `id_topic` (`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_topics`
--

LOCK TABLES `smf_log_topics` WRITE;
/*!40000 ALTER TABLE `smf_log_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_mail_queue`
--

DROP TABLE IF EXISTS `smf_mail_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_mail_queue` (
  `id_mail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_sent` int(10) NOT NULL DEFAULT '0',
  `recipient` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `headers` text NOT NULL,
  `send_html` tinyint(3) NOT NULL DEFAULT '0',
  `priority` tinyint(3) NOT NULL DEFAULT '1',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_mail`),
  KEY `time_sent` (`time_sent`),
  KEY `mail_priority` (`priority`,`id_mail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_mail_queue`
--

LOCK TABLES `smf_mail_queue` WRITE;
/*!40000 ALTER TABLE `smf_mail_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_mail_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_membergroups`
--

DROP TABLE IF EXISTS `smf_membergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_membergroups` (
  `id_group` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(80) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `online_color` varchar(20) NOT NULL DEFAULT '',
  `min_posts` mediumint(9) NOT NULL DEFAULT '-1',
  `max_messages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stars` varchar(255) NOT NULL DEFAULT '',
  `group_type` tinyint(3) NOT NULL DEFAULT '0',
  `hidden` tinyint(3) NOT NULL DEFAULT '0',
  `id_parent` smallint(5) NOT NULL DEFAULT '-2',
  PRIMARY KEY (`id_group`),
  KEY `min_posts` (`min_posts`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_membergroups`
--

LOCK TABLES `smf_membergroups` WRITE;
/*!40000 ALTER TABLE `smf_membergroups` DISABLE KEYS */;
INSERT INTO `smf_membergroups` VALUES (1,'Administrator','','#FF0000',-1,0,'5#staradmin.gif',1,0,-2),(2,'Global Moderator','','#0000FF',-1,0,'5#stargmod.gif',0,0,-2),(3,'Moderator','','',-1,0,'5#starmod.gif',0,0,-2),(4,'Newbie','','',0,0,'1#star.gif',0,0,-2),(5,'Jr. Member','','',50,0,'2#star.gif',0,0,-2),(6,'Full Member','','',100,0,'3#star.gif',0,0,-2),(7,'Sr. Member','','',250,0,'4#star.gif',0,0,-2),(8,'Hero Member','','',500,0,'5#star.gif',0,0,-2);
/*!40000 ALTER TABLE `smf_membergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_members`
--

DROP TABLE IF EXISTS `smf_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_members` (
  `id_member` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `date_registered` int(10) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lngfile` varchar(255) NOT NULL DEFAULT '',
  `last_login` int(10) unsigned NOT NULL DEFAULT '0',
  `real_name` varchar(255) NOT NULL DEFAULT '',
  `instant_messages` smallint(5) NOT NULL DEFAULT '0',
  `unread_messages` smallint(5) NOT NULL DEFAULT '0',
  `new_pm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `buddy_list` text NOT NULL,
  `pm_ignore_list` varchar(255) NOT NULL DEFAULT '',
  `pm_prefs` mediumint(8) NOT NULL DEFAULT '0',
  `mod_prefs` varchar(20) NOT NULL DEFAULT '',
  `message_labels` text NOT NULL,
  `passwd` varchar(64) NOT NULL DEFAULT '',
  `openid_uri` text NOT NULL,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `personal_text` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `website_title` varchar(255) NOT NULL DEFAULT '',
  `website_url` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `icq` varchar(255) NOT NULL DEFAULT '',
  `aim` varchar(255) NOT NULL DEFAULT '',
  `yim` varchar(32) NOT NULL DEFAULT '',
  `msn` varchar(255) NOT NULL DEFAULT '',
  `hide_email` tinyint(4) NOT NULL DEFAULT '0',
  `show_online` tinyint(4) NOT NULL DEFAULT '1',
  `time_format` varchar(80) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `time_offset` float NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `pm_email_notify` tinyint(4) NOT NULL DEFAULT '0',
  `karma_bad` smallint(5) unsigned NOT NULL DEFAULT '0',
  `karma_good` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usertitle` varchar(255) NOT NULL DEFAULT '',
  `notify_announcements` tinyint(4) NOT NULL DEFAULT '1',
  `notify_regularity` tinyint(4) NOT NULL DEFAULT '1',
  `notify_send_body` tinyint(4) NOT NULL DEFAULT '0',
  `notify_types` tinyint(4) NOT NULL DEFAULT '2',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `member_ip2` varchar(255) NOT NULL DEFAULT '',
  `secret_question` varchar(255) NOT NULL DEFAULT '',
  `secret_answer` varchar(64) NOT NULL DEFAULT '',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `validation_code` varchar(10) NOT NULL DEFAULT '',
  `id_msg_last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `additional_groups` varchar(255) NOT NULL DEFAULT '',
  `smiley_set` varchar(48) NOT NULL DEFAULT '',
  `id_post_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_time_logged_in` int(10) unsigned NOT NULL DEFAULT '0',
  `password_salt` varchar(255) NOT NULL DEFAULT '',
  `ignore_boards` text NOT NULL,
  `warning` tinyint(4) NOT NULL DEFAULT '0',
  `passwd_flood` varchar(12) NOT NULL DEFAULT '',
  `pm_receive_from` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `ocp_mobile_phone_number` text,
  `ocp_points_gained_seedy` text,
  `ocp_points_gained_chat` text,
  `ocp_currency` text,
  `ocp_payment_cardholder_name` text,
  `ocp_payment_type` text,
  `ocp_payment_card_number` text,
  `ocp_payment_card_start_date` text,
  `ocp_payment_card_expiry_date` text,
  `ocp_payment_card_issue_number` text,
  `ocp_payment_card_cv2` text,
  `ocp_firstname` text,
  `ocp_lastname` text,
  `ocp_building_name_or_number` text,
  `ocp_city` text,
  `ocp_state` text,
  `ocp_post_code` text,
  `ocp_country` text,
  `ocp_points_used` text,
  `ocp_gift_points_used` text,
  `ocp_points_gained_given` text,
  `ocp_points_gained_rating` text,
  `ocp_points_gained_voting` text,
  `ocp_sites` text,
  `ocp_role` text,
  `ocp_fullname` text,
  PRIMARY KEY (`id_member`),
  KEY `member_name` (`member_name`),
  KEY `real_name` (`real_name`),
  KEY `date_registered` (`date_registered`),
  KEY `id_group` (`id_group`),
  KEY `birthdate` (`birthdate`),
  KEY `posts` (`posts`),
  KEY `last_login` (`last_login`),
  KEY `lngfile` (`lngfile`(30)),
  KEY `id_post_group` (`id_post_group`),
  KEY `warning` (`warning`),
  KEY `total_time_logged_in` (`total_time_logged_in`),
  KEY `id_theme` (`id_theme`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_members`
--

LOCK TABLES `smf_members` WRITE;
/*!40000 ALTER TABLE `smf_members` DISABLE KEYS */;
INSERT INTO `smf_members` VALUES (1,'castle',1453174134,0,1,'',1457490503,'castle',0,0,0,'','',0,'','','370e20a955738d7b782c6300762c038c21926b45','','chenhao6593@163.com','',0,'0001-01-01','','','','','','','',0,1,'','',0,'',0,0,0,'',1,1,0,2,'','','','',0,1,'',1,'','',0,685,'3dec','',0,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `smf_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_message_icons`
--

DROP TABLE IF EXISTS `smf_message_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_message_icons` (
  `id_icon` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `filename` varchar(80) NOT NULL DEFAULT '',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_icon`),
  KEY `id_board` (`id_board`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_message_icons`
--

LOCK TABLES `smf_message_icons` WRITE;
/*!40000 ALTER TABLE `smf_message_icons` DISABLE KEYS */;
INSERT INTO `smf_message_icons` VALUES (1,'Standard','xx',0,0),(2,'Thumb Up','thumbup',0,1),(3,'Thumb Down','thumbdown',0,2),(4,'Exclamation point','exclamation',0,3),(5,'Question mark','question',0,4),(6,'Lamp','lamp',0,5),(7,'Smiley','smiley',0,6),(8,'Angry','angry',0,7),(9,'Cheesy','cheesy',0,8),(10,'Grin','grin',0,9),(11,'Sad','sad',0,10),(12,'Wink','wink',0,11);
/*!40000 ALTER TABLE `smf_message_icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_messages`
--

DROP TABLE IF EXISTS `smf_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_messages` (
  `id_msg` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `poster_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg_modified` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  `poster_email` varchar(255) NOT NULL DEFAULT '',
  `poster_ip` varchar(255) NOT NULL DEFAULT '',
  `smileys_enabled` tinyint(4) NOT NULL DEFAULT '1',
  `modified_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_name` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `icon` varchar(16) NOT NULL DEFAULT 'xx',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_msg`),
  UNIQUE KEY `topic` (`id_topic`,`id_msg`),
  UNIQUE KEY `id_board` (`id_board`,`id_msg`),
  UNIQUE KEY `id_member` (`id_member`,`id_msg`),
  KEY `approved` (`approved`),
  KEY `ip_index` (`poster_ip`(15),`id_topic`),
  KEY `participation` (`id_member`,`id_topic`),
  KEY `show_posts` (`id_member`,`id_board`),
  KEY `id_topic` (`id_topic`),
  KEY `id_member_msg` (`id_member`,`approved`,`id_msg`),
  KEY `current_topic` (`id_topic`,`id_msg`,`id_member`,`approved`),
  KEY `related_ip` (`id_member`,`poster_ip`,`id_msg`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_messages`
--

LOCK TABLES `smf_messages` WRITE;
/*!40000 ALTER TABLE `smf_messages` DISABLE KEYS */;
INSERT INTO `smf_messages` VALUES (1,1,1,1453174065,0,1,'Welcome to SMF!','Simple Machines','info@simplemachines.org','127.0.0.1',1,0,'','Welcome to Simple Machines Forum!<br /><br />We hope you enjoy using your forum.&nbsp; If you have any problems, please feel free to [url=http://www.simplemachines.org/community/index.php]ask us for assistance[/url].<br /><br />Thanks!<br />Simple Machines','xx',1);
/*!40000 ALTER TABLE `smf_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_moderators`
--

DROP TABLE IF EXISTS `smf_moderators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_moderators` (
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_board`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_moderators`
--

LOCK TABLES `smf_moderators` WRITE;
/*!40000 ALTER TABLE `smf_moderators` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_moderators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_openid_assoc`
--

DROP TABLE IF EXISTS `smf_openid_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_openid_assoc` (
  `server_url` text NOT NULL,
  `handle` varchar(255) NOT NULL DEFAULT '',
  `secret` text NOT NULL,
  `issued` int(10) NOT NULL DEFAULT '0',
  `expires` int(10) NOT NULL DEFAULT '0',
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`server_url`(125),`handle`(125)),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_openid_assoc`
--

LOCK TABLES `smf_openid_assoc` WRITE;
/*!40000 ALTER TABLE `smf_openid_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_openid_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_package_servers`
--

DROP TABLE IF EXISTS `smf_package_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_package_servers` (
  `id_server` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_server`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_package_servers`
--

LOCK TABLES `smf_package_servers` WRITE;
/*!40000 ALTER TABLE `smf_package_servers` DISABLE KEYS */;
INSERT INTO `smf_package_servers` VALUES (1,'Simple Machines Third-party Mod Site','http://custom.simplemachines.org/packages/mods');
/*!40000 ALTER TABLE `smf_package_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_permission_profiles`
--

DROP TABLE IF EXISTS `smf_permission_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_permission_profiles` (
  `id_profile` smallint(5) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_profile`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_permission_profiles`
--

LOCK TABLES `smf_permission_profiles` WRITE;
/*!40000 ALTER TABLE `smf_permission_profiles` DISABLE KEYS */;
INSERT INTO `smf_permission_profiles` VALUES (1,'default'),(2,'no_polls'),(3,'reply_only'),(4,'read_only');
/*!40000 ALTER TABLE `smf_permission_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_permissions`
--

DROP TABLE IF EXISTS `smf_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_group`,`permission`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_permissions`
--

LOCK TABLES `smf_permissions` WRITE;
/*!40000 ALTER TABLE `smf_permissions` DISABLE KEYS */;
INSERT INTO `smf_permissions` VALUES (-1,'search_posts',1),(-1,'calendar_view',1),(-1,'view_stats',1),(-1,'profile_view_any',1),(0,'view_mlist',1),(0,'search_posts',1),(0,'profile_view_own',1),(0,'profile_view_any',1),(0,'pm_read',1),(0,'pm_send',1),(0,'calendar_view',1),(0,'view_stats',1),(0,'who_view',1),(0,'profile_identity_own',1),(0,'profile_extra_own',1),(0,'profile_remove_own',1),(0,'profile_server_avatar',1),(0,'profile_upload_avatar',1),(0,'profile_remote_avatar',1),(0,'karma_edit',1),(2,'view_mlist',1),(2,'search_posts',1),(2,'profile_view_own',1),(2,'profile_view_any',1),(2,'pm_read',1),(2,'pm_send',1),(2,'calendar_view',1),(2,'view_stats',1),(2,'who_view',1),(2,'profile_identity_own',1),(2,'profile_extra_own',1),(2,'profile_remove_own',1),(2,'profile_server_avatar',1),(2,'profile_upload_avatar',1),(2,'profile_remote_avatar',1),(2,'profile_title_own',1),(2,'calendar_post',1),(2,'calendar_edit_any',1),(2,'karma_edit',1),(2,'access_mod_center',1);
/*!40000 ALTER TABLE `smf_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_personal_messages`
--

DROP TABLE IF EXISTS `smf_personal_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_personal_messages` (
  `id_pm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pm_head` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `deleted_by_sender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `msgtime` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id_pm`),
  KEY `id_member` (`id_member_from`,`deleted_by_sender`),
  KEY `msgtime` (`msgtime`),
  KEY `id_pm_head` (`id_pm_head`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_personal_messages`
--

LOCK TABLES `smf_personal_messages` WRITE;
/*!40000 ALTER TABLE `smf_personal_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_personal_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_pm_recipients`
--

DROP TABLE IF EXISTS `smf_pm_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_pm_recipients` (
  `id_pm` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `labels` varchar(60) NOT NULL DEFAULT '-1',
  `bcc` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pm`,`id_member`),
  UNIQUE KEY `id_member` (`id_member`,`deleted`,`id_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_pm_recipients`
--

LOCK TABLES `smf_pm_recipients` WRITE;
/*!40000 ALTER TABLE `smf_pm_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_pm_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_pm_rules`
--

DROP TABLE IF EXISTS `smf_pm_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_pm_rules` (
  `id_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` int(10) unsigned NOT NULL DEFAULT '0',
  `rule_name` varchar(60) NOT NULL,
  `criteria` text NOT NULL,
  `actions` text NOT NULL,
  `delete_pm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_or` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_rule`),
  KEY `id_member` (`id_member`),
  KEY `delete_pm` (`delete_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_pm_rules`
--

LOCK TABLES `smf_pm_rules` WRITE;
/*!40000 ALTER TABLE `smf_pm_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_pm_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_poll_choices`
--

DROP TABLE IF EXISTS `smf_poll_choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_poll_choices` (
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `votes` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_poll`,`id_choice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_poll_choices`
--

LOCK TABLES `smf_poll_choices` WRITE;
/*!40000 ALTER TABLE `smf_poll_choices` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_poll_choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_polls`
--

DROP TABLE IF EXISTS `smf_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_polls` (
  `id_poll` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `voting_locked` tinyint(1) NOT NULL DEFAULT '0',
  `max_votes` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `hide_results` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `change_vote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest_vote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `num_guest_voters` int(10) unsigned NOT NULL DEFAULT '0',
  `reset_poll` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_poll`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_polls`
--

LOCK TABLES `smf_polls` WRITE;
/*!40000 ALTER TABLE `smf_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_scheduled_tasks`
--

DROP TABLE IF EXISTS `smf_scheduled_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_scheduled_tasks` (
  `id_task` smallint(5) NOT NULL AUTO_INCREMENT,
  `next_time` int(10) NOT NULL DEFAULT '0',
  `time_offset` int(10) NOT NULL DEFAULT '0',
  `time_regularity` smallint(5) NOT NULL DEFAULT '0',
  `time_unit` varchar(1) NOT NULL DEFAULT 'h',
  `disabled` tinyint(3) NOT NULL DEFAULT '0',
  `task` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_task`),
  UNIQUE KEY `task` (`task`),
  KEY `next_time` (`next_time`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_scheduled_tasks`
--

LOCK TABLES `smf_scheduled_tasks` WRITE;
/*!40000 ALTER TABLE `smf_scheduled_tasks` DISABLE KEYS */;
INSERT INTO `smf_scheduled_tasks` VALUES (1,1457496000,0,2,'h',0,'approval_notification'),(2,1458086400,0,7,'d',0,'auto_optimize'),(3,1457568060,60,1,'d',0,'daily_maintenance'),(5,1457568000,0,1,'d',0,'daily_digest'),(6,1458086400,0,1,'w',0,'weekly_digest'),(7,1457592360,110812,1,'d',0,'fetchSMfiles'),(8,0,0,1,'d',1,'birthdayemails'),(9,1458086400,0,1,'w',0,'weekly_maintenance'),(10,0,120,1,'d',1,'paid_subscriptions');
/*!40000 ALTER TABLE `smf_scheduled_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_sessions`
--

DROP TABLE IF EXISTS `smf_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_sessions` (
  `session_id` char(32) NOT NULL,
  `last_update` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_sessions`
--

LOCK TABLES `smf_sessions` WRITE;
/*!40000 ALTER TABLE `smf_sessions` DISABLE KEYS */;
INSERT INTO `smf_sessions` VALUES ('c2cnu3c3nqp4tk844nelm1ern5',1457495336,'session_value|s:32:\"6b58c3a5e1e8be203b1da9cd0b6e3505\";session_var|s:10:\"e6f7405ade\";mc|a:7:{s:4:\"time\";i:1457488292;s:2:\"id\";s:1:\"1\";s:2:\"gq\";s:3:\"1=1\";s:2:\"bq\";s:3:\"1=1\";s:2:\"ap\";a:1:{i:0;i:0;}s:2:\"mb\";a:0:{}s:2:\"mq\";s:3:\"0=1\";}ban|a:5:{s:12:\"last_checked\";i:1457488292;s:9:\"id_member\";i:0;s:2:\"ip\";s:0:\"\";s:3:\"ip2\";s:0:\"\";s:5:\"email\";s:0:\"\";}log_time|i:1457490532;timeOnlineUpdated|i:1457490503;old_url|s:30:\"http://localhost/smf/index.php\";USER_AGENT|s:133:\"Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1\";login_SMFCookie956|s:95:\"a:4:{i:0;s:1:\"1\";i:1;s:40:\"2efc5c24308113ca9a6d1f58803b440508ca1f8e\";i:2;i:1646704292;i:3;i:2;}\";admin_time|i:1457488292;id_msg_last_visit|s:1:\"1\";rc|a:3:{s:2:\"id\";s:1:\"1\";s:4:\"time\";i:1457488292;s:7:\"reports\";s:1:\"0\";}unread_messages|i:0;id_theme|i:0;');
/*!40000 ALTER TABLE `smf_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_settings`
--

DROP TABLE IF EXISTS `smf_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_settings` (
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`variable`(30))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_settings`
--

LOCK TABLES `smf_settings` WRITE;
/*!40000 ALTER TABLE `smf_settings` DISABLE KEYS */;
INSERT INTO `smf_settings` VALUES ('smfVersion','2.0.11'),('news','SMF - Just Installed!'),('compactTopicPagesContiguous','5'),('compactTopicPagesEnable','1'),('enableStickyTopics','1'),('todayMod','1'),('karmaMode','0'),('karmaTimeRestrictAdmins','1'),('enablePreviousNext','1'),('pollMode','1'),('enableVBStyleLogin','1'),('enableCompressedOutput','1'),('karmaWaitTime','1'),('karmaMinPosts','0'),('karmaLabel','Karma:'),('karmaSmiteLabel','[smite]'),('karmaApplaudLabel','[applaud]'),('attachmentSizeLimit','128'),('attachmentPostLimit','192'),('attachmentNumPerPostLimit','4'),('attachmentDirSizeLimit','10240'),('attachmentUploadDir','D:\\zendspace\\smf/attachments'),('attachmentExtensions','doc,gif,jpg,mpg,pdf,png,txt,zip'),('attachmentCheckExtensions','0'),('attachmentShowImages','1'),('attachmentEnable','1'),('attachmentEncryptFilenames','1'),('attachmentThumbnails','1'),('attachmentThumbWidth','150'),('attachmentThumbHeight','150'),('censorIgnoreCase','1'),('mostOnline','1'),('mostOnlineToday','1'),('mostDate','1457490534'),('allow_disableAnnounce','1'),('trackStats','1'),('userLanguage','1'),('titlesEnable','1'),('topicSummaryPosts','15'),('enableErrorLogging','1'),('max_image_width','0'),('max_image_height','0'),('onlineEnable','0'),('cal_enabled','0'),('cal_maxyear','2020'),('cal_minyear','2008'),('cal_daysaslink','0'),('cal_defaultboard',''),('cal_showholidays','1'),('cal_showbdays','1'),('cal_showevents','1'),('cal_showweeknum','0'),('cal_maxspan','7'),('smtp_host',''),('smtp_port','25'),('smtp_username',''),('smtp_password',''),('mail_type','0'),('timeLoadPageEnable','0'),('totalMembers','1'),('totalTopics','1'),('totalMessages','1'),('simpleSearch','0'),('censor_vulgar',''),('censor_proper',''),('enablePostHTML','0'),('theme_allow','1'),('theme_default','1'),('theme_guests','1'),('enableEmbeddedFlash','0'),('xmlnews_enable','1'),('xmlnews_maxlen','255'),('hotTopicPosts','15'),('hotTopicVeryPosts','25'),('registration_method','0'),('send_validation_onChange','0'),('send_welcomeEmail','1'),('allow_editDisplayName','1'),('allow_hideOnline','1'),('guest_hideContacts','1'),('spamWaitTime','5'),('pm_spam_settings','10,5,20'),('reserveWord','0'),('reserveCase','1'),('reserveUser','1'),('reserveName','1'),('reserveNames','Admin\nWebmaster\nGuest\nroot'),('autoLinkUrls','1'),('banLastUpdated','0'),('smileys_dir','D:\\zendspace\\smf/Smileys'),('smileys_url','http://localhost/smf/Smileys'),('avatar_directory','D:\\zendspace\\smf/avatars'),('avatar_url','http://localhost/smf/avatars'),('avatar_max_height_external','65'),('avatar_max_width_external','65'),('avatar_action_too_large','option_html_resize'),('avatar_max_height_upload','65'),('avatar_max_width_upload','65'),('avatar_resize_upload','1'),('avatar_download_png','1'),('failed_login_threshold','3'),('oldTopicDays','120'),('edit_wait_time','90'),('edit_disable_time','0'),('autoFixDatabase','1'),('allow_guestAccess','1'),('time_format','%B %d, %Y, %I:%M:%S %p'),('number_format','1234.00'),('enableBBC','1'),('max_messageLength','20000'),('signature_settings','1,300,0,0,0,0,0,0:'),('autoOptMaxOnline','0'),('defaultMaxMessages','15'),('defaultMaxTopics','20'),('defaultMaxMembers','30'),('enableParticipation','1'),('recycle_enable','0'),('recycle_board','0'),('maxMsgID','1'),('enableAllMessages','0'),('fixLongWords','0'),('knownThemes','1,2,3'),('who_enabled','1'),('time_offset','0'),('cookieTime','60'),('lastActive','15'),('smiley_sets_known','default,aaron,akyhne'),('smiley_sets_names','Alienine\'s Set\nAaron\'s Set\nAkyhne\'s Set'),('smiley_sets_default','default'),('cal_days_for_index','7'),('requireAgreement','1'),('unapprovedMembers','0'),('default_personal_text',''),('package_make_backups','1'),('databaseSession_enable','1'),('databaseSession_loose','1'),('databaseSession_lifetime','2880'),('search_cache_size','50'),('search_results_per_page','30'),('search_weight_frequency','30'),('search_weight_age','25'),('search_weight_length','20'),('search_weight_subject','15'),('search_weight_first_message','10'),('search_max_results','1200'),('search_floodcontrol_time','5'),('permission_enable_deny','0'),('permission_enable_postgroups','0'),('mail_next_send','0'),('mail_recent','0000000000|0'),('settings_updated','0'),('next_task_time','1457496000'),('warning_settings','1,20,0'),('warning_watch','10'),('warning_moderate','35'),('warning_mute','60'),('admin_features',''),('last_mod_report_action','0'),('pruningOptions','30,180,180,180,30,0'),('cache_enable','1'),('reg_verification','1'),('visual_verification_type','3'),('enable_buddylist','1'),('birthday_email','happy_birthday'),('dont_repeat_theme_core','1'),('dont_repeat_smileys_20','1'),('dont_repeat_buddylists','1'),('attachment_image_reencode','1'),('attachment_image_paranoid','0'),('attachment_thumb_png','1'),('avatar_reencode','1'),('avatar_paranoid','0'),('global_character_set','UTF-8'),('globalCookies','1'),('default_timezone','Etc/GMT0'),('memberlist_updated','1453174134'),('latestMember','1'),('latestRealName','castle'),('rand_seed','192581514'),('mostOnlineUpdated','2016-03-09');
/*!40000 ALTER TABLE `smf_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_smileys`
--

DROP TABLE IF EXISTS `smf_smileys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_smileys` (
  `id_smiley` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(48) NOT NULL DEFAULT '',
  `description` varchar(80) NOT NULL DEFAULT '',
  `smiley_row` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_smiley`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_smileys`
--

LOCK TABLES `smf_smileys` WRITE;
/*!40000 ALTER TABLE `smf_smileys` DISABLE KEYS */;
INSERT INTO `smf_smileys` VALUES (1,':)','smiley.gif','Smiley',0,0,0),(2,';)','wink.gif','Wink',0,1,0),(3,':D','cheesy.gif','Cheesy',0,2,0),(4,';D','grin.gif','Grin',0,3,0),(5,'>:(','angry.gif','Angry',0,4,0),(6,':(','sad.gif','Sad',0,5,0),(7,':o','shocked.gif','Shocked',0,6,0),(8,'8)','cool.gif','Cool',0,7,0),(9,'???','huh.gif','Huh?',0,8,0),(10,'::)','rolleyes.gif','Roll Eyes',0,9,0),(11,':P','tongue.gif','Tongue',0,10,0),(12,':-[','embarrassed.gif','Embarrassed',0,11,0),(13,':-X','lipsrsealed.gif','Lips Sealed',0,12,0),(14,':-\\','undecided.gif','Undecided',0,13,0),(15,':-*','kiss.gif','Kiss',0,14,0),(16,':\'(','cry.gif','Cry',0,15,0),(17,'>:D','evil.gif','Evil',0,16,1),(18,'^-^','azn.gif','Azn',0,17,1),(19,'O0','afro.gif','Afro',0,18,1),(20,':))','laugh.gif','Laugh',0,19,1),(21,'C:-)','police.gif','Police',0,20,1),(22,'O:-)','angel.gif','Angel',0,21,1);
/*!40000 ALTER TABLE `smf_smileys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_spiders`
--

DROP TABLE IF EXISTS `smf_spiders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_spiders` (
  `id_spider` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `spider_name` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT '',
  `ip_info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_spider`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_spiders`
--

LOCK TABLES `smf_spiders` WRITE;
/*!40000 ALTER TABLE `smf_spiders` DISABLE KEYS */;
INSERT INTO `smf_spiders` VALUES (1,'Google','googlebot',''),(2,'Yahoo!','slurp',''),(3,'MSN','msnbot',''),(4,'Google (Mobile)','Googlebot-Mobile',''),(5,'Google (Image)','Googlebot-Image',''),(6,'Google (AdSense)','Mediapartners-Google',''),(7,'Google (Adwords)','AdsBot-Google',''),(8,'Yahoo! (Mobile)','YahooSeeker/M1A1-R2D2',''),(9,'Yahoo! (Image)','Yahoo-MMCrawler',''),(10,'MSN (Mobile)','MSNBOT_Mobile',''),(11,'MSN (Media)','msnbot-media',''),(12,'Cuil','twiceler',''),(13,'Ask','Teoma',''),(14,'Baidu','Baiduspider',''),(15,'Gigablast','Gigabot',''),(16,'InternetArchive','ia_archiver-web.archive.org',''),(17,'Alexa','ia_archiver',''),(18,'Omgili','omgilibot',''),(19,'EntireWeb','Speedy Spider','');
/*!40000 ALTER TABLE `smf_spiders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_subscriptions`
--

DROP TABLE IF EXISTS `smf_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_subscriptions` (
  `id_subscribe` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `cost` text NOT NULL,
  `length` varchar(6) NOT NULL DEFAULT '',
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `add_groups` varchar(40) NOT NULL DEFAULT '',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `repeatable` tinyint(3) NOT NULL DEFAULT '0',
  `allow_partial` tinyint(3) NOT NULL DEFAULT '0',
  `reminder` tinyint(3) NOT NULL DEFAULT '0',
  `email_complete` text NOT NULL,
  PRIMARY KEY (`id_subscribe`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_subscriptions`
--

LOCK TABLES `smf_subscriptions` WRITE;
/*!40000 ALTER TABLE `smf_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_themes`
--

DROP TABLE IF EXISTS `smf_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_themes` (
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id_theme`,`id_member`,`variable`(30)),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_themes`
--

LOCK TABLES `smf_themes` WRITE;
/*!40000 ALTER TABLE `smf_themes` DISABLE KEYS */;
INSERT INTO `smf_themes` VALUES (0,1,'name','SMF Default Theme - Curve'),(0,1,'theme_url','http://localhost/smf/Themes/default'),(0,1,'images_url','http://localhost/smf/Themes/default/images'),(0,1,'theme_dir','D:\\zendspace\\smf/Themes/default'),(0,1,'show_bbc','1'),(0,1,'show_latest_member','1'),(0,1,'show_modify','1'),(0,1,'show_user_images','1'),(0,1,'show_blurb','1'),(0,1,'show_gender','0'),(0,1,'show_newsfader','0'),(0,1,'number_recent_posts','0'),(0,1,'show_member_bar','1'),(0,1,'linktree_link','1'),(0,1,'show_profile_buttons','1'),(0,1,'show_mark_read','1'),(0,1,'show_stats_index','1'),(0,1,'linktree_inline','0'),(0,1,'show_board_desc','1'),(0,1,'newsfader_time','5000'),(0,1,'allow_no_censored','0'),(0,1,'additional_options_collapsable','1'),(0,1,'use_image_buttons','1'),(0,1,'enable_news','1'),(0,1,'forum_width','90%'),(0,2,'name','Core Theme'),(0,2,'theme_url','http://localhost/smf/Themes/core'),(0,2,'images_url','http://localhost/smf/Themes/core/images'),(0,2,'theme_dir','D:\\zendspace\\smf/Themes/core'),(-1,1,'display_quick_reply','1'),(-1,1,'posts_apply_ignore_list','1');
/*!40000 ALTER TABLE `smf_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_topics`
--

DROP TABLE IF EXISTS `smf_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_topics` (
  `id_topic` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `is_sticky` tinyint(4) NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_first_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member_started` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member_updated` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_previous_board` smallint(5) NOT NULL DEFAULT '0',
  `id_previous_topic` mediumint(8) NOT NULL DEFAULT '0',
  `num_replies` int(10) unsigned NOT NULL DEFAULT '0',
  `num_views` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_topic`),
  UNIQUE KEY `last_message` (`id_last_msg`,`id_board`),
  UNIQUE KEY `first_message` (`id_first_msg`,`id_board`),
  UNIQUE KEY `poll` (`id_poll`,`id_topic`),
  KEY `is_sticky` (`is_sticky`),
  KEY `approved` (`approved`),
  KEY `id_board` (`id_board`),
  KEY `member_started` (`id_member_started`,`id_board`),
  KEY `last_message_sticky` (`id_board`,`is_sticky`,`id_last_msg`),
  KEY `board_news` (`id_board`,`id_first_msg`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_topics`
--

LOCK TABLES `smf_topics` WRITE;
/*!40000 ALTER TABLE `smf_topics` DISABLE KEYS */;
INSERT INTO `smf_topics` VALUES (1,0,1,1,1,0,0,0,0,0,0,0,0,0,1);
/*!40000 ALTER TABLE `smf_topics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-10 18:11:44
