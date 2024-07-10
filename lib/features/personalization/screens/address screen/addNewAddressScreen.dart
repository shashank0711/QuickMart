import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quickmart/common/widgets/common-widgets.dart';
import '../../../../common/widgets/custom app bar/customAppBar.dart';

class addNewAddressScreen extends StatelessWidget {
  const addNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:  const customAppBar(
        backArrow: true,
        title: Text(
          'Add New Address',
          style: TextStyle(
            fontFamily: 'jakarta',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),


      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [

                const SizedBox(height: 30,),

                const updateAddressField(hintText: 'Name', icon: Iconsax.user,),
                const updateAddressField(hintText: 'Phone Number', icon: Iconsax.mobile,),

                const Row(
                  children: [
                    Expanded(child: updateAddressField(hintText: 'Street', icon: Iconsax.building_31,)),
                    SizedBox(width: 20,),
                    Expanded(child: updateAddressField(hintText: 'Postal Code', icon: Iconsax.code,)),
                  ],
                ),

                const Row(
                  children: [
                    Expanded(child: updateAddressField(hintText: 'City', icon: Iconsax.building,)),
                    SizedBox(width: 20,),
                    Expanded(child: updateAddressField(hintText: 'State', icon: Iconsax.activity,)),
                  ],
                ),

                const updateAddressField(hintText: 'Country', icon: Iconsax.global,),

                const SizedBox(height: 40,),

                mainButton(size, (){}, 'Save'),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class updateAddressField extends StatelessWidget {
  const updateAddressField({
    super.key, required this.hintText, required this.icon,
  });

  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        style: const TextStyle(
            fontFamily: 'jakarta',
            fontWeight: FontWeight.bold,
            fontSize: 13,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(icon,color: Colors.black54,),
          hintText: hintText,
          contentPadding: const EdgeInsets.all(20),
          hintStyle: const TextStyle(fontFamily: 'jakarta', fontSize: 13, fontWeight: FontWeight.bold),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
        ),


      ),
    );
  }
}
