// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SampleFallbackRecieve {
    uint public lastValueSent;
    string public lastFunctionCalled;
    // a receive function is a function that can receive ether
    // it would receive it no data is call

    uint public myUint;

    function updateInt(uint _myUint) public{ 
        myUint = _myUint; // if hex is put in the calldata, it will call this function
    }

    receive() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "receive";
     }


     
    // if there is no data but it would call fallback function provided receive is not ther
    // else  or if there is 

    fallback() external payable { 
        lastValueSent = msg.value;
        lastFunctionCalled = "fallback";
        
    }
}