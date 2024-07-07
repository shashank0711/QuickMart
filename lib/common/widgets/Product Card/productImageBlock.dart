import 'package:flutter/material.dart';


//product image block with rounded corners
class productImageBlock extends StatelessWidget {
  const productImageBlock({
    super.key, required this.height, this.image, required this.width,
  });

  final double height, width;
  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.red
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
