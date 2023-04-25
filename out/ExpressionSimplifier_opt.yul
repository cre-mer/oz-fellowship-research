/// @use-src 1:"contracts/ExpressionSimplifier.sol"
object "ExpressionSimplifier_51" {
    code {
        {
            /// @src 1:63:268  "contract ExpressionSimplifier {..."
            let _1 := memoryguard(0x80)
            mstore(64, _1)
            if callvalue() { revert(0, 0) }
            let _2 := datasize("ExpressionSimplifier_51_deployed")
            codecopy(_1, dataoffset("ExpressionSimplifier_51_deployed"), _2)
            return(_1, _2)
        }
    }
    /// @use-src 1:"contracts/ExpressionSimplifier.sol"
    object "ExpressionSimplifier_51_deployed" {
        code {
            {
                /// @src 1:63:268  "contract ExpressionSimplifier {..."
                let _1 := memoryguard(0x80)
                mstore(64, _1)
                if iszero(lt(calldatasize(), 4))
                {
                    let _2 := 0
                    switch shr(224, calldataload(_2))
                    case 0xcd580ff3 {
                        if callvalue() { revert(_2, _2) }
                        if slt(add(calldatasize(), not(3)), 32) { revert(_2, _2) }
                        let value := calldataload(4)
                        if iszero(eq(value, and(value, sub(shl(255, 1), 1))))
                        {
                            mstore(_2, shl(224, 0x4e487b71))
                            mstore(4, 0x11)
                            revert(_2, 0x24)
                        }
                        mstore(_1, shl(1, value))
                        return(_1, 32)
                    }
                    case 0xf0fdf834 {
                        if callvalue() { revert(_2, _2) }
                        if slt(add(calldatasize(), not(3)), 32) { revert(_2, _2) }
                        let memPos := mload(64)
                        mstore(memPos, calldataload(4))
                        return(memPos, 32)
                    }
                }
                revert(0, 0)
            }
        }
        data ".metadata" hex"a2646970667358221220de320dabf61647f14a54afbddfb249b75208a97e8dedb199144e0d894c6622e964736f6c63430008130033"
    }
}
