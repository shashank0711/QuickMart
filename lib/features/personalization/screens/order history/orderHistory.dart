import 'package:flutter/material.dart';
import 'package:quickmart/common/widgets/custom%20app%20bar/customAppBar.dart';

import '../../../../common/widgets/Product Card/productCardVertical.dart';
import '../../../../common/widgets/grid view layout/customGridView.dart';

class orderHistoryScreen extends StatelessWidget {
  const orderHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        backArrow: true,
        title: Text(
          'Order History',
          style: TextStyle(
            fontFamily: 'jakarta',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              const Divider(),
              const SizedBox(height: 30,),


              customGridView(itemCount: 3, itemBuilder: (_, index) => const productCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}
