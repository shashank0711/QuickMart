import 'package:flutter/material.dart';


//main button for everything
Widget mainButton(Size size, onTapFunction, text){
  return InkWell(
    onTap: onTapFunction,
    child: Container(
      width: double.infinity,
      height: size.height * .07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black87,
      ),
      child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'jakarta',
                fontSize: 16),
          )),
    ),
  );
}

