import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/screens/image_screen.dart';
import 'package:web_app/values/data.dart';
import 'package:web_app/values/values.dart';
import 'package:web_app/widgets/drop_down_button.dart';

class InCommunityScreen extends StatefulWidget {
  InCommunityScreen(this.homeController);
  ScrollController homeController;

  @override
  State<InCommunityScreen> createState() => _InCommunityScreenState();
}

class _InCommunityScreenState extends State<InCommunityScreen> {
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
              missionWidget(context, "In Your Community", comMission),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, bottom: 0.0, left: 65, right: 65),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        borrow,
                        style: style5,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 0.0, right: 40, bottom: 0.0),
                        child: Container(
                            child:
                                SelectableText("${borrowInfo}", style: style3)),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset("assets/images/Floral_Design_New.PNG"),
              Padding(
                padding: const EdgeInsets.only(
                    top: 40.0, bottom: 0.0, left: 65, right: 65),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        "Thrifting",
                        style: style5,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 0.0, right: 40, bottom: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                // width: MediaQuery.of(context).size.width / 4,
                                child: SelectableText("${thriftingInfo}",
                                    style: style3)),
                            Text(
                              "• Goodwill",
                              style: style3,
                            ),
                            Text(
                              "• Plato's Closet",
                              style: style3,
                            ),
                            Text(
                              "• Salvation Army",
                              style: style3,
                            ),
                            Text(
                              "• Savers",
                              style: style3,
                            ),
                            Text("\n Online Platforms:", style: style3),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: style3),
                                TextSpan(
                                  text: "thredUp",
                                  style: styleButton,
                                )
                              ])),
                              onPressed: () =>
                                  launch("https://www.thredup.com/"),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: style3),
                                TextSpan(
                                  text: "Poshmark",
                                  style: styleButton,
                                )
                              ])),
                              onPressed: () => launch("https://poshmark.com/"),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: style3),
                                TextSpan(
                                  text: "Depop",
                                  style: styleButton,
                                )
                              ])),
                              onPressed: () => launch("https://www.depop.com/"),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: style3),
                                TextSpan(
                                  text: "Swap",
                                  style: styleButton,
                                )
                              ])),
                              onPressed: () => launch("https://www.swap.com/"),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: style3),
                                TextSpan(
                                  text: "eBay",
                                  style: styleButton,
                                )
                              ])),
                              onPressed: () => launch("https://www.ebay.com/"),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: style3),
                                TextSpan(
                                  text: "GoodFair",
                                  style: styleButton,
                                )
                              ])),
                              onPressed: () => launch("https://goodfair.com/"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset("assets/images/Floral_Design_New.PNG"),
              Padding(
                padding: const EdgeInsets.only(
                    top: 40.0, bottom: 0.0, left: 65, right: 65),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        "Hand Me Downs",
                        style: style5,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 0.0, right: 40, bottom: 0.0),
                        child: Container(
                            // width: MediaQuery.of(context).size.width / 4,
                            child:
                                SelectableText("${handInfo}", style: style3)),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset("assets/images/Floral_Design_New.PNG"),
              Padding(
                padding: const EdgeInsets.only(
                    top: 40.0, bottom: 40.0, left: 65, right: 65),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        "Creating a Club",
                        style: style5,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 0.0, right: 40, bottom: 0.0),
                        child: Container(
                            // width: MediaQuery.of(context).size.width / 4,
                            child:
                                SelectableText("${clubInfo}", style: style3)),
                      ),
                    ],
                  ),
                ),
              ),
              footer(context)
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
