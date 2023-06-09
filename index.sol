// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    function requireExample(uint256 x, uint256 y) public pure returns (uint256) {
        require(x > y, "x must be greater than y");
        return x - y;
    }

    function assertExample(uint256 x, uint256 y) public pure returns (uint256) {
        assert(x > y);
        return x - y;
    }

    function revertExample(uint256 x, uint256 y) public pure returns (uint256) {
        if (x <= y) {
            revert("x must be greater than y");
        }
        return x - y;
    }
}
