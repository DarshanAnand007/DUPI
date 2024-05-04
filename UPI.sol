// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DBANK {
    struct User {
        uint256 balance;
        bool exists;
    }

    struct TransactionRecord {
        address from;
        address to;
        uint256 amount;
        uint256 timestamp;
    }

    mapping(address => User) private users;
    uint256 private bankBalance;
    TransactionRecord[] private transactionHistory;

    event UserCreated(address indexed userAddress, uint256 initialBalance);
    event Transaction(address indexed from, address indexed to, uint256 amount, uint256 timestamp);
    event BankDeposit(address indexed from, uint256 amount);


    function createUser(address userAddress, uint256 initialBalance) external {
        require(!users[userAddress].exists, "User already exists");
        users[userAddress] = User(initialBalance, true);
        bankBalance += initialBalance;
        emit UserCreated(userAddress, initialBalance);
    }

    // Function to perform a transaction within the bank
    function performTransaction(address from, address to, uint256 amount) external {
        require(users[from].balance >= amount, "Insufficient balance");
        require(users[to].exists, "Recipient does not exist");

        users[from].balance -= amount;
        users[to].balance += amount;

        transactionHistory.push(TransactionRecord(from, to, amount, block.timestamp));
        emit Transaction(from, to, amount, block.timestamp);
    }

    // Function to deposit funds into the bank
    function deposit() external payable {
        bankBalance += msg.value;
        emit BankDeposit(msg.sender, msg.value);
    }

    // Function to check a user's balance
    function getUserBalance(address userAddress) external view returns (uint256) {
        return users[userAddress].balance;
    }

    // Function to check the bank's balance
    function getBankBalance() external view returns (uint256) {
        return bankBalance;
    }

    // Function to get transaction history
    function getTransactionHistory() external view returns (TransactionRecord[] memory) {
        return transactionHistory;
    }
}
