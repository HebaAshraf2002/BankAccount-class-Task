# BankAccount-class-Task
# Overview
a BankAccount class to withdraw or deposit amount of money
# What Does This Code Do?
1. Creates bank accounts with a unique ID and an optional starting balance.
2. Allows deposits and withdrawals with validation to ensure valid amounts.
3. Displays account details, including account ID and current balance.
# How the Code Works?
1. BankAccount Class:
- The BankAccount class holds two private variables: _accountID (account ID) and _balance (current balance).
- It provides methods to interact with these variables, like depositing money, withdrawing money, and displaying account information.
2. Constructors:
- The main constructor initializes both the account ID and balance.
- There's also a named constructor that allows creating an account with just the ID, setting the balance to 0 by default.
3. Methods:
- deposit(): Adds money to the account, but only if the amount is positive.
- withdraw(): Takes money out of the account if the withdrawal amount is positive and doesn’t exceed the current balance.
- displayAccountInfo(): Displays the account’s ID and the balance.
4. Main Function:
- Two BankAccount objects are created, and transactions are carried out using the available methods. After each transaction, account information is displayed.
