/// @use-src 0:"contracts/StorageWriteRemovalBugOnConditionalEarlyTermination.sol"
object "StorageWriteRemovalBugOnConditionalEarlyTermination_32" {
    code {
        {
            /// @src 0:161:715  "contract StorageWriteRemovalBugOnConditionalEarlyTermination {..."
            let _1 := memoryguard(0x80)
            mstore(64, _1)
            if callvalue() { revert(0, 0) }
            let _2 := datasize("StorageWriteRemovalBugOnConditionalEarlyTermination_32_deployed")
            codecopy(_1, dataoffset("StorageWriteRemovalBugOnConditionalEarlyTermination_32_deployed"), _2)
            return(_1, _2)
        }
    }
    /// @use-src 0:"contracts/StorageWriteRemovalBugOnConditionalEarlyTermination.sol"
    object "StorageWriteRemovalBugOnConditionalEarlyTermination_32_deployed" {
        code {
            {
                /// @src 0:161:715  "contract StorageWriteRemovalBugOnConditionalEarlyTermination {..."
                mstore(64, 128)
                if iszero(lt(calldatasize(), 4))
                {
                    let _1 := 0
                    if eq(0x98c3a6c1, shr(224, calldataload(_1)))
                    {
                        if callvalue() { revert(_1, _1) }
                        if slt(add(calldatasize(), not(3)), 32) { revert(_1, _1) }
                        let value := calldataload(4)
                        if iszero(eq(value, iszero(iszero(value)))) { revert(_1, _1) }
                        /// @src 0:327:328  "a"
                        fun_g(value)
                        /// @src 0:161:715  "contract StorageWriteRemovalBugOnConditionalEarlyTermination {..."
                        sstore(_1, /** @src 0:337:338  "2" */ 0x02)
                        /// @src 0:161:715  "contract StorageWriteRemovalBugOnConditionalEarlyTermination {..."
                        return(128, _1)
                    }
                }
                revert(0, 0)
            }
            /// @ast-id 31 @src 0:344:713  "function g(bool a) internal pure {..."
            function fun_g(var_a)
            {
                /// @src 0:669:683  "if (a) return;"
                if var_a
                {
                    /// @src 0:676:683  "return;"
                    leave
                }
                /// @src 0:686:710  "assembly { return(0,0) }"
                return(0, 0)
            }
        }
        data ".metadata" hex"a26469706673582212207a3212b76da43ad99ea1699ba3523117c481b01892429a6e47c7b1f56da68c4264736f6c634300080f0033"
    }
}
