import 'package:flutter/material.dart';

import '../../widgets/date_search_bar.dart';
import '../../widgets/drawer.dart';
import '../../widgets/list_item.dart';
import '../all_expenses_screen.dart';

class Unexpected extends StatelessWidget {
  static const routeName = '/unexpected';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(LandingPage.routeName);
        },
        child: Icon(
          Icons.home_rounded,
          size: 40,
        ),
      ),

      appBar: AppBar(
        title: Text(
          'UNEXPECTED INCOME',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person_pin, size: 35))
        ],
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
      )
    );
  }
}
