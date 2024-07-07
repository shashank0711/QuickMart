import 'package:flutter/material.dart';

Widget imageBlock(double blockHeight, double blockWidth, image) {
  return Container(
    height: blockHeight,
    width: blockWidth,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey.shade300,
    ),
    child: Center(
      child: Image.asset(
        image,
      ),
    ),
  );
}
