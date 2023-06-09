// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "forge-std/Test.sol";
import "../src/Hello.sol";

contract HelloTest is Test {
    HelloWeb3 public hello;

    function setUp() public {
        hello = new HelloWeb3("hello, web3!");
    }

    function testSayHello() public {
        assertEq(hello.sayHello(), "hello, web3!");
    }
}
