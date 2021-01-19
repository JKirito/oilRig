import 'package:flutter/material.dart';
import 'package:oilrig/designprops/colorcodes.dart';

import 'package:oilrig/customPositioned.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen>
    with TickerProviderStateMixin {
  // Animated Properties
  double _raisedButtonContainerHeight = 70;
  double _raisedButtonContainerWidth = 200;

  // Animation Related Functionalites
  AnimationController _controller;

  Animation<double> _homeRaisedButtonContainerHeightanimation;
  Animation<double> _homeRaisedButtonContainerWidthanimation;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );

    _homeRaisedButtonContainerHeightanimation = Tween<double>(
      begin: _raisedButtonContainerHeight,
      end: 0,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _homeRaisedButtonContainerWidthanimation = Tween<double>(
      begin: _raisedButtonContainerWidth,
      end: 0,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _homeRaisedButtonContainerHeightanimation.addListener(() {
      setState(() {});
    });
    _homeRaisedButtonContainerWidthanimation.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void startApplication() {
    setState(() {});
    _controller.forward();
  }

  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          bottom: -150,
          left: -250,
          child: Container(
            width: MediaQuery.of(context).size.width * 3,
            // height: 1000,
            child: Image.asset(
              'lib\\assets\\images\\rigbackground.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            margin: EdgeInsets.only(bottom: 50),
            width: _homeRaisedButtonContainerWidthanimation.value,
            height: _homeRaisedButtonContainerHeightanimation.value,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3), // Drop Shadow Color
                  spreadRadius: 2,
                  blurRadius: 20,
                  offset: Offset(10, 8),
                ),
              ],
              // gradient: LinearGradient(
              //   begin: Alignment.centerLeft,
              //   end: Alignment.centerRight,
              //   colors: [
              //     Color(LimeWhite),
              //     Color(LimeBlue),
              //   ],
              // ),
            ),
            child: RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
              color: Color(LimeBlue),
              textColor: Color(LimeWhite),
              onPressed: startApplication,
              child: Container(
                child: Text(
                  'Let\'s Go',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
        CustomPositioned(
          top: -130,
          right: -400,
          width: MediaQuery.of(context).size.width * 2,
          height: MediaQuery.of(context).size.height / 1.5,
          // height: 350,
          // width: 350,
        ),
        CustomPositioned(
          left: -400,
          top: -100,
          width: MediaQuery.of(context).size.width * 2,
          height: MediaQuery.of(context).size.height / 1.5,
          // height: 350,
          // width: 350,
        ),
        CustomPositioned(
          top: -180,
          width: MediaQuery.of(context).size.width * 2,
          height: MediaQuery.of(context).size.height / 1.5,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Center(
            child: Text(
              'OIL RIG',
              style: TextStyle(
                color: Color(LimeWhite),
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
