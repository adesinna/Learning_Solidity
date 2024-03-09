// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract BlockChainMessager {

    uint public changeCounter;
    address public owner;
    string public theMessage;

    constructor() {
        owner = msg.sender;
    }

    function updateTheMessage(string memory _theMessage) public {
        if (msg.sender == owner) {
            theMessage = _theMessage;
            changeCounter += 1;

        }
    }


}