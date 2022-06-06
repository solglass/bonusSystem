//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract BonusTokens {

    mapping (address => uint256) public _numberOfTokensAccrued;
    mapping (address => uint256) public _numberOfTokensSpent;
    uint internal Multiplier;
    
    constructor() 
    {
        Multiplier = 1;
    }

    function currentBalance(address clientWallet) public  virtual
        returns (uint256)
        
    {
         uint256 clientBalance = _numberOfTokensAccrued[clientWallet] - _numberOfTokensAccrued[clientWallet];
         return clientBalance;
    }
    
    
    function calculateNumberOfTokensAccrued(address clientWallet, uint256 numberOfTokensToAdd) public virtual  returns (uint256) 
    {
        _numberOfTokensAccrued[clientWallet] = _numberOfTokensAccrued[clientWallet] + numberOfTokensToAdd * Multiplier;
        return _numberOfTokensAccrued[clientWallet];
    }

   function calculateNumberOfTokensSpent(address clientWallet, uint256 numberOfTokensToSpend) public virtual  returns (uint)  
    {
        _numberOfTokensSpent[clientWallet] = _numberOfTokensSpent[clientWallet] - numberOfTokensToSpend * Multiplier;
          if (_numberOfTokensAccrued[clientWallet] < _numberOfTokensSpent[clientWallet])
         {
             _numberOfTokensSpent[clientWallet] = _numberOfTokensAccrued[clientWallet];
         }
        return _numberOfTokensSpent[clientWallet];
    }
}

contract BonusTokensPremium is BonusTokens
{
   constructor() 
    {
        Multiplier = 2;
    }
}

contract BonusTokensVip is BonusTokens
{
    constructor() 
    {
        Multiplier = 5;
    }   
}
