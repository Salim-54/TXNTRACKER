import 'package:flutter/material.dart';

class ListCategory extends StatelessWidget {

  final Color colored;
  final String category;
  final String emoji;
  final int money;
  ListCategory({this.colored, this.category, this.emoji, this.money});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            spreadRadius: 0,
            blurRadius: 0,
            offset: Offset(0, 0)
          )
        ]
      ),
      child: ListTile(
        horizontalTitleGap: 30,
        tileColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.all(5),
          color: colored,
          child: Text(
            emoji,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
        title: Text(
          category,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),
        ),
        subtitle: Text('02 Feb 2022'),
        trailing: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: colored,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            '\$${money}',
            style: TextStyle(
              color: Colors.white70,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
