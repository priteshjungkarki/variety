import 'package:flutter/material.dart';
import 'button.dart';
import 'appbar.dart';

class Mainroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.brown,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Appbar(text: 'Variety'),
        ),

        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/v.png'),
              //fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button(
                  name: 'Test your destiny',
                  color: Colors.black54,
                  press: () {
                    Navigator.pushNamed(context, 'destiny');
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Button(
                  name: 'play quiz',
                  color: Colors.black54,
                  press: () {
                    Navigator.pushNamed(context, 'quiz');
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Button(
                  name: 'Hit the color',
                  color: Colors.black54,
                  press: () {
                    Navigator.pushNamed(context, 'audio');
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Button(
                  name: 'Calculate love',
                  color: Colors.black54,
                  press: () {
                    Navigator.pushNamed(context, 'lovecalculator');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
