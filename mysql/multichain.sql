# Host: 54.178.212.14:34307  (Version: 5.6.31-log)
# Date: 2019-01-08 11:59:21
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
) ENGINE=MyISAM AUTO_INCREMENT=18985 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Structure for table "chaininfo"
#

CREATE TABLE `chaininfo` (
  `chain_id` bigint(20) NOT NULL DEFAULT '0',
  `chain_create_info` text NOT NULL,
  `chain_dynamic_info` text NOT NULL,
  `deposit_withdrawal_contract` varchar(128) DEFAULT '' COMMENT '收取款合约地址',
  `validator_changes_contract` varchar(128) DEFAULT '' COMMENT '验证节点变更合约地址',
  `unit` varchar(32) DEFAULT '' COMMENT '单位',
  PRIMARY KEY (`chain_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Structure for table "changevalidatorhistory"
#

CREATE TABLE `changevalidatorhistory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_id` bigint(20) DEFAULT '0',
  `index` bigint(20) DEFAULT '0',
  `change_data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Structure for table "deposithistory"
#

CREATE TABLE `deposithistory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_id` bigint(20) DEFAULT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `deposit_data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=412 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Structure for table "depositinfo"
#

CREATE TABLE `depositinfo` (
  `chain_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_deposit_data` tinytext,
  PRIMARY KEY (`chain_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Structure for table "mainchaininfo"
#

CREATE TABLE `mainchaininfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `child_chain_count` bigint(20) DEFAULT '0',
  `contract_address` varchar(255) DEFAULT NULL,
  `contract_code` text,
  `host` varchar(128) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Structure for table "nodes"
#

CREATE TABLE `nodes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_id` bigint(20) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `host` varchar(128) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Structure for table "withdrawalhistory"
#

CREATE TABLE `withdrawalhistory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_id` bigint(20) NOT NULL DEFAULT '0',
  `seq` bigint(20) DEFAULT NULL,
  `withdrawal_data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Structure for table "withdrawalinfo"
#

CREATE TABLE `withdrawalinfo` (
  `chain_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chain_withdrawal_data` text,
  PRIMARY KEY (`chain_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
