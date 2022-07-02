import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white38,
        border: Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 1.0,
          ),
        ),
        boxShadow: [],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('\$ 28.7',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),),
          Text('New Tv',style: TextStyle(
            fontWeight: FontWeight.w800,

          ),),
          Text('07, Jun 2022',style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black54,
          ),),
          IconButton(onPressed: () {}, icon: Icon(Icons.food_bank_rounded))
        ],
      ),
    );
  }
}
