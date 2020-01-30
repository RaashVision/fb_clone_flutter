import 'package:fb_clone_app/views/widgets/fb_circleimage_button.dart';
import 'package:flutter/material.dart';

class OverallReactionWidget extends StatelessWidget {

  double radius = 13;
  bool likebtn ;

  OverallReactionWidget({this.likebtn = false,this.radius = 13});
  @override
  Widget build(BuildContext context) {
    return Container(
       //height: 50,
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(8,0,0,0),
        title: Row(
          mainAxisSize: MainAxisSize.min,
         // innerDistance: -20.0,
          children: <Widget>[

            Stack(
              children: <Widget>[
                Padding(
                   padding: const EdgeInsets.fromLTRB(40,0,0,0),
                   child: FbCircleImageButton(radius: radius,imgpath: "wow.png",elav: 0.0,thicknessofborder: 3,),
                 ),

                 Padding(
                   padding: const EdgeInsets.fromLTRB(20,0,0,0),
                   child: FbCircleImageButton(radius: radius,imgpath: "love.png",elav: 0.0,thicknessofborder: 3,),
                 ),

              
                 Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,0),
                    child:likebtn? FbCircleImageButton(radius: radius,imgpath: "like.png",elav: 0.0,thicknessofborder: 3,): Container(),
                  ),
                

              ],
            ),
           
           Expanded(child: Text("You, Hemalatha Letchumanan and 1 other", style: TextStyle(fontSize: 13),))


          ],
        ),
       
      ),
    );
    
  }
}