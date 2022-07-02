import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './widgets/new_transaction.dart';
import './screens/all_expenses_screen.dart';
import './screens/new_transaction_screen.dart';
import './screens/all_transactions_screen.dart';

import './providers/transaction_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Expenses())],
      child: MaterialApp(
        title: 'EXPENSAPP',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          fontFamily: 'Quicksand',
        ),
        // home: LandingPage(),
        routes: {
          LandingPage.routeName: (ctx) => LandingPage(),
          AddNewScreen.routeName: (ctx) => AddNewScreen(),
          ExpenseForm.routeName: (ctx) => ExpenseForm(),
          AllTransactionScreen.routeName: (ctx) => AllTransactionScreen(),
        },
      ),
    );
  }
}