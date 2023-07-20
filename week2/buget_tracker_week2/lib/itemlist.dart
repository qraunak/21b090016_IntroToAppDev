import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screen.dart';
import 'budget.dart';
import 'home_page.dart';


class BudgetCard extends StatelessWidget {
  final Budget budget;
  final VoidCallback delete;
  BudgetCard({required this.budget, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.blue,
        margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(width: 25.0),
              Text(
                '${budget.item}',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                '${budget.amount}',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 20.0),
              ElevatedButton.icon(
                onPressed: delete,
                label: Text('Delete'), // Changed label text to 'Delete'
                icon: Icon(Icons.delete),
              ),
            ],
          ),
        ));
  }
}

class item extends StatefulWidget {
  List<int> total_amount;
  List<Budget> items;
  item({required this.total_amount, required this.items});
  @override
  _itemState createState() => _itemState(amount: total_amount, items: items);
}

class _itemState extends State<item> {
  List<int> amount;
  List<Budget> items;
  _itemState({required this.amount, required this.items});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      home_page(total_amount: amount, items: items)),
            );
          },
        ),

        title: Text('Budget Tracker'),
        centerTitle: true,
        backgroundColor: Colors.blue,

        elevation: 0.0,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(40.0), // Adjust the value as needed
                color: Colors.blue, // Set your desired background color
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 50.0),
                  Text(
                    'Total:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                  Text(
                    '${amount[0]}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                  ElevatedButton(
                    child: Icon(Icons.expand),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                item(total_amount: amount, items: items)),
                      );
                    },
                  ),
                ],
              ),
            ),
            Column(
              children: items
                  .map((bud) => BudgetCard(
                  budget: bud,
                  delete: () {
                    setState(() {
                      amount[0] = amount[0] - bud.amount;
                      items.remove(bud);
                    });
                  }))
                  .toList(),
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    NewExpenseScreen(amount: amount, items: items)),
          ).then((value) {
            setState(() {
              // Update the value of amount[0] after returning from NewExpenseScreen
              amount[0] = value.amount[0];
              items = value.items;
            });
          });
        },
        tooltip: 'Add Item',
        child: Icon(Icons.add),
      ),
    );
  }
}
