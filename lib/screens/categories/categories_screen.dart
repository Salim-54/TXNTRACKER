import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categories/components/chart_bar.dart';

import '../../widgets/drawer.dart';
import 'components/date_search.dart';
import 'components/list_item.dart';


class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 30),
        onPressed: () {},
      ),
      drawer: GeneralDrawer(),
      appBar: AppBar(
        title: Text(
          'CATEGORIES',
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
            SizedBox(height: 10,),
            DateSearchCategories(),
            Chart(),
            ListCategory(),
          ],
        ),
      ),
    );
  }
}

