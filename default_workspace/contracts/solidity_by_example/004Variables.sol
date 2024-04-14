// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// 有3種儲存方式:
// local: 存在本地裡的變數，放在function裡面
// state: 存在鏈上的變數，放在function外面
// global: 全局變量，function裡面、外面都能使用
contract Variables {
    string public text = "Hello";
    uint256 public num = 123;

    // function若要顯示東西需要加上'view returns'
    function doSomething() public view returns(uint8, uint256, address) {
        uint8 i = 1;

        // block.timestamp: 當前區塊的時間戳(秒數計算)
        // msg.sender: 寄送訊息用戶的地址
        uint256 timestamp = block.timestamp;
        address sender = msg.sender;

        return (i, timestamp, sender);
    }
}