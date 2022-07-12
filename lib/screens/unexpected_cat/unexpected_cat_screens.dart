import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/screens/categories/components/chart_bar.dart';
import 'package:flutter_complete_guide/screens/unexpected_cat/components/ue_chart.dart';
import '../../widgets/drawer.dart';
import '../categories/components/date_search.dart';
import '../categories/components/list_item.dart';

class UnexpectedCat extends StatelessWidget {
  static const routeName = '/unexpected_cat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 30),
        onPressed: () {},
      ),
      // drawer: GeneralDrawer(),
      appBar: AppBar(
        title: Text(
          'INCOME CATEGORIES',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person_pin, size: 35))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            DateSearchCategories(),
            ChartUE(),
            Container(
              height: 410,
              child: ListView(
                children: [
                  ListCategory(colored: Colors.deepOrangeAccent, category: 'Food and drinks', emoji: '🍔' ,money: 710),
                  ListCategory(colored: Colors.amberAccent, category: 'Fashion', emoji: '👓', money: 320, ),
                  ListCategory(colored: Colors.pinkAccent, category: 'Transport' ,emoji: '🚌' , money: 120),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
