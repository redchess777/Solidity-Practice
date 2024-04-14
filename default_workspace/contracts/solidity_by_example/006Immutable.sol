// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Immutable {
    // immutable: 加入此修飾幅只能被constructor修改
    address public immutable MY_ADDRESS;
    uint256 public immutable MY_UINT;

    // constructor: 合約部屬時一起初始化的一個函數
    constructor(uint256 _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}