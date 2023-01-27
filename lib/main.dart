import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Game'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 3;
  int right = 4;

  void changeDice(){
    setState(() {
      left = Random().nextInt(6)+1;
      right = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(children: <Widget>[
      Expanded(
        child: TextButton(
          onPressed: () {
            changeDice();
          },
          child: Image.asset('images/dice$left.png'),
          // child: Image.asset('images/dice$right.png'),
        ),
      ),
      Expanded(
        child: TextButton(
          onPressed: () {
              changeDice();
          },
          child: Image.asset('images/dice$right.png'),
          // child: Image.asset('images/dice$left.png'),
        ),
      ),
    ]));
  }
}
