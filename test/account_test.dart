import 'package:flutter_test/flutter_test.dart';
import '../lib/account.dart';

void main() {
  group('Account Tests', () {
    test('Create an account and check initial balance', () {
      final account = Account<int>(123456, 500.0);
      expect(account.balance, equals(500.0));
    });

    test('Deposit money into the account', () {
      final account = Account<int>(123456, 500.0);
      account.deposit(200.0);
      expect(account.balance, equals(700.0));
    });

    test('Withdraw money from the account', () {
      final account = Account<int>(123456, 500.0);
      account.withdraw(200.0);
      expect(account.balance, equals(300.0));
    });

    test('Withdraw more money than available should throw an exception', () {
      final account = Account<int>(123456, 500.0);
      expect(() => account.withdraw(600.0), throwsA(isA<Exception>()));
    });

    test('Account number should be correctly assigned', () {
      final account = Account<int>(123456, 500.0);
      expect(account.accountNumber, equals(123456));
    });
  });
}
