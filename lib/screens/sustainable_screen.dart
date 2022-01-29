import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/screens/image_screen.dart';
import 'package:web_app/values/data.dart';
import 'package:web_app/values/values.dart';
import 'package:web_app/widgets/drop_down_button.dart';

class SustainabilityScreen extends StatefulWidget {
  SustainabilityScreen(this.homeController);

  ScrollController homeController;

  @override
  State<SustainabilityScreen> createState() => _SustainabilityScreenState();
}

class _SustainabilityScreenState extends State<SustainabilityScreen> {
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
                missionWidget(context, "Shopping Sustainably", mission3),
                Padding(
                  padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 0.0,
                      left: 65 * aspectRatio,
                      right: 65 * aspectRatio),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          "How to Identify Sustainable Companies",
                          style: style5,
                        ),
                        Container(
                            // width: MediaQuery.of(context).size.width / 4,
                            child: SelectableText(susComps, style: style3)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 0,
                                right: 40 * aspectRatio,
                                top: 40,
                                bottom: 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SelectableText("${source}", style: style2),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Container(
                                      //  width: MediaQuery.of(context).size.width / 4,
                                      child: SelectableText(sourceInfo,
                                          style: style3)),
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
                                SelectableText("${material}", style: style2),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Container(
                                      //  width: MediaQuery.of(context).size.width / 4,
                                      child: SelectableText(matInfo,
                                          style: style3)),
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
                                SelectableText("${green}", style: style2),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Container(
                                      //  width: MediaQuery.of(context).size.width / 4,
                                      child: SelectableText(greenInfo,
                                          style: style3)),
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
                                SelectableText("${look}", style: style2),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Container(
                                      //  width: MediaQuery.of(context).size.width / 4,
                                      child: SelectableText(lookInfo,
                                          style: style3)),
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
                                SelectableText("${webs}", style: style2),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    //  width: MediaQuery.of(context).size.width / 4,
                                    children: [
                                      TextButton(
                                        child: Text.rich(TextSpan(children: [
                                          TextSpan(
                                            text: "• ",
                                            style: style3,
                                          ),
                                          TextSpan(
                                              text:
                                                  "Environmental Working Group",
                                              style: styleButton)
                                        ])),
                                        onPressed: () =>
                                            launch("https://www.ewg.org/"),
                                      ),
                                      TextButton(
                                        child: Text.rich(TextSpan(children: [
                                          TextSpan(
                                            text: "• ",
                                            style: style3,
                                          ),
                                          TextSpan(
                                              text:
                                                  "Fashion Transparency Index",
                                              style: styleButton)
                                        ])),
                                        onPressed: () => launch(
                                            "https://www.fashionrevolution.org/about/transparency/ "),
                                      ),
                                      TextButton(
                                        child: Text.rich(TextSpan(children: [
                                          TextSpan(
                                            text: "• ",
                                            style: style3,
                                          ),
                                          TextSpan(
                                              text: "Good On You",
                                              style: styleButton)
                                        ])),
                                        onPressed: () =>
                                            launch("https://goodonyou.eco/"),
                                      ),
                                      TextButton(
                                        child: Text.rich(TextSpan(children: [
                                          TextSpan(
                                            text: "• ",
                                            style: style3,
                                          ),
                                          TextSpan(
                                              text: "Rank A Brand",
                                              style: styleButton)
                                        ])),
                                        onPressed: () => launch(
                                            "https://directory.goodonyou.eco/?_ga=2.245103557.1977874556.1639541414-1113788776.1637860368&_gl=1*mxll0f*_ga*MTExMzc4ODc3Ni4xNjM3ODYwMzY4*_ga_TTB1J3Q9MN*MTYzOTU0MTQxMy40LjEuMTYzOTU0MjkwMy42MA"),
                                      ),
                                      TextButton(
                                        child: Text.rich(TextSpan(children: [
                                          TextSpan(
                                            text: "• ",
                                            style: style3,
                                          ),
                                          TextSpan(
                                              text:
                                                  "Sustainable Apparel Coalition",
                                              style: styleButton)
                                        ])),
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
                        SelectableText(
                          "List of Sustainable Brands",
                          style: style5,
                        ),
                        Container(
                            // width: MediaQuery.of(context).size.width / 4,
                            child:
                                SelectableText("${brandsInfo}", style: style3)),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 0,
                              right: 40 * aspectRatio,
                              top: 40,
                              bottom: 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: style2),
                                  TextSpan(
                                    text: "Boody (\$)",
                                    style: styleButton2,
                                  )
                                ])),
                                onPressed: () =>
                                    launch("https://boodywear.com/"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 30.0 * aspectRatio),
                                child: SelectableText(
                                    "Boody creates soft, comfortable, everyday essentials using organic bamboo as their main material. Additionally their products are Oeko-Tex Standard certified and minimize textile waste using low-waste cutting techniques.\n",
                                    style: style3),
                              ),
                              TextButton(
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: style2),
                                  TextSpan(
                                    text: "CHNGE (\$)",
                                    style: styleButton2,
                                  )
                                ])),
                                onPressed: () => launch("https://chnge.com/"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 30.0 * aspectRatio),
                                child: SelectableText(
                                    "CHNGE is a bold new brand determined to take a stand for change, socially and environmentally. They ensure that their clothing is carbon neutral, meaning that all carbon emissions are offset through their protection of trees. All of their material is also Global Textile Standard certified cotton while their packaging is 100% recyclable.\n",
                                    style: style3),
                              ),
                              TextButton(
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: style2),
                                  TextSpan(
                                    text: "Honest Basics (\$)",
                                    style: styleButton2,
                                  )
                                ])),
                                onPressed: () =>
                                    launch("https://www.honest-basics.com/"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 30.0 * aspectRatio),
                                child: SelectableText(
                                    "Honest Basics is a European based company that uses only sustainably sourced materials like Global Textile standard certified cotton. Additionally they only use climate neutral shipping of their products which is factored into the price of their clothing.\n",
                                    style: style3),
                              ),
                              TextButton(
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: style2),
                                  TextSpan(
                                    text: "Mighty Good Basics (\$)",
                                    style: styleButton2,
                                  )
                                ])),
                                onPressed: () =>
                                    launch("https://mightygoodbasics.com/"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 30.0 * aspectRatio),
                                child: SelectableText(
                                    "Mighty Good Basics is a clothing company that focuses on producing the most ethically sourced basics for both women and men. This store uses Global Textile Standard certified cotton and textile dyes to create low impact clothing and reduce pollution and water waste.\n",
                                    style: style3),
                              ),
                              TextButton(
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: style2),
                                  TextSpan(
                                    text: "Swedish Stockings (\$)",
                                    style: styleButton2,
                                  )
                                ])),
                                onPressed: () =>
                                    launch("https://swedishstockings.com/"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 30.0 * aspectRatio),
                                child: SelectableText(
                                    "Swedish Stockings produces tights, socks, and other forms of pantyhoses for women around the world. This company uses eco-friendly and recycled materials as well as their offcut fabrics. They deploy renewable energy sources for production to reduce their climate impact and have zero-waste factories.\n",
                                    style: style3),
                              ),
                              TextButton(
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: style2),
                                  TextSpan(
                                    text: "House of Sunny (\$\$)",
                                    style: styleButton2,
                                  )
                                ])),
                                onPressed: () =>
                                    launch("https://www.houseofsunny.co.uk/"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 30.0 * aspectRatio),
                                child: SelectableText(
                                    "As a trendy online brand, House of Sunny is actively working against fast fashion by reusing water consumption, using recycled materials, and selling extra products on Depop. Additionally they only produce two seasonal collections per year to avoid mass production and use forms of shipping that are less impactful on the environment.\n",
                                    style: style3),
                              ),
                              TextButton(
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: style2),
                                  TextSpan(
                                    text: "Ninety Percent (\$\$)",
                                    style: styleButton2,
                                  )
                                ])),
                                onPressed: () =>
                                    launch("https://ninetypercent.com/"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 30.0 * aspectRatio),
                                child: SelectableText(
                                    "Ninety Percent designs everyday essentials that are sustainably sourced and versatile enough to be staples in anyone’s closet. They use Global Textile Standard certified cotton, Tencel, EcoVero, and other sustainable synthetic fibers to make their products.\n",
                                    style: style3),
                              ),
                              TextButton(
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: style2),
                                  TextSpan(
                                    text: "Boyish (\$\$)",
                                    style: styleButton2,
                                  )
                                ])),
                                onPressed: () =>
                                    launch("https://www.boyish.com/"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 30.0 * aspectRatio),
                                child: SelectableText(
                                    "Boyish is a sustainable denim company as well as a consignment shop to encourage the reusing of unwanted clothes. All of their products are vegan, made of organic cotton, recycled fabrics, and Tencel, dyed with natural dyes, and use recycled water to wash the products.\n",
                                    style: style3),
                              ),
                              TextButton(
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: style2),
                                  TextSpan(
                                    text: "Gaâla (\$\$\$)",
                                    style: styleButton2,
                                  )
                                ])),
                                onPressed: () => launch("https://gaala.com/"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 30.0 * aspectRatio),
                                child: SelectableText(
                                    "Gaâla uses sustainable fabrics such as linen, crepe silks, wool, silk, cotton, and Tencel. Along with these they also repurpose deadstock clothing in small-scale workshops by individual tailors to avoid excess production. They focus on timeless high fashion designs, handcrafted by each tailor.\n",
                                    style: style3),
                              ),
                              TextButton(
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: style2),
                                  TextSpan(
                                    text: "Navygrey (\$\$\$)",
                                    style: styleButton2,
                                  )
                                ])),
                                onPressed: () => launch("https://navygrey.co/"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 30.0 * aspectRatio),
                                child: SelectableText(
                                    "Navygrey primarily focuses on knitwear and classic clothing pieces for women. They use traceable raw materials certified by the Responsible Wool Standard, organic textile dyes, and purify water used for dyeing so that it can be reused. Additionally they produce in limited quantities to avoid overproduction and excess waste.\n",
                                    style: style3),
                              ),
                              TextButton(
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "•  ", style: style2),
                                  TextSpan(
                                    text: "The Odder Side (\$\$\$)",
                                    style: styleButton2,
                                  )
                                ])),
                                onPressed: () =>
                                    launch("https://theodderside.com/"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 30.0 * aspectRatio),
                                child: SelectableText(
                                    "The Odder Side focuses on simple, effortless designs to make women feel empowered while protecting the Earth. Their production is completely plastic free and they are certified by the Oeko-Tex Standard, Global Organic Textile Standard, and LENZING Standard.\n",
                                    style: style3),
                              ),
                            ],
                          ),
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
      ),
      //  ),
    );
  }
}
