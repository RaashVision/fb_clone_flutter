import 'package:flutter/material.dart';

class FbRectangleButton extends StatelessWidget {

  final String btnname;
  final Color textclr;
  final Color btnclr;

  FbRectangleButton({this.btnname,this.textclr,this.btnclr});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
                     //elevation: 0.0,
    child: Text(btnname,style: TextStyle(color: textclr == null ? Colors.blue[500] :textclr),),
    color: btnclr == null? Colors.blue[50] :btnclr,
    //splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    focusColor: Colors.transparent,
    onPressed: (){},
    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0))
  );
  }
}