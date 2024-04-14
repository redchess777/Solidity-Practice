// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract EtherUints {
    // wei: 1 wei = 1 (為乙太坊最小的單位)
    // ether: 1 ether = 10**18 wei
    uint256 public onewei = 1 wei;

    bool public isOneWei = 1 wei == 1;

    uint256 public oneEther = 1 ether;

    // 1e18 = 10**18
    bool public isOneEther = 1 ether == 1e18;
}