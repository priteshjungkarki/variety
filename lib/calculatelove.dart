import 'package:flutter/material.dart';
import 'Loveresult.dart';
import 'appbar.dart';

class LoveCalculator extends StatefulWidget {
  @override
  _LoveCalculatorState createState() => _LoveCalculatorState();
}

class _LoveCalculatorState extends State<LoveCalculator> {
  TextEditingController person1controller = TextEditingController();
  TextEditingController person2controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: Appbar(text: 'LoveCalCulator'),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/heart.png'),
              ),
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Enter Your Name',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40.0,
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    controller: person1controller,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'SourceSansPro-Regular',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Loves',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40.0,
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Enter Partner Name',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40.0,
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    controller: person2controller,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'SourceSansPro-Regular',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoveResult(
                            person1name: person1controller.text,
                            person2name: person2controller.text,
                          );
                        }));
                      },
                      child: Text(
                        'Result',
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
      ),
    );
  }
}
