<?php
require_once 'Model.class.php';

class ChangeValidatorHistoryModel extends Model{
    public function OnTimer($chain_change_array){
        foreach ($chain_change_array as $chain_id => $change_index) {
            $this->updateChangeValidatortHistory($chain_id, $change_index);
        }
        echo ('Update ChangeValidatorHistoryModel OK<br>');
        return TRUE;
    }
    
    private function updateChangeValidatortHistory($chain_id, $change_index){
        if($chain_id <= 0 || $change_index <= 0){
            return;
        }
        
        //1.查询历史记录中是否存在
        $sql = "select * from changevalidatorhistory where `chain_id`={$chain_id} and `index`=$change_index";
        $row = $this->db->fetchRow($sql);
     
        //2.如果已经存在，则不处理
        if($row != null){
            return;
        }
        
        //3.如果不存在则请求服务器，并插入
        $key = "childChainValidatorHistory_{$chain_id}_{$change_index}";
        $result = $this->getHttpResult($key);
        if($result->error_code != 0){
            die("Canot find {$key}");
            return FALSE;
        }
        $result->result->$key->value;
        $data["chain_id"] = $chain_id;
        $data["index"] = $change_index;
        $data["change_data"] = $result->result->$key->value;
        $this->insert($data);
        
        //4.如果上一个仍不存在，则继续下一个循环
        if(($change_index - 1) > 0){
            $this->updateChangeValidatortHistory($chain_id, ($change_index - 1));
        }
    }
}
