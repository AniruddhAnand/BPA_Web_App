// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Data {
  static TextStyle style =
      const TextStyle(fontFamily: "CrimsonText", fontSize: 60);
  static TextStyle style2 =
      const TextStyle(fontFamily: "CrimsonText", fontSize: 20);
  static TextStyle style3 =
      const TextStyle(fontFamily: "CrimsonText", fontSize: 17);
  static String mission = "How Fashion Impacts Our Environment";
  static Text textMission = Text(
      "Our purpose is to help participants of the fashion industry navigate their way through the complicated decisions in their consumption of clothing. We seek to educate them on sustainability and provide them with ways to produce their own products, avoiding the industry’s mass production of clothes and harmful impacts on the environment, most especially carbon emissions.",
      style: style2);
  static Text info1 = Text(
    "The fashion industry contributes to about 8-10% of global carbon emissions. These emissions originate from transportation of resources and products as well as the development of extreme mass production of clothing. This superfluous production creates excessive amounts of textile waste leading to the burning of unwanted products in order to prevent lowering prices and make room for new designs. This widespread practice of burning unsold garments is a major contributor to carbon emissions from the fashion industry. The major cause of unrestrained manufacturing is attributed to the fast paced consumerism of the modern population. As overconsumption becomes popularized through media, the lifespan of clothing has dramatically declined fueling the unsustainable practices of the fashion industry as the demand for new clothing surges. Therefore it is the new generation of consumers’ responsibility to support sustainable fashion through their shopping habits and educated decisions.",
    style: style2,
  );
  static Text pantInfo = Text(
    "A pair of jeans is estimated to release about 33.4kg of carbon dioxide through its lifespan which is the equivalent of the emissions of a 69 mile road trip in the average car",
    style: style3,
  );
  static Text shirtInfo = Text(
    "Textile manufacturing releases around 1.2 billion tons of carbon dioxide in 2015, which is more than the combined emissions of all international flights, maritime, and shipping.",
    style: style3,
  );
  static Text mushInfo = Text(
    "Almost 70% of clothing is made from polyester and other synthetic fibers that are created from the burning and melting of fossil fuels like crude oil.",
    style: style3,
  );
  static String citation = "Citations ";
  static Text citationWords = Text(
      "(https://www.bbc.com/future/article/20200310-sustainable-fashion-how-to-buy-clothes-good-for-the-climate#:~:text=Jeans%20manufacturer%20Levi%20Strauss%20estimates,in%20the%20average%20US%20car.)\n(https://unfccc.int/news/fashion-industry-un-pursue-climate-action-for-sustainable-development )\n(https://www.consciouslifeandstyle.com/what-is-sustainable-fashion/ )");
}
