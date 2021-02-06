import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.blue,
              width: 100.0,
              // height: 100.0,
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.deepPurple,
                  width: 100.0,
                  height: 100.0,
                ),
                Container(
                  color: Colors.green,
                  width: 100.0,
                  height: 100.0,
                ),
              ],
            ),
            Container(
              color: Colors.red,
              width: 100.0,
              // height: 100.0,
            ),
          ],
        ),
      ),
    ));
  }
}
