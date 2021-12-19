import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/screens/image_screen.dart';
import 'package:web_app/values/data.dart';
import 'package:web_app/values/values.dart';
import 'package:web_app/widgets/drop_down_button.dart';

class SustainabilityScreen extends StatefulWidget {
  SustainabilityScreen();

  @override
  State<SustainabilityScreen> createState() => _SustainabilityScreenState();
}

class _SustainabilityScreenState extends State<SustainabilityScreen> {
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
            Data.missionWidget(context, "Shopping Sustainably", Data.mission3),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 0.0, left: 65, right: 65),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      "How to Identify Sustainable Companies",
                      style: Data.style5,
                    ),
                    Container(
                        // width: MediaQuery.of(context).size.width / 4,
                        child: SelectableText(
                            "Here’s a guide in researching on the sustainability and ethical factors of companies to help make more informed decisions on where to shop and which brands to support:",
                            style: Data.style3)),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 0, right: 40, top: 40, bottom: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("${Data.source}",
                                style: Data.style2),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Container(
                                  //  width: MediaQuery.of(context).size.width / 4,
                                  child: SelectableText(Data.sourceInfo,
                                      style: Data.style3)),
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 0, right: 40, top: 40, bottom: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("${Data.material}",
                                style: Data.style2),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Container(
                                  //  width: MediaQuery.of(context).size.width / 4,
                                  child: SelectableText(Data.matInfo,
                                      style: Data.style3)),
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 0, right: 40, top: 40, bottom: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("${Data.green}", style: Data.style2),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Container(
                                  //  width: MediaQuery.of(context).size.width / 4,
                                  child: SelectableText(Data.greenInfo,
                                      style: Data.style3)),
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 0, right: 40, top: 40, bottom: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("${Data.look}", style: Data.style2),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Container(
                                  //  width: MediaQuery.of(context).size.width / 4,
                                  child: SelectableText(Data.lookInfo,
                                      style: Data.style3)),
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 0, right: 40, top: 40, bottom: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SelectableText("${Data.webs}", style: Data.style2),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
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
                      "List of Sustainable Brands",
                      style: Data.style5,
                    ),
                    Container(
                        // width: MediaQuery.of(context).size.width / 4,
                        child: SelectableText("${Data.brandsInfo}",
                            style: Data.style3)),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 0, right: 40, top: 40, bottom: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style2),
                              TextSpan(
                                text: "Boody (\$)",
                                style: Data.styleButton2,
                              )
                            ])),
                            onPressed: () => launch("https://boodywear.com/"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SelectableText(
                                "Boody creates soft, comfortable, everyday essentials using organic bamboo as their main material. Additionally their products are Oeko-Tex Standard certified and minimize textile waste using low-waste cutting techniques.\n",
                                style: Data.style3),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style2),
                              TextSpan(
                                text: "CHNGE (\$)",
                                style: Data.styleButton2,
                              )
                            ])),
                            onPressed: () => launch("https://chnge.com/"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SelectableText(
                                "CHNGE is a bold new brand determined to take a stand for change, socially and environmentally. They ensure that their clothing is carbon neutral, meaning that all carbon emissions are offset through their protection of trees. All of their material is also Global Textile Standard certified cotton while their packaging is 100% recyclable.\n",
                                style: Data.style3),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style2),
                              TextSpan(
                                text: "Honest Basics (\$)",
                                style: Data.styleButton2,
                              )
                            ])),
                            onPressed: () =>
                                launch("https://www.honest-basics.com/"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SelectableText(
                                "Honest Basics is a European based company that uses only sustainably sourced materials like Global Textile standard certified cotton. Additionally they only use climate neutral shipping of their products which is factored into the price of their clothing.\n",
                                style: Data.style3),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style2),
                              TextSpan(
                                text: "Mighty Good Basics (\$)",
                                style: Data.styleButton2,
                              )
                            ])),
                            onPressed: () =>
                                launch("https://mightygoodbasics.com/"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SelectableText(
                                "Mighty Good Basics is a clothing company that focuses on producing the most ethically sourced basics for both women and men. This store uses Global Textile Standard certified cotton and textile dyes to create low impact clothing and reduce pollution and water waste.\n",
                                style: Data.style3),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style2),
                              TextSpan(
                                text: "Swedish Stockings (\$)",
                                style: Data.styleButton2,
                              )
                            ])),
                            onPressed: () =>
                                launch("https://swedishstockings.com/"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SelectableText(
                                "Swedish Stockings produces tights, socks, and other forms of pantyhoses for women around the world. This company uses eco-friendly and recycled materials as well as their offcut fabrics. They deploy renewable energy sources for production to reduce their climate impact and have zero-waste factories.\n",
                                style: Data.style3),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style2),
                              TextSpan(
                                text: "House of Sunny (\$\$)",
                                style: Data.styleButton2,
                              )
                            ])),
                            onPressed: () =>
                                launch("https://www.houseofsunny.co.uk/"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SelectableText(
                                "As a trendy online brand, House of Sunny is actively working against fast fashion by reusing water consumption, using recycled materials, and selling extra products on Depop. Additionally they only produce two seasonal collections per year to avoid mass production and use forms of shipping that are less impactful on the environment.\n",
                                style: Data.style3),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style2),
                              TextSpan(
                                text: "Ninety Percent (\$\$)",
                                style: Data.styleButton2,
                              )
                            ])),
                            onPressed: () =>
                                launch("https://ninetypercent.com/"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SelectableText(
                                "Ninety Percent designs everyday essentials that are sustainably sourced and versatile enough to be staples in anyone’s closet. They use Global Textile Standard certified cotton, Tencel, EcoVero, and other sustainable synthetic fibers to make their products.\n",
                                style: Data.style3),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style2),
                              TextSpan(
                                text: "Boyish (\$\$)",
                                style: Data.styleButton2,
                              )
                            ])),
                            onPressed: () => launch("https://www.boyish.com/"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SelectableText(
                                "Boyish is a sustainable denim company as well as a consignment shop to encourage the reusing of unwanted clothes. All of their products are vegan, made of organic cotton, recycled fabrics, and Tencel, dyed with natural dyes, and use recycled water to wash the products.\n",
                                style: Data.style3),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style2),
                              TextSpan(
                                text: "Gaâla (\$\$\$)",
                                style: Data.styleButton2,
                              )
                            ])),
                            onPressed: () => launch("https://gaala.com/"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SelectableText(
                                "Gaâla uses sustainable fabrics such as linen, crepe silks, wool, silk, cotton, and Tencel. Along with these they also repurpose deadstock clothing in small-scale workshops by individual tailors to avoid excess production. They focus on timeless high fashion designs, handcrafted by each tailor.\n",
                                style: Data.style3),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style2),
                              TextSpan(
                                text: "Navygrey (\$\$\$)",
                                style: Data.styleButton2,
                              )
                            ])),
                            onPressed: () => launch("https://navygrey.co/"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SelectableText(
                                "Navygrey primarily focuses on knitwear and classic clothing pieces for women. They use traceable raw materials certified by the Responsible Wool Standard, organic textile dyes, and purify water used for dyeing so that it can be reused. Additionally they produce in limited quantities to avoid overproduction and excess waste.\n",
                                style: Data.style3),
                          ),
                          TextButton(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "•  ", style: Data.style2),
                              TextSpan(
                                text: "The Odder Side (\$\$\$)",
                                style: Data.styleButton2,
                              )
                            ])),
                            onPressed: () =>
                                launch("https://theodderside.com/"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SelectableText(
                                "The Odder Side focuses on simple, effortless designs to make women feel empowered while protecting the Earth. Their production is completely plastic free and they are certified by the Oeko-Tex Standard, Global Organic Textile Standard, and LENZING Standard.\n",
                                style: Data.style3),
                          ),
                        ],
                      ),
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
