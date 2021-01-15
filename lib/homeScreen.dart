import 'package:flutter/material.dart';
import 'package:oilrig/customPositioned.dart';
import 'package:oilrig/designprops/colorcodes.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          bottom: -50,
          child: Container(
            width: MediaQuery.of(context).size.width * 2,
            // height: 1000,
            child: Image.asset(
              'lib\\assets\\rigbackground2.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4), // Drop Shadow Color
                  spreadRadius: 5,
                  blurRadius: 15,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
              color: Color(LimeBlue),
              onPressed: () {},
              child: Text('Lets Go'),
            ),
          ),
        ),
        CustomPositioned(
          top: -80,
          right: -400,
          width: MediaQuery.of(context).size.width * 2,
          height: MediaQuery.of(context).size.height / 1.5,
          // height: 350,
          // width: 350,
        ),
        CustomPositioned(
          left: -400,
          top: -50,
          width: MediaQuery.of(context).size.width * 2,
          height: MediaQuery.of(context).size.height / 1.5,
          // height: 350,
          // width: 350,
        ),
        CustomPositioned(
          top: -150,
          width: MediaQuery.of(context).size.width * 2,
          height: MediaQuery.of(context).size.height / 1.5,
        ),
      ],
    );
  }
}
