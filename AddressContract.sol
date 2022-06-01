//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract AddressContract {

    address private contractAdress;
    address private owner;

    constructor()
    {
       StoreAddress(); 
       StoreOwner();     
    }

    function StoreAddress() private
    {
        contractAdress = address(this);
    }

    function StoreOwner() private
    {
        owner=msg.sender;
    }

    function GetAdress() public view returns (address) 
    {
        return contractAdress;
    }

    function GetOwner() public view returns (address)
    {    
        return owner;
    }

}
