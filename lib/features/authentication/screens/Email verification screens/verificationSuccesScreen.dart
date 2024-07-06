import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickmart/common/widgets/common-widgets.dart';
import 'package:quickmart/features/authentication/screens/Login%20Signup%20screens/loginScreen.dart';

import '../../../../utils/constants/texts.dart';

class verificationSuccessScreen extends StatelessWidget {
  const verificationSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/email verification images/Group 4028.png',
                  scale: 5,
                ),

                SizedBox(
                  height: size.height * .04,
                ),

                //success text
                const Text(
                  AppTexts.successScreenTitle1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'jakarta',
                      fontSize: 23,
                      wordSpacing: 2),
                ),

                SizedBox(
                  height: size.height * .02,
                ),

                //text 2
                const Text(
                  AppTexts.successScreenTitle2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13.5,
                    fontFamily: 'jakarta',
                    // fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),

                SizedBox(
                  height: size.height * .05,
                ),

                //continue button
                mainButton(
                    size, () => Get.offAll(() => loginScreen()), 'Continue'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
