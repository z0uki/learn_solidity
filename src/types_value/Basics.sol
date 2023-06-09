// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

// link to the tutorial: https://www.wtf.academy/solidity-start/ValueTypes/

contract BasicValueTypes {
    bool public _bool = true;

    // 布尔运算
    bool public _bool1 = !_bool; //取非 false
    bool public _bool2 = _bool && _bool1; //与 false
    bool public _bool3 = _bool || _bool1; //或 true
    bool public _bool4 = _bool == _bool1; //相等 false
    bool public _bool5 = _bool != _bool1; //不相等 true

    // 整型
    int public _int = -1; // 整数，包括负数
    uint public _uint = 1; // 正整数
    uint256 public _number = 20220330; // 256位正整数

    // 整数运算
    uint256 public _number1 = _number + 1; // +，-，*，/
    uint256 public _number2 = 2**2; // 指数
    uint256 public _number3 = 7 % 2; // 取余数
    bool public _numberbool = _number2 > _number3; // 比大小

    // address类型
    address public _address = 0x00C200Cdd923cB79A9A4433b5aD3167b20666666;
    address payable public _address1 = payable(_address); // payable address，可以转账、查余额
    uint256 public balance = _address1.balance; // 查看余额

    // 定长字节数组
    bytes1 public _bytes1 = 0x01; // 1字节
    bytes2 public _bytes2 = 0x0102; // 2字节
    bytes32 public _bytes32 = "MiniSolidity"; // 32字节
    bytes32 public _bytes32_hex = 0x0102030405060708091011121314151617181920212223242526272829303132; // 32字节

    // 枚举类型 与C语言中的enum类似，使用名称来代替从0开始的uint
    enum Action { Buy, Sell, Hold }

    Action public _buy = Action.Buy;
    Action public _sell = Action.Sell;
    Action public _hold = Action.Hold;

    // enum可以和uint显式的转换
    function enumToUint(Action _action) external view returns(uint){
        return uint(_action);
    }
}
