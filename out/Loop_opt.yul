/// @use-src 0:"contracts/Loop.sol"
object "Loop_37" {
    code {
        {
            /// @src 0:63:296  "contract Loop {..."
            let _1 := memoryguard(0x80)
            if callvalue() { revert(0, 0) }
            let newFreePtr := add(_1, 192)
            if or(gt(newFreePtr, sub(shl(64, 1), 1)), lt(newFreePtr, _1))
            {
                mstore(/** @src -1:-1:-1 */ 0, /** @src 0:63:296  "contract Loop {..." */ shl(224, 0x4e487b71))
                mstore(4, 0x41)
                revert(/** @src -1:-1:-1 */ 0, /** @src 0:63:296  "contract Loop {..." */ 0x24)
            }
            mstore(64, newFreePtr)
            mstore(_1, /** @src 0:110:112  "10" */ 0x0a)
            /// @src 0:109:137  "[10, 35, 880, 16, 429, 1024]"
            let _2 := 32
            /// @src 0:63:296  "contract Loop {..."
            mstore(/** @src 0:109:137  "[10, 35, 880, 16, 429, 1024]" */ add(_1, _2), /** @src 0:114:116  "35" */ 0x23)
            /// @src 0:63:296  "contract Loop {..."
            mstore(/** @src 0:109:137  "[10, 35, 880, 16, 429, 1024]" */ add(_1, /** @src 0:63:296  "contract Loop {..." */ 64), /** @src 0:118:121  "880" */ 0x0370)
            /// @src 0:63:296  "contract Loop {..."
            mstore(/** @src 0:109:137  "[10, 35, 880, 16, 429, 1024]" */ add(_1, 96), /** @src 0:123:125  "16" */ 0x10)
            /// @src 0:63:296  "contract Loop {..."
            mstore(/** @src 0:109:137  "[10, 35, 880, 16, 429, 1024]" */ add(_1, 128), /** @src 0:127:130  "429" */ 0x01ad)
            /// @src 0:63:296  "contract Loop {..."
            mstore(/** @src 0:109:137  "[10, 35, 880, 16, 429, 1024]" */ add(_1, 160), /** @src 0:132:136  "1024" */ 0x0400)
            /// @src -1:-1:-1
            let _3 := 0
            /// @src 0:63:296  "contract Loop {..."
            let oldLen := sload(/** @src -1:-1:-1 */ _3)
            /// @src 0:109:137  "[10, 35, 880, 16, 429, 1024]"
            let _4 := 6
            /// @src 0:63:296  "contract Loop {..."
            sstore(/** @src -1:-1:-1 */ _3, /** @src 0:109:137  "[10, 35, 880, 16, 429, 1024]" */ _4)
            /// @src 0:63:296  "contract Loop {..."
            if lt(/** @src 0:109:137  "[10, 35, 880, 16, 429, 1024]" */ _4, /** @src 0:63:296  "contract Loop {..." */ oldLen)
            {
                mstore(/** @src -1:-1:-1 */ _3, _3)
                /// @src 0:63:296  "contract Loop {..."
                let data := keccak256(/** @src -1:-1:-1 */ _3, /** @src 0:109:137  "[10, 35, 880, 16, 429, 1024]" */ _2)
                /// @src 0:63:296  "contract Loop {..."
                let _5 := add(data, oldLen)
                let start := add(data, /** @src 0:109:137  "[10, 35, 880, 16, 429, 1024]" */ _4)
                /// @src 0:63:296  "contract Loop {..."
                for { } lt(start, _5) { start := add(start, 1) }
                {
                    sstore(start, /** @src -1:-1:-1 */ _3)
                }
            }
            /// @src 0:63:296  "contract Loop {..."
            let srcPtr := _1
            mstore(/** @src -1:-1:-1 */ _3, _3)
            /// @src 0:63:296  "contract Loop {..."
            let data_1 := keccak256(/** @src -1:-1:-1 */ _3, /** @src 0:109:137  "[10, 35, 880, 16, 429, 1024]" */ _2)
            /// @src 0:63:296  "contract Loop {..."
            let i := /** @src -1:-1:-1 */ _3
            /// @src 0:63:296  "contract Loop {..."
            for { }
            lt(i, /** @src 0:109:137  "[10, 35, 880, 16, 429, 1024]" */ _4)
            /// @src 0:63:296  "contract Loop {..."
            { i := add(i, 1) }
            {
                let cleaned := and(mload(srcPtr), 0xffff)
                srcPtr := add(srcPtr, /** @src 0:109:137  "[10, 35, 880, 16, 429, 1024]" */ _2)
                /// @src 0:63:296  "contract Loop {..."
                sstore(add(data_1, i), cleaned)
            }
            let _6 := mload(64)
            let _7 := datasize("Loop_37_deployed")
            codecopy(_6, dataoffset("Loop_37_deployed"), _7)
            return(_6, _7)
        }
    }
    /// @use-src 0:"contracts/Loop.sol"
    object "Loop_37_deployed" {
        code {
            {
                /// @src 0:63:296  "contract Loop {..."
                let _1 := 4
                if iszero(lt(calldatasize(), _1))
                {
                    let _2 := 0
                    if eq(0x0dbe671f, shr(224, calldataload(_2)))
                    {
                        if callvalue() { revert(_2, _2) }
                        if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), _2) { revert(_2, _2) }
                        /// @src 0:208:221  "uint256 i = 0"
                        let var_i := /** @src 0:63:296  "contract Loop {..." */ _2
                        /// @src 0:203:288  "for (uint256 i = 0; i < funds.length; i++) {..."
                        for { }
                        /** @src 0:63:296  "contract Loop {..." */ 1
                        /// @src 0:208:221  "uint256 i = 0"
                        {
                            /// @src 0:63:296  "contract Loop {..."
                            if eq(var_i, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                            {
                                mstore(_2, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                                mstore(_1, 0x11)
                                revert(_2, 0x24)
                            }
                            /// @src 0:241:244  "i++"
                            var_i := /** @src 0:63:296  "contract Loop {..." */ add(var_i, 1)
                        }
                        /// @src 0:241:244  "i++"
                        {
                            /// @src 0:223:239  "i < funds.length"
                            if iszero(lt(var_i, /** @src 0:63:296  "contract Loop {..." */ sload(_2)))
                            /// @src 0:223:239  "i < funds.length"
                            { break }
                            /// @src 0:63:296  "contract Loop {..."
                            let _3 := sload(add(18569430475105882587588266137607568536673111973893317399460219858819262702947, var_i))
                            let _4 := 1
                            let _5 := sload(_4)
                            let sum := add(_5, _3)
                            if gt(_5, sum)
                            {
                                mstore(_2, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                                mstore(_1, 0x11)
                                revert(_2, 0x24)
                            }
                            sstore(_4, sum)
                        }
                        return(_2, _2)
                    }
                }
                revert(0, 0)
            }
        }
        data ".metadata" hex"a264697066735822122067b8bb864068caa271577c823ee167f00abdb38867cb3570ee2d08feaeaf445e64736f6c63430008130033"
    }
}
