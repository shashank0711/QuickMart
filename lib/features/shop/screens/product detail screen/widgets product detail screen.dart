import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

//price block with old price and new price
Widget priceBlock(String oldPrice, String newPrice) {
  return Column(
    children: [
      Text(
        '₹   $oldPrice',
        style: const TextStyle(
            fontFamily: 'jakarta',
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.grey,
            decorationThickness: 2
        ),
      ),
      Text(
        '₹   $newPrice',
        style: const TextStyle(
            fontFamily: 'jakarta',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  );
}


//Rating and review tile
Widget ratingTile(String rateText, String numberOfReviews) {
  return Row(
    children: [
      const Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(
          Iconsax.star5,
          color: Colors.amber,
        ),
      ),
      Text.rich(TextSpan(children: [
        TextSpan(
            text: '$rateText  ',
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'jakarta')),
        TextSpan(
            text: '($numberOfReviews)',
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'jakarta',
                color: Colors.grey)),
      ]))
    ],
  );
}


//product name and heading
Widget productHeading(String brandName, String brandHeading) {
  return Text.rich(TextSpan(children: [
    TextSpan(
        text: '$brandName  ',
        style: const TextStyle(
          fontFamily: 'jakarta',
          fontWeight: FontWeight.bold,
          fontSize: 18,
        )),
    TextSpan(
        text:
        brandHeading,
        style: const TextStyle(
          fontFamily: 'jakarta',
          fontSize: 18,
        ))
  ]));
}


//status of the product
Widget statusTile(String statusText) {
  return Row(
    children: [
      const Text(
        'Status :  ',
        style: TextStyle(
            fontFamily: 'jakarta  ',
            fontSize: 18,
            fontWeight: FontWeight.w400),
      ),
      Text(
        statusText,
        style: const TextStyle(
            fontFamily: 'jakarta  ',
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ],
  );
}


//description of the product
Widget productDescription(String descriptionText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Description',
        style: TextStyle(
            fontFamily: 'jakarta',
            fontWeight: FontWeight.bold,
            fontSize: 17,
            wordSpacing: 3
        ),
      ),

      const SizedBox(
        height: 10,
      ),

      ReadMoreText(
        descriptionText,
        style: const TextStyle(
          fontFamily: 'jakarta',
        ),
        trimLines: 3,
        trimMode: TrimMode.Line,
        trimCollapsedText: ' read more',
        trimExpandedText: ' read less',
        moreStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.cyan),
        lessStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.cyan),

      )
    ],
  );
}