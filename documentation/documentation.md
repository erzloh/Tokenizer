# E42 Token Documentation

## Overview

E42 is a community token built on the Ethereum blockchain using the ERC20 standard. It is designed to be used within a small community of friends, family, fans, or other groups who want to exchange value using a custom token.

### Token Details

- **Name**: Eric42
- **Symbol**: E42
- **Initial Supply**: 1,000,000 tokens
- **Decimals**: 18
- **Network**: Sepolia Testnet
- **Standard**: ERC20

## The E42 Dashboard Website

The dashboard is the main interface for interacting with E42. It provides an easy-to-use environment for community members to manage their tokens.

### Dashboard Features

#### 1. **Wallet Connection**
- Connect using MetaMask or other Web3 wallets
- Securely sign transactions without sharing private keys
- Switch between different accounts

#### 2. **Token Information**
View key details about E42:
- Token name: Eric42
- Symbol: E42
- Total supply
- Contract address on the blockchain
- Current network (Sepolia testnet)

#### 3. **Wallet Information**
Check your personal account details:
- Your wallet address
- Your E42 token balance

#### 4. **Send Tokens**
- Transfer E42 tokens to another wallet address
- Specify the amount to send
- Review and confirm transactions

#### 5. **Claim Tokens (Faucet)**
- Claim free E42 tokens directly from the dashboard
- Subject to a cooldown period to prevent spam
- Great way for new members to get started

#### 6. **Contract Events History**
- View a record of all E42 transactions and events
- See who sent tokens to whom and when
- Similar to viewing Etherscan block explorer data
- Track minting, transfers, claims

#### 7. **Buy a Surprise**
- An interactive feature that adds fun and utility to E42
- Enter your email address
- Pay a small amount of E42 tokens
- Receive a surprise in your inbox
- Creates real-world use cases for the token

## Getting Started with E42

### Prerequisites

1. **MetaMask or Web3 Wallet**
   - Install MetaMask browser extension (or another Web3 wallet)
   - Create an account and secure your seed phrase

2. **Access to Sepolia Testnet**
   - Add Sepolia to your wallet
   - Get test ETH from a faucet to pay for transactions

3. **Visit the Dashboard**
   - Open the E42 dashboard website
   - Connect your wallet

### First Steps

1. **Connect Your Wallet**
   - Click "Connect Wallet" on the dashboard
   - Approve the connection in MetaMask

2. **Claim Tokens**
   - Go to the "Claim" section
   - Click "Claim Tokens" to receive free E42

3. **Check Your Balance**
   - View your wallet information on the dashboard
   - Your E42 balance is displayed in real-time

4. **Send Tokens**
   - Enter the recipient's wallet address
   - Specify the amount of E42 to send
   - Confirm the transaction in MetaMask
   - The recipient receives the tokens once the transaction is confirmed

5. **Explore Events**
   - View the transaction history to see all activity on E42

## Smart Contract Details

### Core Functionality

The E42 smart contract is an ERC20 token with additional features:

#### Standard ERC20 Functions
- `transfer(to, amount)`: Send tokens to another address
- `approve(spender, amount)`: Allow another address to spend your tokens
- `transferFrom(from, to, amount)`: Transfer tokens on behalf of another address
- `balanceOf(address)`: Check someone's token balance
- `totalSupply()`: Get the total supply of E42

#### Custom Functions
- `claim()`: Allows users to claim free E42 tokens from the faucet
- `mint(to, amount)`: Allows the contract owner to create new tokens and send them to an address

#### Constants
- `CLAIM_AMOUNT`: The number of tokens users receive per claim
- `COOLDOWN`: The minimum time (in seconds) between claims per user
- `DECIMALS`: Always 18 for Ethereum tokens (allows precise fractional transfers)

### Security Features

- **Ownable**: Only the contract owner can mint new tokens
- **Cooldown on Claims**: Prevents users from spamming the faucet
- **Standard ERC20**: Interoperable with any wallet or exchange that supports ERC20

## Use Cases and Ideas

### Social Exchange
- Track favors among friends using E42 (e.g., "you owe me 20 E42 for coffee")
- Create a points system for shared activities

### Gaming or Competition
- Use E42 as in-game currency for competitions
- Award winners with minted tokens

### Charity
- The community owner can mint tokens as fundraising rewards
- Supporters receive E42 for contributions
- Tokens become a badge of participation

### Event Rewards
- Award E42 at community events or gatherings
- Use it to incentivize attendance or participation

## Important Notes

### Testnet vs. Mainnet
- E42 currently runs on **Sepolia Testnet**, not Ethereum mainnet
- Testnet tokens have no real monetary value
- This allows safe experimentation and learning

### Private Key Safety
- Never share your private key or seed phrase with anyone
- Only connect your wallet to trusted applications
- Keep your MetaMask backup secure

### Transaction Costs
- Every transaction on Ethereum requires a small gas fee
- Testnet gas is free or very cheap
- Mainnet gas fees vary depending on network congestion

### Immutability
- Once a transaction is confirmed on the blockchain, it cannot be reversed
- Always double-check recipient addresses before sending