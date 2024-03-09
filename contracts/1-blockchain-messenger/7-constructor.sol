// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract ExampleConstructor {
    address public myAdd;

    constructor(address _someadd) { // they are needed to initialize 
        myAdd = _someadd;
    }

    function getMyAdd() public view returns (address) {
        return myAdd;
    }
}
