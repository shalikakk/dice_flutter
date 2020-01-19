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
  int randomValue = 1;
  int randomValue2 = 1;

  void getRandom() {
    setState(() {
      randomValue = Random().nextInt(6) + 1;
      randomValue2 = Random().nextInt(6) + 1;
    });
  }

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
                getRandom();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$randomValue2.png'),
              ),
              onPressed: () {
                getRandom();
              },
            ),
          ),
        ],
      ),
    );
  }
}
