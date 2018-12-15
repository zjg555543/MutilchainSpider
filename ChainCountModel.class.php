<?php

require_once 'Model.class.php';
require_once 'HttpClient.class.php';

class ChainCountModel extends Model{
    public function getChainCount(){
        $sql="select * from chaincount where id=1";
        if($info =  $this->db->fetchRow($sql)){
            return $info["child_chain_count"];
        }
        return -1;
    }
    
    public function onTimer(){
        $client = new HttpClient('childChainCount');
        $result = $client->getMessage();
        if($result->error_code != 0){
            return FALSE;
        }
        
        $this->updateChainCount($result->result->childChainCount->value);
        return TRUE;
    }
    
    private function updateChainCount($count_num){
        $data["id"] = 1;
        $data["child_chain_count"] = $count_num;
        
        $this->update($data);
        var_dump($data);
        echo '<br>'.__FUNCTION__.' OK<br>';
        return;
    }
    
}
