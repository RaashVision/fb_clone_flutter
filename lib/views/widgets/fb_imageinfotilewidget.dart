import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:fb_clone_app/models/imagetile_model.dart';


class ImageInfoTileWidget extends StatelessWidget {

  final ImageTileModel imageInfoTileWidget;
  final Size size;

  ImageInfoTileWidget({this.imageInfoTileWidget,this.size});
  
  @override
  Widget build(BuildContext context) {
      return 
      Container(
        height: 100,
        width: 100,
        child: new Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                  new Center(
                  child:   Image.asset('profile.jpeg',fit: BoxFit.fill,              
                  height: size.height,
                  width: size.width,)
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.all(4.0),
              child:new Text(
                    "Hemalata",
                    style: const TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.start,
                  ),
            )
          ],
        ),
      );
   // );
  }
}