import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[800],
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<BallPage> {
  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                rollBall();
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void rollBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
