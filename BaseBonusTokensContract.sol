
//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract BonusTokens {

    function currentBalance(address clientWallet_) public pure virtual
        returns(address, uint256) 
        
    {
         uint256 accrued = calculateNumberOfTokensAccrued(0, 100);
         uint256 spent = calculateNumberOfTokensSpent(0, 50);
         uint256 clientBalance = accrued - spent;
        return (clientWallet_, clientBalance);
    }
    
    
    function calculateNumberOfTokensAccrued(uint256 numberOfTokensAccrued, uint256 numberOfTokensToAdd) public virtual pure returns (uint) 
    {
        numberOfTokensAccrued = numberOfTokensAccrued + numberOfTokensToAdd;
        return numberOfTokensAccrued;
    }

   function calculateNumberOfTokensSpent(uint256 numberOfTokensSpent, uint256 numberOfTokensToSpend) public virtual pure returns (uint)  
    {
        numberOfTokensSpent = numberOfTokensSpent - numberOfTokensToSpend;
        return numberOfTokensSpent;
    }
}
