// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Gas {
    uint256 public i = 0;

    function forever() public {
        // 死循環會當機
        while (true) {
            i += 1;
        }
    }
}