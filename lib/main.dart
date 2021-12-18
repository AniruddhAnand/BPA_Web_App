import 'package:flutter/material.dart';
import 'package:web_app/screens/at_home_screen.dart';
import 'package:web_app/screens/home_screen.dart';
import 'package:web_app/screens/image_screen.dart';
import 'package:web_app/screens/in_community_screen.dart';
import 'package:web_app/screens/sustainable_screen.dart';

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
      home: HomeScreen(),
      routes: {
        "AtHome": (context) => AtHomeScreen(),
        "Community": (context) => InCommunityScreen(),
        "Shopping": (context) => SustainabilityScreen(),
      },
    );
  }
}
