import 'package:flutter/material.dart';
import 'package:web_app/screens/at_home_screen.dart';
import 'package:web_app/screens/home_screen.dart';
import 'package:web_app/screens/image_screen.dart';
import 'package:web_app/screens/in_community_screen.dart';
import 'package:web_app/screens/sustainable_screen.dart';
import 'package:web_app/screens/works_cited.dart';
import 'package:web_app/values/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.from(colorScheme: ColorScheme.fromSwatch()).copyWith(
        primaryColor: Color.fromARGB(255, 255, 255, 255),
        accentColor: Colors.black,
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith(
                    (state) => Colors.black))),
      ),
      home: HomeScreen(
          ScrollController(keepScrollOffset: false, initialScrollOffset: 0.0)),
      routes: {
        "Home": (context) => HomeScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 0.0)),
        "AtHome": (context) => AtHomeScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 0.0)),
        "Style": (context) => AtHomeScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 600.0)),
        "Emb": (context) => AtHomeScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 750.0)),
        "Alt": (context) => AtHomeScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 1200.0)),
        "Des": (context) => AtHomeScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 1450.0)),
        "DoYourSelf": (context) => AtHomeScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 2550.0)),
        "Croch": (context) => AtHomeScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 2600.0)),
        "MK": (context) => AtHomeScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 3325.0)),
        "Community": (context) => InCommunityScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 0.0)),
        "Borrow": (context) => InCommunityScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 600.0)),
        "Thrifting": (context) => InCommunityScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 1000.0)),
        "Hand": (context) => InCommunityScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 2000.0)),
        "Club": (context) => InCommunityScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 2480.0)),
        "Shopping": (context) => SustainabilityScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 0.0)),
        "Identify": (context) => SustainabilityScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 600.0)),
        "Src": (context) => SustainabilityScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 750.0)),
        "Mat": (context) => SustainabilityScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 900.0)),
        "Green": (context) => SustainabilityScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 1220.0)),
        "CSR": (context) => SustainabilityScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 1480.0)),
        "Webs": (context) => SustainabilityScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 1640.0)),
        "Brands": (context) => SustainabilityScreen(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 2105.0)),
        "Cited": (context) => WorksCited(ScrollController(
            keepScrollOffset: false, initialScrollOffset: 0.0)),
      },
    );
  }
}
