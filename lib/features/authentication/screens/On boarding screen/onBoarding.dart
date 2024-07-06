import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickmart/features/authentication/controllers/onBoarding_controller.dart';
import 'package:quickmart/features/authentication/screens/widgets/loginSignup-widgets.dart';
import 'package:quickmart/utils/constants/texts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../common/widgets/common-widgets.dart';

class onBoarding extends StatelessWidget {
   const onBoarding({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = Get.put(onBoardingController());
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            //skip button
            Positioned(
              right: 0,
              child: TextButton(
                onPressed: () => controller.skipPage(),
                child: const Text(
                  'Skip',
                  style: TextStyle(
                      fontFamily: 'jakarta',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
            ),

            //scrollable pages
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: PageView(
                controller: controller.pageController,
                onPageChanged: controller.updatePageIndicator,
                children: [
                  OnBoardingPage(
                    size: size,
                    image: 'assets/images/on boarding images/Group 4024.png',
                    title: AppTexts.onBoardingTitle1,
                    subtitle: AppTexts.onBoardingSubtitle1,
                  ),
                  OnBoardingPage(
                    size: size,
                    image: 'assets/images/on boarding images/Group 4025.png',
                    title: AppTexts.onBoardingTitle2,
                    subtitle: AppTexts.onBoardingSubtitle2,
                  ),
                  OnBoardingPage(
                    size: size,
                    image: 'assets/images/on boarding images/Group 4027.png',
                    title: AppTexts.onBoardingTitle3,
                    subtitle: AppTexts.onBoardingSubtitle3,
                  ),
                ],
              ),
            ),

            //Next Button
            Positioned(
                bottom: 80,
                left: 22,
                right: 22,
                child: mainButton(size, ()=>controller.nextPage(), 'Next'),
            ),

            //Dot navigation smoothPageIndicator
            Positioned(
              bottom: 35,
              child: Container(
                  width: size.width,
                  child: Center(
                      child: SmoothPageIndicator(
                        controller: controller.pageController,
                        onDotClicked: controller.dotNavigationClick,
                        count: 3,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Colors.cyan.shade100,
                          dotColor: Colors.grey.shade400,
                          dotHeight: 13,
                          dotWidth: 13,
                          spacing: 10
                        ),
                      ))),
            ),
          ],
        ),
      )),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.size,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final Size size;
  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 25, 8, 20),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontFamily: 'jakarta',
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      height: 1),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'jakarta',
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
