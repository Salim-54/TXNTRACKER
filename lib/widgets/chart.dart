import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/chart_bar.dart';

import '../models/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> weekExpenses;

  Chart(this.weekExpenses);

  List<Map<String, Object>> get groupedWeekExpenses {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );
      var totalSum = 0.0;

      for (var i = 0; i < weekExpenses.length; i++) {
        if (weekExpenses[i].date.day == weekDay.day &&
            weekExpenses[i].date.month == weekDay.month &&
            weekExpenses[i].date.year == weekDay.year) {
          totalSum += weekExpenses[i].amount;
        }
      }

      return {
        'day': DateFormat.E().format(weekDay).substring(0, 1),
        'amount': totalSum,
      };
    }).reversed.toList();
  }

  double get totalWeekExpenses {
    return groupedWeekExpenses.fold(0.0, (sum, item) {
      return sum + item['amount'];
    });
  }

  @override
  Widget build(BuildContext context) {
    print(DateTime.now());
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(10),
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: groupedWeekExpenses
              .map(
                (e) => Bar(
                    label: e['day'],
                    spendingAmount: e['amount'],
                    spendingPctOfTotal: totalWeekExpenses == 0.0
                        ? 0.0
                        : (e['amount'] as double) / totalWeekExpenses),
              )
              .toList(),
        ),
      ),
    );
  }
}
