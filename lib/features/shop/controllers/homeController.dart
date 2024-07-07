import 'package:get/get.dart';

class homeController extends GetxController{

  static homeController get instance => Get.find();

  final Rx<int> carouselCurrentIndex = 0.obs;

  void updatePageIndicator(index){
    carouselCurrentIndex.value = index;
  }

}