# Host: localhost  (Version: 5.5.53)
# Date: 2018-12-19 09:55:36
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "blockinfo"
#

DROP TABLE IF EXISTS `blockinfo`;
CREATE TABLE `blockinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_block_seq` bigint(20) NOT NULL DEFAULT '0',
  `chain_id` bigint(20) NOT NULL DEFAULT '0',
  `hash` varchar(255) NOT NULL DEFAULT '',
  `block_header` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

#
# Data for table "blockinfo"
#

/*!40000 ALTER TABLE `blockinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `blockinfo` ENABLE KEYS */;

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
# Structure for table "changevalidatorhistory"
#

DROP TABLE IF EXISTS `changevalidatorhistory`;
CREATE TABLE `changevalidatorhistory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_id` bigint(20) DEFAULT '0',
  `index` bigint(20) DEFAULT '0',
  `change_data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "changevalidatorhistory"
#

/*!40000 ALTER TABLE `changevalidatorhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `changevalidatorhistory` ENABLE KEYS */;

#
# Structure for table "deposithistory"
#

DROP TABLE IF EXISTS `deposithistory`;
CREATE TABLE `deposithistory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_id` bigint(20) DEFAULT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `deposit_data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "depositinfo"
#

/*!40000 ALTER TABLE `depositinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `depositinfo` ENABLE KEYS */;

#
# Structure for table "mainchaininfo"
#

DROP TABLE IF EXISTS `mainchaininfo`;
CREATE TABLE `mainchaininfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `child_chain_count` bigint(20) NOT NULL DEFAULT '0',
  `contract_address` varchar(255) DEFAULT NULL,
  `contract_code` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "mainchaininfo"
#

/*!40000 ALTER TABLE `mainchaininfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mainchaininfo` ENABLE KEYS */;

#
# Structure for table "withdrawalhistory"
#

DROP TABLE IF EXISTS `withdrawalhistory`;
CREATE TABLE `withdrawalhistory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_id` bigint(20) NOT NULL DEFAULT '0',
  `seq` bigint(20) DEFAULT NULL,
  `withdrawal_data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "withdrawalhistory"
#

/*!40000 ALTER TABLE `withdrawalhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdrawalhistory` ENABLE KEYS */;

#
# Structure for table "withdrawalinfo"
#

DROP TABLE IF EXISTS `withdrawalinfo`;
CREATE TABLE `withdrawalinfo` (
  `chain_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_withdrawal_data` text,
  PRIMARY KEY (`chain_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "withdrawalinfo"
#

/*!40000 ALTER TABLE `withdrawalinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdrawalinfo` ENABLE KEYS */;
