import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenBackup extends StatelessWidget {
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -200,
          left: -MediaQuery.of(context).size.width / 3.8,
          child: SvgPicture.asset(
            'lib\\assets\\ellipse.svg',
            semanticsLabel: 'Ellipse',
            // alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width + 230,
          ),
        ),
        Positioned(
          top: -100,
          left: -MediaQuery.of(context).size.width,
          child: SvgPicture.asset(
            'lib\\assets\\ellipse.svg',
            semanticsLabel: 'Ellipse',
            // alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width + 230,
          ),
        ),
      ],
    );
  }
}

// Backup Shape Code

// Positioned(
//           top: -150,
//           child: Container(
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Color(LimeBlue),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.4),
//                   spreadRadius: 5,
//                   blurRadius: 15,
//                   offset: Offset(0, 2),
//                 )
//               ],
//             ),
//             height: MediaQuery.of(context).size.height / 1.5,
//             width: MediaQuery.of(context).size.width * 2,
//           ),
//         ),
