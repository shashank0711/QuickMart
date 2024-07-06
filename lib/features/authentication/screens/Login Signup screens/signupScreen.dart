import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quickmart/features/authentication/screens/Login%20Signup%20screens/loginScreen.dart';
import 'package:quickmart/features/authentication/screens/Email%20verification%20screens/verifyEmailScreen.dart';
import 'package:quickmart/features/authentication/screens/widgets/loginSignup-widgets.dart';

import '../../../../common/widgets/common-widgets.dart';

class signupscreen extends StatelessWidget {
  const signupscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //logo image
                Image.asset(
                  'assets/images/quickmart.png',
                  scale: 4,
                ),

                SizedBox(
                  height: size.height * .03,
                ),

                //login text
                const Text(
                  'Signup',
                  style: TextStyle(
                    fontFamily: 'jakarta',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),

                SizedBox(
                  height: size.height * .005,
                ),

                LoginSignupAlert("Already have an account?  ",()=> Get.off(()=>loginScreen()), 'Login'),

                SizedBox(
                  height: size.height * .03,
                ),


                //name form field
                AuthRichText('Full Name'),
                nameAndEmailFormField('Enter your full name'),



                //email form field
                AuthRichText('Email'),
                nameAndEmailFormField('Enter your email'),


                //password form field
                AuthRichText('Password'),
                passwordFormField(),



                SizedBox(
                  height: size.height * .05,
                ),

                //main login button
                mainButton(size, () => Get.to(() => verifyEmailScreen()), 'Create Account'),

                SizedBox(
                  height: size.height * .02,
                ),

                //Or login with google option
                googleOption(size, 'Signup with Google'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
