# Host: localhost  (Version: 5.5.53)
# Date: 2018-12-20 15:02:33
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "blockinfo"
#

CREATE TABLE `blockinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_block_seq` bigint(20) NOT NULL DEFAULT '0',
  `chain_id` bigint(20) NOT NULL DEFAULT '0',
  `hash` varchar(255) NOT NULL DEFAULT '',
  `block_header` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16403 DEFAULT CHARSET=utf8;

#
# Structure for table "chaininfo"
#

CREATE TABLE `chaininfo` (
  `chain_id` bigint(20) NOT NULL DEFAULT '0',
  `chain_create_info` text NOT NULL,
  `chain_dynamic_info` text NOT NULL,
  PRIMARY KEY (`chain_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for table "changevalidatorhistory"
#

CREATE TABLE `changevalidatorhistory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_id` bigint(20) DEFAULT '0',
  `index` bigint(20) DEFAULT '0',
  `change_data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Structure for table "deposithistory"
#

CREATE TABLE `deposithistory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_id` bigint(20) DEFAULT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `deposit_data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Structure for table "depositinfo"
#

CREATE TABLE `depositinfo` (
  `chain_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_deposit_data` tinytext,
  PRIMARY KEY (`chain_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for table "mainchaininfo"
#

CREATE TABLE `mainchaininfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `child_chain_count` bigint(20) NOT NULL DEFAULT '0',
  `contract_address` varchar(255) DEFAULT NULL,
  `contract_code` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Structure for table "withdrawalhistory"
#

CREATE TABLE `withdrawalhistory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_id` bigint(20) NOT NULL DEFAULT '0',
  `seq` bigint(20) DEFAULT NULL,
  `withdrawal_data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Structure for table "withdrawalinfo"
#

CREATE TABLE `withdrawalinfo` (
  `chain_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_withdrawal_data` text,
  PRIMARY KEY (`chain_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
