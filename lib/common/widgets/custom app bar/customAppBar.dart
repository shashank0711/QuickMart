import 'package:flutter/material.dart';


class customAppBar extends StatelessWidget implements PreferredSizeWidget{
  const customAppBar({
    super.key, this.title, this.action,
  });

  final Widget? title;
  final List<Widget>? action;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: title,
      actions: action,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
