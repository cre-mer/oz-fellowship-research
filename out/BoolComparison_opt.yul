/// @use-src 0:"contracts/BoolComparison.sol"
object "BoolComparison_24" {
    code {
        {
            /// @src 0:63:331  "contract BoolComparison {..."
            let _1 := memoryguard(0x80)
            mstore(64, _1)
            if callvalue() { revert(0, 0) }
            let _2 := datasize("BoolComparison_24_deployed")
            codecopy(_1, dataoffset("BoolComparison_24_deployed"), _2)
            return(_1, _2)
        }
    }
    /// @use-src 0:"contracts/BoolComparison.sol"
    object "BoolComparison_24_deployed" {
        code {
            {
                /// @src 0:63:331  "contract BoolComparison {..."
                let _1 := memoryguard(0x80)
                mstore(64, _1)
                if iszero(lt(calldatasize(), 4))
                {
                    let _2 := 0
                    switch shr(224, calldataload(_2))
                    case 0x652da5ff {
                        if callvalue() { revert(_2, _2) }
                        if slt(add(calldatasize(), not(3)), 32) { revert(_2, _2) }
                        let value := calldataload(4)
                        let _3 := iszero(iszero(value))
                        if iszero(eq(value, _3)) { revert(_2, _2) }
                        mstore(_1, /** @src 0:305:322  "condition == true" */ eq(/** @src 0:63:331  "contract BoolComparison {..." */ _3, /** @src 0:318:322  "true" */ 0x01))
                        /// @src 0:63:331  "contract BoolComparison {..."
                        return(_1, 32)
                    }
                    case 0xae51c484 {
                        if callvalue() { revert(_2, _2) }
                        if slt(add(calldatasize(), not(3)), 32) { revert(_2, _2) }
                        let value_1 := calldataload(4)
                        let _4 := iszero(iszero(value_1))
                        if iszero(eq(value_1, _4)) { revert(_2, _2) }
                        let memPos := mload(64)
                        mstore(memPos, _4)
                        return(memPos, 32)
                    }
                }
                revert(0, 0)
            }
        }
        data ".metadata" hex"a26469706673582212209d52c5985370f717232bbc7bf968fbe3147df79f6c1dcb59432190c7f732205364736f6c63430008130033"
    }
}
