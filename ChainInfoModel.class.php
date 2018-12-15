<?php

require_once 'Model.class.php';
require_once 'HttpClient.class.php';

class ChainInfoModel extends Model{
    public function __construct($input_chain_count) {
        $this->chain_count_ = $input_chain_count;
    }
    
    public function onTimer(){
        if($this->chain_count_ <= 0){
            die('chain_count is 0 <br>');
        }
        echo $this->chain_count_;
        //如果没有子链的信息，则去更新请求最新的值
        for($i = 1; $i <= $this->chain_count_; $i++){
            $sql = 'select * from chaininfo where chain_id='.$i.';';
            echo $sql;
            if($info =  $this->db->fetchRow($sql)){
                continue;
            }
            
            $client = new HttpClient();
            $result = $client->getMessage('childChainid_'.$i);
            if($result->error_code != 0){
                die('Canot find childChainid_.');
                return FALSE;
            }
            $chain_create_info = $result->result->childChainid_1->value;
         
            $result_dymaic = $client->getMessage('childChainid_info_'.$i);
            if($result_dymaic->error_code != 0){
                die('Canot find childChainid_info_.');
                return FALSE;
            }
            $chain_dynamic_info = $result_dymaic->result->childChainid_info_1->value;
            
            $this->updateChainCount($result_dymaic->result->childChainCount->value);
            
            $data['chain_id'] = $i;
            $data['chain_create_info'] = $chain_create_info;
            $data['$chain_dynamic_info'] = $chain_dynamic_info;
            $this->db->insert($data);
        }
        
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
    
    private $chain_count_;
}
