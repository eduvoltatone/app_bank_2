import 'account.dart';

class Bank {
  final List<Account<dynamic>> _accounts = [];

  void addAccount(Account<dynamic> account) {
    _accounts.add(account);
  }

  // Se a conta não for encontrada, lança uma exceção
  Account<dynamic> getAccountByNumber(dynamic accountNumber) {
    try {
      return _accounts.firstWhere(
        (account) => account.accountNumber == accountNumber,
      );
    } catch (e) {
      throw Exception('Account with number $accountNumber not found.');
    }
  }

  void displayAllAccounts() {
    for (var account in _accounts) {
      print(account);
    }
  }
}
