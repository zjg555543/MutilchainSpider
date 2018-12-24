<?php
require_once 'Framework.class.php';
date_default_timezone_set('Asia/Shanghai');

function MY_LOG($content){
    $file  = 'mutilchain-spider.log';
    $now_time = date("Y-m-d H:i:s");
    $content = $now_time."  ".$content."\n";
    file_put_contents($file, $content,FILE_APPEND);
    echo $content;
}

do {
    MY_LOG('Running... ');
    sleep(10); 
    $model = new Framework();
    $model->Run();
} while(true);