<?php
require_once 'Model.class.php';

class DepositInfoModel extends Model{
    public function OnTimer($child_count){
        for($i = 1; $i <= $child_count; $i++){
            $this->updateDepositInfo($i);
        }
        echo ('Update DepositInfoModel OK<br>');
        return TRUE;
    }
    
    public function GetChainDepositInfo(){
        $deposit_obj_array = $this->select();
        if($deposit_obj_array == null){
            return null;
        }
        
        $chain_deposit_array = array();
        foreach ($deposit_obj_array as $index => $deposit_data) {
            $ojb = json_decode($deposit_data["chain_deposit_data"]);
            $chain_deposit_array[$ojb->chain_id] = $ojb->seq;
        }
        
        return $chain_deposit_array;
    }

        private function updateDepositInfo($chain_id){
        if($chain_id <= 0){
            return;
        }
        
        //1.请求HTTP
        $key = 'deposit_'.$chain_id;
        $result = $this->getHttpResult($key);
        if($result->error_code != 0){
            return FALSE;
        }
        //2.插入记录
        $this->del($chain_id);
        $data['chain_id'] = $chain_id;
        $data['chain_deposit_data'] = $result->result->$key->value;
        $this->insert($data);
    }
}
