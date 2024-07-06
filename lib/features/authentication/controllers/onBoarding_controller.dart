import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:quickmart/features/authentication/screens/Login%20Signup%20screens/loginScreen.dart';

class onBoardingController extends GetxController {
  static onBoardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //update current index when page scrolls
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //jump to the dot specific page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //update current index and jump to next page
  void nextPage() {
    if (currentPageIndex == 2) {
      Get.offAll(loginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //update current index and jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
