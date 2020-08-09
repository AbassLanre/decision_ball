import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ballAns = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lay your Problems"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      ansMe();
                    });
                  },
                  child: Image.asset('images/ball$ballAns.png')),
            ),
          ],
        ),
      ),
    );
  }

  void ansMe() {
    ballAns = Random().nextInt(5) + 1;
  }
}
