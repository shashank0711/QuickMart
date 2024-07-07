import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


//main button for everything
Widget mainButton(Size size, onTapFunction, text){
  return InkWell(
    onTap: onTapFunction,
    child: Container(
      width: double.infinity,
      height: size.height * .07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black87,
      ),
      child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'jakarta',
                fontSize: 16),
          )),
    ),
  );
}



//for the circular design this widget is used
Widget circularContainer(Size size){
  return Container(
    height: size.height*.4,
    width: size.height*.4,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(size.height*.4),
      color: Colors.white.withOpacity(.3),
    ),
  );
}




//cart icon with its indicator
class cartCounterIcon extends StatelessWidget {
  const cartCounterIcon({
    super.key, required this.onpressed, this.iconColor,
  });

  final Color? iconColor;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onpressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Center(
              child: Text('2',
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.white
                ),),
            ),
          ),
        )
      ],
    );
  }
}



//Search bar
Widget searchbar(Size size, bool showBorder){
  return Container(
    width: size.width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        border: showBorder ? Border.all(color: Colors.grey) : null,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 13),
      child: Row(
        children: [
          const Icon(Iconsax.search_normal),
          SizedBox(
            width: size.width * .05,
          ),
          const Text(
            'Search in store',
            style: TextStyle(
                fontFamily: 'jakarta',
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    ),
  );
}




