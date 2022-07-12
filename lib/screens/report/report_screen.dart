import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../all_expenses_screen.dart';

class ReportScreen extends StatelessWidget {
  static const routeName = '/report';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: GeneralDrawer(),
      appBar: AppBar(
        title: Text(
          'MONTHLY REPORT',
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
        child: Icon(
          Icons.home_rounded,
          size: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Overalls',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Color.fromRGBO(22, 119, 71, 1),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(88, 80, 80, 0.12),
                borderRadius: BorderRadius.circular(7),
              ),
              padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Salary: ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '\$ 252',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Salary: ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '\$ 252',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Details Report',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Color.fromRGBO(22, 119, 71, 1),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(88, 80, 80, 0.12),
                borderRadius: BorderRadius.circular(7),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 103,
                      child: Text(
                        'Most expensive',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text(
                      'Shoes',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text('\$ 250'),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(88, 80, 80, 0.12),
                borderRadius: BorderRadius.circular(7),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 103,
                      child: Text(
                        'Most income',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text(
                      'Shoes',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text('\$ 250'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Summations',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Color.fromRGBO(22, 119, 71, 1),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(88, 80, 80, 0.12),
                borderRadius: BorderRadius.circular(7),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total income :',
                      style: TextStyle(fontWeight: FontWeight.w700,
                      fontSize: 14),
                    ),
                    Text('\$ 250'),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(88, 80, 80, 0.12),
                borderRadius: BorderRadius.circular(7),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total expense :',
                      style: TextStyle(fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                    Text('\$ 250'),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(88, 80, 80, 0.12),
                borderRadius: BorderRadius.circular(7),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total saving :',
                      style: TextStyle(fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                    Text('\$ 250'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Decision :',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Color.fromRGBO(22, 119, 71, 1),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromRGBO(150, 214, 128, 0.47),
                borderRadius: BorderRadius.circular(7),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child : Text(
                'GOOD!!',
                style: TextStyle(fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
              ),
          ],
        ),
      ),
    );
  }
}
