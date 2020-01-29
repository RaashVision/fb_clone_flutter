import 'package:flutter/material.dart';

class FbCircleImageButton extends StatelessWidget {

  final String imgpath;
  final VoidCallback clickCallback;
  final double radius;
  final double imgsize;
  final double elav;
  final double thicknessofborder ;

  FbCircleImageButton({this.imgpath,this.clickCallback,this.radius = 90,this.imgsize =200.0,this.elav = 4.0,this.thicknessofborder = 5.0});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: Colors.white,
        radius: radius,
        child:  CircleAvatar(
          radius: radius - thicknessofborder,
          child: Material(
        elevation: elav,
        shape: CircleBorder(),
        clipBehavior: Clip.hardEdge,
        color: Colors.transparent,
        child: Ink.image(
          image: AssetImage(this.imgpath),
          fit: BoxFit.cover,
          width: imgsize,
          height: imgsize,
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.black.withOpacity(0.30),
            onTap: () {

              clickCallback();
            },
          ),
              ),
            ),
        )
    );
  }
}