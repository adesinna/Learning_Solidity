// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


contract Wallet {
    struct PaymentReceived {
        address from;
        uint amount;
    }

    PaymentReceived public payment; // an object from struct

    function payContract() public payable {
        payment = PaymentReceived(msg.sender, msg.value);
    }
} // struct makes life easier 

