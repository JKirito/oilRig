import 'package:flutter/material.dart';
import 'package:oilrig/designprops/colorcodes.dart';
import 'package:oilrig/svgCliping.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundSVG(),
        Container(
          // color: Colors.red,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(LimeWhite),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(50),
                child: Text('Kill Sheets'),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(LimeWhite),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(50),
                child: Text('Kill Sheets'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
