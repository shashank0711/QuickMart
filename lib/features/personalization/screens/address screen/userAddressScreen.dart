import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/custom app bar/customAppBar.dart';
import 'addNewAddressScreen.dart';

class userAddressScreen extends StatelessWidget {
  const userAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        onPressed: () => Get.to(() => const addNewAddressScreen()),
        child: const Icon(Iconsax.add, color: Colors.white,),
      ),

      appBar: const customAppBar(
        backArrow: true,
        title: Text(
          'Addresses',
          style: TextStyle(
            fontFamily: 'jakarta',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),

      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                SizedBox(height: 30,),

                addressBlock(selectedAddress: true),
                addressBlock(selectedAddress: false),
                addressBlock(selectedAddress: false),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class addressBlock extends StatelessWidget {
  const addressBlock({
    super.key, required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: selectedAddress ? Colors.cyan.shade100 : Colors.transparent,
        border: Border.all(
            color: selectedAddress ? Colors.transparent : Colors.grey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Stack(
          children: [
            Positioned(
              top: 0,
                right: 10,
                child: Icon(selectedAddress ? Iconsax.tick_circle5 : null)),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Shashank Singh',style: TextStyle(
                    fontFamily: 'jakarta',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    wordSpacing: 3,
                  color: Colors.black87
                ),),
                Text('+918960260971',style: TextStyle(
                  fontFamily: 'jakarta',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 13,
                ),),
                Text('Ajay Kumar Garg Engineering College, Adhyatmik nagar, Ghaziabad, Uttar Pradesh ',style: TextStyle(
                    fontFamily: 'jakarta',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 13,
                    wordSpacing: 3
                ),),
              ],
            ),
          ],
        )
      ),
    );
  }
}
