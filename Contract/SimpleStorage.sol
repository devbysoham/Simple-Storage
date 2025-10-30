// SPDX-License-Identifier: MIT
// This license identifier is required by Solidity compilation standards.

pragma solidity ^0.8.0;

/**
 * @title SimpleStorage
 * @dev Stores a single unsigned integer (uint256) and provides functions
 * to get and set the value.
 */
contract SimpleStorage {
    // State variable to store the number. State variables are permanently 
    // stored on the blockchain.
    uint256 private storedData;

    // A constructor is a special function that runs only once when the
    // contract is first deployed to the blockchain.
    constructor() {
        // Initialize the number to zero.
        storedData = 0;
    }

    /**
     * @notice Updates the value of the storedData.
     * @param _newValue The new number to be stored.
     */
    function setNumber(uint256 _newValue) public {
        storedData = _newValue;
        // Functions that modify state variables (like this one) cost 'gas' 
        // to execute because they change the blockchain's state.
    }

    /**
     * @notice Retrieves the current value of the storedData.
     * @return The current stored number.
     */
    function getNumber() public view returns (uint256) {
        // The 'view' keyword means this function does not modify the 
        // blockchain's state. It only reads it, so it costs no gas to call.
        return storedData;
    }
}

