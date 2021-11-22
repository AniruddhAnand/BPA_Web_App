import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text("Website"),
      actions: <Widget>[
        TextButton(onPressed: () {}, child: const Text("Text"))
      ],
    ));
  }
}
