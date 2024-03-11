// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


contract MappingWithdrawals {
 
    mapping(address => uint) public balanceReceived;

    mapping (address => uint) public  lastRecieved;

/*
send money increment the balance that was there, initial balance would be zero, msg.value is the
money that is entering

*/
    function sendMoney() public payable {
        lastRecieved[msg.sender] = msg.value;
        balanceReceived[msg.sender] += msg.value;
        
    }

// this is getting the balance of the contract at anytime 
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

/*
Balance to send out is the total balanced recieved, since we are sending all out
reset balance recieve of that sender to zero, because the next time he interacts with the wallet, there 
it would use the previous balance, and it would be only be able to send out what it recieved not what others recieved
*/

    function withdrawalAllMoney(address payable _to) public {
        uint balanceToSendOut = balanceReceived[msg.sender]; // balance recieved by the specific msg.sender 
        balanceReceived[msg.sender] = 0;
        _to.transfer(balanceToSendOut);
    }

    function lastMoneyRecieved() public view returns(uint) {
        return lastRecieved[msg.sender];
    }
}