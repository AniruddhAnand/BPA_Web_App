// ignore_for_file: prefer_const_constructors
//ged

import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_app/screens/at_home_screen.dart';

BuildContext? buildContext;

double aspectRatio = MediaQuery.of(buildContext!).size.width / 1366;

TextStyle style = TextStyle(
    fontFamily: "Abril", fontSize: 60 * aspectRatio, color: Colors.black);
TextStyle style2 = TextStyle(
    fontFamily: "CrimsonText", fontSize: 35 * aspectRatio, color: Colors.black);
TextStyle style5 = TextStyle(
    fontFamily: "Abril", fontSize: 45 * aspectRatio, color: Colors.black);
TextStyle style3 = TextStyle(
    fontFamily: "CrimsonText", fontSize: 23 * aspectRatio, color: Colors.black);
TextStyle style4 = TextStyle(
    fontFamily: "CrimsonText", fontSize: 26 * aspectRatio, color: Colors.black);
TextStyle style6 = TextStyle(
    fontFamily: "CrimsonText", fontSize: 30 * aspectRatio, color: Colors.black);
TextStyle style7 = TextStyle(
  fontFamily: "CrimsonText",
  fontSize: 18 * aspectRatio,
  color: Colors.black,
);
TextStyle styleButton = TextStyle(
    fontFamily: "CrimsonText",
    fontSize: 23 * aspectRatio,
    color: Colors.black,
    decoration: TextDecoration.underline);
TextStyle styleButton2 = TextStyle(
    fontFamily: "CrimsonText",
    fontSize: 30 * aspectRatio,
    color: Colors.black,
    decoration: TextDecoration.underline);
TextStyle styleButton3 = TextStyle(
    fontFamily: "CrimsonText",
    fontSize: 18 * aspectRatio,
    color: Colors.black,
    decoration: TextDecoration.underline);
TextStyle styleButton4 = TextStyle(
    fontFamily: "CrimsonText",
    fontSize: 16 * aspectRatio,
    color: Colors.black,
    decoration: TextDecoration.underline);

double ratio = 2224 / 11485.0;
double getTitleWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getTitleHeight(BuildContext context) {
  return getTitleWidth(context) * ratio;
}

Widget getTitleImage(BuildContext context) {
  return GestureDetector(
    child: Image.asset(
      "assets/images/Title_Different.jpeg",
      width: getTitleWidth(context),
    ),
  );
}

int numCharsHome = 48;

Widget getMenuBar(BuildContext context, ScrollController homeController) {
  // print(MediaQuery.of(context).size.width);
  return SafeArea(
    // child: SingleChildScrollView(
    //  scrollDirection: Axis.horizontal,
    child: Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(
            right: 8.0 * aspectRatio, left: 8 * aspectRatio, top: 8, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MouseRegion(
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                          onPressed: () =>
                              Navigator.of(context).pushNamed("Home"),
                          child: getMenuText("Home"))
                    ]),
              ),
            ),
            MouseRegion(
              // onEnter: (event) {
              //   showMenus(
              //       context,
              //       2 *
              //               (MediaQuery.of(context).size.width -
              //                   (style3.fontSize! * numCharsHome)) /
              //               5 +
              //           8.5 * style3.fontSize!,
              //       2 *
              //               (MediaQuery.of(context).size.width -
              //                   (style3.fontSize! * numCharsHome)) /
              //               5 +
              //           8.5 * style3.fontSize!,
              //       getTitleHeight(context) - homeController.offset + 47,
              //       0,
              //       1);
              // },
              // onExit: (event) {
              //   Navigator.of(context).pop();
              // },
              onHover: (event) {
                showMenus(
                    context,
                    2 *
                            (MediaQuery.of(context).size.width -
                                (style3.fontSize! * numCharsHome)) /
                            5 +
                        9.5 * style3.fontSize!,
                    2 *
                            (MediaQuery.of(context).size.width -
                                (style3.fontSize! * numCharsHome)) /
                            5 +
                        9.5 * style3.fontSize!,
                    getTitleHeight(context) - homeController.offset + 47,
                    0,
                    1);
              },
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                          onPressed: () =>
                              Navigator.of(context).pushNamed("AtHome"),
                          child: getMenuText("At Home"))
                    ]),
              ),
            ),
            MouseRegion(
              onHover: (event) {
                showMenus(
                    context,
                    3 *
                            (MediaQuery.of(context).size.width -
                                (style3.fontSize! * numCharsHome)) /
                            5 +
                        20.5 * style3.fontSize!,
                    3 *
                            (MediaQuery.of(context).size.width -
                                (style3.fontSize! * numCharsHome)) /
                            5 +
                        20.5 * style3.fontSize!,
                    getTitleHeight(context) - homeController.offset + 47,
                    0,
                    2);
              },
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                          onPressed: () =>
                              Navigator.of(context).pushNamed("Community"),
                          child: getMenuText("In Your Community"))
                    ]),
              ),
            ),
            MouseRegion(
              onHover: (event) {
                showMenus(
                    context,
                    4 *
                            (MediaQuery.of(context).size.width -
                                (style3.fontSize! * numCharsHome)) /
                            5 +
                        33.75 * style3.fontSize!,
                    4 *
                            (MediaQuery.of(context).size.width -
                                (style3.fontSize! * numCharsHome)) /
                            5 +
                        33.75 * style3.fontSize!,
                    getTitleHeight(context) - homeController.offset + 47,
                    0,
                    3);
              },
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                          onPressed: () =>
                              Navigator.of(context).pushNamed("Shopping"),
                          child: getMenuText("Shopping Sustainably"))
                    ]),
              ),
            ),
          ],
        ),
      ),
    ),
    //  ),
  );
}

Widget missionWidget(BuildContext context, String one, Widget two) {
  return Padding(
    padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 1.7 / 13.5,
        right: MediaQuery.of(context).size.width * 1.7 / 13.5,
        top: 40.0,
        bottom: 40.0),
    child: Container(
      width: MediaQuery.of(context).size.width / 1.3,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 10 * aspectRatio,
        ),
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 25.0 * aspectRatio,
            right: 25.0 * aspectRatio,
            bottom: 20.0,
            top: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SelectableText(one, style: style),
            two
            // textMission,
          ],
        ),
      ),
    ),
  );
}

Widget getMenuText(String s) {
  return Text(
    s,
    style: styleButton,
  );
}

Widget getMenuText2(String s) {
  return Text(
    s,
    style: styleButton3,
  );
}

Widget getMenuText3(String s) {
  return Text.rich(
    TextSpan(children: [
      TextSpan(text: "     "),
      TextSpan(text: s, style: styleButton4)
    ]),
  );
}

Widget footer(BuildContext context) {
  return //Row(
      //children: [
      // Image.asset(
      //   "assets/images/Floral_Footer.png",
      //   width: MediaQuery.of(context).size.width / 4,
      //   //height: 200,
      // ),
      Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.hardEdge,
          fit: StackFit.loose,
          children: [
        Image.asset("assets/images/Floral_Footer_2.png"),
        Padding(
          padding: const EdgeInsets.only(bottom: 0.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 222, 199, 181),
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Colors.white,
                  width: 10 * aspectRatio,
                ),
                vertical: BorderSide(
                  color: Colors.white,
                  width: 10 * aspectRatio,
                ),
              ),
              //borderRadius: BorderRadius.circular(0.0),
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom: 40, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Contact Info", style: style3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/images/Logo_2.png",
                            scale: 3 / aspectRatio,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20 * aspectRatio,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectableText(
                            "Number: 214-404-6575",
                            style: style3,
                          ),
                          SelectableText(
                            "Email: stitches4sustainability@gmail.com",
                            style: style3,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed("Cited");
                              },
                              child: getMenuText("Citations"))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0 * aspectRatio,
                        right: 15 * aspectRatio,
                        top: 15,
                        bottom: 15),
                    child: SelectableText(
                      "Chapter 4: 02-1592, Angelina Leng, Amy Zhou, Aniruddh Anand\nTheme: Reducing Carbon Footprint Independence High School, Frisco, Tx, 2021",
                      style: style7,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //  ),
          // Image.asset(
          //   "assets/images/Floral_Footer.png",
          //   // width: MediaQuery.of(context).size.width / 4,
          //   //height: 200,
          // ),
          //],
        ),
      ]);
}

String citations =
    "“About B Corps.” About B Corps | Certified B Corporation, https://bcorporation.net/about-b-corps. \n\nDavis, Jessica. “45 Of Our Favourite Sustainable Brands to Support Now.” Harper's BAZAAR, Harper's BAZAAR, 1 Sept. 2021, https://www.harpersbazaar.com/uk/fashion/what-to-wear/g19491797/the-best-and-still-chic-sustainable-brands/. \n\nEllen MacArthur Foundation, A new textiles economy: Redesigning fashion’s future, (2017, http://ellenmacarthurfoundation.org/publications).\n\nFolk, Emily. “How to Know If a Brand Is Sustainable or Not?” Ourgoodbrands, 1 Nov. 2020, https://ourgoodbrands.com/tips-how-know-brand-sustainable/. \n\nGreenorb. “Is Knitting Sustainable? ( a Complete Guide).” Thinking Sustainably, 26 June 2021, https://www.thinkingsustainably.com/is-knitting-sustainable/. \n\n“GRS - Global Recycle Standard.” Certifications, Control Union, https://certifications.controlunion.com/en/certification-programs/certification-programs/grs-global-recycle-standard. \n\nGuide, The Good Trade Staff. “35 Ethical and Sustainable Clothing Brands Betting against Fast Fashion.” The Good Trade, The Good Trade, Sept. 2021, https://www.thegoodtrade.com/features/fair-trade-clothing. \n\nJoy, Elizabeth. “What Is Sustainable Fashion + Why Does It Matter?” Conscious Life & Style, Conscious Life & Style, 23 Oct. 2021, https://www.consciouslifeandstyle.com/what-is-sustainable-fashion/. \n\nLodhi, Arwa. “How to Tell If a Fashion Brand Is Sustainable: 8 Ways.” Eluxe Magazine, 3 July 2021, https://eluxemagazine.com/fashion/how-to-tell-if-a-fashion-brand-is-sustainable/. \n\nOsmanski, Stephanie. “What Certifications to Look for When Clothes Shopping Sustainably.” Green Matters, Green Matters, 25 Mar. 2021, https://www.greenmatters.com/p/sustainable-clothing-certifications. \n\nRauturier, Solene. “What Are the Most Sustainable Fabrics?” Good On You, 3 May 2019, https://goodonyou.eco/most-sustainable-fabrics/. \n\nRo, Christine. “Can Fashion Ever Be Sustainable?” BBC Future, BBC, 10 Mar. 2020, https://www.bbc.com/future/article/20200310-sustainable-fashion-how-to-buy-clothes-good-for-the-climate. \n\n“The Goodweave Label.” GoodWeave, https://goodweave.org/about/goodweave-label/. ";

String brandsInfo =
    "Here are some sustainable brands that we have already thoroughly researched and can verify their eco-consciousness:";
String dressInfo =
    "A single dress made from polyester is estimated by its carbon footprint to release a total of about 17 kg of carbon dioxide throughout its lifetime.";

String source = "Location of Sourcing";
String material = "Materials";
String green = "Green Certifications";
String look = "Look into the Corporate Social Responsibility (CSR)";
String webs = "Other Websites that can help with Determining Sustainability";
String lookInfo =
    "• The CSR is a company's policy of social accountability through philanthropy or sustainability which can easily found on their website\n• Look out for greenwashing and unaccountable claims, as well as concrete data on programs and initiatives";
String webInfo = "";
String greenInfo =
    "• Fair Trade: Ensures the fair treatment of workers and protection of the environment\n• EcoCert: Ensures the proper organic agricultural practices of fabric materials\n• Global Recycled Standard: Verifies the recyclability and eco-friendliness of the products\n• Good Weave: Certifies that no child labor was used to make the product\n• Certified B corporation: Certification that evaluates the company’s impact on society and the environment as a whole";
String sourceInfo =
    "International: When the production of the company is located far away, the carbon emissions released from shipping increases\nLocal: Although purchasing locally reduces carbon emissions, be aware of other factors of the product that may not be as eco-friendly";
String matInfo =
    "• Avoids synthetic fabrics and leather\n• Uses sustainable fibers like linen, hemp, silk, Tencel OR upcycles from waste fabrics\n• Look for natural dyes and the following standards that mark sustainably produced products free from harmful chemicals usually found in textile dyes\n        • Global Organic Textile Standard (GOTS)\n        • OEKO-TEX Standard\n• Uses recyclable packaging";
String handInfo =
    "Another option for second hand clothing is through the people in your local community. Asking for hand-me-downs from your neighbors and family friends is a great way to help others reduce their contribution to unnecessary waste as well as providing a way to expand your wardrobe without participating in fast fashion consumerism. This is also a good way to minimize personal fashion waste by giving unwanted clothes to younger members of the community instead of donating or throwing them out which usually results in the build up of landfills. Another option to give away or receive clothing is through garage sales and estate sales. These local resale events are great opportunities to connect with your community and shop sustainably and inexpensively.";
String clubInfo =
    "A unique way to promote sustainability in your community is to create and participate in clubs that focus on educating the younger generations on how to adopt a sustainable lifestyle that takes care of the earth as well as the individual. You can join the Stitches for Sustainability family by creating your own club branch in your local school. Our organization focuses on fostering a community of like minded individuals who are seeking ways to stop participating in modern unsustainable consumerism. We host meetings discussing sustainability and the harmful effects of the fashion industry as well as providing sessions for needlework to teach members how to crochet/knit/sew their own clothing. This provides an open community that upholds each other and shares personal ideas to educate and encourage each member. If you are interested in starting your own Stitches for Sustainability club please contact us and we would be happy to help you organize and pitch your club to your local community. ";
String thriftingInfo =
    "Thrifting is the purchasing of used clothing at discounted prices. Additionally, thrifting is a way to recycle used clothing, reducing clothing waste that would otherwise be burnt; shredded; or dumped in landfills, contributing to immense carbon emissions and landfill pollution. Second hand purchasing can be appealing to consumers who may not be as financially privileged to afford sustainable brands and eco friendly options. These consumers may be enticed by the dramatically cheap prices of fast fashion, but thrifting is a more sustainable and inexpensive option for all consumers regardless of economic circumstances. Thrifting is a great and accessible way to shop for trends without contributing to carbon emissions from the highly manufactured fashion industry. Local thrift stores provide a place to donate and purchase second hand clothing while online thrift store platforms supply a larger variety of styles and options on a global scale.\n\nThrift Store Chains:";
String borrowInfo =
    "Before purchasing clothing goods, it can be a good idea to check if someone in your social circle already owns the product so that you can try it on and evaluate if it would be a sustainable choice in your personal closet. This would allow an opportunity for you to consider it as an actual physical addition to your wardrobe and help inform your purchasing decision. Additionally, there is a chance that your friend is willing to gift or resell it to you, which is a much more sustainable exchange than conventional shopping. ";
SelectableText comMission = SelectableText(
  "Ways to practice sustainability in your community and interact with others to help increase local efforts towards eco-friendly fashion.",
  style: style4,
  textAlign: TextAlign.center,
);
SelectableText mission3 = SelectableText(
  "As consumers, it is our responsibility to research the companies and industries we are supporting with our economic purchases and keep them accountable. ",
  style: style4,
  textAlign: TextAlign.center,
);
String susInfo =
    "Many good willed consumers will be tricked by the greenwashing of modern companies as they attempt to appeal to eco-conscious customers. Greenwashing is the disingenuous branding of a company to attempt to appear more sustainable, however these attempts usually consist of general and inconspicuous phrasing that have no actual evidence to back up their claim of being eco-friendly. This form of marketing is directly targeting consumers who are starting to search for more sustainable options, therefore it is extremely important to know what to look for when judging a company on its sustainability and eco-consciousness.\nHere’s a guide in researching on the sustainability and ethical factors of companies to help make more informed decisions on where to shop and which brands to support:";
String borrow = "Borrow from Friends";
String mkCloth = "Making Clothes/Sewing";
String mkInfo =
    "Sewing clothing from scratch is the most substantial way to avoid participation in the fashion industry since it eliminates all consumption of unethically and unsustainably made products and also completely avoids the carbon footprint caused by the factories and shipping of these manufactured goods. Sewing also allows complete creative freedom and liberty in the making of the article of clothing since the design and style is entirely up to you, making every homemade piece of clothing customizable. Additionally, the sourcing of textiles is now in the consumers hands so they have the opportunity to purchase sustainable fabric instead of relying on the sustainability of the brand. For beginners it’s best to start off following a beginner video tutorial on a specific clothing piece such as a simple top.\n";
String mkInfo2 =
    "Look for these types of fabrics and textiles when shopping:\n• Recycled Cotton\n• Organic Hemp\n• Organic Linen\n• Tencel (recycled wood)\n• Econyl (recycled plastic)\n• Qmonos (biodegradable synthetic spider silk)\n";
String croch = "Crocheting/Knitting";
String crochInfo =
    "Crocheting and knitting are both ways to create clothing pieces through yarn. Although the process of handmade clothing is more tedious and time consuming for an individual than just buying a knitted hat, it is more sustainable since an individual can choose to source their yarn sustainably and this yarn can also be reused over and over again.\n\n";
String crochInfo2 =
    "\nThese projects are so common that basic tutorials and patterns can be found all over the internet including on Youtube since visuals are extremely helpful when just starting out."; //\n• Hats\n• Scarves\n• Sweaters\n• Cardigans\n• Tank Tops\n• Tote Bags\n\n";
String crochInfo3 =
    "When shopping for yarn, look for these materials:\n• Silk\n• Hemp\n• Upcycled yarn \n• Organic Cotton\n• Tencel/Lyocell (recycled plant pulp)";
String doInfo =
    "Handmade clothing avoids overproduction and excess shipping, reducing carbon emission from vehicles that transport these products. Using sustainable resources and reusing fabric minimizes waste and textile pollution.";
String styInfo =
    "The most crucial skill for sustaining an environmentally friendly wardrobe is the ability to style and actually wear your clothing long term in order to avoid purchasing unnecessary clothing that creates excessive carbon emissions and pollution. Styling clothes is the key factor in reusing the same clothes for years even as fashion trends change. This ability relies on creativity and well thought out initial purchases of clothing, usually of pieces that are versatile and able to be worn in many different outfits. Instead of browsing and window shopping for trends, developing your own style can help you make more cautious and conservative shopping choices.";
String alt = "Alterations";
String altInfo =
    "Alterations are small adjustments to clothing pieces which usually utilize sewing to improve the fit or style of the clothing piece. This increases the lifespan of the clothing since repairs can be made and sizing can be adjusted through alterations. The simplest forms of alterations include taking in the waist, hemming in excessive fabric, and repairing buttons or seams, which can all be easily learned through a quick internet search.";
String styling = "Styling";
String embroidery = "Embroidery";
String embInfo =
    "Embroidery is a form of stitching used to decorate textiles and fabrics. Learning how to embroider can help in personalizing more basic clothing items to make them more wearable resulting in reduced clothing waste. Essentially by only learning the basic stitches, creative liberties can be taken to embroider any image or phrase through practice. All you need to start is a needle, thread, the article of clothing that is being embroidered on, and preferably an embroidery hoop.";
String stylingInfo =
    "The most important practice towards sustainability is simply using the clothes you already own to avoid participating in the fast fashion industry. Here are some ways to keep your wardrobe unique and creative without purchasing new clothes:";
String mission = "How Fashion Impacts Our Environment";
String susComps =
    "Many good willed consumers will be tricked by the greenwashing of modern companies as they attempt to appeal to eco-conscious customers. Greenwashing is the disingenuous branding of a company to attempt to appear more sustainable, however these attempts usually consist of general and inconspicuous phrasing that have no actual evidence to back up their claim of being eco-friendly. This form of marketing is directly targeting consumers who are starting to search for more sustainable options, therefore it is extremely important to know what to look for when judging a company on its sustainability and eco-consciousness. \nHere’s a guide in researching on the sustainability and ethical factors of companies to help make more informed decisions on where to shop and which brands to support:";
SelectableText mission2 = SelectableText(
  "Things you can do as an individual in the fashion industry to create and maintain a sustainable closet to reduce carbon emissions.",
  style: style4,
  textAlign: TextAlign.center,
);
SelectableText textMission = SelectableText(
  "Our purpose is to help participants of the fashion industry navigate their way through the complicated decisions in their consumption of clothing. We seek to educate them on sustainability and provide them with ways to produce their own products, avoiding the industry’s mass production of clothes and harmful impacts on the environment, most especially carbon emissions.",
  style: style4,
  textAlign: TextAlign.center,
);
SelectableText info1 = SelectableText(
  "The fashion industry contributes to about 8-10% of global carbon emissions. These emissions originate from transportation of resources and products as well as the development of extreme mass production of clothing. This superfluous production creates excessive amounts of textile waste leading to the burning of unwanted products in order to prevent lowering prices and make room for new designs. This widespread practice of burning unsold garments is a major contributor to carbon emissions from the fashion industry. The major cause of unrestrained manufacturing is attributed to the fast paced consumerism of the modern population. As overconsumption becomes popularized through media, the lifespan of clothing has dramatically declined fueling the unsustainable practices of the fashion industry as the demand for new clothing surges. Therefore it is the new generation of consumers’ responsibility to support sustainable fashion through their shopping habits and educated decisions.",
  style: style6,
);
SelectableText pantInfo = SelectableText(
  "A pair of jeans is estimated to release about 33.4kg of carbon dioxide through its lifespan which is the equivalent of the emissions of a 69 mile road trip in the average car.",
  style: style3,
);
SelectableText shirtInfo = SelectableText(
  "Textile manufacturing released around 1.2 billion tons of carbon dioxide in 2015, which is more than the combined emissions of all international flights, maritime, and shipping in the same year.",
  style: style3,
);
SelectableText mushInfo = SelectableText(
  "Almost 70% of clothing is made from polyester and other synthetic fibers that are created from the burning and melting of fossil fuels like crude oil.",
  style: style3,
);
showMenus(BuildContext context, double right, double left, double top,
    double bottom, int index) async {
  List<PopupMenuItem> atHome = [
    PopupMenuItem(
        child: TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed("Style");
      },
      child: getMenuText2("Styling"),
    )),
    PopupMenuItem(
        child: TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed("Emb");
      },
      child: getMenuText3("Embroidery"),
    )),
    PopupMenuItem(
        child: TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed("Alt");
      },
      child: getMenuText3("Alterations"),
    )),
    PopupMenuItem(
        child: TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed("Des");
      },
      child: getMenuText3("Design"),
    )),
    PopupMenuItem(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("DoYourSelf");
            },
            child: getMenuText2("Do it Yourself"))),
    PopupMenuItem(
        child: TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed("Croch");
      },
      child: getMenuText3("Crocheting/Knitting"),
    )),
    PopupMenuItem(
        child: TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed("MK");
      },
      child: getMenuText3("Making Clothes/Sewing"),
    )),
  ];
  List<PopupMenuItem> com = [
    PopupMenuItem(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("Borrow");
            },
            child: getMenuText2("Borrow from Friends"))),
    PopupMenuItem(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("Thrifting");
            },
            child: getMenuText2("Thrifting"))),
    PopupMenuItem(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("Hand");
            },
            child: getMenuText2("Hand Me Downs"))),
    PopupMenuItem(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("Style");
            },
            child: getMenuText2("Styling"))),
    PopupMenuItem(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("Club");
            },
            child: getMenuText2("Creating a Club"))),
  ];
  List<PopupMenuItem> sus = [
    PopupMenuItem(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("Identify");
            },
            child: getMenuText2("Sustainable Companies"))),
    PopupMenuItem(
        child: TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed("Src");
      },
      child: getMenuText3("Location of Sourcing"),
    )),
    PopupMenuItem(
        child: TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed("Mat");
      },
      child: getMenuText3("Materials"),
    )),
    PopupMenuItem(
        child: TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed("Green");
      },
      child: getMenuText3("Green Certifications"),
    )),
    PopupMenuItem(
        child: TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed("CSR");
      },
      child: getMenuText3("CSR"),
    )),
    PopupMenuItem(
        child: TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed("Webs");
      },
      child: getMenuText3("Other Websites"),
    )),
    PopupMenuItem(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("Brands");
            },
            child: getMenuText2("Sustainable Brands"))),
  ];
  await showMenu(
      color: Colors.white,
      context: context,
      position: RelativeRect.fromLTRB(left, top, right, bottom),
      items: index == 1
          ? atHome
          : index == 2
              ? com
              : index == 3
                  ? sus
                  : []);
}
