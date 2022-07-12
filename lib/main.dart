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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row'),
          elevation: 0,
          foregroundColor: Colors.cyanAccent,
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        backgroundColor: Colors.greenAccent[100],
        body: const AAA(),
      ),
    );
  }
}

class AAA extends StatefulWidget {
  const AAA({Key? key}) : super(key: key);

  @override
  State<AAA> createState() => _AAAState();
}

class _AAAState extends State<AAA> {
  List x = ['aaa', 'bbb', 'ccc'];
  String i = 'aaaa';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
            child: (() {
          if (x.contains(i)) {
            return Text('including');
          } else {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 50),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ],
            );
          }
        }())),
      ],
    );
  }
}
