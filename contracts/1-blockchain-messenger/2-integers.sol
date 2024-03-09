// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Integer {

    uint public  myUint; //unsigned integer cannot be negative, where signed integer can be
    int public myInt;

    /*
    Solidity provides unsigned integers denoted by the uint keyword followed by the number of bits.
    For example:
    unit2: 2-bit unisigned integer (0 to 3)
    uint8: 8-bit unsigned integer (0 to 255)
    uint16: 16-bit unsigned integer (0 to 65,535)
    uint256: 256-bit unsigned integer

    Solidity provides signed integers denoted by the int keyword followed by the number of bits.
    int2: 2-bit signed integer (-2 to 1)
    int8: 8-bit signed integer (-128 to 127)
    int16: 16-bit signed integer (-32,768 to 32,767)
    int256: 256-bit signed integer

    Note that if you do not put any bit it would assume 256 bits
    */

    function myInteger(uint _myUnit, int _myInt) public {
        myInt = _myInt;
        myUint = _myUnit;
    }

    function increaseInt() public {
        myInt += 1;
        myUint += 1;
    }

    function minusFunc() public {
        unchecked {
            myUint -= 1; // instead of erroring out, it would make it rollover to the largest int it can give
        }
    }

}