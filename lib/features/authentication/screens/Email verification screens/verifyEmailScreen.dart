import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickmart/common/widgets/common-widgets.dart';
import 'package:quickmart/features/authentication/screens/Email%20verification%20screens/verificationSuccesScreen.dart';
import 'package:quickmart/features/authentication/screens/Login%20Signup%20screens/signupScreen.dart';
import 'package:quickmart/utils/constants/texts.dart';

class verifyEmailScreen extends StatelessWidget {
  const verifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
                onPressed: () => Get.offAll(() => const signupscreen()),
                icon: const Icon(
                  Icons.clear,
                  size: 25,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              //main image of the page
              Image.asset(
                'assets/images/email verification images/Group 4028 (1).png',
                scale: 5,
              ),

              SizedBox(
                height: size.height * .03,
              ),

              const Text(
                AppTexts.verifyEmailTitle1,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'jakarta',
                    fontSize: 20,
                    wordSpacing: 2),
              ),

              SizedBox(
                height: size.height * .015,
              ),

              //user email display
              const Text(
                'shashanksingh@gmail.com',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'inter',
                    // fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),

              SizedBox(
                height: size.height * .015,
              ),

              //text 2
              const Text(
                AppTexts.verifyEmailTitle2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'jakarta',
                  // fontWeight: FontWeight.bold,
                  color: Colors.black45,
                ),
              ),

              SizedBox(
                height: size.height * .05,
              ),

              mainButton(
                size,
                () => Get.to(() => const verificationSuccessScreen()),
                'Continue',
              ),

              SizedBox(
                height: size.height * .02,
              ),

              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: size.height * .07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black12)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Resend Email',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'jakarta',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
