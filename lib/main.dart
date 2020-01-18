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

class DicePage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    var leftRandom = 3;
    var rightRandom = 5;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                child: Image(
                image: AssetImage('images/dice$leftRandom.png'),
              ),
              onPressed: (){

              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$rightRandom.png'),
              ),
              onPressed: (){

              },
            ),
          ),
        ],
      ),
    );
  }
}
