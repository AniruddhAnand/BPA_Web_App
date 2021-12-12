import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import '../values/values.dart';

class ImageScreen extends StatelessWidget {
  final Widget _image;
  ImageScreen(this._image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _image,
      ),
    );
  }
}
