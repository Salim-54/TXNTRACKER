import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../providers/transaction_provider.dart';
import '../models/transaction.dart';
import 'all_expenses_screen.dart';

class AddNewScreen extends StatefulWidget {
  static const routeName = '/add-new';

  @override
  State<AddNewScreen> createState() => _AddNewScreenState();
}

class _AddNewScreenState extends State<AddNewScreen> {
  final _form = GlobalKey<FormState>();
  DateTime _selectedDate;
  String _newId;
  final _titleInput = TextEditingController();
  final _amountInput = TextEditingController();
  var _formData = Transaction(id: '', title: '', amount: 0.0, date: null);

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _titleInput.dispose();
    _amountInput.dispose();

    super.dispose();
  }

  String getRandomString(int length) {
    const characters =
        '+-*=?AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    Random random = Random();
    return String.fromCharCodes(Iterable.generate(length,
        (_) => characters.codeUnitAt(random.nextInt(characters.length))));
  }

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        _newId = getRandomString(3);
        _selectedDate = value;
      });
    });
  }

  void onSubmit() {
    setState(() {
      _formData = Transaction(
          amount: double.parse(_amountInput.text),
          date: _formData.date,
          title: _formData.title,
          id: _formData.id);
    });
  }

  void hi() {
    print(_titleInput.text);
    print(_amountInput.text);
  }

  @override
  Widget build(BuildContext context) {
    // final addNew = productsData.addTransaction(txn)
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text('Add new transaction'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.save))],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 45),
        child: Form(
          key: _form,
          child: Container(
            child: ListView(
              children: [
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 180),
                  child: Row(
                    children: [
                      _selectedDate == null
                          ? Text('Add date')
                          : Text('${DateFormat.yMd().format(_selectedDate)}'),
                      IconButton(
                        onPressed: () {
                          _presentDatePicker();
                        },
                        icon: Icon(Icons.date_range_rounded),
                      ),
                    ],
                  ),
                ),
                TextFormField(
                  controller: _titleInput,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: 'Transaction',
                    border: UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: _amountInput,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Amount spent',
                    border: UnderlineInputBorder(),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      print(_newId);
                      print(_selectedDate);
                      print(_titleInput.text);
                      print(_amountInput.text);
                      Transaction formFinal = Transaction(
                          id: _newId,
                          title: _titleInput.text,
                          amount: double.parse(_amountInput.text),
                          date: _selectedDate);
                      print(formFinal.amount);
                      Provider.of<Expenses>(context, listen: false)
                          .addTransaction(formFinal);
                      Navigator.of(context).pushNamed(LandingPage.routeName);

                    },
                    child: Text(
                      'Save transaction',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Theme.of(context).primaryColor,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
