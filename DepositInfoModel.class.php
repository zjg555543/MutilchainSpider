<?php
require_once 'Model.class.php';

class DepositInfoModel extends Model{
    public function OnTimer($child_count){
        for($i = 1; $i <= $child_count; $i++){
            $this->updateDepositInfo($i);
        }
        
        return TRUE;
    }
    
    private function updateDepositInfo($chain_id){
        if($chain_id <= 0){
            return;
        }
        
        echo ('<br>--------------<br>chain_id:'.$chain_id.'<br>');
        //1.请求HTTP
        $key = 'deposit_'.$chain_id;
        $result = $this->getHttpResult($key);
        if($result->error_code != 0){
            die('Canot find deposit_'.$chain_id);
            return FALSE;
        }
         echo ('<br>----------22---<br>chain_id:'.$chain_id.'<br>');
        //2.插入记录
        $this->del($chain_id);
        $data['chain_id'] = $chain_id;
        $data['chain_deposit_data'] = $result->result->$key->value;
         echo ('<br>---33-----------<br>chain_id:'.$chain_id.'<br>');
        $this->insert($data);
    }
}
