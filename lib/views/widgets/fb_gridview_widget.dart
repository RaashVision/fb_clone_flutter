import 'package:flutter/material.dart';
import 'package:fb_clone_app/views/widgets/fb_rectangleimage_button.dart';

class FbGridViewWidget extends StatelessWidget {

  final double widthds = 300.0;
  final ShapeBorder shape;
  final String title;
  final String assetimgpath;

  FbGridViewWidget({this.shape,this.title = "Thiyraash David",this.assetimgpath = "profile.jpeg"});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        // height: widthds+50,
        // width: widthds,
        child: Column(
          children: <Widget>[

            Expanded(flex:9,child: FbRectangleImageButton(imgpath: assetimgpath,shape: shape,),),
            Expanded(flex:1,child: SizedBox(child: Text(title,maxLines: 2,)),),
          ],
        ),
        
      ),
    );
  }
}