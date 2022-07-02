import 'package:flutter/material.dart';

class Bar extends StatelessWidget {

  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;

  Bar({this.label, this.spendingAmount, this.spendingPctOfTotal});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          child: FittedBox(
            child: Text('\$${spendingAmount.toStringAsFixed(0)}', style: TextStyle(
              fontWeight: FontWeight.w600
            ),),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 80,
          width: 10,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: FractionallySizedBox(
                  heightFactor: spendingPctOfTotal,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.tealAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: Text(label,
          style: TextStyle(
            fontWeight: FontWeight.w900
          ),),
        )
      ],
    );
  }
}
