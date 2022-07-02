import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/all_expenses_screen.dart';
import 'package:flutter_complete_guide/widgets/drawer.dart';
import 'package:flutter_complete_guide/widgets/list_item.dart';

import '../widgets/date_search_bar.dart';

class AllTransactionScreen extends StatelessWidget {
  static const routeName = '/all-transaction';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: GeneralDrawer(),
      appBar: AppBar(
        title: Text(
          'EXPAPP',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person_pin, size: 35))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(LandingPage.routeName);
        },
        child: Icon(Icons.home_rounded,size: 40,),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  DateSearch(),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 585,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListItem(),
                          ListItem(),
                          ListItem(),
                          ListItem(),
                          ListItem(),
                          ListItem(),
                          ListItem(),
                          ListItem(),
                          ListItem(),
                          ListItem(),
                          ListItem(),
                          ListItem(),
                          ListItem(),
                          ListItem(),
                          ListItem(),
                          ListItem(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
