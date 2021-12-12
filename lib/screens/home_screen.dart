import 'package:flutter/material.dart';
import 'package:web_app/screens/image_screen.dart';
import 'package:web_app/values/data.dart';
import 'package:web_app/values/values.dart';
import 'package:web_app/widgets/drop_down_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 199, 181),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/Title_Image.jpeg"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: RichText(
                      //softWrap: true,
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: Data.textMission,
                        style: Styles.titleTextStyleWithSecondaryTextColor),
                  ])),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
