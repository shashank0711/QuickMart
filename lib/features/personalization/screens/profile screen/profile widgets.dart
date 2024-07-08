import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/Product Card/productImageBlock.dart';


//user profile tile to show the user name, image and email
class userProfileTile extends StatelessWidget {
  const userProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const productImageBlock(
        image: 'assets/images/userImage.jpg',
        height: 50,
        width: 50,
        boxfit: BoxFit.cover,
      ),

      title: const Text(
        'Shashank Singh',
        style: TextStyle(
          fontFamily: 'jakarta',
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
          wordSpacing: 3,
        ),
      ),

      subtitle: const Text(
        'shashanksingh07011@gmail.com',
        style: TextStyle(
          fontFamily: 'jakarta',
          fontSize: 12,
          color: Colors.black87,
          wordSpacing: 3,
        ),
        overflow: TextOverflow.ellipsis,
      ),

      trailing: IconButton(
        icon: const Icon(Iconsax.edit, color: Colors.black,),
        onPressed: () {},
      ),
    );
  }
}



//profile heading section
Widget profileSectionHeading(String heading){
  return Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 20),
    child: Text(
      heading,
      style: const TextStyle(
          fontFamily: 'jakarta',
          fontWeight: FontWeight.bold,
          fontSize: 14,
          wordSpacing: 3
      ),
    ),
  );
}



//profile menu tile
class profileMenuTile extends StatelessWidget {
  const profileMenuTile({
    super.key, required this.icon, required this.menuTitle,
  });

  final icon;
  final String menuTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        icon,
                        size: 30,
                        color: Colors.black54,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          menuTitle,
                          style: const TextStyle(
                              fontFamily: 'jakarta',
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),

                  const Icon(Icons.arrow_forward_ios,color: Colors.black54,)
                ],
              ),
            ),
            const Divider(
              color: Colors.black12,
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}
