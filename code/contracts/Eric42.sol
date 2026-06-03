// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Eric42 is ERC20, Ownable {
    uint256 public constant CLAIM_AMOUNT = 100 ether;
    uint256 public constant COOLDOWN = 1 minutes;

    mapping(address => uint256) public lastClaimAt;

    event Claimed(address indexed user, uint256 amount);
    event Minted(address indexed to, uint256 amount);

    constructor(uint256 initialSupply)
        ERC20("Eric42", "E42")
        Ownable(msg.sender)
    {
        _mint(msg.sender, initialSupply);
    }

    function claim() external {
        require(block.timestamp >= lastClaimAt[msg.sender] + COOLDOWN, "Claim cooldown active");

        lastClaimAt[msg.sender] = block.timestamp;
        _mint(msg.sender, CLAIM_AMOUNT);

        emit Claimed(msg.sender, CLAIM_AMOUNT);
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
        emit Minted(to, amount);
    }
}