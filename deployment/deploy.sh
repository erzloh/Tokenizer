#!/usr/bin/env bash
cd "$(dirname "$0")/../code" || exit 1
npx hardhat run scripts/deploy.ts --network sepolia