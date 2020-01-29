import 'package:flutter/material.dart';

class GeneralListView extends StatelessWidget{

  final Widget leadingicon;
  final Widget body;
  final Widget last;
  final double height;
  final int leadingratio;
  final int bodyratio;
  final int lastratio;
  final Decoration decoration;

  GeneralListView({this.leadingicon,this.body,this.last,this.height = 30,this.leadingratio,this.bodyratio,this.lastratio
  ,this.decoration});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      
      onTap: (){},
          child: Container(
        
        height: height,
        decoration: decoration,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[

            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0,0,0,0),
                child: leadingicon
              )
            ,flex: leadingratio,),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10,0,0,0),
                child: body,
              )
            ,flex: bodyratio,),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: last,
              )
            ,flex: lastratio,)

          ],
        ),



      ),
    );
  }




}

