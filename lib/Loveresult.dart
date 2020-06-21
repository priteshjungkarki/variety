import 'dart:math';
import 'lovemessage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoveResult extends StatefulWidget {
  final String person1name;
  final String person2name;
  const LoveResult({Key key, this.person1name, this.person2name})
      : super(key: key);

  @override
  _LoveResultState createState() => _LoveResultState();
}

class _LoveResultState extends State<LoveResult> {
  int lovePercentage = Random().nextInt(100) + 1;
  String loveMessage;

  Message getlovemessage = Message();
  void takeMessage(int loverpercent) {
    setState(() {
      loveMessage = getlovemessage.getMessage(loverpercent);
    });
  }

  void initState() {
    takeMessage(lovePercentage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/heart.png'),
            ),
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60.0,
                ),
                Text(
                  widget.person1name,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Pacifico',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.heart,
                  size: 100.0,
                  color: Colors.black,
                ),
                Text(
                  widget.person2name,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Pacifico',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
                Text(
                  lovePercentage.toString(),
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Pacifico',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  loveMessage,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Pacifico',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 80.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Again',
                      style: TextStyle(
                        //color: Colors.white,
                        fontSize: 40.0,
                        fontFamily: 'Pacifico',
                        color: Colors.teal.shade100,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
