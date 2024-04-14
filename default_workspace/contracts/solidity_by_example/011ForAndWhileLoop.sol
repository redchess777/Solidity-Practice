// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Loop {
    function loop() public pure returns (uint256, uint256) {
        uint256 numa;

        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                continue;
            }
            if (i == 5) {
                break;
            }

            numa = i;
        }

        uint256 j;
        while (j < 10) {
            j++;
        }

        return (numa, j);
    }
}