// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BankAccount {
    address public owner;
    uint public balance;

    constructor() {
        owner = msg.sender;
        balance = 0;
    }

    function deposit(uint amount) public {
        require(amount > 0, "Amount should be greater than 0");
        balance += amount;
    }

    function withdraw(uint amount) public {
        require(amount > 0, "Amount should be greater than 0");
        require(balance >= amount, "Insufficient balance");
        balance -= amount;
    }

    function showBalance() public view returns (uint) {
        return balance;
    }
}
