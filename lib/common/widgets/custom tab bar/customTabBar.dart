import 'package:flutter/material.dart';



class customTabBar extends StatelessWidget implements PreferredSizeWidget{
  const customTabBar({
    super.key, required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        tabs: tabs,
        isScrollable: true,
        indicatorColor: Colors.cyan,
        labelColor: Colors.cyan,
        unselectedLabelColor: Colors.grey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
