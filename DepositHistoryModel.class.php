<?php
require_once 'Model.class.php';

class DepositHistoryModel extends Model{
    public function OnTimer($chain_deposit_array){
        foreach ($chain_deposit_array as $chain_id => $chain_deposit_seq) {
            $this->updateDepositHistory($chain_id, $chain_deposit_seq);
        }
        echo ('Update DepositHistoryModel OK<br>');
        return TRUE;
    }
    
    private function updateDepositHistory($chain_id, $chain_deposit_seq){
        if($chain_id <= 0 || $chain_deposit_seq <= 0){
            return;
        }
        
        //1.查询历史记录中是否存在
        $sql = "select * from deposithistory where chain_id={$chain_id} and seq=$chain_deposit_seq";
        $row = $this->db->fetchRow($sql);
        //2.如果已经存在，则不处理
        if($row != null){
            return;
        }
        
        //3.如果不存在则请求服务器，并插入
        $key = "deposit_{$chain_id}_{$chain_deposit_seq}";
        $result = $this->getHttpResult($key);
        if($result->error_code != 0){
            die("Canot find {$key}");
            return FALSE;
        }
        $result->result->$key->value;
        $data["chain_id"] = $chain_id;
        $data["seq"] = $chain_deposit_seq;
        $data["deposit_data"] = $result->result->$key->value;
        $this->insert($data);
        
        //4.如果上一个仍不存在，则继续下一个循环
        if(($chain_deposit_seq - 1) > 0){
            $this->updateDepositHistory($chain_id, ($chain_deposit_seq - 1));
        }
    }
}
