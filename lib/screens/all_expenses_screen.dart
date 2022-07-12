import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/chart.dart';
import '../widgets/drawer.dart';
import '../widgets/transaction_item.dart';
import '../widgets/new_transaction.dart';

import '../providers/transaction_provider.dart';

class LandingPage extends StatefulWidget {
  static const routeName = '/landing';

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final expensesData = Provider.of<Expenses>(context);
    final expData = expensesData.transactions;

    void _startSpending(BuildContext ctx) {
      showModalBottomSheet(
        context: ctx,
        builder: (context) {
          return ExpenseForm();
        },
      );
    }

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 30),
        onPressed: () {
          _startSpending(context);
        },
      ),
      drawer: GeneralDrawer(),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              icon: Icon(
                Icons.menu_open_rounded,
                size: 40,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
        title: Text(
          'EXPENSAPP',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person_pin, size: 35))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // NewTransaction(_addTransaction),
          Chart(expData),
          Container(
            height: 475,
            child: ListView(
                children: expData
                    .map(
                      (e) => Dismissible(
                          key: Key(e.id),
                          onDismissed: (_) {
                            return showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                title: Text('Are you sure?'),
                                content: Text(
                                  'Do you want to remove the item from the cart?',
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: Text('No'),
                                    onPressed: () {
                                      Navigator.of(ctx).pop(false);
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Yes'),
                                    onPressed: () {
                                      Navigator.of(ctx).pop(true);
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                          background: Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Container(
                              color: Theme.of(context).errorColor,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Icon(Icons.delete_sweep,
                                      size: 40, color: Colors.white70)),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                          direction: DismissDirection.endToStart,
                          child: TransactionItem(
                            amount: e.amount,
                            transactionTitle: e.title,
                            date: e.date,
                          )),
                    )
                    .toList()),
          ),
        ],
      ),
    );
  }
}
