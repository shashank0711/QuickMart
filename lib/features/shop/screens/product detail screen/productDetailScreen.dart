import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quickmart/common/widgets/Curved%20Edges/curvedEdgesWidget.dart';
import 'package:quickmart/common/widgets/common-widgets.dart';
import 'package:quickmart/common/widgets/custom%20app%20bar/customAppBar.dart';
import 'package:quickmart/common/widgets/product%20card/productImageBlock.dart';
import 'package:quickmart/features/shop/screens/home/home%20widgets/homeScreenWidgets.dart';
import 'package:quickmart/features/shop/screens/product%20detail%20screen/bottomAddToCart.dart';
import 'package:quickmart/features/shop/screens/product%20detail%20screen/widgets product detail screen.dart';
import 'package:readmore/readmore.dart';

class productDetailScreen extends StatelessWidget {
  const productDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const bottomAddToCart(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //product image block
              curvedEdgesWidget(
                size: size,
                child: Stack(
                  children: [
                    //main image
                    Container(
                      height: 300,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                              'assets/images/furniture/furniture1.png'),
                        ),
                      ),
                    ),

                    customAppBar(
                      title: IconButton(
                        onPressed: () => Get.back(),
                        icon: const Icon(
                          Iconsax.arrow_left,
                          size: 30,
                          color: Colors.black54,
                        ),
                      ),
                      action: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Iconsax.heart5,
                              size: 30,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              //product name and heading
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //product name and small description
                    productHeading('Comforto',
                        'Deluxe Chair - Ergonomic, Stylish, Premium Quality'),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(),
                    ),

                    //price and rating texts
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        priceBlock('1500', '1000'),
                        ratingTile('5.0', '122'),
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    //status of the product whether in stock or not
                    statusTile('In Stock'),

                    const SizedBox(
                      height: 20,
                    ),

                    //brand name with verified tick
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade300),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: brandNameWithVerifiedIcon(
                            brandName: 'Comforto',
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )),

                    const SizedBox(
                      height: 25,
                    ),

                    //checkout button
                    mainButton(size, () {}, 'Checkout'),

                    const SizedBox(
                      height: 20,
                    ),

                    //description heading and actual description of the product
                    productDescription('Discover unparalleled comfort and timeless elegance with the ComfortCo Deluxe Chair. Engineered with ergonomic precision, this chair combines plush support with a sleek, modern design that enhances any space. Crafted from high-quality materials, it promises durability and reliability for years to come. Whether for your home office or workspace, its adjustable features ensure optimal comfort and posture support throughout the day. Elevate your seating experience with this versatile and stylish addition, perfect for both professional and personal use. Embrace luxury and functionality with every sit, courtesy of the ComfortCo Deluxe Chair.'),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
