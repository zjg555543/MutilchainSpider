<?php
require_once 'Model.class.php';

class ChainInfoModel extends Model{
    public function OnTimer($chain_count){
        if($chain_count <= 0){
            die('chain_count is 0 <br>');
        }
        //如果没有子链的信息，则去更新请求最新的值
        for($i = 1; $i <= $chain_count; $i++){
            $result = $this->getHttpResult('childChainid_'.$i);
            if($result->error_code != 0){
                die('Canot find childChainid_.');
                return FALSE;
            }
            $childChainidFiled = 'childChainid_'.$i;
            $chain_create_info = $result->result->$childChainidFiled->value;
         
            $result_dymaic = $this->getHttpResult('childChainid_info_'.$i);
            if($result_dymaic->error_code != 0){
                die('Canot find childChainid_info_.');
                return FALSE;
            }
             $this->del($i);
            
            $childChainid_info_filed = 'childChainid_info_'.$i;
            $chain_dynamic_info = $result_dymaic->result->$childChainid_info_filed->value;
            
            $data['chain_id'] = $i;
            $data['chain_create_info'] = $chain_create_info;
            $data['chain_dynamic_info'] = $chain_dynamic_info;
            $this->insert($data);
        }
        echo ('Update ChainInfoModel OK<br>');
        return TRUE;
    }
    
    public function GetChainInfo(){
        $chain_obj_array = $this->select();
        if($chain_obj_array == null){
            return null;
        }
        $child_chain_array = array();
        foreach ($chain_obj_array as $index => $chain_info) {
            $chain_dynamic_ojb = json_decode($chain_info["chain_dynamic_info"]);
            $chain_obj = array();
            $chain_obj['chain_max_seq'] = $chain_dynamic_ojb->blockheight;
            if(!isset($chain_dynamic_ojb->lastblockhash)){
                continue;
            }
            $chain_obj['leder_hash'] = $chain_dynamic_ojb->lastblockhash;
            $child_chain_array[$chain_dynamic_ojb->chain_id] = $chain_obj;
        }
        
        return $child_chain_array;
    }
}
