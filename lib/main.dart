import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickmart/common/widgets/image%20block.dart';
import 'package:quickmart/features/shop/screens/store/storeScreen.dart';
import 'package:quickmart/features/shop/screens/home/homeScreen.dart';
import 'package:quickmart/navigation_menu.dart';
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
      home: navigationMenu(),
    );
  }
}
