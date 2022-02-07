import 'package:flutter/material.dart';
import 'package:learningprocess/screens/city_screen.dart';
import 'package:learningprocess/screens/loading_screen.dart';
import 'package:learningprocess/screens/location_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        "loadingScreen": (context) => LoadingScreen(),
        "homeScreen": (context) => LocationScreen(),
        "cityScreen": (context) => CityScreen(),
      },
      initialRoute: "loadingScreen",
    );
  }
}
