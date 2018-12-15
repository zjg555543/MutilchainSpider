<?php
class HttpClient {
    public function getMessage($input_key){
        $url = 'http://'.$GLOBALS['config']['chain_server']['ip_port'].'/getSystemAccountMetaData?address='.$GLOBALS['config']['chain_server']['cmc_address'].'&key='.$input_key;
        $html = file_get_contents($url);
        echo $html;
        return json_decode($html);
    }
}