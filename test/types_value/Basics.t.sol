// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "forge-std/Test.sol";
import "../../src/types_value/Basics.sol";

// 可以通过创建辅助抽象合约并在测试合约中继承它们来使用共享设置
contract BasicsTest is Test, BasicValueTypes {
    BasicValueTypes public basics;

    function setUp() public {
        basics = new BasicValueTypes();
    }

    function testBool() public {
        assert(!basics._bool1());
        assert(!basics._bool2());
        assert(basics._bool3());
        assert(!basics._bool4());
        assert(basics._bool5());
    }

    function testEnum() public {
        assertEq(basics.enumToUint(BasicValueTypes.Action.Buy), 0);
        assertEq(basics.enumToUint(BasicValueTypes._sell), 1);
        assertEq(basics.enumToUint(BasicValueTypes._hold), 2);
    }
}
