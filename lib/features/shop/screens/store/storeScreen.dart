import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickmart/common/widgets/common-widgets.dart';
import '../home/home widgets/homeScreenWidgets.dart';

class storeScreen extends StatelessWidget {
  const storeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Store',
          style: TextStyle(
            fontFamily: 'jakarta',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
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
              expandedHeight: 440,
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
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        mainAxisExtent: 70,
                      ),
                      itemBuilder: (_, index) => GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/cloth.png',
                                scale: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      brandNameWithVerifiedIcon(
                                        brandName: 'Nike',
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Text(
                                        '256 items',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontFamily: 'jakarta',
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),)






                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
