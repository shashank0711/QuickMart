import 'package:flutter/material.dart';
import 'package:quickmart/common/widgets/common-widgets.dart';
import 'package:quickmart/features/shop/screens/store/storeWidgets.dart';
import '../../../../common/widgets/category tab view/categoryTabView.dart';
import '../../../../common/widgets/custom app bar/customAppBar.dart';
import '../../../../common/widgets/custom tab bar/customTabBar.dart';
import '../../../../common/widgets/grid view layout/customGridView.dart';
import '../home/home widgets/homeScreenWidgets.dart';

class storeScreen extends StatelessWidget {
  const storeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: customAppBar(
          title: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Store',
              style: TextStyle(
                fontFamily: 'jakarta',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          action: [
            Padding(
              padding: const EdgeInsets.all(10),
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
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      //search bar
                      searchbar(size, true),

                      SizedBox(
                        height: size.height * .02,
                      ),

                      //featured brands heading section
                      sectionHeading(size, 'Featured Brands', () {}, true),

                      //featured brands cards
                      customGridView(
                        itemCount: 4,
                        mainAxisExtent: 70,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(10),
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
                        },
                      ),
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
              categoryTabView(size: size),
              categoryTabView(size: size),
              categoryTabView(size: size),
              categoryTabView(size: size),
              categoryTabView(size: size),

            ],
          ),
        ),
      ),
    );
  }
}
