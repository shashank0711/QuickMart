import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/custom app bar/customAppBar.dart';
import 'checkoutWidget.dart';



class checkoutPaymentScreen extends StatelessWidget {
  const checkoutPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //top shipping payment review block
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  checkoutTopIcon(Iconsax.box, Colors.cyan, 'Shipping',
                      Colors.cyan, null),
                  customHorizontalDivider(Colors.cyan),
                  checkoutTopIcon(Iconsax.card_tick_1, Colors.black, 'Payment',
                      Colors.black, FontWeight.bold),
                  customHorizontalDivider(Colors.grey),
                  checkoutTopIcon(Iconsax.clipboard_tick, Colors.grey, 'Review',
                      Colors.grey, null),
                ],
              ),

            ],
          ),
        ),
      ),


    );
  }
}
