import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickmart/features/authentication/screens/Email%20verification%20screens/verificationSuccesScreen.dart';
import 'package:quickmart/features/authentication/screens/Forgot%20password%20screens/forgotPasswordScreen.dart';
import 'package:quickmart/features/authentication/screens/Login%20Signup%20screens/loginScreen.dart';
import 'package:quickmart/features/authentication/screens/On%20boarding%20screen/onBoarding.dart';
import 'package:quickmart/features/authentication/screens/Login%20Signup%20screens/signupScreen.dart';
import 'package:quickmart/features/authentication/screens/Email%20verification%20screens/verifyEmailScreen.dart';
import 'package:quickmart/screens/splash_screen.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_screen(),
    );
  }
}
