import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/Product Card/productImageBlock.dart';
import '../home/home widgets/homeScreenWidgets.dart';



class cartItems extends StatelessWidget {
  const cartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const productImageBlock(
            height: 120,
            image: 'assets/images/furniture/furniture1.png',
            width: 100,
            boxfit: null),

        //product name, price and counting block
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //brand name with verified tick and product title
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      brandNameWithVerifiedIcon(
                        brandName: 'Comforto ',
                        fontSize: 13,
                      ),

                      //product title
                      const Text(
                        'Comforto Deluxe Chair - Ergonomic, Stylish, Premium Quality',
                        style: TextStyle(
                          fontFamily: 'jakarta',
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),

                  //price
                  const Text(
                    '₹  1000',
                    style: TextStyle(
                      fontFamily: 'jakarta',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  //counting block
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey,
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.all(0),
                          onPressed: () {},
                          icon: const Icon(
                            Iconsax.minus,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          '2',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black,
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.all(0),
                          onPressed: () {},
                          icon: const Icon(
                            Iconsax.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        SizedBox(
          height: 120,
          child: InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Icon(
                  Iconsax.trash,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
