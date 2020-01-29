
   
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget child;


  const CustomAppBar({
    Key key,
    @required this.height,@required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: child
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);

}