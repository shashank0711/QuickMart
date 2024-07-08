import 'package:flutter/material.dart';


//product image block with rounded corners
class productImageBlock extends StatelessWidget {
  const productImageBlock({
    super.key, required this.height, required this.image, required this.width, required this.boxfit,
  });

  final double height, width;
  final String image;
  final boxfit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade300
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(image,
          fit: boxfit,
        ),
      ),
    );
  }
}
