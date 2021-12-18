import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/screens/image_screen.dart';
import 'package:web_app/values/data.dart';
import 'package:web_app/values/values.dart';
import 'package:web_app/widgets/drop_down_button.dart';

class InCommunityScreen extends StatefulWidget {
  InCommunityScreen();

  @override
  State<InCommunityScreen> createState() => _InCommunityScreenState();
}

class _InCommunityScreenState extends State<InCommunityScreen> {
  ScrollController homeController =
      ScrollController(initialScrollOffset: 0.0, keepScrollOffset: false);
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
            Data.missionWidget(context, "In Your Community", Data.comMission),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 0.0, left: 65, right: 65),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      Data.borrow,
                      style: Data.style2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 60, right: 40, top: 40, bottom: 0.0),
                      child: Container(
                          child: SelectableText("${Data.borrowInfo}",
                              style: Data.style3)),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset("assets/images/Floral_Border_New.PNG"),
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
                      style: Data.style2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 60, right: 40, top: 40, bottom: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              // width: MediaQuery.of(context).size.width / 4,
                              child: SelectableText("${Data.thriftingInfo}",
                                  style: Data.style3)),
                          Text(
                            "• Goodwill",
                            style: Data.style3,
                          ),
                          Text(
                            "• Plato's Closet",
                            style: Data.style3,
                          ),
                          Text(
                            "• Salvation Army",
                            style: Data.style3,
                          ),
                          Text(
                            "• Savers",
                            style: Data.style3,
                          ),
                          Text("\n\n Online Platforms:", style: Data.style3),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style3),
                              TextSpan(
                                text: "thredUp",
                                style: Data.styleButton,
                              )
                            ])),
                            onPressed: () => launch("https://www.thredup.com/"),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style3),
                              TextSpan(
                                text: "Poshmark",
                                style: Data.styleButton,
                              )
                            ])),
                            onPressed: () => launch("https://poshmark.com/"),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style3),
                              TextSpan(
                                text: "Depop",
                                style: Data.styleButton,
                              )
                            ])),
                            onPressed: () => launch("https://www.depop.com/"),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style3),
                              TextSpan(
                                text: "Swap",
                                style: Data.styleButton,
                              )
                            ])),
                            onPressed: () => launch("https://www.swap.com/"),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style3),
                              TextSpan(
                                text: "eBay",
                                style: Data.styleButton,
                              )
                            ])),
                            onPressed: () => launch("https://www.ebay.com/"),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style3),
                              TextSpan(
                                text: "GoodFair",
                                style: Data.styleButton,
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
            Image.asset("assets/images/Floral_Border_New.PNG"),
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
                      style: Data.style2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 60, right: 40, top: 40, bottom: 0.0),
                      child: Container(
                          // width: MediaQuery.of(context).size.width / 4,
                          child: SelectableText("${Data.handInfo}",
                              style: Data.style3)),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset("assets/images/Floral_Border_New.PNG"),
            Padding(
              padding: const EdgeInsets.only(
                  top: 40.0, bottom: 0.0, left: 65, right: 65),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      "Creating a Club",
                      style: Data.style2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 60, right: 40, top: 40, bottom: 0.0),
                      child: Container(
                          // width: MediaQuery.of(context).size.width / 4,
                          child: SelectableText("${Data.clubInfo}",
                              style: Data.style3)),
                    ),
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
