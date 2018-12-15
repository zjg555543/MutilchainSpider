<?php
class UpdateTimer {
    private $account_address;
    private $server_address;
    private $key;


    public function __construct($input_server_address, $input_account_address, $input_key) {
		$this->server_address = $input_server_address;
		$this->account_address = $input_account_address;
		$this->key = $input_key;
    }
    
    public function Update(){
        $url = 'http://'.$this->server_address.'/getSystemAccountMetaData?address='.$this->account_address.'&key='.$this->key;
        $html = file_get_contents($url);
        return $html;
    }
    
}