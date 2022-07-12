import 'package:flutter/material.dart';

import '../all_expenses_screen.dart';


class SettingScreen extends StatelessWidget {
  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: GeneralDrawer(),
      appBar: AppBar(
        title: Text(
          'SETTINGS',
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
      body: Center(
        child: Text('HIIIIIIIIIII!!'),
      )
    );
  }
}
