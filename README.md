# Individual Project Y3
# Blockchain Battle

Blockchain Battle is a decentralized application (DApp) that allows users to play a blockchain-based version of the classic card game Top Trumps. Players compete using Non-Fungible Token (NFT) cards, represented by ERC721 tokens on the Ethereum blockchain. The goal of the project is to leverage gamification to provide an educational and engaging introduction to blockchain technologies and Web3 concepts.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Technical Stack](#technical-stack)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Running the DApp](#running-the-dapp)
- [Usage](#usage)
- [Smart Contracts](#smart-contracts)
- [Game Rules](#game-rules)
- [Contributing](#contributing)
- [License](#license)

## Overview
Blockchain Battle aims to introduce users to Web3 and blockchain concepts through an engaging DApp. By integrating collectible NFT cards with a competitive card game, users gain exposure to the fundamentals of blockchain, smart contracts, and decentralized applications.

The app features a cartoonish theme where players use unique "monster" cards to compete in a battle of attributes like strength, speed, intelligence, and more.

## Features
- **ERC721 Token Cards**: Each card is represented as a unique ERC721 token, with metadata hosted on IPFS to ensure decentralization and immutability.
- **Ethereum Wallet Integration**: Users log in and interact with the DApp using MetaMask, which provides cryptocurrency wallet capabilities.
- **Interactive Frontend**: Built with Node.js, the DApp features a user-friendly interface to facilitate card trading, game setup, and card battles.
- **Smart Contracts & Game Logic**: Game mechanics are implemented in Solidity, ensuring transparency and fairness in gameplay.
- **Educational Prompts**: Subtle prompts throughout the game help teach Web3 concepts without interrupting gameplay.

## Technical Stack
- **Frontend**: Node.js with Web3.js for blockchain interaction
- **Backend**: Solidity smart contracts deployed on the Ethereum blockchain
- **Blockchain Framework**: Truffle for development, testing, and deployment
- **Local Development**: Ganache for a local Ethereum test network
- **Storage**: IPFS with Pinata for storing card metadata

## Getting Started

### Prerequisites
- **Node.js** (>=14.x)
- **npm** or **yarn**
- **Truffle** framework: `npm install -g truffle`
- **Ganache** (local Ethereum blockchain)
- **MetaMask Extension**: Installed in your browser to interact with the DApp

### Installation
1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-repo/blockchain-battle.git
   cd blockchain-battle

## Getting Started

### Installation
2. **Install Dependencies**:
    ```bash
    npm install
    ```

3. **Configure Environment Variables**: 
   Ensure you have a `.env` file with your **Infura project ID**, **private keys**, and **IPFS API keys** (for Pinata).

4. **Compile & Migrate Smart Contracts**: 
   Ensure that Ganache is running, then compile and deploy the contracts:
    ```bash
    truffle compile
    truffle migrate
    ```

### Running the DApp

1. **Run Local Development Server**:
    ```bash
    npm start
    ```

2. **Open in Browser**: 
   Visit `http://localhost:3000` and connect your MetaMask wallet to start using Blockchain Battle.

## Usage

1. **Log In with MetaMask**: 
   Connect your Ethereum wallet to the DApp.
2. **Buy Cards**: 
   Purchase NFT cards from the initial card drop (12 cards with various monster attributes).
3. **Play Top Trumps**: 
   Start a game by challenging another player and selecting which card attributes to battle.
4. **Card Ownership**: 
   Winners of each game will have the losing player's card transferred to their wallet, following Top Trumps rules.

## Smart Contracts

The smart contracts are written in Solidity and provide the following functionality:

- **Card Minting**: 
  Creates new NFT cards on the Ethereum blockchain.
- **Card Trading & Ownership**: 
  Handles card ownership transfers based on game outcomes.
- **Game Logic**: 
  Implements rules for selecting attributes, comparing cards, and determining round winners.

## Game Rules

- **One-on-One Battles**: 
  Each player selects a card to battle against the opponent.
- **Attribute Selection**: 
  Players take turns selecting which attribute (strength, speed, etc.) to compare.
- **Winning Condition**: 
  The player with the better attribute value wins the round and takes the opponent's card.

## Contributing

This project is currently not open to contributions. Feel free to reach out for inquiries, but please note that the code is meant for educational purposes and further distribution or reuse is not permitted without explicit consent.

## License

This project is protected under a custom license. All rights reserved by the original author. The code is not open-source and is distributed for educational purposes only. Unauthorized use, distribution, or replication is prohibited.
