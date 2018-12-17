<?php

$GLOBALS['config'] = require_once 'Config.php';

require_once "Config.php"; 
require_once 'MainChainInfoModel.class.php';
require_once 'ChainInfoModel.class.php';
require_once 'BlockInfoModel.class.php';

class Framework{
    public function Run(){
//        $main_chain_info = new MainChainInfoModel();
//        $main_chain_info->OnTimer();
        
//        $chain_info = new ChainInfoModel(1);
//        $chain_info->OnTimer();
//        $chain_info->UpdateChainDynamicInfo(1);
        
        $chain_obj = array(
            'chain_max_seq' => '3',
            'leder_hash' => '08b9a1ae29fa477c7c3e5dd04a577192ae6c412994922e1a1c3c316225554e56'
        );
        $child_chain_array = array( '2' => $chain_obj
            );
        $block_info = new BlockInfoModel();
        $block_info->OnTimer($child_chain_array);
    }
}


