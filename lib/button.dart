import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({@required this.name, this.color, this.press});
  final String name;
  final Color color;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 70.0,
      minWidth: 280.0,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.blue,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: color,
        onPressed: press,
        child: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
