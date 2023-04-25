/// @use-src 4:"contracts/Storage_reassignment.sol"
object "Storage_reassignment_214" {
    code {
        {
            /// @src 4:65:318  "contract Storage_reassignment {..."
            let _1 := memoryguard(0x80)
            if callvalue() { revert(0, 0) }
            let programSize := datasize("Storage_reassignment_214")
            let argSize := sub(codesize(), programSize)
            let newFreePtr := add(_1, and(add(argSize, 31), not(31)))
            if or(gt(newFreePtr, sub(shl(64, 1), 1)), lt(newFreePtr, _1))
            {
                mstore(/** @src -1:-1:-1 */ 0, /** @src 4:65:318  "contract Storage_reassignment {..." */ shl(224, 0x4e487b71))
                mstore(4, 0x41)
                revert(/** @src -1:-1:-1 */ 0, /** @src 4:65:318  "contract Storage_reassignment {..." */ 0x24)
            }
            mstore(64, newFreePtr)
            codecopy(_1, programSize, argSize)
            if slt(sub(add(_1, argSize), _1), 96)
            {
                revert(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 4:65:318  "contract Storage_reassignment {..."
            let value := mload(_1)
            let value_1 := mload(add(_1, 32))
            let _2 := iszero(iszero(value_1))
            if iszero(eq(value_1, _2))
            {
                revert(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 4:65:318  "contract Storage_reassignment {..."
            let value_2 := mload(add(_1, 64))
            if iszero(eq(value_2, and(value_2, 0xffff)))
            {
                revert(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 4:65:318  "contract Storage_reassignment {..."
            sstore(/** @src -1:-1:-1 */ 0, /** @src 4:65:318  "contract Storage_reassignment {..." */ value)
            let _3 := sload(1)
            sstore(1, or(or(and(_3, not(16777215)), and(_2, 255)), and(shl(8, value_2), 16776960)))
            let _4 := mload(64)
            let _5 := datasize("Storage_reassignment_214_deployed")
            codecopy(_4, dataoffset("Storage_reassignment_214_deployed"), _5)
            return(_4, _5)
        }
    }
    /// @use-src 4:"contracts/Storage_reassignment.sol"
    object "Storage_reassignment_214_deployed" {
        code {
            {
                /// @src 4:65:318  "contract Storage_reassignment {..."
                revert(0, 0)
            }
        }
        data ".metadata" hex"a264697066735822122055f66de71cc393cb0eb814abee15ece8175edbfe279b8c6bf9e15b5ae5fa39a864736f6c63430008130033"
    }
}
