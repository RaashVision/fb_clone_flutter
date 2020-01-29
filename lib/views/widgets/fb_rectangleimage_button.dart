import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FbRectangleImageButton extends StatelessWidget {

  final Uint8List radius;
  final String imgpath;
  final double imgsize;
  final ShapeBorder shape;
  final VoidCallback clickCallback;

  FbRectangleImageButton({this.radius,this.imgpath,this.imgsize,this.clickCallback,this.shape});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Material(        
          elevation: 1.0,
         // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shape: shape,
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          child:  Ink.image(
                  image: AssetImage("profile.jpeg"),
                  fit: BoxFit.fill,                         
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.black.withOpacity(0.30),
                    onTap: () {
                      clickCallback();
                    },
                  ),
                )
             ),
    );
  }
}