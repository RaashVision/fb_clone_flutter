import 'package:fb_clone_app/views/widgets/fb_circleimage_button.dart';
import 'package:flutter/material.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
class OverallReactionWidget extends StatelessWidget {

  double radius = 13;
  bool likebtn ;

  OverallReactionWidget({this.likebtn = false,this.radius = 13});
  @override
  Widget build(BuildContext context) {
    return Container(
       //height: 50,
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(likebtn?10:20,0,0,0),
        title: RowSuper(
          children: <Widget>[
            RowSuper(
              mainAxisSize: MainAxisSize.min,
              innerDistance: -12.0,
              invert: true,
              children: <Widget>[

                // Stack(
                //   children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,0,0),
                        child:likebtn? FbCircleImageButton(radius: radius,imgpath: "like.png",elav: 0.0,thicknessofborder: 3,): Container(),
                      ),

                    Padding(
                       padding: const EdgeInsets.fromLTRB(0,0,0,0),
                       child: FbCircleImageButton(radius: radius,imgpath: "wow.png",elav: 0.0,thicknessofborder: 3,),
                     ),

                     Padding(
                       padding: const EdgeInsets.fromLTRB(0,0,0,0),
                       child: FbCircleImageButton(radius: radius,imgpath: "love.png",elav: 0.0,thicknessofborder: 3,),
                     ),

                    
                   
                    

                //   ],
                // ),
               
               //Expanded(child: Text("You, Hemalatha Letchumanan and 1 other", style: TextStyle(fontSize: 13),))


              ],
            ),
            Text("You, Hemalatha Letchumanan and 1 other", style: TextStyle(fontSize: 13),)
          ],
        ),
       
      ),
    );
    
  }
}