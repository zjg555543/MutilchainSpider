<?php
require_once 'Framework.class.php';

ini_set('max_execution_time','3600');

function DoRun(){
    $model = new Framework();
    echo 'Runing..<br>';
    $model->Run();
}

DoRun();
exit;

ignore_user_abort(true);
set_time_limit(0);

$interval = 15;
$run_file = dirname(__FILE__).DIRECTORY_SEPARATOR.'running';
if(file_exists($run_file)) {
    echo 'Already running...'.'<br>';
    exit();
}

file_put_contents($run_file, 'Runing');

do {
    sleep($interval); 
    if(!file_exists($run_file)) {
        echo 'Exit ok.'.'<br>';
        exit();
    }
    DoRun();
    
} while(true);