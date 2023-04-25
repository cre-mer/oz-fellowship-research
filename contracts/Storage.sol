// SPDX-License-Identifier: unlicensed
pragma solidity ^0.8.19;

contract Storage {
    // declare
    uint256 foo;
    bool bar;
    uint16 baz;

    constructor(bool _bar, uint256 _foo, uint16 _baz) {
        // assign
        baz = _baz;
        foo = _foo;
        bar = _bar;
    }
}