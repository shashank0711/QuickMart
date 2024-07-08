import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/homeController.dart';

//banner images
Widget bannerImage(image) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Image.asset(image),
  );
}

//sliding banners
class slidingBanner extends StatelessWidget {
  const slidingBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(homeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: [
            bannerImage('assets/images/Banners/Banner 1.png'),
            bannerImage('assets/images/Banners/Banner 4.png'),
            bannerImage('assets/images/Banners/Banner 5.png'),
            bannerImage('assets/images/Banners/Banner 3.png'),
            bannerImage('assets/images/Banners/Banner 2.png'),
          ],
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    height: 4,
                    width: 20,
                    margin: const EdgeInsets.only(right: 7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: controller.carouselCurrentIndex == i
                            ? Colors.cyan.shade300
                            : Colors.black12),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}

//section headings
Widget sectionHeading(Size size, text, onPressedFunction, final bool showActionButton ) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 17),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'jakarta',
            fontWeight: FontWeight.bold,
            fontSize: 17,
            wordSpacing: 3
          ),
        ),
        if(showActionButton) InkWell(
          onTap: onPressedFunction,
          child: const Text(
            'View All',
            style: TextStyle(
              fontFamily: 'jakarta',
              fontWeight: FontWeight.bold,
              color: Colors.cyan,
              fontSize: 13,
            ),
          ),
        ),
      ],
    ),
  );
}

//brand name with verified icon
class brandNameWithVerifiedIcon extends StatelessWidget {
    brandNameWithVerifiedIcon({
    super.key,
    required this.brandName, this.fontWeight, required this.fontSize,
  });

  final String brandName;
  dynamic fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          brandName,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
              fontFamily: 'jakarta',
              fontSize: fontSize,
              fontWeight: fontWeight),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Image.asset(
            'assets/icons/verified.png',
            scale: 33,
          ),
        )
      ],
    );
  }
}
