import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/screens/image_screen.dart';
import 'package:web_app/values/data.dart';
import 'package:web_app/values/values.dart';
import 'package:web_app/widgets/drop_down_button.dart';

class AtHomeScreen extends StatefulWidget {
  AtHomeScreen(this.homeController);
  ScrollController homeController;

  @override
  State<AtHomeScreen> createState() => _AtHomeScreenState();
}

class _AtHomeScreenState extends State<AtHomeScreen> {
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
          child: InteractiveViewer(
            scaleEnabled: MediaQuery.of(context).size.shortestSide < 600,
            maxScale: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                getTitleImage(context),
                getMenuBar(context, widget.homeController),
                missionWidget(context, "At Home", mission2),
                Padding(
                  padding: EdgeInsets.only(
                      top: 10.0,
                      bottom: 40.0,
                      left: 65 * aspectRatio,
                      right: 65 * aspectRatio),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: SelectableText(
                            styling,
                            style: style5,
                          ),
                        ),
                        Container(
                            child: SelectableText(stylingInfo, style: style3)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 0,
                                right: 40 * aspectRatio,
                                top: 40,
                                bottom: 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SelectableText("${embroidery}", style: style2),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    child:
                                        SelectableText(embInfo, style: style3)),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SelectableText(
                                          "\nTutorials and Guides:",
                                          style: TextStyle(
                                              fontFamily: "CrimsonText",
                                              fontSize: 28 * aspectRatio),
                                        ),
                                        TextButton(
                                          child: Text.rich(TextSpan(children: [
                                            TextSpan(
                                                text: "•  ", style: style3),
                                            TextSpan(
                                              text: "DIY Stitching",
                                              style: styleButton,
                                            )
                                          ])),
                                          onPressed: () => launch(
                                              "https://www.youtube.com/channel/UCq4Hs_x6X-rgYtMjBh2ghpg"),
                                        ),
                                        TextButton(
                                          child: Text.rich(TextSpan(children: [
                                            TextSpan(
                                                text: "•  ", style: style3),
                                            TextSpan(
                                              text: "Crewel Ghoul Embroidery",
                                              style: styleButton,
                                            )
                                          ])),
                                          onPressed: () => launch(
                                              "https://www.youtube.com/channel/UCWYZdV3Mn3KGkhJ0puzAt8A"),
                                        ),
                                        TextButton(
                                          child: Text.rich(TextSpan(children: [
                                            TextSpan(
                                                text: "•  ", style: style3),
                                            TextSpan(
                                              text: "HandiWorks",
                                              style: styleButton,
                                            )
                                          ])),
                                          onPressed: () => launch(
                                              "https://www.youtube.com/channel/UCGjZJ0TN1PlJIEwJXKNlm6w"),
                                        ),
                                        TextButton(
                                          child: Text.rich(TextSpan(children: [
                                            TextSpan(
                                                text: "•  ", style: style3),
                                            TextSpan(
                                              text: "Needle'n Thread",
                                              style: styleButton,
                                            )
                                          ])),
                                          onPressed: () => launch(
                                              "https://www.needlenthread.com/"),
                                        ),
                                        TextButton(
                                          child: Text.rich(TextSpan(children: [
                                            TextSpan(
                                                text: "•  ", style: style3),
                                            TextSpan(
                                              text: "Pintangle",
                                              style: styleButton,
                                            )
                                          ])),
                                          onPressed: () =>
                                              launch("https://pintangle.com/"),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/images/Glasses_Cat.png",
                                      scale: 2 / aspectRatio,
                                    )
                                  ],
                                ),
                              ],
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 0,
                                right: 40 * aspectRatio,
                                top: 40,
                                bottom: 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SelectableText("${alt}", style: style2),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    child:
                                        SelectableText(altInfo, style: style3)),
                              ],
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 0,
                                right: 40 * aspectRatio,
                                top: 40,
                                bottom: 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SelectableText("Design", style: style2),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    child:
                                        SelectableText(styInfo, style: style3)),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 0, right: 60 * aspectRatio, top: 40, bottom: 20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.6,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 10,
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Container(
                      // width: MediaQuery.of(context).size.width / 1.3,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 25.0 * aspectRatio,
                            right: 25.0 * aspectRatio,
                            top: 10.0,
                            bottom: 20.0),
                        child: Column(
                          children: [
                            SelectableText(
                              "How to find your style",
                              style: style2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "• Interacting with",
                                  style: style3,
                                ),
                                TextButton(
                                  child: Text(
                                    "Pinterest",
                                    style: styleButton,
                                  ),
                                  onPressed: () =>
                                      launch("https://www.pinterest.com/"),
                                ),
                                Text(
                                  "and creating a fashion board",
                                  style: style3,
                                )
                              ],
                            ),
                            SelectableText(
                              "• Styling around clothes that are already loved and owned",
                              style: style3,
                            ),
                            SelectableText(
                              "• Creating a capsule wardrobe of everyday basics to rely on",
                              style: style3,
                            ),
                            SelectableText(
                              "• Find style inspiration in sustainable fashion influencers",
                              style: style3,
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: style3),
                                TextSpan(
                                  text: "BestDressed",
                                  style: styleButton,
                                )
                              ])),
                              onPressed: () => launch(
                                  "https://www.bestdressedstore.com/shopmycloset"),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: style3),
                                TextSpan(
                                  text: "LainiOzark",
                                  style: styleButton,
                                )
                              ])),
                              onPressed: () => launch(
                                  "https://www.youtube.com/c/LainiOzark/playlists"),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: style3),
                                TextSpan(
                                  text: "AlexaSunshine83",
                                  style: styleButton,
                                )
                              ])),
                              onPressed: () => launch(
                                  "https://www.youtube.com/channel/UCl5ZUlVYLmmnyiEcFRTFJtg"),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: style3),
                                TextSpan(
                                  text: "Aditi Mayer",
                                  style: styleButton,
                                )
                              ])),
                              onPressed: () =>
                                  launch("https://www.adimay.com/about/"),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: style3),
                                TextSpan(
                                  text: "EthicallyKate",
                                  style: styleButton,
                                )
                              ])),
                              onPressed: () =>
                                  launch("https://ethicallykate.com/"),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: style3),
                                TextSpan(
                                  text: "SustainablyChic",
                                  style: styleButton,
                                )
                              ])),
                              onPressed: () =>
                                  launch("https://www.sustainably-chic.com/"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset("assets/images/Floral_Design_New.PNG"),
                Padding(
                  padding: EdgeInsets.only(
                      top: 40.0,
                      bottom: 0.0,
                      left: 65 * aspectRatio,
                      right: 65 * aspectRatio),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: SelectableText(
                            "Do it Yourself",
                            style: style5,
                          ),
                        ),
                        Container(
                            // width: MediaQuery.of(context).size.width / 4,
                            child: SelectableText(doInfo, style: style3)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 0,
                                right: 40 * aspectRatio,
                                top: 40,
                                bottom: 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SelectableText("${croch}", style: style2),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    //  width: MediaQuery.of(context).size.width / 4,
                                    child:
                                        SelectableText.rich(TextSpan(children: [
                                  TextSpan(text: crochInfo, style: style3),
                                ]))),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SelectableText(
                                            "Crocheted/Knitted Clothing Pieces:",
                                            style: TextStyle(
                                                fontFamily: "CrimsonText",
                                                fontSize: 28 * aspectRatio)),
                                        TextButton(
                                            onPressed: () => launch(
                                                "https://youtu.be/a7eqIn4Umdc"),
                                            child:
                                                Text.rich(TextSpan(children: [
                                              TextSpan(
                                                  text: "•  ", style: style3),
                                              TextSpan(
                                                text: "Hats",
                                                style: styleButton,
                                              )
                                            ]))),
                                        TextButton(
                                            onPressed: () => launch(
                                                "https://sarahmaker.com/free-crochet-scarf-patterns/"),
                                            child:
                                                Text.rich(TextSpan(children: [
                                              TextSpan(
                                                  text: "•  ", style: style3),
                                              TextSpan(
                                                text: "Scarves",
                                                style: styleButton,
                                              )
                                            ]))),
                                        TextButton(
                                            onPressed: () => launch(
                                                "https://www.yarnspirations.com/patterns?prefn1=patternSkillTypeString&prefv1=Knit&prefn2=patternProjectType&prefv2=Sweaters%20%26%20Cardigans"),
                                            child:
                                                Text.rich(TextSpan(children: [
                                              TextSpan(
                                                  text: "•  ", style: style3),
                                              TextSpan(
                                                text: "Sweaters",
                                                style: styleButton,
                                              )
                                            ]))),
                                        TextButton(
                                            onPressed: () => launch(
                                                "https://www.yarnspirations.com/patterns?prefn1=patternSkillTypeString&prefv1=Knit&prefn2=patternProjectType&prefv2=Sweaters%20%26%20Cardigans"),
                                            child:
                                                Text.rich(TextSpan(children: [
                                              TextSpan(
                                                  text: "•  ", style: style3),
                                              TextSpan(
                                                text: "Cardigans",
                                                style: styleButton,
                                              )
                                            ]))),
                                        TextButton(
                                            onPressed: () => launch(
                                                "https://www.youtube.com/watch?v=1WluE599ccI"),
                                            child:
                                                Text.rich(TextSpan(children: [
                                              TextSpan(
                                                  text: "•  ", style: style3),
                                              TextSpan(
                                                text: "Tank Tops",
                                                style: styleButton,
                                              )
                                            ]))),
                                        TextButton(
                                            onPressed: () => launch(
                                                "https://www.diytomake.com/30-easy-crochet-tote-bag-patterns/"),
                                            child:
                                                Text.rich(TextSpan(children: [
                                              TextSpan(
                                                  text: "•  ", style: style3),
                                              TextSpan(
                                                text: "Tote Bag",
                                                style: styleButton,
                                              )
                                            ]))),
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/images/Shirt_Cat.png",
                                      scale: 2 / aspectRatio,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SelectableText("\nSustainable Yarns",
                                            style: TextStyle(
                                                fontFamily: "CrimsonText",
                                                fontSize: 28 * aspectRatio)),
                                        Container(
                                            //  width: MediaQuery.of(context).size.width / 4,
                                            child: SelectableText(crochInfo3,
                                                style: style3)),
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/images/Yarn_Cat.png",
                                      scale: 1.5 / aspectRatio,
                                    )
                                  ],
                                )
                              ],
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 0.0,
                                right: 40.0 * aspectRatio,
                                top: 40,
                                bottom: 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SelectableText("${mkCloth}", style: style2),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    //  width: MediaQuery.of(context).size.width / 4,
                                    child:
                                        SelectableText.rich(TextSpan(children: [
                                  TextSpan(text: mkInfo, style: style3),
                                ]))),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SelectableText("Sustainable Fabrics",
                                            style: TextStyle(
                                                fontFamily: "CrimsonText",
                                                fontSize: 28 * aspectRatio)),
                                        SelectableText(mkInfo2, style: style3),
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/images/Fabric_Cat.png",
                                      scale: 1.5 / aspectRatio,
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                footer(context)
              ],
            ),
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
