import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  List<int> diceArry = [1, 2, 3, 4, 5, 6];
  int randomValue = 1;
  int randomValue2 = 1;
  final _random = new Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$randomValue.png'),
              ),
              onPressed: () {
                setState(() {
                  
                  randomValue = diceArry[_random.nextInt(diceArry.length)];
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$randomValue2.png'),
              ),
              onPressed: () {
                setState(() {
                  
                  randomValue2 = diceArry[_random.nextInt(diceArry.length)];
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
