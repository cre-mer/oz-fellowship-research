// SPDX-License-Identifier: unlicensed
pragma solidity ^0.8.19;

contract Storage_reassignment {
    uint256 foo = 42; // the optimizer will remove this assignment
    bool bar;
    uint16 baz;

    constructor(uint256 _foo, bool _bar, uint16 _baz) {
        foo = _foo;
        bar = _bar;
        baz = _baz;
    }
}