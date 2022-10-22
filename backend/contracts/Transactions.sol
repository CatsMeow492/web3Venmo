// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.15;

contract Trasactions {
    // Number of transactions
    uint256 public transactionCount = 0;

    // Event that will be fired when a transaction is created
    event Transfer(address from, address receiver, uint amount, string message, uint timestamp);

    // Struct of the transaction that we will be storing on chain
    struct Transaction {
        address from;
        address receiver;
        uint amount;
        string message;
        uint timestamp;
    }

    // Array of transactions
    Transaction[] public transactions;

    // Function to add a transaction to the blockchain with struct

    function addToBlockchain(address payable receiver, uint amount, string memory message) public {
        transactionCount += 1;
        transactions.push(Transaction(msg.sender, receiver, amount, message, block.timestamp);

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp);

        // Function to get all the transactions
        function getTransactions() public view returns (Transaction[] memory) {
            return transactions;
        }
        // Function to get the count of transactions
        function getTransactionCount() public view returns (uint256) {
            return transactionCount;
        }
        // Function to get a specific transaction
        function getTransaction(uint index) public view returns (Transaction memory) {
            return transactions[index];
        }
    };
}