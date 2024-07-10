import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quickmart/common/widgets/common-widgets.dart';
import 'package:quickmart/common/widgets/custom%20app%20bar/customAppBar.dart';
import 'package:quickmart/features/personalization/screens/address%20screen/addNewAddressScreen.dart';
import 'package:quickmart/features/shop/screens/checkout/checkoutWidget.dart';
import 'package:quickmart/features/shop/screens/home/home%20widgets/homeScreenWidgets.dart';

import '../../../personalization/screens/address screen/userAddressScreen.dart';
import '../../../personalization/screens/profile screen/profile widgets.dart';
import 'checkoutPaymentScreen.dart';

class checkoutShippingScreen extends StatelessWidget {
  const checkoutShippingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const customAppBar(
        backArrow: true,
        title: Text(
          'Checkout',
          style: TextStyle(
              fontFamily: 'jakarta',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              wordSpacing: 3),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //top shipping payment review block
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  checkoutTopIcon(Iconsax.box, Colors.black, 'Shipping',
                      Colors.black, FontWeight.bold),
                  customHorizontalDivider(Colors.grey),
                  checkoutTopIcon(Iconsax.card_tick_1, Colors.grey, 'Payment',
                      Colors.grey, null),
                  customHorizontalDivider(Colors.grey),
                  checkoutTopIcon(Iconsax.clipboard_tick, Colors.grey, 'Review',
                      Colors.grey, null),
                ],
              ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'Shipping Address',
                  style: TextStyle(
                    fontFamily: 'jakarta',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),

              addressBlock(selectedAddress: false),

              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Get.to(() => const addNewAddressScreen()),
                    child: Container(
                      width: size.width*.4,
                      height: size.height * .07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey,width: 1),
                      ),
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Add New Address',
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'jakarta',
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      )),
                    ),
                  ),

                  InkWell(
                    onTap: () => Get.to(() => const userAddressScreen()),
                    child: Container(
                      width: size.width*.4,
                      height: size.height * .07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87,
                        border: Border.all(color: Colors.black87,width: 1),
                      ),
                      child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Change Address',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'jakarta',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: mainButton(size, () => Get.to(() => const checkoutPaymentScreen()), 'Continue'),
      ),
    );
  }
}
