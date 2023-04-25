//SPDX-License-Identifier: unlicensed
pragma solidity 0.8.19;

contract BoolComparison {
    // uses 21796 gas
    function a(bool condition) public pure returns (bool) {
        return condition;
    }
    
    // uses 21814 gas
    function b(bool condition) public pure returns (bool) {
        return condition == true;
    }
}