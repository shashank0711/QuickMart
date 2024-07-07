import 'package:flutter/material.dart';

import 'curvedEdges.dart';


class curvedEdgesWidget extends StatelessWidget {
  const curvedEdgesWidget({
    super.key,
    required this.size,
    this.child,
  });

  final Size size;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: curvedEdges(),
      child: child,
    );
  }
}
