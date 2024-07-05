import 'package:flutter/material.dart';
import 'package:quickmart/features/authentication/screens/onBoarding.dart';
import 'package:quickmart/screens/splash_screen.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onBoarding(),
    );
  }
}
