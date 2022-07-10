import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categories/components/bar.dart';

class Chart extends StatelessWidget {



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
          children: [
            Bar(),
            Bar(),
            Bar(),
            Bar(),
            Bar(),
          ]
        ),
      ),
    );
  }
}
