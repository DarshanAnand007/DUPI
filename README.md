# DUPI
# dBank Application

Welcome to the dBank application repository! This project consists of a decentralized banking system implemented on the Ethereum blockchain. Users can create accounts, deposit funds, transfer money to other users, and view transaction history securely on the blockchain.

## Features

- **User Account Creation**: Users can create accounts by providing their Ethereum address and an initial balance.
- **Fund Deposits**: Users can deposit funds into their accounts using Ether (ETH).
- **Money Transfers**: Users can transfer funds to other users by specifying the recipient's address and the amount.
- **Transaction History**: Users can view their transaction history, including deposits and transfers.

## Technologies Used

- **Solidity**: Smart contract language for Ethereum.
- **HTML, CSS, JavaScript**: Front-end interface development.
- **Web3.js**: JavaScript library for interacting with Ethereum.
- **MetaMask**: Browser extension for Ethereum wallet management.

## Setup Instructions

To use the dBank application, follow these steps:

1. **Clone the Repository**: Clone the repository to your local machine:

    ```bash
    [git clone https://github.com/yourusername/dbank.git](https://github.com/DarshanAnand007/DUPI.git)
    ```

2. **Navigate to the Project Directory**: Open a terminal and navigate to the project directory:

    ```bash
    cd dbank
    ```

3. **Install Dependencies**: No dependencies are required for the smart contract. For the front-end interface, ensure you have a web browser with the MetaMask extension installed.

4. **Deploy the Smart Contract**: Deploy the `DBANK.sol` contract to your preferred Ethereum network (e.g., Ganache, Ropsten, Mainnet). Update the `contractAddress` variable in `index.html` with the deployed contract address.

5. **Open the Front-End Interface**: Open the `index.html` file in a web browser. Click on the "Connect Wallet" button to connect your MetaMask wallet. You can then use the application to create users, deposit funds, transfer money, and view transaction history.

## Important Notes

- **Incomplete Front-End**: The front-end interface provided in this repository is a basic implementation. It lacks error handling and may require additional features and improvements. Contributors are welcome to enhance the front-end and submit pull requests.

- **Open Source**: This project is open source under the MIT License. Feel free to fork the repository, make modifications, and contribute to the development of the dBank application.

## License

This project is licensed under the MIT License.
