<?php

$GLOBALS['config'] = require_once 'Config.php';

require_once "Config.php"; 
require_once 'MainChainInfoModel.class.php';
require_once 'ChainInfoModel.class.php';
require_once 'BlockInfoModel.class.php';
require_once 'DepositInfoModel.class.php';
require_once 'DepositHistoryModel.class.php';
require_once 'WithdrawalInfoModel.class.php';
require_once 'WithdrawalHistoryModel.class.php';
require_once 'ChangeValidatorHistoryModel.class.php';

class Framework{
    public function Run(){
        $main_chain_info = new MainChainInfoModel();
        $main_chain_info->OnTimer();
        $chain_count = $main_chain_info->GetChainCount();
        
        $chain_info = new ChainInfoModel();
        $chain_info->OnTimer($chain_count);
        $child_chain_array = $chain_info->GetChainInfo();
        
        $block_info = new BlockInfoModel();
        $block_info->OnTimer($child_chain_array);
        
        $deposit_info = new DepositInfoModel();
        $deposit_info->OnTimer($chain_count);
        $chain_deposit_array = $deposit_info->GetChainDepositInfo();
     
        $deposit_info_history = new DepositHistoryModel();
        $deposit_info_history->OnTimer($chain_deposit_array);
        
        $withdrawal_info = new WithdrawalInfoModel();
        $withdrawal_info->OnTimer($chain_count);
        $chain_withdrawal_array = $withdrawal_info->GetChainWithdrawalInfo();
     
        $deposit_info_history = new WithdrawalHistoryModel();
        $deposit_info_history->OnTimer($chain_withdrawal_array);
        
        $chain_change_validator_array = $chain_info->GetChangeValidatorInfo();
        $change_validator = new ChangeValidatorHistoryModel();
        $change_validator->OnTimer($chain_change_validator_array);
        
    }
}


