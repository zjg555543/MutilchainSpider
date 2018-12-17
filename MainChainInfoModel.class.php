<?php

require_once 'Model.class.php';

class MainChainInfoModel extends Model{
    public function GetChainCount(){
        $sql="select * from mainchaininfo where id=1";
        if($info =  $this->db->fetchRow($sql)){
            return $info["child_chain_count"];
        }
        return -1;
    }
    
    public function OnTimer(){
        if($this->GetChainCount() <= 0){
            $this->updateMainChainContract();
        }
        
        $this->updateChainCount();
 
        return TRUE;
    }
    
    private function updateChainCount(){
        $result = $this->getHttpResult('childChainCount');
        if($result->error_code != 0){
            return FALSE;
        }
        
        $data["id"] = 1;
        $data["child_chain_count"] = $result->result->childChainCount->value;
        
        $this->update($data);
        var_dump($data);
        echo '<br>'.__FUNCTION__.' OK<br>';
        return;
    }
    
    private function updateMainChainContract(){
        $result = $this->getHttpResult('childChainCount');
        if($result->error_code != 0){
            return FALSE;
        }
        
        $data["id"] = 1;
        $data["contract_address"] = $GLOBALS['config']['chain_server']['cmc_address'];
        $data["contract_code"] = 'hello, contract..';
        
        $this->update($data);
        var_dump($data);
        echo '<br>'.__FUNCTION__.' OK<br>';
        return;
    }
    
}
