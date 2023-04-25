/// @use-src 0:"contracts/Storage.sol"
object "Storage_30" {
    code {
        {
            /// @src 0:65:288  "contract Storage {..."
            let _1 := memoryguard(0x80)
            if callvalue() { revert(0, 0) }
            let programSize := datasize("Storage_30")
            let argSize := sub(codesize(), programSize)
            let newFreePtr := add(_1, and(add(argSize, 31), not(31)))
            if or(gt(newFreePtr, sub(shl(64, 1), 1)), lt(newFreePtr, _1))
            {
                mstore(/** @src -1:-1:-1 */ 0, /** @src 0:65:288  "contract Storage {..." */ shl(224, 0x4e487b71))
                mstore(4, 0x41)
                revert(/** @src -1:-1:-1 */ 0, /** @src 0:65:288  "contract Storage {..." */ 0x24)
            }
            mstore(64, newFreePtr)
            codecopy(_1, programSize, argSize)
            if slt(sub(add(_1, argSize), _1), 96)
            {
                revert(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 0:65:288  "contract Storage {..."
            let value := mload(_1)
            let _2 := iszero(iszero(value))
            if iszero(eq(value, _2))
            {
                revert(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 0:65:288  "contract Storage {..."
            let value_1 := mload(add(_1, 32))
            let value_2 := mload(add(_1, 64))
            if iszero(eq(value_2, and(value_2, 0xffff)))
            {
                revert(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 0:65:288  "contract Storage {..."
            let _3 := sload(1)
            sstore(/** @src -1:-1:-1 */ 0, /** @src 0:65:288  "contract Storage {..." */ value_1)
            sstore(1, or(or(and(_3, not(16777215)), and(shl(8, value_2), 16776960)), and(_2, 255)))
            let _4 := mload(64)
            let _5 := datasize("Storage_30_deployed")
            codecopy(_4, dataoffset("Storage_30_deployed"), _5)
            return(_4, _5)
        }
    }
    /// @use-src 0:"contracts/Storage.sol"
    object "Storage_30_deployed" {
        code {
            {
                /// @src 0:65:288  "contract Storage {..."
                revert(0, 0)
            }
        }
        data ".metadata" hex"a26469706673582212201670baa4ab745b8fe219d4838e2552f608df888b78f54bd83463e8118a5e062564736f6c63430008130033"
    }
}
