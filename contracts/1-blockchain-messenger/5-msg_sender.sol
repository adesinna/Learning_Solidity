// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract ExampleMessage {
    address public someAdd;

    function getSender() public {
        someAdd = msg.sender;  // sender is the last eth address that interacts with this contract
    }
}