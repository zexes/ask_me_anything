import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[900],
          ),
//          body: BallPage(),
          body: Ball(),
        ),
      ),
    );

//Question: why should i call a stateless and then a stateful  before
//passing to the scaffold
//why not just pass stateful widget directly

//class BallPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Ball();
//  }
//}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = new Random().nextInt(5) + 1;
//            print('I got clicked= $ballNumber');
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
