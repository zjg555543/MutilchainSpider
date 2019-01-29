<?php
require_once 'Model.class.php';

class ChainInfoModel extends Model{
    public function OnTimer($chain_count){
        if($chain_count <= 0){
            die('chain_count is 0 <br>');
        }
        
        $this->updateMainChainLedger();
        
        //如果没有子链的信息，则去更新请求最新的值
        for($i = 1; $i <= $chain_count; $i++){
            if(!$this->checkValidChildChain($i)){
                continue;
            }
            $result = $this->getHttpResult('childChainid_'.$i);
            if($result->error_code != 0){
                return FALSE;
            }
            $childChainidFiled = 'childChainid_'.$i;
            $chain_create_info = $result->result->$childChainidFiled->value;
         
            $result_dymaic = $this->getHttpResult('childChainid_info_'.$i);
            if($result_dymaic->error_code != 0){
                return FALSE;
            }
            
            $childChainid_info_filed = 'childChainid_info_'.$i;
            $chain_dynamic_info = $result_dymaic->result->$childChainid_info_filed->value;
           
            $data['chain_id'] = $i;
            $data['chain_create_info'] = $chain_create_info;
            $data['chain_dynamic_info'] = $chain_dynamic_info;
             
            if($this->find($i) != null){
                $this->update($data);
            }
            else{
                $this->insert($data);
            }
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
            if(!$this->checkValidChildChain($index)){
                continue;
            }
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
    
    public function GetChangeValidatorInfo(){
        $chain_obj_array = $this->select();
        if($chain_obj_array == null){
            return null;
        }
        $chain_change_validator_array = array();
        foreach ($chain_obj_array as $index => $chain_info) {
            if(!$this->checkValidChildChain($index)){
                continue;
            }
            
            $chain_dynamic_ojb = json_decode($chain_info["chain_dynamic_info"]);
            if($chain_dynamic_ojb->validatorHistoryIndex > 0){
                $chain_change_validator_array[$chain_dynamic_ojb->chain_id] = $chain_dynamic_ojb->validatorHistoryIndex;
            }
        }
        
        return $chain_change_validator_array;
    }
    
    private function updateMainChainLedger(){
        //更新主链区块信息
        $result = $this->getMainChainLedger();
        if($result->error_code != 0){
            return FALSE;
        }
        
        $data['chain_id'] = 0;
        $data['chain_create_info'] = '{"error_code":4,"result":null}';
        $data['chain_dynamic_info'] = json_encode($result);

        if($this->find(0) != null){
            $this->update($data);
        }
        else{
            $this->insert($data);
        }
    }

    private function checkValidChildChain($chain_id){
        if($chain_id == 1 || $chain_id == 2 || $chain_id == 3){
            return true;
        }

        return false;
    }
}
