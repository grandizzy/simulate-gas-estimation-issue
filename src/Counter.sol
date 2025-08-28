// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }
    
    function noop() public payable returns (bool) {
        return true;
    }

    function increment() public {
        number++;
    }
}
