// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Wallet {
/*
This contract uses the PaymentReceive to get the payer address and the value sent

if you run this wallet i

*/
    PaymentReceived public payment;

    function payContract() public payable {
        payment = new PaymentReceived(msg.sender, msg.value); // this is an object from PaymentReceived
 
    }
    
}

contract PaymentReceived { //it creates a new smart wallet for this and you can get where it is from
    address public from;
    uint public amount;

    constructor(address _from, uint _amount) {
        from = _from;
        amount = _amount;
    }
}