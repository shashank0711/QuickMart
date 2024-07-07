import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quickmart/common/widgets/common-widgets.dart';
import 'package:quickmart/features/shop/screens/store/storeWidgets.dart';
import '../../../../common/widgets/Product Card/productCardVertical.dart';
import '../../../../common/widgets/custom app bar/customAppBar.dart';
import '../../../../common/widgets/custom tab bar/customTabBar.dart';
import '../home/home widgets/homeScreenWidgets.dart';

class storeScreen extends StatelessWidget {
  const storeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: customAppBar(
          title: const Text(
            'Store',
            style: TextStyle(
              fontFamily: 'jakarta',
              fontWeight: FontWeight.bold,
            ),
          ),
          action: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: cartCounterIcon(onpressed: () {}),
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                expandedHeight: 370,
                backgroundColor: Colors.white,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [

                      //search bar
                      searchbar(size, true),

                      SizedBox(
                        height: size.height * .02,
                      ),

                      //featured brands
                      sectionHeading(size, 'Featured Brands', () {}),

                      GridView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            mainAxisExtent: 70,
                          ),
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    color: Colors.white),
                                child: brandCard(
                                    'assets/icons/brand icons/sony.png',
                                    'Sony',
                                    '256 items'),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
                bottom: const customTabBar(
                  tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Home Decor'),
                    ),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            children: [
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        //popular brand showcase with their products block
                        const brandShowcaseBlock(
                            brandIcon: 'assets/icons/brand icons/sony.png',
                            brandName: 'Sony',
                            itemCountText: '256 items',
                            productImages: [
                              'assets/images/camera/camera1.png',
                              'assets/images/camera/camera2.png',
                              'assets/images/camera/camera3.png',
                            ]
                        ),

                        //you might also like text
                        sectionHeading(size, 'You Might Like', (){}),

                        //multiple more products
                        GridView.builder(
                          itemCount: 3,
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
                  ),
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
