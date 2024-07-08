import 'package:flutter/material.dart';
import 'package:quickmart/common/widgets/Product%20Card/productCardVertical.dart';
import 'package:quickmart/common/widgets/custom%20app%20bar/customAppBar.dart';
import 'package:quickmart/common/widgets/grid%20view%20layout/customGridView.dart';

class wishlistScreen extends StatelessWidget {
  const wishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const customAppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Wishlist',
            style: TextStyle(
              fontFamily: 'jakarta',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  customGridView(itemCount: 3, itemBuilder: (_, index) => productCardVertical()),
                ],
              ),
            ),
          )),
    );
  }
}
