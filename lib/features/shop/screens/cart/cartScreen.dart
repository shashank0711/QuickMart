import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickmart/common/widgets/common-widgets.dart';
import 'package:quickmart/common/widgets/custom%20app%20bar/customAppBar.dart';
import 'package:quickmart/features/shop/screens/checkout/checkoutShippingScreen.dart';
import 'cart item widget.dart';

class cartScreen extends StatelessWidget {
  const cartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const customAppBar(
        backArrow: true,
        title: Text(
          'My Cart',
          style: TextStyle(
              fontFamily: 'jakarta',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              wordSpacing: 3),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,),
          child: Column(
            children: [
              //top divider line
              const Divider(),
              const SizedBox(height: 10),

              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (_, __) => const SizedBox(height: 20),
                  itemCount: 2,
                  itemBuilder: (_, index) => const Column(
                    children: [
                      cartItems(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: mainButton(size, () => Get.to(() => const checkoutShippingScreen()), 'Checkout'),
      ),
      
    );
  }
}


