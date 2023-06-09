// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

// link to the tutorial: https://www.wtf.academy/solidity-start/HelloWeb3/

contract HelloWeb3 {
    string public message;

    constructor(string memory _message) {
        message = _message;
    }

    function update(string memory _message) public {
        message = _message;
    }

    function sayHello() public view returns(string memory) {
        return message;
    }
}
