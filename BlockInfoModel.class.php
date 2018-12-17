<?php
require_once 'Model.class.php';

class BlockInfoModel extends Model{
    public function OnTimer($child_chain_array){
        foreach ($child_chain_array as $chain_id => $chain_obj) {
            $this->updateChildChainBlock($chain_id, $chain_obj['chain_max_seq'], $chain_obj['leder_hash']);
        }
        echo ('Update BlockInfoModel OK<br>');
        return TRUE;
    }
    
    private function updateChildChainBlock($chain_id, $chain_seq, $leder_hash){
        if($chain_id <= 0 || $chain_seq <= 0){
            return;
        }
        
        //1、获取数据库中是否存在该区块
        $sql = "select * from blockinfo where chain_id={$chain_id} and chain_block_seq=$chain_seq";
        $row = $this->db->fetchRow($sql);
        //2.如果已经存在，则不处理
        if($row != null){
            return;
        }

        //3.如果不存在，则请求服务器，并插入
        $key = "childChainBlock_{$chain_id}_{$leder_hash}";
        $result = $this->getHttpResult($key);
        if($result->error_code != 0){
            die("Canot find {$key}");
            return FALSE;
        }
        $result->result->$key->value;
        $data["chain_block_seq"] = $chain_seq;
        $data["chain_id"] = $chain_id;
        $data["hash"] = $leder_hash;
        $data["block_header"] = $result->result->$key->value;
        
        $this->insert($data);
        
        //4.查询上一个区块是否存在，如果不存在，则继续请求更新数据库
        $pre_hash_obj = json_decode($result->result->$key->value);
        if(($chain_seq - 1) > 0){
            $this->updateChildChainBlock($chain_id, ($chain_seq - 1), $pre_hash_obj->block_header->previous_hash);
        }
    }
}
