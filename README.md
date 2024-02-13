# Kadena Coin Contract - Testnet Version

This repository contains a PACT smart contract designed for the Kadena blockchain, specifically for use on the Kadena testnet. This environment allows developers to test and interact with smart contracts without the financial implications of the mainnet.

## Overview

The coin contract enables functionalities such as:
- Account creation with initial balance setup.
- Balance inquiry for accounts.
- Token transfers between accounts.

This version is tailored for testnet deployment, facilitating a risk-free environment to experiment and validate your contract's logic.

## Requirements

- A Kadena testnet account.
- Access to Chainweaver or another Kadena-compatible wallet/interface that supports testnet operations.
- Testnet KDA tokens, obtainable from faucets.

## Setup

1. Clone this repository to your local machine to get started with the contract.
2. Ensure you have Chainweaver installed or access to a compatible interface for testnet interaction.

## Deploying the Contract on Testnet

1. Launch Chainweaver and select the Kadena testnet network.
2. Navigate to the contract deployment section.
3. Upload the `coin.pact` file from this repository.
4. Define your 'admin-keyset' with your testnet account's public key.
5. Deploy the contract to the testnet, utilizing testnet KDA for any transaction fees.

## Interacting with the Contract on Testnet

### Initialize the Contract
- Execute the `init` function to establish the admin account with its initial balance.

### Query Account Balance
- Invoke the `balance` function with an account name to check its current balance.

### Transfer Tokens
- Use the `transfer` function specifying the sender, recipient, and amount to initiate a token transfer.

## Testnet Resources

- **Faucets**: Obtain testnet KDA for transaction fees and testing via official Kadena faucets.
- **Documentation**: Refer to Kadena's official documentation for detailed guidance on testnet usage.
- **Community Support**: Join Kadena's community forums or chat channels for support and discussions.

## License

This project is released under the [MIT License](LICENSE).

## Disclaimer

This contract is intended for testnet use and educational purposes. Please conduct thorough testing before considering any mainnet deployment. The authors and contributors assume no responsibility for any loss or damage that may arise from its use.
