import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/screens/image_screen.dart';
import 'package:web_app/values/data.dart';
import 'package:web_app/values/values.dart';
import 'package:web_app/widgets/drop_down_button.dart';

class SustainabilityScreen extends StatelessWidget {
  SustainabilityScreen();

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
              "assets/images/Title_Image_Short.jpeg",
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
                      SelectableText("Shopping Sustainably", style: Data.style),
                      Data.mission3,
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 60.0, bottom: 60.0, left: 20, right: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      "How to Identify Sustainable Companies",
                      style: Data.style2,
                    ),
                    Container(
                        // width: MediaQuery.of(context).size.width / 4,
                        child: SelectableText(
                            "Here’s a guide in researching on the sustainability and ethical factors of companies to help make more informed decisions on where to shop and which brands to support:",
                            style: Data.style3)),
                    Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("• ${Data.source}",
                                style: Data.style2),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Container(
                                  //  width: MediaQuery.of(context).size.width / 4,
                                  child: SelectableText(Data.sourceInfo,
                                      style: Data.style3)),
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("• ${Data.material}",
                                style: Data.style2),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Container(
                                  //  width: MediaQuery.of(context).size.width / 4,
                                  child: SelectableText(Data.matInfo,
                                      style: Data.style3)),
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("• ${Data.green}",
                                style: Data.style2),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Container(
                                  //  width: MediaQuery.of(context).size.width / 4,
                                  child: SelectableText(Data.greenInfo,
                                      style: Data.style3)),
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("• ${Data.look}",
                                style: Data.style2),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Container(
                                  //  width: MediaQuery.of(context).size.width / 4,
                                  child: SelectableText(Data.lookInfo,
                                      style: Data.style3)),
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("• ${Data.webs}",
                                style: Data.style2),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //  width: MediaQuery.of(context).size.width / 4,
                                children: [
                                  TextButton(
                                    child: Text(
                                      "• Environmental Working Group",
                                      style: Data.style3,
                                    ),
                                    onPressed: () =>
                                        launch("https://www.ewg.org/"),
                                  ),
                                  TextButton(
                                    child: Text(
                                      "• Fashion Transparency Index",
                                      style: Data.style3,
                                    ),
                                    onPressed: () => launch(
                                        "https://www.fashionrevolution.org/about/transparency/ "),
                                  ),
                                  TextButton(
                                    child: Text(
                                      "• Good On You",
                                      style: Data.style3,
                                    ),
                                    onPressed: () =>
                                        launch("https://goodonyou.eco/"),
                                  ),
                                  TextButton(
                                    child: Text(
                                      "• Rank A Brand",
                                      style: Data.style3,
                                    ),
                                    onPressed: () => launch(
                                        "https://directory.goodonyou.eco/?_ga=2.245103557.1977874556.1639541414-1113788776.1637860368&_gl=1*mxll0f*_ga*MTExMzc4ODc3Ni4xNjM3ODYwMzY4*_ga_TTB1J3Q9MN*MTYzOTU0MTQxMy40LjEuMTYzOTU0MjkwMy42MA"),
                                  ),
                                  TextButton(
                                    child: Text(
                                      "• Sustainable Apparel Coalition",
                                      style: Data.style3,
                                    ),
                                    onPressed: () => launch(
                                        "https://apparelcoalition.org/ "),
                                  ),
                                ],
                              ),
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
