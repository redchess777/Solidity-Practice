// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Primitives {
    bool public boo = true;

    // uint: 非負整數
    // uint8的範圍值為0到2**8-1 (**: ^次方)
    // uint256的範圍值為0到2**256-1
    uint8 public u8 = 1;
    uint256 public u256 = 256;
    uint256 public u = 123;

    // int: 整數(包含負值)
    // int8的範圍值為-2**7到2**7-1
    // int256的範圍值為-2**255到-2*255-1
    int8 public i8 = -1;
    int256 public i256 = 456;
    int256 public i = -123;

    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;

    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    bytes1 a = 0xb5;
    bytes1 b = 0x56;

    // bool(布林值)預設為false
    // uint(非負整數)預設等於0
    // int(整數)預設等於0
    // address(地址)預設為0x0000000000000000000000000000000000000000
    bool public defaultBoo;
    uint256 public defaultUint;
    int256 public defaultInt;
    address public defaultAddr;
}