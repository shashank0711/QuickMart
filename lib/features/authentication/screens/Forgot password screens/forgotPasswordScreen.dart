import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickmart/common/widgets/common-widgets.dart';
import 'package:quickmart/features/authentication/screens/Forgot%20password%20screens/resetEmailSentScreen.dart';
import 'package:quickmart/features/authentication/screens/widgets/loginSignup-widgets.dart';
import '../../../../utils/constants/texts.dart';

class forgotPasswordScreen extends StatelessWidget {
  const forgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppTexts.forgotPasswordTitle1,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'jakarta',
                    fontSize: 20,
                    wordSpacing: 2),
              ),

              SizedBox(
                height: size.height * .01,
              ),

              //text 2
              const Text(
                AppTexts.forgotPasswordTitle2,
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'jakarta',
                  // fontWeight: FontWeight.bold,
                  color: Colors.black45,
                ),
              ),

              SizedBox(
                height: size.height * .06,
              ),

              nameAndEmailFormField('Enter your email'),

              SizedBox(
                height: size.height * .03,
              ),

              mainButton(
                  size, () => Get.to(() => const resetEmailSentScreen()), 'Submit'),
            ],
          ),
        ),
      ),
    );
  }
}
