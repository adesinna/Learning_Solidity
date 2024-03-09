// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


/*
    The address type is used to store 20-byte Ethereum addresses. Ethereum addresses 
    represent the location where cryptocurrency can be sent and received
    on the Ethereum blockchain.
*/
contract AddressExample {

    address public myAdd;

    function setAdd(address _someAdd) public {
        myAdd = _someAdd;

    }

    function getBalance() public view returns(uint) {
        return myAdd.balance;
    }
    
}