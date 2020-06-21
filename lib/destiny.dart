import 'package:flutter/material.dart';
import 'appbar.dart';
import 'dart:math';

class Destiny extends StatefulWidget {
  @override
  _DestinyState createState() => _DestinyState();
}

class _DestinyState extends State<Destiny> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Appbar(text: 'Find your answer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Destiny',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 70.0,
                  color: Colors.black38,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Think of question and get the answer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/ball$ballNumber.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
