<?php
require_once 'Model.class.php';

class WithdrawalInfoModel extends Model{
    public function OnTimer($child_count){
        for($i = 1; $i <= $child_count; $i++){
            $this->updateWithdrawalInfo($i);
        }
        echo ('Update WithdrawalInfoModel OK<br>');
        return TRUE;
    }
    
    public function GetChainWithdrawalInfo(){
        $withdrawal_obj_array = $this->select();
        if($withdrawal_obj_array == null){
            return null;
        }
        
        $chain_withdrawal_array = array();
        foreach ($withdrawal_obj_array as $index => $withdrawal_data) {
            $ojb = json_decode($withdrawal_data["chain_withdrawal_data"]);
            $chain_withdrawal_array[$withdrawal_data["chain_id"]] = $ojb->seq;
        }
        
        return $chain_withdrawal_array;
    }

        private function updateWithdrawalInfo($chain_id){
        if($chain_id <= 0){
            return;
        }
        
        //1.请求HTTP
        $key = 'withdrawal_'.$chain_id;
        $result = $this->getHttpResult($key);
        if($result->error_code != 0){
            return FALSE;
        }
        //2.插入记录
        $this->del($chain_id);
        $data['chain_id'] = $chain_id;
        $data['chain_withdrawal_data'] = $result->result->$key->value;
        $this->insert($data);
    }
}
