import 'package:flutter/material.dart';


class customAppBar extends StatelessWidget implements PreferredSizeWidget{
  const customAppBar({
    super.key, this.title, this.action, this.backArrow = false,
  });

  final Widget? title;
  final List<Widget>? action;
  final bool backArrow;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: backArrow ? true : false,
        title: title,
        actions: action,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
