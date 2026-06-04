# Tokenizer

This repository is about a school 42 project that is about creating a token on the blockchain. I chose the Ethereum platform and implemented an ERC20 token called `Eric42`. (How original, right?)

## Why Ethereum and ERC20

I decided to build on Ethereum since it has the largest ecosystem and the most mature tooling for tokens. ERC20 is the most widely used token standard on Ethereum, and it defines how tokens are transferred, approved, and queried by applications.

Key ERC20 concepts used in this project:

- `totalSupply()` returns the total amount of tokens
- `balanceOf(address)` returns an account balance
- `transfer(address, amount)` moves tokens between accounts
- `decimals()` defines token precision and is typically `18` for Ethereum tokens

## Tools and stack

This project uses:

- `Hardhat` to build, test, and deploy the smart contract
- `npm` as package manager
- `Solidity` for the smart contract code
- `TypeScript` for tests and deployment scripts

I chose Hardhat because it offers a strong developer experience, and seamless TypeScript support.

## Network and funding

I deployed the token to the Sepolia testnet so I could develop and test without using real money. Sepolia is a public test network that simulates Ethereum behavior.

To fund transactions on Sepolia, I used the Google faucet to get free Sepolia ETH.

## Token details

- Name: `Eric42`
- Symbol: `E42`
- Initial supply: `1,000,000` tokens
- Decimals: `18`

## Deployment

To deploy the token yourself:

1. Clone the project:
   ```bash
   git clone <repo-url>
   ```
2. Add a `.env` file under `code/` with:
   ```env
   SEPOLIA_RPC_URL=
   PRIVATE_KEY=
   ```
3. Install dependencies:
   ```bash
   cd code
   npm install
   ```
4. Run tests:
   ```bash
   npx hardhat test
   ```
5. Deploy to Sepolia:
   ```bash
   npx hardhat run scripts/deploy.ts --network sepolia
   ```

- `SEPOLIA_RPC_URL` can be obtained from Alchemy.
- `PRIVATE_KEY` comes from your MetaMask account and must include the `0x` prefix.

### Troubleshooting

- `INSUFFICIENT_FUNDS` on deploy → get Sepolia ETH from a faucet.
- `No account provided` / bad key → ensure `PRIVATE_KEY` in `code/.env` includes the `0x` prefix.

## Smart contract features

The token contract includes the standard ERC20 functionality plus additional features to support a dashboard website I made for interacting with the token.

- `claim()` for a faucet-style token claim directly from the website
- `mint(address, amount)` so the contract owner can mint new tokens and send them to a specified address

These extras make it possible to use the token in a more interactive frontend experience.

## Dashboard website features

The website for the token includes:

- wallet connection via MetaMask or another Web3 wallet
- token information display: name, symbol, total supply, contract address, and network
- connected wallet information display
- send token functionality
- claim token faucet feature
- contract events history view, similar to Etherscan, showing on-chain actions for the token
- a “buy a surprise” feature where users can enter their email, pay with tokens, and receive a surprise in their inbox

## Conclusion
This project was a great learning experience in blockchain development, smart contract programming, and frontend integration of web3. 