//SPDX-License-Identifier: unlicensed
pragma solidity 0.8.19;

contract Loop {
    uint256[] private funds = [10, 35, 880, 16, 429, 1024];
    uint256 private total;

    function a() external {
        for (uint256 i = 0; i < funds.length; i++) {
            total += funds[i];
        }
    }
}