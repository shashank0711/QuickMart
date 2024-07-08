import 'package:flutter/material.dart';

import '../Curved Edges/curvedEdgesWidget.dart';
import '../common-widgets.dart';


class customHeaderDesign extends StatelessWidget {
  const customHeaderDesign({
    super.key,
    required this.size,
    required this.child,
  });

  final Size size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return curvedEdgesWidget(
      size: size,
      //primary header of the screen
      child: Container(
        color: Colors.cyan.shade200,
        child: SizedBox(
          child: Stack(
            children: [
              //for custom design of the application two positioned widgets are used
              Positioned(
                  top: -150, right: -170, child: circularContainer(size)),
              Positioned(top: 100, right: -230, child: circularContainer(size)),

              //main content of the header part
              child,
            ],
          ),
        ),
      ),
    );
  }
}
