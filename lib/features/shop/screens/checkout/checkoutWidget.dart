import 'package:flutter/material.dart';

Widget checkoutTopIcon(icon, iconColor, String text, textColor, textWeight) {
  return Column(
    children: [
      Icon(
        icon,
        color: iconColor,
        size: 25,
      ),
      Text(
        text,
        style: TextStyle(
          fontFamily: 'jakarta',
          fontSize: 13,
          color: textColor,
          fontWeight: textWeight,
        ),
      )
    ],
  );
}


//horizontal divider between icons
Widget customHorizontalDivider(color){
  return Container(
    width: 60,
    height: 1.5,
    color: color,
  );
}