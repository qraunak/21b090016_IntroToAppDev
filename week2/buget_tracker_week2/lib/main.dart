import 'package:flutter/material.dart';
import 'home_page.dart';
import 'budget.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Budget> items = [Budget(amount: 100000, item: 'Total')];
  final List<int> amount = [100000];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget App',
      home: home_page(total_amount: amount, items: items),
    );
  }
}
