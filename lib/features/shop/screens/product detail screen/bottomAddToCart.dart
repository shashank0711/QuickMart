import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class bottomAddToCart extends StatelessWidget {
  const bottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey,
                ),
                child: IconButton(
                  onPressed: (){},
                  icon: const Icon(Iconsax.minus, color: Colors.white,),
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text('2',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),

              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.black,
                ),
                child: IconButton(
                  onPressed: (){},
                  icon: const Icon(Iconsax.add, color: Colors.white,),


                ),
              ),
            ],
          ),

          InkWell(
            onTap: (){},
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black87,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Center(
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'jakarta',
                          fontSize: 16),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
