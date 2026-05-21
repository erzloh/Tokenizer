// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract Eric42 is ERC20, ERC20Permit {
    constructor(uint256 initialSupply) ERC20("Eric42", "ERC42") ERC20Permit("Eric42") {
        _mint(msg.sender, initialSupply);
    }
}