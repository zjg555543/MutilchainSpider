<?php
require_once 'Model.class.php';

class WithdrawalHistoryModel extends Model{
    public function OnTimer($chain_withdrawal_array){
        foreach ($chain_withdrawal_array as $chain_id => $chain_withdrawal_seq) {
            $this->updateWithdrawalHistory($chain_id, $chain_withdrawal_seq);
        }
        echo ('Update WithdrawalHistoryModel OK<br>');
        return TRUE;
    }
    
    private function updateWithdrawalHistory($chain_id, $chain_withdrawal_seq){
        if($chain_id <= 0 || $chain_withdrawal_seq <= 0){
            return;
        }
        
        //1.查询历史记录中是否存在
        $sql = "select * from withdrawalhistory where chain_id={$chain_id} and seq=$chain_withdrawal_seq";
        $row = $this->db->fetchRow($sql);
        //2.如果已经存在
        if($row != null){
            $withdrawal_data = $row['withdrawal_data'];
            $json_result = json_decode($withdrawal_data, true);
            //var_dump($json_result);
            //如果状态已经改变，则不处理
            if($json_result['state'] != 1){
                return;
            }
            //如果当前尚未改变，删除后，重新查询
            $this->del($row['id']);
        }
        
        //3.如果不存在则请求服务器，并插入
        $key = "withdrawal_{$chain_id}_{$chain_withdrawal_seq}";
        $result = $this->getHttpResult($key);
        if($result->error_code != 0){
            return FALSE;
        }
        $result->result->$key->value;
        $data["chain_id"] = $chain_id;
        $data["seq"] = $chain_withdrawal_seq;
        $data["withdrawal_data"] = $result->result->$key->value;
        $this->insert($data);
        
        //4.如果上一个仍不存在，则继续下一个循环
        if(($chain_withdrawal_seq - 1) > 0){
            $this->updateWithdrawalHistory($chain_id, ($chain_withdrawal_seq - 1));
        }
    }
}
