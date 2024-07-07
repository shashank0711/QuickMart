import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quickmart/common/widgets/Product%20Card/productImageBlock.dart';
import '../../../features/shop/screens/home/home widgets/homeScreenWidgets.dart';

class productCardVertical extends StatelessWidget {
  const productCardVertical({Key? key, this.image}) : super(key: key);

  final image;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: size.width * .4,
        // height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //product image and wishlist icon
            Stack(
              children: [
                //image block
                 const productImageBlock(
                  height: 120,
                  width: double.maxFinite,
                  image: 'assets/images/furniture/furniture1.png',
                   boxfit: null,
                ),

                //wishlist icon
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.heart5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),


            //main details of the product
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    'Nike air Jordan ',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(fontFamily: 'jakarta', fontSize: 15,fontWeight: FontWeight.bold),
                  ),

                  brandNameWithVerifiedIcon(brandName: 'Nike', fontWeight: null,),

                   Text(
                    '₹ 1000',
                    style: TextStyle(fontFamily: 'inter', fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
