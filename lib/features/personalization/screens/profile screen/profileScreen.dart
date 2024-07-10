import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quickmart/common/widgets/common-widgets.dart';
import 'package:quickmart/common/widgets/custom%20app%20bar/customAppBar.dart';
import 'package:quickmart/common/widgets/custom%20header%20design/customHeaderDesign.dart';
import 'package:quickmart/features/personalization/screens/address%20screen/userAddressScreen.dart';
import 'package:quickmart/features/personalization/screens/order%20history/orderHistory.dart';
import 'package:quickmart/features/personalization/screens/profile%20screen/profile%20widgets.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            customHeaderDesign(
              size: size,
              child: Column(
                children: [
                  //account heading
                  const customAppBar(
                    title: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Account',
                        style: TextStyle(
                          fontFamily: 'jakarta',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: size.height * .02,
                  ),

                  //name, email and logout button block
                  const userProfileTile(),

                  SizedBox(
                    height: size.height * .05,
                  ),
                ],
              ),
            ),

            //body of the screen
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //personal information
                  profileSectionHeading('Personal Information'),
                  profileMenuTile(icon: Iconsax.box, menuTitle: 'Shipping Address',onTap: () => Get.to(() => const userAddressScreen()) ),
                  const profileMenuTile(icon: Iconsax.card_tick_1, menuTitle: 'Payment Method'),
                  profileMenuTile(icon: Iconsax.receipt_edit, menuTitle: 'Order History',onTap: () => Get.to(() => const orderHistoryScreen())),

                  const SizedBox(height: 10,),

                  //Support and information
                  profileSectionHeading('Support & Information'),
                  const profileMenuTile(icon: Iconsax.security_user, menuTitle: 'Privacy Policy'),
                  const profileMenuTile(icon: Iconsax.document_text, menuTitle: 'Terms & Conditions'),
                  const profileMenuTile(icon: Iconsax.message_question, menuTitle: 'FAQs'),

                  const SizedBox(height: 10,),

                  //Account management
                  profileSectionHeading('Account Management'),
                  const profileMenuTile(icon: Iconsax.lock, menuTitle: 'Change Password'),
                  const profileMenuTile(icon: Iconsax.document_upload, menuTitle: 'Upload Data'),

                  const SizedBox(height: 30,),

                  mainButton(size, (){}, 'Logout'),

                  const SizedBox(height: 30,),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
