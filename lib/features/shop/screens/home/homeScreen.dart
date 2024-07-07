import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quickmart/common/widgets/common-widgets.dart';
import 'package:quickmart/common/widgets/Product%20Card/productCardVertical.dart';
import '../../../../common/widgets/Curved Edges/curvedEdgesWidget.dart';
import '../../../../common/widgets/custom app bar/customAppBar.dart';
import 'home widgets/homeScreenWidgets.dart';



class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //header portion of the screen
              curvedEdgesWidget(
                size: size,
                //primary header of the screen
                child: Container(
                  color: Colors.cyan.shade200,
                  child: SizedBox(
                    height: size.height * .42,
                    child: Stack(
                      children: [
                        //for custom design of the application two positioned widgets are used
                        Positioned(
                            top: -150,
                            right: -170,
                            child: circularContainer(size)),
                        Positioned(
                            top: 100,
                            right: -230,
                            child: circularContainer(size)),

                        //main content of the header part
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customAppBar(
                                title: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Good Day for Shopping.',
                                      style: TextStyle(
                                          fontFamily: 'jakarta', fontSize: 13, color: Colors.black87),
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
                                        padding:
                                            const EdgeInsets.only(right: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
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
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: Text(
                                                  'Fashion',
                                                  style: TextStyle(
                                                      fontFamily: 'jakarta',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    }),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              //main body of the screen
              //sliding banner with the indicators
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                child: Column(
                  children: [
                    const slidingBanner(),
                    sectionHeading(size, 'Popular Categories', () {}),
                    GridView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 30,
                        crossAxisSpacing: 15,
                        mainAxisExtent: 210,
                      ),
                      itemBuilder: (_, index) => productCardVertical(),
                    ),
                  ],
                ),
              )

              //product cards
            ],
          ),
        ),
      ),
    );
  }
}
