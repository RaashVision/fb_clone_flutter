import 'package:flutter/material.dart';
import 'package:fb_clone_app/views/widgets/fb_circleicon_button.dart';

class FbCircleTitleButton extends StatelessWidget {

  final Icon icon;
  final VoidCallback clickCallback;
  final double radius;
  final double imgsize;
  final String title;

  FbCircleTitleButton({this.icon,this.clickCallback,this.radius = 90,this.imgsize =200.0,this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 2000),
     // height: 50,
      //width: 70,
      child: Column(
        children: <Widget>[

          ClipOval(
            child: Material(
              color: Colors.grey.withOpacity(0.4), // button color
              child: InkWell(
                splashColor: Colors.red, // inkwell color
                child: SizedBox(width: 49, height: 49, child: icon),
                onTap: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(title),),
          )
        ],
      ),
      
    );
  }

  void OnClick(){



  }
}