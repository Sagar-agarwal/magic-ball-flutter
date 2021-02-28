import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MagicApp());
}

class MagicApp extends StatelessWidget {
  const MagicApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue.shade900,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Magic Ball"),
          backgroundColor: Colors.lightBlue.shade500,
        ),
        body: MagicBallHome(),
      ),
    );
  }
}

class MagicBallHome extends StatefulWidget {
  MagicBallHome({Key key}) : super(key: key);

  @override
  _MagicBallHomeState createState() => _MagicBallHomeState();
}

class _MagicBallHomeState extends State<MagicBallHome> {
  int ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset("images/ball$ballNum.png"),
              onPressed: (() {
                setState(() {
                  ballNum = Random().nextInt(5) + 1;
                });
              }),
            ),
          )
        ],
      ),
    );
  }
}
