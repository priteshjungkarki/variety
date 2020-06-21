import 'package:flutter/material.dart';
import 'appbar.dart';
import 'package:audioplayers/audio_cache.dart';

class Audio extends StatefulWidget {
  @override
  _AudioState createState() => _AudioState();
}

void playsound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded buildKey({Color color, int soundNumber}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playsound(soundNumber);
      },
      child: null,
    ),
  );
}

class _AudioState extends State<Audio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Appbar(text: 'Audio'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.orange, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
            buildKey(color: Colors.teal, soundNumber: 5),
            buildKey(color: Colors.blue, soundNumber: 6),
            buildKey(color: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
