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
        $this->updateMainChainInfo();
        
        echo ('Update MainChainInfoModel OK<br>');
        return TRUE;
    }
    
    private function updateMainChainInfo(){
        
        $result = $this->getHttpResult('childChainCount');
        if($result->error_code != 0){
            return FALSE;
        }
        
        $this->del(1);

        $data["id"] = 1;
        $data["contract_address"] = $GLOBALS['config']['chain_server']['cmc_address'];
        $data["contract_code"] = 'hello, contract..';
        $data["child_chain_count"] = $result->result->childChainCount->value;
        
        $this->insert($data);
        return;
    }
    
}
