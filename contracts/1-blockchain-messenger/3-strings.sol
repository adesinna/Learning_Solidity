// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract StringExample {
    string public myString = "Hello Shina";

    /*
    Because strings are very expensive, there is no string manipulation in solidity
    */

    // To compare

    function setMyString(string memory _myString) public {
        myString = _myString;
    }
    // You are not comparing the strings directlt, it is the hash you are comparing
    function compareTwoStrings(string memory _myString) public view returns(bool) {
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString));
    }
    
    /*
    Bytes are similar to strings but you can get methods like lengths for bytes
    Bytes are preffered to strings 
    */
}