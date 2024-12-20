// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @title Token
/// @notice A basic ERC20 token implementation
/// @dev Extends OpenZeppelin's ERC20 implementation
contract Token is ERC20 {
    /// @notice Creates a new Token contract
    /// @dev Mints the initial supply to the contract deployer
    /// @param name The name of the token
    /// @param symbol The symbol of the token
    /// @param initialSupply The initial amount of tokens to mint
    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
    }
}
