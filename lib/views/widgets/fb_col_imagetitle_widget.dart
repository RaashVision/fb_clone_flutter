import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fb_rectangleimage_button.dart';

class FbColImgTitleWidget extends StatelessWidget {

  FbColImgTitleWidget();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,0,0,0),
      child: Container(
                    height: 150,
                    width: 120,
                    child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(flex :8,child:  FbRectangleImageButton(imgpath: "profile.jpeg",shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(
                             Radius.circular(8.0)
                            ),),),),
                           Flexible(flex :2,child: Text("Jason Arwin" , maxLines: 2,)),
                        ]
                      ),
                  ),
    );
  }
}