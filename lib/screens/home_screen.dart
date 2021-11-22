import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Website"),
        actions: <Widget>[
          TextButton(
              onPressed: () {},
              child: const Text(
                "Text",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Marquee(
        text: 'Some sample text that takes some space. ',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        scrollAxis: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        blankSpace: 20.0,
        velocity: 100.0,
        pauseAfterRound: Duration(seconds: 1),
        startPadding: 10.0,
        accelerationDuration: Duration(seconds: 1),
        accelerationCurve: Curves.linear,
        decelerationDuration: Duration(milliseconds: 500),
        decelerationCurve: Curves.easeOut,
      ),
    );
  }
}
