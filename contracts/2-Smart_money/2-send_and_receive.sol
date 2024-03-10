// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract MyContract {
    string public name;

    function updateString(string memory _name) public payable  {// so it can use the eth
        if(msg.value == 1 ether){ 
            name = _name;
        }
        
        else {
            payable(msg.sender).transfer(msg.value);
        }

    }

    function showAdd() public view returns (address){
        
       return msg.sender;
    }
}


