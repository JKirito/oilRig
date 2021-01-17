import 'package:flutter/material.dart';
import 'package:oilrig/homeScreen.dart';
// import 'designprops/colorcodes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData(
          // fontFamily: 'Roboto',
          ),
    );
  }
}

class Homepage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: HomeScreen(),
      ),
    );
  }
}
