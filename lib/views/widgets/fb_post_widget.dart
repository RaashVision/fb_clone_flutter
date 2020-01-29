import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fb_clone_app/views/widgets/general_listview.dart';

class FbPostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        UpperView(MediaQuery.of(context).size.width,MediaQuery.of(context).size.height),
        MiddleView(),
        Divider(height: 2,color: Colors.grey,),
        BottomView(MediaQuery.of(context).size.width,40)
      ],
    );
  }



Widget UpperView(double width ,double height){

  return ListTile(
              contentPadding:  EdgeInsets.symmetric(horizontal: 0.0),
              title: Container(
                  width: width,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                     // Expanded(flex: 7, child: 
                      
                      Text( "Posts",style: TextStyle(fontWeight: FontWeight.w700 ,fontSize: 22),textAlign: TextAlign.start,),
                      
                      //),
                      
                      // Expanded(flex: 3, child:
                      
                      Align(
                        alignment: Alignment.centerRight,
                            child: Container(
                              color: Colors.white,
                              width: 90,
                              child: Row(
                              mainAxisSize: MainAxisSize.max,
                           children: <Widget>[

                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                    width: 35, height: 28,
                                    decoration : BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(3.0)
                                    )
                                  ),
                                  child:  Icon(FontAwesomeIcons.filter ,size: 20,),
                                  ),
                               ),

                                Flexible(
                                    child: Container(
                                    width: 35, height: 28,
                                    decoration : BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(3.0)
                                    )
                                  ),
                                  child:  Icon(Icons.settings ,size: 20,),
                                  ),
                                )

                           ],
                        ),
                            ),
                      ),
                      //),
                    ],
                  ),

              ),
            
            );
}


Widget MiddleView(){

  return ListTile(
    contentPadding:  EdgeInsets.symmetric(horizontal: 0.0),
              title: Container(
                  //width: width,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                     // Expanded(flex: 7, child: 
                      
                      Container(
                        width: 40,
                        height: 40,
                        child: ClipOval(
                        child: Container(
                          child: Image.asset(
                            
                              'profile.jpeg',
                              fit: BoxFit.cover,
                            
                          ),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("What's in your mind?"),
                      ),
                      
                      
                      //),
                      
  //),
                    ],
                  ),

              ),
  );


}

Widget BottomView(double width ,double height){

  return Container(
    height: height,
    width: width,
    child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Expanded(
                child:  Container(
                   decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 2.0, color: Colors.grey[200]),
                      //bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
                    ),
                    color: Colors.white,
                  ),
                  child: FlatButton(
                           //elevation: 0.0,
                  child: 
                  // Center(
                  //      child: 
                       Row(
                         mainAxisSize: MainAxisSize.max,
                         mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.live_tv,color: Colors.red,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Live"),
                        )
                      ],
                    ),
                  //),
                  color: Colors.white,
                  //splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onPressed: (){},
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0))
              ),
                ),
            ),
            Expanded(
                child:  FlatButton(
                         //elevation: 0.0,
                child: 
                // Center(
                //      child: 
                     Row(
                       mainAxisSize: MainAxisSize.max,
                       mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.photo_album,color: Colors.green,),
                      Expanded(
                          child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Photos"),
                        ),
                      )
                    ],
                  ),
                //),
                color: Colors.white,
                //splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                focusColor: Colors.transparent,
                onPressed: (){},
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0))
              ),
            ),
             Expanded(
                child:  Container(
                          decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(width: 2.0, color: Colors.grey[200]),
                      //bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
                    ),
                    color: Colors.white,
                  ),
                  child: FlatButton(
                           //elevation: 0.0,
                           
                  child:
                  //  Center(
                  //      child:
                        Row(
                         mainAxisSize: MainAxisSize.max,
                         mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.flag,color: Colors.blue,),
                        Expanded(
                                                  child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Text("Life Events"),
                          ),
                        )
                      ],
                    ),
                //  ),
                  color: Colors.white,
                  //splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onPressed: (){},
               
              ),
                ),
            ),
           

          ]),
  );

  // return DefaultTabController(
  //       length: 3,
  //     child: TabBar(
  //         tabs: [
  //           Tab(icon: Icon(Icons.live_tv,color: Colors.red,),text: "Live",),
  //           Tab(icon: Icon(Icons.picture_in_picture_alt,color: Colors.green,),text: "Photo",),
  //           Tab(icon: Icon(Icons.flag,color: Colors.blue,),text: "Live Events",),
  //         ],
  //       ),
  // );

}

}