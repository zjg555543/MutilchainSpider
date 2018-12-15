<?php

$GLOBALS['config'] = require_once 'Config.php';

require_once "Config.php"; 
require_once 'ChainCountModel.class.php';
require_once 'ChainInfoModel.class.php';

class Framework{
    public function Run(){
        //$model = new ChainCountModel();
        //$model->onTimer();
        
        $chain_info = new ChainInfoModel(1);
        $chain_info->onTimer();
    }
}


