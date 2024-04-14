// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Counter {
    // uint: 宣稱變數(var)
    // public: 外部所有人都能直接查看數值
    // 'count'若沒有設定等於多少數值，則預設為0
    uint256 public count;

    function get() public view returns (uint256) {
        return count;
    }

    function inc() public {
        count += 1;
    }

    function dec() public {
        count -= 1;
    }
}