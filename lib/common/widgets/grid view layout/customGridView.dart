import 'package:flutter/material.dart';



class customGridView extends StatelessWidget {
  const customGridView({
    super.key, required this.itemCount, this.mainAxisExtent = 210, required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          mainAxisExtent: mainAxisExtent ,
        ),
        itemBuilder: itemBuilder,
        );
  }
}
