import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  Appbar({@required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white54,
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
      ),
    );
  }
}
