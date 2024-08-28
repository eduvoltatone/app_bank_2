import 'package:flutter_test/flutter_test.dart';
import '../lib/bank.dart';
import '../lib/account.dart';

void main() {
  group('Bank Tests', () {
    test('Add and retrieve accounts', () {
      final bank = Bank();
      final account = Account<int>(123456, 500.0);
      bank.addAccount(account);

      final retrievedAccount = bank.getAccountByNumber(123456);
      expect(retrievedAccount, equals(account));
    });

    test('Retrieve non-existent account should throw an exception', () {
      final bank = Bank();
      expect(
        () => bank.getAccountByNumber(999999),
        throwsA(isA<Exception>()),
      );
    });

    test('Display all accounts', () {
      final bank = Bank();
      bank.addAccount(Account<int>(123456, 500.0));
      bank.addAccount(Account<String>('ABC123', 1000.0));

      expect(() => bank.displayAllAccounts(), prints(contains('Account')));
    });
  });
}
