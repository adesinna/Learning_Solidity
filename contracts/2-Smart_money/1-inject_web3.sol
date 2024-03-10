// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract MyContract {
    string public name;

    function updateString(string memory _name) public {
        name = _name;

    }

    function showAdd() public view returns (address){
        
       return msg.sender;
    }
}