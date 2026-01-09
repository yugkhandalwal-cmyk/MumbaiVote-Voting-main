# MumbaiVote
A decentralized voting smart contract for ETHMumbai 2026.

## Overview
As a Solidity beginner, I built MumbaiVote to explore Web3 governance, using a voting template from Solidity by Example. I studied the code to understand structs, mappings, and user interactions, customized the contract name and proposals, and deployed it on Sepolia for ETHMumbai.

## Deployment
- **Network**: Sepolia Testnet
- **Contract Address**: [https://sepolia.etherscan.io/address/0xd751cea6971bc0e213aed278ef6dfba49fce412c](https://sepolia.etherscan.io/address/0xd751cea6971bc0e213aed278ef6dfba49fce412c)

## Features
- **Proposals**: Predefined options ("Proposal A", "Proposal B").
- **Voting**: Users vote once for a proposal, tracked to prevent double-voting.
- **Result**: View the winning proposal with the highest votes.
- **Security**: Uses safe math (Solidity ^0.8.20) and input validation.

## Code Breakdown
 MumbaiVote.sol` implements a voting system:                                                 
- **Constructor**: Initializes the owner and two proposals ("Proposal A", "Proposal B").
- **Vote**: Allows one vote per user, tracked via a `voters` mapping, and emits a `Voted` event.
- **GetWinningProposal**: Returns the proposal with the most votes by iterating through a `Proposal` struct array.
- **Security**: Uses `require` to prevent double-voting and invalid proposals.

I learned how structs organize data, mappings track user actions, and loops determine results. Deploying via Remix was a smooth experience.

## Files
- ** MumbaiVote.sol`**: Defines the voting contract.
- **`LICENSE`**: MIT License, allowing open-source use.
- **`.gitignore`**: Node.js template with `artifacts/` for clean commits.
- **`README.md`**: This file, detailing my project and journey.

## Source
Built using [Solidity by Example’s voting template](https://docs.soliditylang.org/en/latest/solidity-by-example.html#voting), licensed under MIT. I customized the contract name and proposals while learning from the code.
  
## My Journey
Building MumbaiVote was an exciting leap into Web3 governance! Studying the contract taught me about data structures and user interaction in Solidity. Deploying to Sepolia and verifying on Etherscan was a proud moment. I named it  MumbaiVote” to celebrate my journey toward ETHMumbai 2026.

## Usage
- Compile and deploy  MumbaiVote.sol` in Remix (Solidity 0.8.20).
- Vote for a proposal via MetaMask.
- Check the winning proposal using `getWinningProposal`.
- Verify on Etherscan.

## License
Licensed under the MIT License—see [LICENSE](LICENSE).

## Contact
Email me at yugkhandalwal@gmail.com or find me on X @yug_khandelwalz. Excited to connect at ETHMumbai 2026!
