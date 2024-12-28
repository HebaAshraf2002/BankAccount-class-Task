class BankAccount {
  String _accountID;
  double _balance;

  BankAccount(this._accountID, this._balance);
  BankAccount.named(this._accountID, [this._balance = 0]);

  void setaccountID(String accountID) {
    _accountID = accountID;
  }

  void setbalance(double balance) {
    _balance = balance;
  }

  String getaccountID() {
    return _accountID;
  }

  double getbalance() {
    return _balance;
  }

  void withdraw(double withdraw_amount) {
    if (withdraw_amount > 0) {
      if (withdraw_amount <= _balance) {
        _balance = _balance - withdraw_amount;
        print("you have withdraw $withdraw_amount");
      } else {
        print("The withdraw_amount $withdraw_amount is greater than of your current balance $_balance");
      }
    } else {
      print('Withdrawal amount must be Positive');
    }
  }

  void deposit(double deposit_amount) {
    if (deposit_amount > 0) {
      _balance += deposit_amount;
      print("you have deposit $deposit_amount and your balance became $_balance");
    } else {
      print('Deposit amount must be Positive');
    }
  }

  void displayAccountInfo() {
    print("Your accountID is : $_accountID \nyour current balance is : $_balance");
  }
}

void main() {
  BankAccount client1 = BankAccount.named("456");
  BankAccount client2 = BankAccount("123", 800);
  client1.displayAccountInfo();
  client1.deposit(-50);
  client1.deposit(1000);
  client1.withdraw(700);
  client1.displayAccountInfo();
  print("------------------------------------------------------");
  client2.displayAccountInfo();
  client2.withdraw(1000);
  client2.deposit(350);
  client2.withdraw(200);
  client2.displayAccountInfo();
}
