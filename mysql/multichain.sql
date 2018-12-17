# Host: localhost  (Version: 5.5.53)
# Date: 2018-12-15 17:39:17
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "blockinfo"
#

DROP TABLE IF EXISTS `blockinfo`;
CREATE TABLE `blockinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_block_id` bigint(20) NOT NULL DEFAULT '0',
  `chain_id` bigint(20) NOT NULL DEFAULT '0',
  `hash` varchar(255) NOT NULL DEFAULT '',
  `block_head` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "blockinfo"
#

/*!40000 ALTER TABLE `blockinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `blockinfo` ENABLE KEYS */;

#
# Structure for table "chaincount"
#

DROP TABLE IF EXISTS `chaincount`;
CREATE TABLE `chaincount` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `child_chain_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "chaincount"
#

/*!40000 ALTER TABLE `chaincount` DISABLE KEYS */;
INSERT INTO `chaincount` VALUES (1,0);
/*!40000 ALTER TABLE `chaincount` ENABLE KEYS */;

#
# Structure for table "chaininfo"
#

DROP TABLE IF EXISTS `chaininfo`;
CREATE TABLE `chaininfo` (
  `chain_id` bigint(20) NOT NULL DEFAULT '0',
  `chain_create_info` text NOT NULL,
  `chain_dynamic_info` text NOT NULL,
  PRIMARY KEY (`chain_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "chaininfo"
#

/*!40000 ALTER TABLE `chaininfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `chaininfo` ENABLE KEYS */;

#
# Structure for table "contractinfo"
#

DROP TABLE IF EXISTS `contractinfo`;
CREATE TABLE `contractinfo` (
  `contract_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_id` bigint(20) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `address_code` text NOT NULL,
  `contract_type` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contract_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "contractinfo"
#

/*!40000 ALTER TABLE `contractinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `contractinfo` ENABLE KEYS */;

#
# Structure for table "deposithistory"
#

DROP TABLE IF EXISTS `deposithistory`;
CREATE TABLE `deposithistory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_id` bigint(20) DEFAULT NULL,
  `index` bigint(20) DEFAULT NULL,
  `deposit_data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "deposithistory"
#

/*!40000 ALTER TABLE `deposithistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposithistory` ENABLE KEYS */;

#
# Structure for table "depositinfo"
#

DROP TABLE IF EXISTS `depositinfo`;
CREATE TABLE `depositinfo` (
  `chain_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_deposit_data` tinytext,
  PRIMARY KEY (`chain_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "depositinfo"
#

/*!40000 ALTER TABLE `depositinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `depositinfo` ENABLE KEYS */;
