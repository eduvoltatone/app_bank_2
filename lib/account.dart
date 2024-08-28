class Account<T> {
  final T accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
    }
  }

  @override
  String toString() {
    return 'Account $accountNumber has balance: \$${balance.toStringAsFixed(2)}';
  }
}
