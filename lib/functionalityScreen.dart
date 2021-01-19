import 'package:flutter/material.dart';
import 'package:oilrig/designprops/colorcodes.dart';

class FunctionalityScreen extends StatelessWidget {
  final functionalities = [
    'KILL SHEETS',
    'ABBREVIATIONS',
    'FORMULAS',
    'SETTINGS'
  ];
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Colors.amber,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: -480,
            child: Container(
              width: MediaQuery.of(context).size.width * 4,
              // height: 1000,
              child: Image.asset(
                'lib\\assets\\images\\rigbackground.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * .6,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: functionalities
                      .map((work) => Container(
                            decoration: BoxDecoration(
                                color: Color(LimeBlue),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 7,
                                    color: Colors.black.withOpacity(0.3),
                                    offset: Offset(0, 3),
                                    spreadRadius: 2,
                                  ),
                                ]),
                            height: 100,
                            // margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Center(
                              child: Text(
                                work, // Text Title for Functionalities
                                style: TextStyle(
                                    color: Color(LimeWhite),
                                    fontFamily: 'Roboto',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ))
                      .toList()),
            ),
          ),
        ],
      ),
    );
  }
}
