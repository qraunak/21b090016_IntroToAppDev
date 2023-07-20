import 'package:buget_tracker_week2/budget.dart';
import 'package:flutter/material.dart';
import 'budget.dart';
import 'home_page.dart';
import 'itemlist.dart';

class NewExpenseScreen extends StatefulWidget {
  List<int> amount;
  List<Budget> items;

  NewExpenseScreen({required this.amount, required this.items});

  @override
  _NewExpenseScreenState createState() => _NewExpenseScreenState();
}

class _NewExpenseScreenState extends State<NewExpenseScreen> {
  String expenseValue = '';
  int description = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adding a New Item to the Budget'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  expenseValue = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Category',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 21.0),
            TextField(
              onChanged: (value) {
                setState(() {
                  description = int.tryParse(value) ?? 0;
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Expense (Use negative value) or Income (Use positive value)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 21.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.amount[0] += description;
                  widget.items.add(Budget(amount: description, item: expenseValue));
                });

                // For example, save the expense to a data source

                // Return to the previous screen and pass the updated amount and items back
                Navigator.pop(context, {'amount': widget.amount, 'items': widget.items});
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
