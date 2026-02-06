// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Simple Storage
/// @notice This contract stores and retrieves a single number
contract Storage {
    uint256 storedNumber;

    /// @notice Store a number on the blockchain
    /// @param num The number to store
    function store(uint256 num) public {
        storedNumber = num;
    }

    /// @notice Retrieve the stored number
    /// @return The currently stored number
    function retrieve() public view returns (uint256) {
        return storedNumber;
    }
}