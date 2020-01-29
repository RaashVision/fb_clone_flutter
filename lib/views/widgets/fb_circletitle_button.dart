import 'package:flutter/material.dart';
import 'package:fb_clone_app/views/widgets/fb_circleicon_button.dart';

class FbCircleTitleButton extends StatelessWidget {

  final Icon icon;
  final VoidCallback clickCallback;
  final double radius;
  final double imgsize;
  final String title;
  final circlebuttoncolor;

  FbCircleTitleButton({this.icon,this.clickCallback,this.radius = 60,this.imgsize =200.0,this.title,this.circlebuttoncolor});

  @override
  Widget build(BuildContext context) {
    return Container(
     // duration: Duration(microseconds: 2000),
      height: 95,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

           Flexible(
             flex: 5,
                child: FloatingActionButton(
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  onPressed: () {},
                  elevation: 0.0,
                  child: icon, 
                )
                
              //   ClipOval(
              //   child: Material(
              //     color: Colors.grey.withOpacity(0.4), // button color
              //     child: InkWell(
              //       splashColor: Colors.grey, // inkwell color
              //       child: SizedBox(width: radius, height: radius, child: icon),
              //       onTap: () {},
              //     ),
              //   ),
              // ),
           ),
          
          Flexible(
            flex: 5,
                      child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(title ,textAlign: TextAlign.center,),),
            ),
          )
        ],
      ),
      
    );
  }

  void OnClick(){



  }
}