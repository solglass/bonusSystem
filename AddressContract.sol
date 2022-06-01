//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract AddressContract {

    address private contractAdress;

    constructor()
    {
       StoreAddress(); 
    }

    function StoreAddress() private
    {
        contractAdress = address(this);
    }

    function GetAdress() public view returns (address) 
    {
        return contractAdress;
    }

}
