import 'package:flutter/material.dart';
import 'package:oilrig/designprops/colorcodes.dart';
import 'package:oilrig/drawerContent.dart';
import 'package:oilrig/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      theme: ThemeData(),
    );
  }
}

class Homepage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(DarkBlue),
        child: DrawerContent(),
      )),
      appBar: AppBar(
        title: Text(
          'Oil Rig',
        ),
        centerTitle: true,
        backgroundColor: Color(DarkBlue),
      ),
      body: Container(
        color: Color(LimeBlue),
        child: HomeScreen(),
      ),
    );
  }
}
