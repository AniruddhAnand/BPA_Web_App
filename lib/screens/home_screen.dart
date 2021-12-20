import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/screens/image_screen.dart';
import 'package:web_app/values/data.dart';
import 'package:web_app/values/values.dart';
import 'package:web_app/widgets/drop_down_button.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen(this.homeController);
  ScrollController homeController;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FocusNode _focusNode = FocusNode();

  void _handleKeyEvent(RawKeyEvent event) {
    var offset = widget.homeController.offset;
    if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      setState(() {
        if (kReleaseMode) {
          widget.homeController.animateTo(offset - 200,
              duration: Duration(milliseconds: 30), curve: Curves.ease);
        } else {
          widget.homeController.animateTo(offset - 200,
              duration: Duration(milliseconds: 30), curve: Curves.ease);
        }
      });
    } else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
      setState(() {
        if (kReleaseMode) {
          widget.homeController.animateTo(offset + 200,
              duration: Duration(milliseconds: 30), curve: Curves.ease);
        } else {
          widget.homeController.animateTo(offset + 200,
              duration: Duration(milliseconds: 30), curve: Curves.ease);
        }
      });
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    buildContext = context;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 199, 181),
      body: //Container(
          //constraints: const BoxConstraints.expand(),
          //decoration: const BoxDecoration(
          //  image: DecorationImage(
          //    image: AssetImage("assets/images/Background.jpeg"),
          //  fit: BoxFit.cover)),
          /* child:*/ RawKeyboardListener(
        autofocus: true,
        focusNode: _focusNode,
        onKey: _handleKeyEvent,
        child: SingleChildScrollView(
          controller: widget.homeController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              getTitleImage(context),
              getMenuBar(context, widget.homeController),
              missionWidget(context, "Mission", textMission),
              SelectableText(mission, style: style),
              Padding(
                padding: EdgeInsets.only(
                    left: 50.0 * aspectRatio,
                    right: 50.0 * aspectRatio,
                    bottom: 75.0,
                    top: 40.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () => launch(
                                    "https://www.bbc.com/future/article/20200310-sustainable-fashion-how-to-buy-clothes-good-for-the-climate#:~:text=Jeans%20manufacturer%20Levi%20Strauss%20estimates,in%20the%20average%20US%20car"),
                                child: Image.asset(
                                  "assets/images/Pant.PNG",
                                  scale: 2.5 / aspectRatio,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width / 6,
                                  child: pantInfo),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10.0,
                              bottom: 10,
                              right: 10 * aspectRatio,
                              left: 10 * aspectRatio),
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () => launch(
                                    "https://www.consciouslifeandstyle.com/what-is-sustainable-fashion/"),
                                child: Image.asset(
                                  "assets/images/Mushroom_2_Less.png",
                                  scale: 2.5 / aspectRatio,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                  width: MediaQuery.of(context).size.width / 6,
                                  child: mushInfo),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 10,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 25.0 * aspectRatio,
                            right: 25.0 * aspectRatio,
                            top: 25.0,
                            bottom: 25.0),
                        child: info1,
                      ),
                      width: MediaQuery.of(context).size.width / 2.5,
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () => launch(
                                    "https://unfccc.int/news/fashion-industry-un-pursue-climate-action-for-sustainable-development"),
                                child: Image.asset(
                                  "assets/images/Shirt.PNG",
                                  scale: 2.5 / aspectRatio,
                                ),
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width / 6,
                                  child: shirtInfo),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10.0,
                              bottom: 10,
                              right: 10 * aspectRatio,
                              left: 10 * aspectRatio),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/Dress_Titled.png",
                                scale: 2.5 / aspectRatio,
                              ),
                              SizedBox(height: 10),
                              Container(
                                  width: MediaQuery.of(context).size.width / 6,
                                  child: Text(
                                    dressInfo,
                                    style: style3,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              footer(context),
            ],
          ),
        ),
      ),
      //  ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:web_app/screens/image_screen.dart';
// import 'package:web_app/values/data.dart';
// import 'package:web_app/values/values.dart';
// import 'package:web_app/widgets/drop_down_button.dart';

// class HomeScreen extends StatelessWidget {
//   HomeScreen();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 222, 199, 181),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Image.asset("assets/images/Title_Image.jpeg"),
//             Text(mission,
//                 style: Styles.titleTextStyleWithSecondaryTextColor),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.white,
//                     width: 5,
//                   ),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 child: Center(
//                   child: RichText(
//                       //softWrap: true,
//                       text: TextSpan(children: <TextSpan>[
//                     TextSpan(
//                         text: textMission, style: Styles.mediumTextStyle),
//                   ])),
//                 ),
//               ),
//             ),
//             Text(sub1, style: Styles.titleTextStyleWithSecondaryTextColor),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.white,
//                     width: 5,
//                   ),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 child: Center(
//                   child: RichText(
//                       //softWrap: true,
//                       text: TextSpan(children: <TextSpan>[
//                     TextSpan(text: info1, style: Styles.mediumTextStyle),
//                   ])),
//                 ),
//               ),
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               child: Column(
//                 children: <Widget>[
//                   Image.asset("assets/images/Pant.png"),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.white,
//                           width: 5,
//                         ),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       child: Center(
//                         child: RichText(
//                             //softWrap: true,
//                             text: TextSpan(children: <TextSpan>[
//                           TextSpan(
//                               text: pantInfo,
//                               style: Styles.mediumTextStyle),
//                         ])),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               child: Column(
//                 children: <Widget>[
//                   Image.asset("assets/images/Shirt.png"),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.white,
//                           width: 5,
//                         ),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       child: Center(
//                         child: RichText(
//                             //softWrap: true,
//                             text: TextSpan(children: <TextSpan>[
//                           TextSpan(
//                               text: shirtInfo,
//                               style: Styles.mediumTextStyle),
//                         ])),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               child: Column(
//                 children: <Widget>[
//                   Image.asset("assets/images/Mushroom.png"),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.white,
//                           width: 5,
//                         ),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       child: Center(
//                         child: RichText(
//                             //softWrap: true,
//                             text: TextSpan(children: <TextSpan>[
//                           TextSpan(
//                               text: mushInfo,
//                               style: Styles.mediumTextStyle),
//                         ])),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Text(citation,
//                 style: Styles.titleTextStyleWithSecondaryTextColor),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.white,
//                     width: 5,
//                   ),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 child: Center(
//                   child: RichText(
//                       //softWrap: true,
//                       text: TextSpan(children: <TextSpan>[
//                     TextSpan(
//                         text: citationWords,
//                         style: Styles.mediumTextStyle),
//                   ])),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

