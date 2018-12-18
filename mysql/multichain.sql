# Host: localhost  (Version: 5.5.53)
# Date: 2018-12-18 16:53:14
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
INSERT INTO `blockinfo` VALUES (22,3,2,'08b9a1ae29fa477c7c3e5dd04a577192ae6c412994922e1a1c3c316225554e56','{\"block_header\":{\"account_tree_hash\":\"f92713b280574d77d3a68c5688ea4f353b1bbe29a60a902c0c106f5bd85e2d72\",\"chain_id\":2,\"close_time\":1544775724183593,\"consensus_value_hash\":\"e1b321a8d16000890bf89cffeb5440470a29a55dfe3fcc859d68432de1492fa4\",\"fees_hash\":\"5015f120ee114da3e799088e1b7f434ee050cccae92a48502ad5449575cd2fe7\",\"hash\":\"08b9a1ae29fa477c7c3e5dd04a577192ae6c412994922e1a1c3c316225554e56\",\"previous_hash\":\"d776a9dbaf2b2ea1dc6f9ccdecd0734dd960f38b5c1408b18de5a1722d4ffd83\",\"seq\":3,\"validators_hash\":\"efd95332ece0a6b5c74681ed54403e0c7af844f3a08fddef367e457208a25fe7\",\"version\":1001},\"chain_id\":2,\"sumitter\":\"buQYgZmzaXAjFovGWnbqZUsA6vpSnySs8Z2b\",\"currentheight\":3}'),(23,2,2,'d776a9dbaf2b2ea1dc6f9ccdecd0734dd960f38b5c1408b18de5a1722d4ffd83','{\"block_header\":{\"account_tree_hash\":\"ac340b2108e002a37f21149c0a733da9213adc73236d29aab7358691b3d68b02\",\"chain_id\":2,\"close_time\":1544775714133694,\"consensus_value_hash\":\"79003a385748269f5eb91cb50e46a532973fccea21fec7ff27f3f3fb57c8bef1\",\"fees_hash\":\"5015f120ee114da3e799088e1b7f434ee050cccae92a48502ad5449575cd2fe7\",\"hash\":\"d776a9dbaf2b2ea1dc6f9ccdecd0734dd960f38b5c1408b18de5a1722d4ffd83\",\"previous_hash\":\"25df512285b434758d333c98e5de54c1dea3aa65b40ca3b47e84e72569da9c69\",\"seq\":2,\"validators_hash\":\"efd95332ece0a6b5c74681ed54403e0c7af844f3a08fddef367e457208a25fe7\",\"version\":1001},\"chain_id\":2,\"sumitter\":\"buQYgZmzaXAjFovGWnbqZUsA6vpSnySs8Z2b\",\"currentheight\":2}'),(24,1,2,'25df512285b434758d333c98e5de54c1dea3aa65b40ca3b47e84e72569da9c69','{\"block_header\":{\"account_tree_hash\":\"09037bdccc04c099e047e9280bd14b2f1f472e6743fd321dc36b62c62cef4530\",\"chain_id\":2,\"consensus_value_hash\":\"2779905317234108f76cf5d65125cc0e9a3fd58e2140226bf79e8917028c8c9c\",\"fees_hash\":\"5015f120ee114da3e799088e1b7f434ee050cccae92a48502ad5449575cd2fe7\",\"hash\":\"25df512285b434758d333c98e5de54c1dea3aa65b40ca3b47e84e72569da9c69\",\"reserve\":\"block chain slogan\",\"seq\":1,\"validators_hash\":\"efd95332ece0a6b5c74681ed54403e0c7af844f3a08fddef367e457208a25fe7\",\"version\":1000},\"chain_id\":2,\"sumitter\":\"buQYgZmzaXAjFovGWnbqZUsA6vpSnySs8Z2b\",\"currentheight\":1}'),(25,9,2,'01905d45eeecc5586cc8568b20161a5545ea65b3f9d71ff42034b094f7c3205c','{\"block_header\":{\"account_tree_hash\":\"783585eaee509069d2c3ec9d553e91449c522ae21eba4ed47dfbed498892b585\",\"chain_id\":2,\"close_time\":1544775784463724,\"consensus_value_hash\":\"5b076227f5a31c145b35c7757b6693781603d583b5be3441aaad72ccf2d63357\",\"fees_hash\":\"5015f120ee114da3e799088e1b7f434ee050cccae92a48502ad5449575cd2fe7\",\"hash\":\"01905d45eeecc5586cc8568b20161a5545ea65b3f9d71ff42034b094f7c3205c\",\"previous_hash\":\"d8d1077bdccfbb771030fc5f62e12912358b2481524eb24e44f8c93cda7b46d1\",\"seq\":9,\"validators_hash\":\"efd95332ece0a6b5c74681ed54403e0c7af844f3a08fddef367e457208a25fe7\",\"version\":1001},\"chain_id\":2,\"sumitter\":\"buQYgZmzaXAjFovGWnbqZUsA6vpSnySs8Z2b\",\"currentheight\":9}'),(26,8,2,'d8d1077bdccfbb771030fc5f62e12912358b2481524eb24e44f8c93cda7b46d1','{\"block_header\":{\"account_tree_hash\":\"0c79aba44439792ae6796432af1717bba3fca05273e6a901b93da177a8ce4e4c\",\"chain_id\":2,\"close_time\":1544775774420140,\"consensus_value_hash\":\"48e06d574df246579f3fed2dff5b7f2a322e11d2cb0a336d383a56665ac8387a\",\"fees_hash\":\"5015f120ee114da3e799088e1b7f434ee050cccae92a48502ad5449575cd2fe7\",\"hash\":\"d8d1077bdccfbb771030fc5f62e12912358b2481524eb24e44f8c93cda7b46d1\",\"previous_hash\":\"ffafa752b04d08ef1d2a575d3003253f43a9311616e2a42d3474728c6234e549\",\"seq\":8,\"validators_hash\":\"efd95332ece0a6b5c74681ed54403e0c7af844f3a08fddef367e457208a25fe7\",\"version\":1001},\"chain_id\":2,\"sumitter\":\"buQYgZmzaXAjFovGWnbqZUsA6vpSnySs8Z2b\",\"currentheight\":8}'),(27,7,2,'ffafa752b04d08ef1d2a575d3003253f43a9311616e2a42d3474728c6234e549','{\"block_header\":{\"account_tree_hash\":\"1ea6ffc2042c1ef325ee52ecb97a6725e6530d045c06aaaa25c9cea86b953271\",\"chain_id\":2,\"close_time\":1544775764364113,\"consensus_value_hash\":\"ace5dc69a19ec7c66ab0b3b4eae26b1ae1abe6efce9e21d07084aed92256f667\",\"fees_hash\":\"5015f120ee114da3e799088e1b7f434ee050cccae92a48502ad5449575cd2fe7\",\"hash\":\"ffafa752b04d08ef1d2a575d3003253f43a9311616e2a42d3474728c6234e549\",\"previous_hash\":\"ff46fab5f74fdd4b00062d67f5dda59df78d9082c7835aa033daf6eacdcdf758\",\"seq\":7,\"validators_hash\":\"efd95332ece0a6b5c74681ed54403e0c7af844f3a08fddef367e457208a25fe7\",\"version\":1001},\"chain_id\":2,\"sumitter\":\"buQYgZmzaXAjFovGWnbqZUsA6vpSnySs8Z2b\",\"currentheight\":7}'),(28,6,2,'ff46fab5f74fdd4b00062d67f5dda59df78d9082c7835aa033daf6eacdcdf758','{\"block_header\":{\"account_tree_hash\":\"d903156a76b7d99eb73c14ebfac680eb5a7798d93ade7bdbf11176048c1b603f\",\"chain_id\":2,\"close_time\":1544775754332123,\"consensus_value_hash\":\"f9b7f0bde2dbb221e6cb32f58dbff5948a02678a783021d7254f2f1d8b672283\",\"fees_hash\":\"5015f120ee114da3e799088e1b7f434ee050cccae92a48502ad5449575cd2fe7\",\"hash\":\"ff46fab5f74fdd4b00062d67f5dda59df78d9082c7835aa033daf6eacdcdf758\",\"previous_hash\":\"92ddbd74e2b1d09018b27e27847beb5d3d904fd4c01bd75501126e10f111ed05\",\"seq\":6,\"validators_hash\":\"efd95332ece0a6b5c74681ed54403e0c7af844f3a08fddef367e457208a25fe7\",\"version\":1001},\"chain_id\":2,\"sumitter\":\"buQYgZmzaXAjFovGWnbqZUsA6vpSnySs8Z2b\",\"currentheight\":6}'),(29,5,2,'92ddbd74e2b1d09018b27e27847beb5d3d904fd4c01bd75501126e10f111ed05','{\"block_header\":{\"account_tree_hash\":\"81b81233e1f57d721a4e70e3ca8b30a33ef3a12a94eab7ffad73ffa65833ce53\",\"chain_id\":2,\"close_time\":1544775744233169,\"consensus_value_hash\":\"1012ad7528db800f0e6b30a16ac3931a2b0e452b40e7378d6e485d2d99f75963\",\"fees_hash\":\"5015f120ee114da3e799088e1b7f434ee050cccae92a48502ad5449575cd2fe7\",\"hash\":\"92ddbd74e2b1d09018b27e27847beb5d3d904fd4c01bd75501126e10f111ed05\",\"previous_hash\":\"e92a9a539d9e61c5b117030dcf9fe6093f1873a2fc12ca0db7f36b330155cdb0\",\"seq\":5,\"validators_hash\":\"efd95332ece0a6b5c74681ed54403e0c7af844f3a08fddef367e457208a25fe7\",\"version\":1001},\"chain_id\":2,\"sumitter\":\"buQYgZmzaXAjFovGWnbqZUsA6vpSnySs8Z2b\",\"currentheight\":5}'),(30,4,2,'e92a9a539d9e61c5b117030dcf9fe6093f1873a2fc12ca0db7f36b330155cdb0','{\"block_header\":{\"account_tree_hash\":\"9fad9a9e60c05e09e828f6175c9f031ac1722cfe579f77b02c2d50c76e2f566f\",\"chain_id\":2,\"close_time\":1544775734216759,\"consensus_value_hash\":\"001a4d9c4cd9812eed4ace9b55f6c19c8afd218a303f2e46957dd6f911c70649\",\"fees_hash\":\"5015f120ee114da3e799088e1b7f434ee050cccae92a48502ad5449575cd2fe7\",\"hash\":\"e92a9a539d9e61c5b117030dcf9fe6093f1873a2fc12ca0db7f36b330155cdb0\",\"previous_hash\":\"08b9a1ae29fa477c7c3e5dd04a577192ae6c412994922e1a1c3c316225554e56\",\"seq\":4,\"validators_hash\":\"efd95332ece0a6b5c74681ed54403e0c7af844f3a08fddef367e457208a25fe7\",\"version\":1001},\"chain_id\":2,\"sumitter\":\"buQYgZmzaXAjFovGWnbqZUsA6vpSnySs8Z2b\",\"currentheight\":4}');
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
INSERT INTO `chaininfo` VALUES (1,'{\"genesis_account\":\"buQnZpHB7sSW2hTG9eFefYpeCVDufMdmmsBF\",\"slogan\":\"block chain slogan\",\"fee\":{\"base_reserve\":1000,\"gas_price\":1000},\"reserve_validator\":[\"buQkmnSgiNfKDkWtAAdXj2F26WBq5hMxYXg1\"],\"chain_name\":\"bumo_child_chain\",\"genesis_token_amount\":500000,\"block_reward\":{\"amount\":10,\"period\":1000,\"ratio\":0.01},\"max_validator_nums\":10,\"cost\":10000000000000,\"chain_id\":1}','{\"chain_id\":1,\"chain_creator\":\"buQnZpHB7sSW2hTG9eFefYpeCVDufMdmmsBF\",\"cost\":10000000000000,\"block_cost_ready\":true,\"blockheight\":0,\"validatorHistoryIndex\":\"2\",\"reserve_validators\":[[\"buQkmnSgiNfKDkWtAAdXj2F26WBq5hMxYXg1\",0]],\"validators\":[[\"buQkmnSgiNfKDkWtAAdXj2F26WBq5hMxYXg1\",0],[\"buQnZpHB7sSW2hTG9eFefYpeCVDufMdmmsBF\",\"10000000000000\"],[\"buQijmPfxBLN6zfLe6EyQ1cFMubxdYGgfgq1\",\"20000000000000\"]],\"bufferValidators\":[]}'),(2,'{\"genesis_account\":\"buQnZpHB7sSW2hTG9eFefYpeCVDufMdmmsBF\",\"slogan\":\"block chain slogan\",\"fee\":{\"base_reserve\":1000,\"gas_price\":1000},\"reserve_validator\":[\"buQYgZmzaXAjFovGWnbqZUsA6vpSnySs8Z2b\"],\"chain_name\":\"bumo_child_chain\",\"genesis_token_amount\":500000,\"block_reward\":{\"amount\":10,\"period\":1000,\"ratio\":0.01},\"max_validator_nums\":10,\"cost\":10000000000000,\"chain_id\":2}','{\"chain_id\":2,\"chain_creator\":\"buQnZpHB7sSW2hTG9eFefYpeCVDufMdmmsBF\",\"cost\":10000000000000,\"block_cost_ready\":true,\"blockheight\":9,\"validatorHistoryIndex\":\"0\",\"reserve_validators\":[[\"buQYgZmzaXAjFovGWnbqZUsA6vpSnySs8Z2b\",0]],\"validators\":[[\"buQYgZmzaXAjFovGWnbqZUsA6vpSnySs8Z2b\",0]],\"bufferValidators\":[],\"lastblockhash\":\"01905d45eeecc5586cc8568b20161a5545ea65b3f9d71ff42034b094f7c3205c\"}');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "changevalidatorhistory"
#

/*!40000 ALTER TABLE `changevalidatorhistory` DISABLE KEYS */;
INSERT INTO `changevalidatorhistory` VALUES (5,1,2,'{\"index\":\"2\",\"addValidator\":\"buQijmPfxBLN6zfLe6EyQ1cFMubxdYGgfgq1\",\"deleteValidator\":\"\",\"mainChainTxHash\":\"\"}'),(6,1,1,'{\"index\":\"1\",\"addValidator\":\"buQnZpHB7sSW2hTG9eFefYpeCVDufMdmmsBF\",\"deleteValidator\":\"\",\"mainChainTxHash\":\"\"}');
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
INSERT INTO `deposithistory` VALUES (1,1,1,'{\"chain_id\":1,\"amount\":\"2000\",\"seq\":\"1\",\"block_number\":51,\"source_address\":\"buQnZpHB7sSW2hTG9eFefYpeCVDufMdmmsBF\",\"address\":\"buQoAB5cTmKqbSpV8hDfCNn9BeZHQ4ngmwho\"}');
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
INSERT INTO `depositinfo` VALUES (1,'{\"chain_id\":1,\"totalamount\":\"2000\",\"seq\":\"1\"}');
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
INSERT INTO `mainchaininfo` VALUES (1,2,'buQjjhxJhVDByQLSjQi4BEpDj9xTEHZbhbGe','hello, contract..');
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
