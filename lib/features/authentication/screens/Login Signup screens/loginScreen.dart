import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quickmart/features/authentication/screens/Forgot%20password%20screens/forgotPasswordScreen.dart';
import 'package:quickmart/features/authentication/screens/Login%20Signup%20screens/signupScreen.dart';
import 'package:quickmart/features/authentication/screens/widgets/loginSignup-widgets.dart';
import 'package:quickmart/features/shop/screens/home/homeScreen.dart';
import 'package:quickmart/navigation_menu.dart';
import '../../../../common/widgets/common-widgets.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

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
                  height: size.height * .04,
                ),

                //login text
                const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'jakarta',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),

                SizedBox(
                  height: size.height * .005,
                ),

                LoginSignupAlert("Don't have an account?  ",
                    () => Get.off(() => signupscreen()), 'Signup'),

                SizedBox(
                  height: size.height * .04,
                ),

                //email form field
                AuthRichText('Email'),
                nameAndEmailFormField('Enter your email'),

                //password form field
                AuthRichText('Password'),
                passwordFormField(),

                //forgot password option tab
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Get.to(() => forgotPasswordScreen()),
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(
                          color: Colors.cyan.shade300,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'jakarta',
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: size.height * .01,
                ),

                //main login button
                mainButton(size, ()=> Get.to(()=> navigationMenu()), 'Login'),

                SizedBox(
                  height: size.height * .02,
                ),

                //Or login with google option
                googleOption(size, 'Login with Google'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
