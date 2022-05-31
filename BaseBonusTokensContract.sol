//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract BonusTokens {


    function calculateNumberOfTokensAccrued(uint256 numberOfTokensAccrued, uint256 numberOfTokensToAdd) internal pure returns (uint) 
    {
        numberOfTokensAccrued = numberOfTokensAccrued + numberOfTokensToAdd;
        return numberOfTokensAccrued;
    }

   function calculateNumberOfTokensSpent(uint256 numberOfTokensSpent, uint256 numberOfTokensToSpend) internal pure returns (uint)  
    {
        numberOfTokensSpent = numberOfTokensSpent - numberOfTokensToSpend;
        return numberOfTokensSpent;
    }
}
