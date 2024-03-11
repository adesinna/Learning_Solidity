// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract MappingExample {
    mapping(uint => bool) public myMapping;  // it maps all uint to a default false
    mapping(address => bool) public myAddMapping;

    function setValue(uint _index) public {
        myMapping[_index] = true;
    }

    function setValueAdd(address _add) public {
        myAddMapping[_add] = true;
    }

    function setAddSelf() public {
        myAddMapping[msg.sender] = true;
    }
    // mapping of mappings

    mapping(address => mapping(bool => uint)) public mapMap;

    function mapsMap(address _key1, bool _key2, uint _val) public {
        mapMap[_key1][_key2] = _val;
    }
}