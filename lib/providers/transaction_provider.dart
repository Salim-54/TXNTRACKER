import 'package:flutter/cupertino.dart';

import '../models/transaction.dart';

class Expenses with ChangeNotifier {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'New shoes',
      amount: 60.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New Cap',
      amount: 50.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'New Chick',
      amount: 50.0,
      date: DateTime.utc(2022, 6, 26),
    ),
    Transaction(
      id: 't4',
      title: 'New Chick',
      amount: 50.0,
      date: DateTime.utc(2022, 6, 25),
    ),
  ];

  List<Transaction> get transactions {
    return [..._transactions];
  }

  void addTransaction(Transaction txn) {
    _transactions.add(txn);
    notifyListeners();
  }
}
