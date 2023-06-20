import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Number App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Number App'),
        ),
        body: Center(
          child: RandomNumberWidget(),
        ),
      ),
    );
  }
}

class RandomNumberWidget extends StatefulWidget {
  @override
  _RandomNumberWidgetState createState() => _RandomNumberWidgetState();
}

class _RandomNumberWidgetState extends State<RandomNumberWidget> {
  int _randomNumber = 1;

  void _generateRandomNumber() {
    setState(() {
      _randomNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _generateRandomNumber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$_randomNumber',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'TAP TO DICE ROLL',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}