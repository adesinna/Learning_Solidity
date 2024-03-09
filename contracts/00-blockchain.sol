// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

/* this is a comment */

// this is also a comment

/* 
Smart Contracts are running on blockchain and are deployed as EVM Bytecode

The are turing complere which means they can perfrom any any operations


Solidity have familiar concepts to python

Deployment of a smart contract is done with a transaction

*/

contract ShinaContract {
    string public ourString = "Adesina";

    function updateString(string memory _updateString) public {
        ourString = _updateString;
    }
    
}