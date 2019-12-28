import 'dart:math';

import 'package:flutter/material.dart';

import 'ball_page.dart';

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

