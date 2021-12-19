import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/screens/image_screen.dart';
import 'package:web_app/values/data.dart';
import 'package:web_app/values/values.dart';
import 'package:web_app/widgets/drop_down_button.dart';

class AtHomeScreen extends StatelessWidget {
  AtHomeScreen(this.homeController);
  ScrollController homeController;
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
        controller: homeController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Data.getTitleImage(context),
            Data.getMenuBar(context, homeController),
            Data.missionWidget(context, "At Home", Data.mission2),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 40.0, left: 65, right: 65),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: SelectableText(
                        Data.styling,
                        style: Data.style5,
                      ),
                    ),
                    Container(
                        child: SelectableText(Data.stylingInfo,
                            style: Data.style3)),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 0, right: 40, top: 40, bottom: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("${Data.embroidery}",
                                style: Data.style2),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                child: SelectableText(Data.embInfo,
                                    style: Data.style3)),
                            SelectableText(
                              "\nTutorials and Guides:",
                              style: TextStyle(
                                  fontFamily: "CrimsonText", fontSize: 28),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: Data.style3),
                                TextSpan(
                                  text: "DIY Stitching",
                                  style: Data.styleButton,
                                )
                              ])),
                              onPressed: () => launch(
                                  "https://www.youtube.com/channel/UCq4Hs_x6X-rgYtMjBh2ghpg"),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: Data.style3),
                                TextSpan(
                                  text: "Crewel Ghoul Embroidery",
                                  style: Data.styleButton,
                                )
                              ])),
                              onPressed: () => launch(
                                  "https://www.youtube.com/channel/UCWYZdV3Mn3KGkhJ0puzAt8A"),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: Data.style3),
                                TextSpan(
                                  text: "HandiWorks",
                                  style: Data.styleButton,
                                )
                              ])),
                              onPressed: () => launch(
                                  "https://www.youtube.com/channel/UCGjZJ0TN1PlJIEwJXKNlm6w"),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: Data.style3),
                                TextSpan(
                                  text: "Needle'n Thread",
                                  style: Data.styleButton,
                                )
                              ])),
                              onPressed: () =>
                                  launch("https://www.needlenthread.com/"),
                            ),
                            TextButton(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "•  ", style: Data.style3),
                                TextSpan(
                                  text: "Pintangle",
                                  style: Data.styleButton,
                                )
                              ])),
                              onPressed: () => launch("https://pintangle.com/"),
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 0, right: 40, top: 40, bottom: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("${Data.alt}", style: Data.style2),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                child: SelectableText(Data.altInfo,
                                    style: Data.style3)),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 0, right: 40, top: 40, bottom: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("Design", style: Data.style2),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                child: SelectableText(Data.styInfo,
                                    style: Data.style3)),
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
              padding:
                  EdgeInsets.only(left: 0, right: 60, top: 40, bottom: 20.0),
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
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 10.0, bottom: 20.0),
                    child: Column(
                      children: [
                        SelectableText(
                          "How to find your style",
                          style: Data.style2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "• Interacting with",
                              style: Data.style3,
                            ),
                            TextButton(
                              child: Text(
                                "Pinterest",
                                style: Data.styleButton,
                              ),
                              onPressed: () =>
                                  launch("https://www.pinterest.com/"),
                            ),
                            Text(
                              "and creating a fashion board",
                              style: Data.style3,
                            )
                          ],
                        ),
                        SelectableText(
                          "• Styling around clothes that are already loved and owned",
                          style: Data.style3,
                        ),
                        SelectableText(
                          "• Creating a capsule wardrobe of everyday basics to rely on",
                          style: Data.style3,
                        ),
                        SelectableText(
                          "• Find style inspiration in sustainable fashion influencers",
                          style: Data.style3,
                        ),
                        TextButton(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(text: "•  ", style: Data.style3),
                            TextSpan(
                              text: "BestDressed",
                              style: Data.styleButton,
                            )
                          ])),
                          onPressed: () => launch(
                              "https://www.bestdressedstore.com/shopmycloset"),
                        ),
                        TextButton(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(text: "•  ", style: Data.style3),
                            TextSpan(
                              text: "LainiOzark",
                              style: Data.styleButton,
                            )
                          ])),
                          onPressed: () => launch(
                              "https://www.youtube.com/c/LainiOzark/playlists"),
                        ),
                        TextButton(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(text: "•  ", style: Data.style3),
                            TextSpan(
                              text: "AlexaSunshine83",
                              style: Data.styleButton,
                            )
                          ])),
                          onPressed: () => launch(
                              "https://www.youtube.com/channel/UCl5ZUlVYLmmnyiEcFRTFJtg"),
                        ),
                        TextButton(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(text: "•  ", style: Data.style3),
                            TextSpan(
                              text: "Aditi Mayer",
                              style: Data.styleButton,
                            )
                          ])),
                          onPressed: () =>
                              launch("https://www.adimay.com/about/"),
                        ),
                        TextButton(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(text: "•  ", style: Data.style3),
                            TextSpan(
                              text: "EthicallyKate",
                              style: Data.styleButton,
                            )
                          ])),
                          onPressed: () => launch("https://ethicallykate.com/"),
                        ),
                        TextButton(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(text: "•  ", style: Data.style3),
                            TextSpan(
                              text: "SustainablyChic",
                              style: Data.styleButton,
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
              padding: const EdgeInsets.only(
                  top: 40.0, bottom: 0.0, left: 65, right: 65),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: SelectableText(
                        "Do It Yourself",
                        style: Data.style5,
                      ),
                    ),
                    Container(
                        // width: MediaQuery.of(context).size.width / 4,
                        child: SelectableText(Data.doInfo, style: Data.style3)),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 40, top: 40, bottom: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("${Data.croch}", style: Data.style2),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                                //  width: MediaQuery.of(context).size.width / 4,
                                child: SelectableText.rich(TextSpan(children: [
                              TextSpan(
                                  text: Data.crochInfo, style: Data.style3),
                              const TextSpan(
                                  text: "\nCrocheted/Knitted clothing pieces:",
                                  style: TextStyle(
                                      fontFamily: "CrimsonText", fontSize: 28)),
                            ]))),
                            TextButton(
                                onPressed: () =>
                                    launch("https://youtu.be/a7eqIn4Umdc"),
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: Data.style3),
                                  TextSpan(
                                    text: "Hats",
                                    style: Data.styleButton,
                                  )
                                ]))),
                            TextButton(
                                onPressed: () => launch(
                                    "https://sarahmaker.com/free-crochet-scarf-patterns/"),
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: Data.style3),
                                  TextSpan(
                                    text: "Scarves",
                                    style: Data.styleButton,
                                  )
                                ]))),
                            TextButton(
                                onPressed: () => launch(
                                    "https://www.yarnspirations.com/patterns?prefn1=patternSkillTypeString&prefv1=Knit&prefn2=patternProjectType&prefv2=Sweaters%20%26%20Cardigans"),
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: Data.style3),
                                  TextSpan(
                                    text: "Sweaters",
                                    style: Data.styleButton,
                                  )
                                ]))),
                            TextButton(
                                onPressed: () => launch(
                                    "https://www.yarnspirations.com/patterns?prefn1=patternSkillTypeString&prefv1=Knit&prefn2=patternProjectType&prefv2=Sweaters%20%26%20Cardigans"),
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: Data.style3),
                                  TextSpan(
                                    text: "Cardigans",
                                    style: Data.styleButton,
                                  )
                                ]))),
                            TextButton(
                                onPressed: () => launch(
                                    "https://www.youtube.com/watch?v=1WluE599ccI"),
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: Data.style3),
                                  TextSpan(
                                    text: "Tank Tops",
                                    style: Data.styleButton,
                                  )
                                ]))),
                            TextButton(
                                onPressed: () => launch(
                                    "https://www.diytomake.com/30-easy-crochet-tote-bag-patterns/"),
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: Data.style3),
                                  TextSpan(
                                    text: "Tote Bag",
                                    style: Data.styleButton,
                                  )
                                ]))),
                            SelectableText("\nSustainable Yarns:",
                                style: TextStyle(
                                    fontFamily: "CrimsonText", fontSize: 28)),
                            Container(
                                //  width: MediaQuery.of(context).size.width / 4,
                                child: SelectableText(Data.crochInfo3,
                                    style: Data.style3)),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 0.0, right: 40.0, top: 40, bottom: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("${Data.mkCloth}",
                                style: Data.style2),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                //  width: MediaQuery.of(context).size.width / 4,
                                child: SelectableText.rich(TextSpan(children: [
                              TextSpan(text: Data.mkInfo, style: Data.style3),
                              TextSpan(
                                  text: "\n\nSustainable Fabrics:",
                                  style: TextStyle(
                                      fontFamily: "CrimsonText", fontSize: 28)),
                              TextSpan(text: Data.mkInfo2, style: Data.style3),
                            ]))),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Data.footer(context)
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
