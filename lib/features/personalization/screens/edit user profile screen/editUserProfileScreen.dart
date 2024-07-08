import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:quickmart/common/widgets/Product%20Card/productImageBlock.dart';
import 'package:quickmart/common/widgets/custom%20app%20bar/customAppBar.dart';
import 'package:quickmart/features/personalization/screens/profile%20screen/profile%20widgets.dart';

class editUserProfileScreen extends StatelessWidget {
  const editUserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //image and change photo block
                  const customAppBar(
                    title: Text(
                      'Profile',
                      style: TextStyle(
                        fontFamily: 'jakarta',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10,),

                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey.shade300),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/images/userImage.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Change Profile photo',
                              style: TextStyle(
                                // color: Colors.cyan,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'jakarta',
                              ),
                            ))
                      ],
                    ),
                  ),

                  const SizedBox(height: 10,),

                  const Divider(),

                  const SizedBox(height: 10,),

                  profileSectionHeading('Profile Information'),

                  const SizedBox(height: 20,),

                  //field to show the name of the user
                  nameEmailEditTile('Name :', 'Shashank Singh', (){}),
                  const SizedBox(height: 30,),
                  nameEmailEditTile('Email :', 'shashanksingh07011@gmail.com', (){}),

                  const SizedBox(height: 30,),
                  const Divider(),
                  const SizedBox(height: 20,),

                  Center(
                    child:  TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Delete Account',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'jakarta',
                          ),
                        )),
                  )

                ],
              ),
            ),
          ),
        ));
  }
}
