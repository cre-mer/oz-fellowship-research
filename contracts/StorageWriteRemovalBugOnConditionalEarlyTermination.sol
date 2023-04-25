//SPDX-License-Identifier: unlicensed
pragma solidity 0.8.15;

// https://blog.soliditylang.org/2022/09/08/storage-write-removal-before-conditional-termination/
contract StorageWriteRemovalBugOnConditionalEarlyTermination {
	uint256 private x;
	function f(bool a) public {
		x = 1; // This write is removed due to the bug.
		g(a);
		x = 2;
	}
	function g(bool a) internal pure {
		// The relevant part of this function is that it can
		// both return to the caller and terminate the transaction.
		// The bug will show its effects in the cases in which
		// the transaction is terminated (i.e. if a is false).
		// In this case the write x = 1 above will be missing.
		if (a) return;
		assembly { return(0,0) }
	}
}