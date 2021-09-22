import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.deepPurple,
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
  int num = 1;
  int num1 = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    num = Random().nextInt(6)+1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$num.png'),
                ),
              ),
            ),

            Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    num1 = Random().nextInt(6)+1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$num1.png'),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
