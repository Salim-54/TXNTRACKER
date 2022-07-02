import 'package:flutter/material.dart';

class DateSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 300,
          child: Card(
            elevation: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Search week by date',style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold
                ),),
                IconButton(onPressed: (){}, icon: Icon(Icons.date_range_rounded))
              ],
            ),
          ),
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined))
      ],
    );
  }
}
