import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/all_transactions_screen.dart';

import '../screens/new_transaction_screen.dart';

class GeneralDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.work,
                    size: 40,
                    color: Colors.white70,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'ExpAPP',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(AddNewScreen.routeName);
            },
            horizontalTitleGap: -7,
            leading: Icon(
              Icons.add_circle_rounded,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              'Add new Transaction',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700),
            ),
            trailing: Icon(
              Icons.navigate_next_rounded,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(AllTransactionScreen.routeName);
            },
            horizontalTitleGap: -7,
            leading: Icon(
              Icons.view_list_rounded,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              'View all transactions',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700),
            ),
            trailing: Icon(
              Icons.navigate_next_rounded,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
          ),
          ListTile(
            horizontalTitleGap: -7,
            leading: Icon(
              Icons.transfer_within_a_station_rounded,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              'Transaction categories',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700),
            ),
            trailing: Icon(
              Icons.navigate_next_rounded,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 30),
            child: Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 0,
              color: Colors.black12,
            ),
          ),
          ListTile(
            horizontalTitleGap: -7,
            leading: Icon(
              Icons.attribution_rounded,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              'Debts',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700),
            ),
            trailing: Icon(
              Icons.navigate_next_rounded,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
          ),
          ListTile(
            horizontalTitleGap: -7,
            leading: Icon(
              Icons.upcoming_rounded,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              'Unexpected incomes',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700),
            ),
            trailing: Icon(
              Icons.navigate_next_rounded,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 30),
            child: Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 0,
              color: Colors.black12,
            ),
          ),
          ListTile(
            horizontalTitleGap: -7,
            leading: Icon(
              Icons.description_rounded,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              'Report',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700),
            ),
            trailing: Icon(
              Icons.navigate_next_rounded,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
          ),
          ListTile(
            horizontalTitleGap: -7,
            leading: Icon(
              Icons.settings_applications_rounded,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700),
            ),
            trailing: Icon(
              Icons.navigate_next_rounded,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          TextButton(
            onPressed: () {
              print('logout');
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Log out',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Theme.of(context).errorColor,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.logout_rounded,
                    size: 20,
                    color: Theme.of(context).errorColor,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
