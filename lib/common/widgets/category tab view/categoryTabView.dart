import 'package:flutter/material.dart';

import '../../../features/shop/screens/home/home widgets/homeScreenWidgets.dart';
import '../../../features/shop/screens/store/storeWidgets.dart';
import '../Product Card/productCardVertical.dart';
import '../grid view layout/customGridView.dart';



class categoryTabView extends StatelessWidget {
  const categoryTabView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                //popular brand showcase with their products block
                const brandShowcaseBlock(
                    brandIcon: 'assets/icons/brand icons/sony.png',
                    brandName: 'Sony',
                    itemCountText: '256 items',
                    productImages: [
                      'assets/images/camera/camera1.png',
                      'assets/images/camera/camera2.png',
                      'assets/images/camera/camera3.png',
                    ]),

                //you might also like text
                sectionHeading(size, 'You Might Like', () {}, true),

                //multiple more products
                customGridView(
                  itemCount: 3,
                  itemBuilder: (_, index) =>
                  const productCardVertical(),
                )
              ],
            ),
          ),
        ]);
  }
}
