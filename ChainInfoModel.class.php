<?php

require_once 'Model.class.php';

class ChainInfoModel extends Model{
    public function __construct($input_chain_count) {
        parent::__construct();
        $this->chain_count_ = $input_chain_count;
    }
    
    public function OnTimer(){
        if($this->chain_count_ <= 0){
            die('chain_count is 0 <br>');
        }
        echo $this->chain_count_;
        //如果没有子链的信息，则去更新请求最新的值
        for($i = 1; $i <= $this->chain_count_; $i++){
            if($info =  $this->find($i)){
                continue;
            }
            
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
            $childChainid_info_filed = 'childChainid_info_'.$i;
            $chain_dynamic_info = $result_dymaic->result->$childChainid_info_filed->value;
            
            $data['chain_id'] = $i;
            $data['chain_create_info'] = $chain_create_info;
            $data['chain_dynamic_info'] = $chain_dynamic_info;
            $this->insert($data);
        }
        
        return TRUE;
    }
    
    public function UpdateChainDynamicInfo($chain_id){
        $result_dymaic = $this->getHttpResult('childChainid_info_'.$chain_id);
        if($result_dymaic->error_code != 0){
           die('Canot find childChainid_info_.');
           return FALSE;
        }
        $childChainid_info_filed = 'childChainid_info_'.$chain_id;
        $chain_dynamic_info = $result_dymaic->result->$childChainid_info_filed->value;

        $data['chain_id'] = $chain_id;
        $data['chain_dynamic_info'] = $chain_dynamic_info;
        $this->update($data);
    }

    private $chain_count_;
}
