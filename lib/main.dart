import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categories/categories_screen.dart';
import 'package:flutter_complete_guide/screens/login_screen.dart';
import 'package:flutter_complete_guide/screens/report/report_screen.dart';
import 'package:flutter_complete_guide/screens/settings/setting_screen.dart';
import 'package:flutter_complete_guide/screens/unexpected/unexpected_screen.dart';
import 'package:flutter_complete_guide/screens/unexpected_cat/unexpected_cat_screens.dart';
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
          CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
          AddNewScreen.routeName: (ctx) => AddNewScreen(),
          ExpenseForm.routeName: (ctx) => ExpenseForm(),
          Login.routeName: (ctx) => Login(),
          Unexpected.routeName: (ctx) => Unexpected(),
          UnexpectedCat.routeName: (ctx) => UnexpectedCat(),
          SettingScreen.routeName: (ctx) => SettingScreen(),
          ReportScreen.routeName: (ctx) => ReportScreen(),
          AllTransactionScreen.routeName: (ctx) => AllTransactionScreen(),
        },
      ),
    );
  }
}
