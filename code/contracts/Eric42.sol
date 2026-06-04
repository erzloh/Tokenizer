// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Eric42 is ERC20, Ownable {
    uint256 public constant CLAIM_AMOUNT = 100 ether; // 100 tokens with 18 decimals
    uint256 public constant COOLDOWN = 1 minutes; // cooldown for claiming free tokens

    mapping(address => uint256) public lastClaimAt; // tracks last claim timestamp for each user

    event Claimed(address indexed user, uint256 amount); // emitted when a user claims free tokens
    event Minted(address indexed to, uint256 amount); // emitted when the owner mints new tokens

    constructor(uint256 initialSupply)
        ERC20("Eric42", "E42") // Set token name and symbol
        Ownable(msg.sender) // Set the deployer as the initial owner
    {
        _mint(msg.sender, initialSupply); // Mint initial supply to the owner
    }

		// Users can claim free tokens once every COOLDOWN period
    function claim() external {
        require(block.timestamp >= lastClaimAt[msg.sender] + COOLDOWN, "Claim cooldown active"); // Check if the user is eligible to claim based on cooldown

        lastClaimAt[msg.sender] = block.timestamp; // Update the last claim timestamp for the user
        _mint(msg.sender, CLAIM_AMOUNT); // Mint the claim amount to the user

        emit Claimed(msg.sender, CLAIM_AMOUNT); // Emit the Claimed event
    }

		// The owner can mint new tokens to any address
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
        emit Minted(to, amount); // Emit the Minted event
    }
}