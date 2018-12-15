<?php

include "./Config.php"; 
include 'ChainCountModel.class.php';
include 'UpdateTimer.class.php';

$GLOBALS['config']=require 'config.php';

//echo 'sql',$GLOBALS['config']['database']['host'],'<br>';


$model=new ChainCountModel();
//echo 'count:', $model->count();

$timer = new UpdateTimer('127.0.0.1:36002', 'buQjjhxJhVDByQLSjQi4BEpDj9xTEHZbhbGe', 'childChainCount');
echo $timer->Update();
