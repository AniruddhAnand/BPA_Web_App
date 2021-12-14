import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/screens/image_screen.dart';
import 'package:web_app/values/data.dart';
import 'package:web_app/values/values.dart';
import 'package:web_app/widgets/drop_down_button.dart';

class AtHomeScreen extends StatelessWidget {
  AtHomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 199, 181),
      body: //Container(
          //constraints: const BoxConstraints.expand(),
          //decoration: const BoxDecoration(
          //  image: DecorationImage(
          //    image: AssetImage("assets/images/Background.jpeg"),
          //  fit: BoxFit.cover)),
          /* child:*/ SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/Title_Image.jpeg",
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 90.0, right: 90.0, top: 90.0, bottom: 60.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 10,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, bottom: 20.0, top: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("At Home", style: Data.style),
                      Data.mission2,
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Data.styling,
                      style: Data.style2,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 4,
                        child: Text(Data.stylingInfo, style: Data.style3)),
                    Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• ${Data.embroidery}", style: Data.style2),
                            Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: Text(Data.embInfo, style: Data.style3)),
                            TextButton(
                              child: Text(
                                "• DIY Stiching",
                                style: Data.style3,
                              ),
                              onPressed: () => launch(
                                  "https://www.youtube.com/channel/UCq4Hs_x6X-rgYtMjBh2ghpg"),
                            ),
                            TextButton(
                              child: Text(
                                "• Crewel Ghoul Embroidery",
                                style: Data.style3,
                              ),
                              onPressed: () => launch(
                                  "https://www.youtube.com/channel/UCWYZdV3Mn3KGkhJ0puzAt8A"),
                            ),
                            TextButton(
                              child: Text(
                                "• HandiWorks",
                                style: Data.style3,
                              ),
                              onPressed: () => launch(
                                  "https://www.youtube.com/channel/UCGjZJ0TN1PlJIEwJXKNlm6w"),
                            ),
                            TextButton(
                              child: Text(
                                "• Needle'n Threat",
                                style: Data.style3,
                              ),
                              onPressed: () =>
                                  launch("https://www.needlenthread.com/"),
                            ),
                            TextButton(
                              child: Text(
                                "• Pintangle ",
                                style: Data.style3,
                              ),
                              onPressed: () => launch("https://pintangle.com/"),
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• ${Data.alt}", style: Data.style2),
                            Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: Text(Data.altInfo, style: Data.style3)),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• ${Data.styling}", style: Data.style2),
                            Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: Text(Data.styInfo, style: Data.style3)),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 10,
                                ),
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              width: MediaQuery.of(context).size.width / 3,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 25.0,
                                    right: 25.0,
                                    top: 35.0,
                                    bottom: 25.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "How to find your style",
                                      style: Data.style2,
                                    ),
                                    TextButton(
                                      child: Text(
                                        "• Interacting with Pinterest and creating a fashion board",
                                        style: Data.style3,
                                      ),
                                      onPressed: () =>
                                          launch("https://www.pinterest.com/"),
                                    ),
                                    Text(
                                      "• Styling around clothes that are already loved and owned",
                                      style: Data.style3,
                                    ),
                                    Text(
                                      "• Creating a capsule wardrobe of everyday basics to rely on",
                                      style: Data.style3,
                                    ),
                                    Text(
                                      "• Find style inspiration in sustainable fashion influencers",
                                      style: Data.style3,
                                    ),
                                    TextButton(
                                      child: Text(
                                        "• BestDressed",
                                        style: Data.style3,
                                      ),
                                      onPressed: () => launch(
                                          "https://www.bestdressedstore.com/shopmycloset"),
                                    ),
                                    TextButton(
                                      child: Text(
                                        "• LainiOzark",
                                        style: Data.style3,
                                      ),
                                      onPressed: () => launch(
                                          "https://www.youtube.com/c/LainiOzark/playlists"),
                                    ),
                                    TextButton(
                                      child: Text(
                                        "• AlexaSunshine83",
                                        style: Data.style3,
                                      ),
                                      onPressed: () => launch(
                                          "https://www.youtube.com/channel/UCl5ZUlVYLmmnyiEcFRTFJtg"),
                                    ),
                                    TextButton(
                                      child: Text(
                                        "• Aditi Mayer",
                                        style: Data.style3,
                                      ),
                                      onPressed: () => launch(
                                          "https://www.adimay.com/about/"),
                                    ),
                                    TextButton(
                                      child: Text(
                                        "• EthicallyKate",
                                        style: Data.style3,
                                      ),
                                      onPressed: () =>
                                          launch("https://ethicallykate.com/"),
                                    ),
                                    TextButton(
                                      child: Text(
                                        "• SustainablyChic",
                                        style: Data.style3,
                                      ),
                                      onPressed: () => launch(
                                          "https://www.sustainably-chic.com/"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Do It Yourself:",
                      style: Data.style2,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 4,
                        child: Text(Data.doInfo, style: Data.style3)),
                    Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• ${Data.croch}", style: Data.style2),
                            Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child:
                                    Text(Data.crochInfo, style: Data.style3)),
                            TextButton(
                              child: Text(
                                "• Thinking Sustainability",
                                style: Data.style3,
                              ),
                              onPressed: () => launch(
                                  "https://www.thinkingsustainably.com/is-knitting-sustainable/"),
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• ${Data.mkCloth}", style: Data.style2),
                            Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: Text(Data.mkInfo, style: Data.style3)),
                            TextButton(
                              child: Text(
                                "• Good On You",
                                style: Data.style3,
                              ),
                              onPressed: () => launch(
                                  "https://goodonyou.eco/most-sustainable-fabrics/"),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
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
//             Text(Data.mission,
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
//                         text: Data.textMission, style: Styles.mediumTextStyle),
//                   ])),
//                 ),
//               ),
//             ),
//             Text(Data.sub1, style: Styles.titleTextStyleWithSecondaryTextColor),
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
//                     TextSpan(text: Data.info1, style: Styles.mediumTextStyle),
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
//                               text: Data.pantInfo,
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
//                               text: Data.shirtInfo,
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
//                               text: Data.mushInfo,
//                               style: Styles.mediumTextStyle),
//                         ])),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Text(Data.citation,
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
//                         text: Data.citationWords,
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