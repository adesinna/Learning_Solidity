// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

// this is a data type is solidity called boolean

contract ExampleBoolean {
    // if a variable is not public, there would not be a getter function for it

    bool public myBool = true; // if you dont initialize the value, it would be false

    // we create a function that can update the boolean

    function changeBool(bool _myBool) public {
        myBool = _myBool;
    }

    bool public newBool;
    bool public  newBool2;

    
    // this function does some basic operations 
    function operateBool(bool result1, bool result2) public { // parameters 
        
        newBool = result1 && result2;
        newBool2 = !(result1 || result2);
    }

}