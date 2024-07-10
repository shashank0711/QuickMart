import 'package:flutter/material.dart';
import 'package:quickmart/common/widgets/common-widgets.dart';
import 'package:quickmart/common/widgets/Product%20Card/productCardVertical.dart';
import 'package:quickmart/common/widgets/grid%20view%20layout/customGridView.dart';
import '../../../../common/widgets/custom app bar/customAppBar.dart';
import '../../../../common/widgets/custom header design/customHeaderDesign.dart';
import 'home widgets/homeScreenWidgets.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header portion of the screen
            customHeaderDesign(
                size: size,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customAppBar(
                        backArrow: false,
                        title: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Day for Shopping.',
                              style: TextStyle(
                                  fontFamily: 'jakarta',
                                  fontSize: 13,
                                  color: Colors.black87),
                            ),
                            Text(
                              'Shashank Singh',
                              style: TextStyle(
                                  fontFamily: 'jakarta',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                        action: [
                          cartCounterIcon(
                            iconColor: Colors.black,
                            onpressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * .02,
                      ),

                      //search bar
                      searchbar(size, false),

                      SizedBox(
                        height: size.height * .03,
                      ),

                      //categories section
                      //heading
                      const Text(
                        'Popular Categories',
                        style: TextStyle(
                          fontFamily: 'jakarta',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),

                      SizedBox(
                        height: size.height * .025,
                      ),

                      //categories
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.white),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/icons/cloth.png',
                                          scale: 15,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 55,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'Fashion',
                                          style: TextStyle(
                                              fontFamily: 'jakarta',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),

                      SizedBox(
                        height: size.height * .025,
                      ),

                    ],
                  ),
                )),

            //main body of the screen
            //sliding banner with the indicators
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: Column(
                children: [
                  const slidingBanner(),
                  sectionHeading(size, 'Popular Categories', () {}, true),
                  customGridView(
                    itemCount: 6,
                    itemBuilder: (_, index) => const productCardVertical(),
                  )
                ],
              ),
            )

            //product cards
          ],
        ),
      ),
    );
  }
}
