import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row',
      home: AAA(),
    );
  }
}

class AAA extends StatelessWidget {
  const AAA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
        elevation: 0,
        foregroundColor: Colors.cyanAccent,
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.indigo, width: 2),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 50),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.amber,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.red,
                constraints: BoxConstraints(
                  minWidth: 50,
                  maxWidth: 130,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.purple,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.teal,
              ),
            ),
            SizedBox(width: 50),
          ],
        ),
      ),
    );
  }
}
