//SPDX-License-Identifier: unlicensed
pragma solidity 0.8.19;

contract ExpressionSimplifier {
    function a(uint256 x) public pure returns (uint256) {
        return x+ 0;
    }

    function b(uint256 x) public pure returns (uint256) {
        return 2 * x;
    }
}