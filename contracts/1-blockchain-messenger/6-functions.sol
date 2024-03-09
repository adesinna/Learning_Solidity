// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

/* 
We have been working with some functions until now, lets dive in

*/

//Pure function

contract Example {

    uint public myStorageVar = 56;

    function getStorage() public view returns(uint) { //can access the contract variables and change the state of the contract
       return myStorageVar; // notice it only views
    }

    function addNumbers(int a, int b) public pure returns(int) { //they are independent of the contract and do not need the contract variable
        return a+b; // 
    }
}