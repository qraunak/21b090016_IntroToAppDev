// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'itemlist.dart';
// import 'budget.dart';
// import 'screen.dart';
//
// class home_page extends StatefulWidget {
//   final List<int> total_amount;
//   final List<Budget> items;
//   home_page({required this.total_amount, required this.items});
//   @override
//   _homeState createState() => _homeState(amount: total_amount, items: items);
// }
//
// class _homeState extends State<home_page> {
//   List<int> amount;
//   List<Budget> items;
//   _homeState({required this.amount, required this.items});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         title: Text('Budget Tracker'),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//         elevation: 0.0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Divider(
//               color: Colors.blue,
//               height: 6.0,
//             ),
//             Text(
//               'Hello User!',
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 35.0,
//                 letterSpacing: 3.0,
//               ),
//             ),
//             SizedBox(height: 25.0),
//             Text(
//               'Your Name Here',
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 25.0,
//                 letterSpacing: 1.5,
//               ),
//             ),
//
//             SizedBox(height: 12.0),
//             Text(
//               'Raunak',
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 30.0,
//                 letterSpacing: 3.0,
//               ),
//             ),
//             SizedBox(height: 35.0),
//             Text(
//               'Phone No.',
//               style: TextStyle(
//                 color: Colors.blue,
//                 letterSpacing: 3.0,
//               ),
//             ),
//             SizedBox(height: 13.0),
//             Row(
//               children: <Widget>[
//                 Icon(
//                   Icons.phone,
//                   color: Colors.blue,
//                 ),
//                 SizedBox(width: 10.0),
//                 Text(
//                   '123456790',
//                   style: TextStyle(
//                     color: Colors.blue,
//                     fontSize: 18.0,
//                     letterSpacing: 1.0,
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(height: 30.0),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius:
//                 BorderRadius.circular(40.0), // Adjust the value as needed
//                 color: Colors.blue, // Set your desired background color
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   SizedBox(width: 20.0),
//                   Text(
//                     'Total:',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 25.0,
//                       letterSpacing: 1.0,
//                     ),
//                   ),
//                   Text(
//                     '${amount[0]}',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 25.0,
//                       letterSpacing: 1.0,
//                     ),
//                   ),
//                   ElevatedButton(
//                     child: Icon(Icons.expand),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                                 item(total_amount: amount, items: items)),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) =>
//                     NewExpenseScreen(amount: amount, items: items)),
//           ).then((value) {
//             setState(() {
//               // Update the value of amount[0] after returning from NewExpenseScreen
//               amount[0] = value.amount[0];
//               items = value.items;
//             });
//           });
//         },
//         tooltip: 'Add Item',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'itemlist.dart';
import 'budget.dart';
import 'screen.dart';

class home_page extends StatefulWidget {
  final List<int> total_amount;
  final List<Budget> items;
  home_page({required this.total_amount, required this.items});
  @override
  _home_page_state createState() => _home_page_state(amount: total_amount, items: items);
}

class _home_page_state extends State<home_page> {
  List<int> amount;
  List<Budget> items;
  _home_page_state({required this.amount, required this.items});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Budget Tracker'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Divider(
              color: Colors.blue,
              height: 6.0,
            ),
            Text(
              'Hello User!',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(height: 25.0),
            Text(
              'Your Name Here',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                letterSpacing: 1.5,
              ),
            ),

            SizedBox(height: 12.0),
            Text(
              'Raunak',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(height: 35.0),
            Text(
              'Phone No.',
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(height: 13.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                SizedBox(width: 10.0),
                Text(
                  '123456790',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0),
            Container(
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(40.0), // Adjust the value as needed
                color: Colors.blue, // Set your desired background color
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 20.0),
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
          ],
        ),
      ),
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
