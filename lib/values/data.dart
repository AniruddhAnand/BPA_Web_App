// ignore_for_file: prefer_const_constructors
//g

import 'package:flutter/material.dart';

class Data {
  static double ratio = 2224 / 7038.0;
  static double getTitleWidth(BuildContext context) {
    return MediaQuery.of(context).size.width * .85;
  }

  static double getTitleHeight(BuildContext context) {
    return getTitleWidth(context) * ratio;
  }

  static Widget getTitleImage(BuildContext context) {
    return GestureDetector(
      child: Image.asset(
        "assets/images/Title_Image_Short.jpeg",
        width: Data.getTitleWidth(context),
      ),
      onTap: () => Navigator.of(context).popAndPushNamed("/"),
    );
  }

  static int numCharsHome = 48;

  static Widget getMenuBar(
      BuildContext context, ScrollController homeController) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MouseRegion(
            onHover: (event) {
              Data.showMenus(
                  context,
                  (MediaQuery.of(context).size.width -
                              (style3.fontSize! * numCharsHome)) /
                          5 +
                      4 * style3.fontSize!,
                  (MediaQuery.of(context).size.width -
                              (style3.fontSize! * numCharsHome)) /
                          5 +
                      4 * style3.fontSize!,
                  getTitleHeight(context) - homeController.offset + 35,
                  0,
                  homeController);
            },
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                        onPressed: () => Navigator.of(context).pushNamed("/"),
                        child: getMenuText("Home"))
                  ]),
            ),
          ),
          MouseRegion(
            onHover: (event) {
              Data.showMenus(
                  context,
                  2 *
                          (MediaQuery.of(context).size.width -
                              (style3.fontSize! * numCharsHome)) /
                          5 +
                      15 * style3.fontSize!,
                  2 *
                          (MediaQuery.of(context).size.width -
                              (style3.fontSize! * numCharsHome)) /
                          5 +
                      15 * style3.fontSize!,
                  getTitleHeight(context) - homeController.offset + 35,
                  0,
                  homeController);
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
              Data.showMenus(
                  context,
                  3 *
                          (MediaQuery.of(context).size.width -
                              (style3.fontSize! * numCharsHome)) /
                          5 +
                      28 * style3.fontSize!,
                  3 *
                          (MediaQuery.of(context).size.width -
                              (style3.fontSize! * numCharsHome)) /
                          5 +
                      28 * style3.fontSize!,
                  getTitleHeight(context) - homeController.offset + 35,
                  0,
                  homeController);
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
              Data.showMenus(
                  context,
                  4 *
                          (MediaQuery.of(context).size.width -
                              (style3.fontSize! * numCharsHome)) /
                          5 +
                      40 * style3.fontSize!,
                  4 *
                          (MediaQuery.of(context).size.width -
                              (style3.fontSize! * numCharsHome)) /
                          5 +
                      40 * style3.fontSize!,
                  getTitleHeight(context) - homeController.offset + 35,
                  0,
                  homeController);
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
    );
  }

  static Widget missionWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 1.7 / 13.5,
          right: MediaQuery.of(context).size.width * 1.7 / 13.5,
          top: 90.0,
          bottom: 60.0),
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
              SelectableText("Mission", style: Data.style),
              Data.textMission,
            ],
          ),
        ),
      ),
    );
  }

  static Widget getMenuText(String s) {
    return Text(
      s,
      style: style3,
    );
  }

  static String source = "Location of sourcing";
  static String material = "Materials";
  static String green = "Green Certifications";
  static String look = "Look into the Corporate Social Responsibility (CSR)";
  static String webs =
      "Other Websites that can help with determining sustainability";
  static String lookInfo =
      "• The CSR is a company's policy of social accountability through philanthropy or sustainability which can easily found on their website\n• Look out for greenwashing and unaccountable claims, as well as concrete data on programs and initiatives";
  static String webInfo = "";
  static String greenInfo =
      "• Fair Trade:\n  Ensures the fair treatment of workers and protection of the environment\n• EcoCert:\n  Ensures the proper organic agricultural practices of fabric materials\n• Global Recycled Standard: \n  Verifies the recyclability and eco-friendliness of the products\n• Good Weave: \n  Certifies that no child labor was used to make the product\n• Certified B corporation: \n  Certification that evaluates the company’s impact on society and the environment as a whole";
  static String sourceInfo =
      "• International: When the production of the company is located far away, the carbon emissions released from shipping increases\n• Local: Although purchasing local reduces carbon emissions, be aware of other factors of the product that may not be as eco-friendly";
  static String matInfo =
      "• Avoids synthetic fabrics and leather\n• Uses sustainable fibers like linen, hemp, silk, or Tencel OR upcycles from waste fabrics\n• Look for natural dyes of the following standards that mark sustainably produced products free from harmful chemicals usually found in textile dyes\n        • Global Organic Textile Standard (GOTS)\n        • OEKO-TEX Standard\n• Uses recyclable packaging";
  static String handInfo =
      "Another option for second hand clothing is through the people in your local community. Asking for hand-me-downs from your neighbors and family friends is a great way to help others reduce their contribution to unnecessary waste as well as providing a way to expand your wardrobe without participating in fast fashion consumerism. This is also a good way to minimize personal fashion waste by giving unwanted clothes to younger members of the community instead of donating or throwing them out which usually results in the build up of landfills. Another option to give away or receive clothing is through garage sales and estate sales. These local resale events are great opportunities to connect with your community and shop sustainably and inexpensively.";
  static String clubInfo =
      "A unique way to promote sustainability in your community is to create and participate in clubs that focus on educating the younger generations on how to adopt a sustainable lifestyle that takes care of the earth as well as the individual. You can join the Stitches for Sustainability family by creating your own club branch in your local school. Our organization focuses on fostering a community of like minded individuals who are seeking to find ways to stop participating in modern unsustainable consumerism. We host meetings discussing sustainability and the harmful effects of the fashion industry as well as providing sessions for needlework to teach members how to crochet/knit/sew their own clothing. This provides an open community that upholds each other and shares personal ideas to educate and encourage each member. If you are interested in starting your own Stitches for Sustainability club please contact us and we would be happy to help you organize and pitch your club to your local community.";
  static String thriftingInfo =
      "Thrifting is the purchasing of used clothing at discounted prices. Thrifting is a way to recycle used clothing, reducing clothing waste that would otherwise be burnt, shredded, or dumped in landfills contributing to immense carbon emissions and landfill pollution. Thrifting can be appealing to consumers who may not be as financially privileged to afford sustainable brands and eco friendly options. These consumers may be enticed by the dramatically cheap prices of fast fashion, but thrifting is a more sustainable and inexpensive option for all consumers regardless of economic circumstances. Thrifting is a great and accessible way to shop for trends without contributing to carbon emissions from the highly manufactured fashion industry. Local thrift stores provide a place to donate and purchase second hand clothing while online thrift store platforms provide a larger variety of styles and options on a global scale.\n\nThrift Store Chains:";
  static String borrowInfo =
      "Before purchasing clothing goods, it can be a good idea to check if someone in your social circle already owns the product, so that you can try it on and evaluate if it would be a sustainable choice in your personal closet. This would allow an opportunity for you to consider it as an actual physical addition to your wardrobe and help inform your purchasing decision. Additionally there is a chance that your friend is willing to gift or resell it to you, which is a much more sustainable exchange than conventional shopping. ";
  static Text comMission = Text(
    "Ways to practice sustainability in your community and interact with others to help increase local efforts towards eco-friendly fashion.",
    style: style2,
    textAlign: TextAlign.center,
  );
  static Text mission3 = Text(
    "As a consumer it is our responsibility to research the companies and industries we are supporting with our economic purchases. Many good willed consumers will be tricked by the greenwashing of modern companies as they attempt to appeal to eco-conscious customers. Greenwashing is the disingenuous branding of a company to attempt to appear more sustainable, however these attempts usually consist of general and inconspicuous phrasing that have no actual evidence to back up their claim to be eco-friendly. This form of marketing is directly targeting consumers who are just starting to search for more sustainable options, therefore it is extremely important to know what to look for when judging a company on its sustainability and eco-consciousness.",
    style: style2,
    textAlign: TextAlign.center,
  );
  static String borrow = "Borrow From Friends";
  static String mkCloth = "Making clothes/sewing";
  static String mkInfo =
      "Sewing clothing from scratch is the most substantial way to avoid participation in the fashion industry since it eliminates all consumption of unethically and unsustainably made products and also completely avoids the carbon footprint caused by the factories and shipping of these manufactured goods. Sewing also allows complete creative freedom and liberty in the making of the article since the design and style is entirely up to you, making every homemade piece of clothing customizable. Additionally the sourcing of textiles is now in the consumers hands so they have the opportunity to purchase sustainable fabric instead of relying on the sustainability of the brand. For beginners it’s best to start off following a beginner video tutorial on a specific clothing item such as a simple top.\n";
  static String mkInfo2 =
      "\n         • Recycled Cotton\n         • Organic Hemp\n         • Organic Linen\n         • Tencel (recycled wood)\n         • Econyl (recycled plastic)\n         • Qmonos (biodegradable synthetic spider silk)\n";
  static String croch = "Crocheting/Knitting";
  static String crochInfo =
      "Crocheting and knitting are both ways to create clothing pieces through yarn. Although the process of handmade clothing is more tedious and time consuming for an individual than just buying a knitted hat, it is more sustainable since an individual can choose to source their yarn sustainably and this yarn can also be reused over and over again.\n\n";
  static String crochInfo2 =
      "\nThese projects are so common that basic tutorials and patterns can be found all over the internet including on Youtube since visuals are extremely helpful when just starting out.\n         • Hats\n         • Scarves\n         • Sweaters\n         • Cardigans\n         • Tank Tops\n         • Tote Bags\n\n";
  static String crochInfo3 =
      "When shopping for yarn, look for these materials in the yarn composition.\n         • Silk\n         • Hemp\n         • Upcycled yarn \n         • Organic Cotton\n         • Tencel/Lyocell";
  static String doInfo =
      "Handmade clothing avoids overproduction and excess shipping, reducing carbon emission from vehicles that transport these products. Using sustainable resources and reusing fabric minimizes waste and textile pollution.";
  static String styInfo =
      "The most crucial skill for sustaining an environmentally friendly wardrobe is the ability to style and actually wear your clothing long term in order to avoid purchasing unnecessary clothing and creating excessive carbon emissions and pollution. Styling clothes is the key factor in reusing the same clothes for years even as fashion trends change. This ability relies on creativity and well thought out initial purchases of clothing, usually of pieces that are versatile and can be worn in many different outfits. Instead of browsing and window shopping for trends, developing your own style can help you make more cautious and conservative shopping choices. ";
  static TextStyle style =
      const TextStyle(fontFamily: "CrimsonText", fontSize: 60);
  static TextStyle style2 =
      const TextStyle(fontFamily: "CrimsonText", fontSize: 30);
  static TextStyle style3 =
      const TextStyle(fontFamily: "CrimsonText", fontSize: 23);
  static String alt = "Alterations";
  static String altInfo =
      "Alterations are small adjustments to clothing pieces, usually utilizing sewing to improve the fit or style of the clothing piece. This increases the lifespan of the clothing since repairs can be made and sizing can be adjusted through alterations. The simplest forms of alterations include taking in the waist, hemming in excessive fabric, and repairing buttons/seams which can all be easily learned through a quick internet search.";
  static String styling = "Styling";
  static String embroidery = "Embroidery";
  static String embInfo =
      "Embroidery is a form of stitching used to decorate textiles and fabrics. Learning how to embroider can help in personalizing more basic clothing items to make them more wearable resulting in reduced clothing waste. Essentially by only learning the basic stitches, creative liberties can be taken to embroider any image or phrase through practice. All you need to start is a needle, thread, the article of clothing that is being embroidered on, and preferably an embroidery hoop.";
  static String stylingInfo =
      "The most important practice towards sustainability is simply using the clothes you already own to avoid participating in the fast fashion industry. Here are some ways to keep your wardrobe unique and creative without the help of purchasing new clothes:";
  static String mission = "How Fashion Impacts Our Environment";
  static SelectableText mission2 = SelectableText(
    "Things you can do as an individual in the fashion industry to create and maintain a sustainable closet to reduce carbon emissions.",
    style: style2,
    textAlign: TextAlign.center,
  );
  static SelectableText textMission = SelectableText(
    "Our mission is to help participants of the fashion industry navigate their way through the complicated decisions in their consumption of clothing. We seek to educate them on sustainability and provide them with ways to produce their own products, avoiding the industry’s mass production of clothes and harmful impacts on the environment, most especially carbon emissions.",
    style: style2,
    textAlign: TextAlign.center,
  );
  static SelectableText info1 = SelectableText(
    "The fashion industry contributes to about 8-10% of global carbon emissions. These emissions originate from transportation of resources and products as well as the development of extreme mass production of clothing. This superfluous production creates excessive amounts of textile waste leading to the burning of unwanted products in order to prevent lowering prices and make room for new designs. This widespread practice of burning unsold garments is a major contributor to carbon emissions from the fashion industry. The major cause of unrestrained manufacturing is attributed to the fast paced consumerism of the modern population. As overconsumption becomes popularized through media, the lifespan of clothing has dramatically declined fueling the unsustainable practices of the fashion industry as the demand for new clothing surges. Therefore it is the new generation of consumers’ responsibility to support sustainable fashion through their shopping habits and educated decisions.",
    style: style2,
  );
  static SelectableText pantInfo = SelectableText(
    "A pair of jeans is estimated to release about 33.4kg of carbon dioxide through its lifespan which is the equivalent of the emissions of a 69 mile road trip in the average car.",
    style: style3,
  );
  static SelectableText shirtInfo = SelectableText(
    "Textile manufacturing released around 1.2 billion tons of carbon dioxide in 2015, which is more than the combined emissions of all international flights, maritime, and shipping.",
    style: style3,
  );
  static SelectableText mushInfo = SelectableText(
    "Almost 70% of clothing is made from polyester and other synthetic fibers that are created from the burning and melting of fossil fuels like crude oil.",
    style: style3,
  );
  static String citation = "Citations ";
  static SelectableText citationWords = SelectableText(
      "(https://www.bbc.com/future/article/20200310-sustainable-fashion-how-to-buy-clothes-good-for-the-climate#:~:text=Jeans%20manufacturer%20Levi%20Strauss%20estimates,in%20the%20average%20US%20car.)\n(https://unfccc.int/news/fashion-industry-un-pursue-climate-action-for-sustainable-development )\n(https://www.consciouslifeandstyle.com/what-is-sustainable-fashion/ )");
  static showMenus(BuildContext context, double right, double left, double top,
      double bottom, ScrollController homeController) async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(left, top, right, bottom),
      items: [
        PopupMenuItem(
          child: TextButton(
            child: Text("Mission"),
            onPressed: () {
              homeController.animateTo(
                500, // change 0.0 {double offset} to corresponding widget position
                duration: Duration(seconds: 1),
                curve: Curves.easeOut,
              );
            },
          ),
        ),
        PopupMenuItem(
          child: Text("Fashion"),
        ),
        PopupMenuItem(
          child: Text("Delete"),
        ),
      ],
    );
  }
}
