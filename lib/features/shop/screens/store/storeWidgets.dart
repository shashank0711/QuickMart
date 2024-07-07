import 'package:flutter/material.dart';
import '../../../../common/widgets/image block.dart';
import '../home/home widgets/homeScreenWidgets.dart';


Widget brandCard(brandIcon, brandName, itemCountText){
  return Row(
    children: [
      Image.asset(
        brandIcon,
        scale: 12,
      ),
       Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            brandNameWithVerifiedIcon(
              brandName: brandName,
              fontWeight: FontWeight.bold,
            ),
            Text(
              itemCountText,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontFamily: 'jakarta',
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      )
    ],
  );
}



//a short showcase of any brand in store section
class brandShowcaseBlock extends StatelessWidget {
  const brandShowcaseBlock({
    super.key, this.brandIcon, required this.brandName, required this.itemCountText, required this.productImages,
  });

  final brandIcon;
  final String brandName, itemCountText;
  final List<String> productImages;


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              child: brandCard(brandIcon, brandName, itemCountText),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: productImages.map((productImage) => imageBlock(85, 85, productImage)).toList(),
              ),
            )
          ],
        )
    );
  }
}