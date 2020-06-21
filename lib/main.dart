import 'package:flutter/material.dart';
import 'mainroute.dart';
import 'audio.dart';
import 'destiny.dart';
import 'calculatelove.dart';
import 'quiz.dart';

void main() {
  runApp(Variety());
}

class Variety extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'mainroute',
      routes: {
        'mainroute': (context) => Mainroute(),
        'audio': (context) => Audio(),
        'destiny': (context) => Destiny(),
        'quiz': (context) => Quizzler(),
        'lovecalculator': (context) => LoveCalculator(),
      },
    );
  }
}
