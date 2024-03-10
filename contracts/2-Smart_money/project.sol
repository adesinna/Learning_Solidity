// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SendWithdrawMoney {

    uint public balanceReceived;
    uint public lastDepositAmount;

    // This is a deposit
    function deposit() public payable {
        balanceReceived += msg.value;
        lastDepositAmount = msg.value;
    }

    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withdrawAll() public {
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
    }

    function withdrawToAddress(address payable to) public {
        to.transfer(getContractBalance());
    }

    function getLastDepositInfo() public view returns (uint) {
        return lastDepositAmount;
    }
}
