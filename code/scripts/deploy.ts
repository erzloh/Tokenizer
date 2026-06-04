import { network } from "hardhat";
const { ethers } = await network.create();

async function main() {
  const initial = 1_000_000n * 10n ** 18n; // 1,000,000 E42 with 18 decimals
  const Token = await ethers.getContractFactory("Eric42");
  const token = await Token.deploy(initial);
  await token.waitForDeployment();

  console.log("Eric42 deployed to:", await token.getAddress());
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});