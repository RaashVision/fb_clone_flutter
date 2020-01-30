import 'package:fb_clone_app/views/widgets/fb_overall_reaction_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'fb_circleimage_button.dart';

class FbGenericPostWidget extends StatefulWidget {

  final String accountname = "Thiyraash David";
  final double radius = 13;
  
  @override
  _FbGenericPostWidgetState createState() => _FbGenericPostWidgetState();
}

class _FbGenericPostWidgetState extends State<FbGenericPostWidget> {

bool likebtn = false;
String facebook;
  @override
  Widget build(BuildContext context) {
   return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        UpperView(),

        Container(
          height: 400,
          color: Colors.orange,
        ),
        OverallReactionWidget(likebtn: likebtn,),
        Divider(height: 2,color: Colors.grey,),
        BottomView()

      ],
    );
  }


  Widget UpperView(){

    return ListTile(
    contentPadding:  EdgeInsets.symmetric(horizontal: 10.0),

              leading: Container(
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
              title: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
  
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Text(widget.accountname,style: TextStyle(fontWeight: FontWeight.w700 ,fontSize: 15),textAlign: TextAlign.start,),
                      ),

                      Icon(Icons.more_vert)

                    ],
                  ),

              ),
              subtitle: Row(
                mainAxisSize: MainAxisSize.max,
                
                children: <Widget>[

                  Text("2 hrs"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5,0,0,0),
                    child: Icon(Icons.group, size: 18,),
                  )

                ],
              ),
  );



  }

  // Widget OverallReactionWidget(){

  //   return Container(
  //     height: 50,
  //     child: ListTile(
  //       contentPadding: EdgeInsets.fromLTRB(8,0,0,0),
  //       title: Row(
  //         mainAxisSize: MainAxisSize.max,
  //         children: <Widget>[

  //           Stack(
  //             children: <Widget>[



  //               //    Padding(
  //               //    padding: const EdgeInsets.fromLTRB(66,0,0,0),
  //               //    child: FbCircleImageButton(radius: widget.radius,imgpath: "profile.jpeg",elav: 0.0,thicknessofborder: 3,),
  //               //  ),
  //               Padding(
  //                  padding: const EdgeInsets.fromLTRB(40,0,0,0),
  //                  child: FbCircleImageButton(radius: widget.radius,imgpath: "wow.png",elav: 0.0,thicknessofborder: 3,),
  //                ),

  //                Padding(
  //                  padding: const EdgeInsets.fromLTRB(20,0,0,0),
  //                  child: FbCircleImageButton(radius: widget.radius,imgpath: "love.png",elav: 0.0,thicknessofborder: 3,),
  //                ),

              
  //                Padding(
  //                   padding: const EdgeInsets.fromLTRB(0,0,0,0),
  //                   child:likebtn? FbCircleImageButton(radius: widget.radius,imgpath: "like.png",elav: 0.0,thicknessofborder: 3,): Container(),
  //                 ),
                

  //             ],
  //           ),
           
  //          Expanded(child: Text("You, Hemalatha Letchumanan and 1 other", style: TextStyle(fontSize: 13),))


  //         ],
  //       ),
       
  //     ),
  //   );
  // }

 Widget BottomView(/*double width ,double height*/){

  return Container(
    // height: height,
    // width: width,
    child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Expanded(
                child:  Container(
                   decoration: BoxDecoration(
                    // border: Border(
                    //   right: BorderSide(width: 2.0, color: Colors.grey[200]),
                    //   //bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
                    // ),
                    color: Colors.white,
                  ),
                  child: FlatButton(
                           //elevation: 0.0,
                  child: 
                  // Center(
                  //      child: 
                       Row(
                         mainAxisSize: MainAxisSize.max,
                         // crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //Icon(FontAwesomeIcons.link,color: Colors.grey,),


            //   Expanded(
            //    child: ReactiveButton(
            //   child: Container(
            //     decoration: BoxDecoration(
            //       border: Border.all(
            //         color: Colors.black,
            //         width: 1.0,
            //       ),
            //       color: Colors.white,
            //     ),
            //     width: 80.0,
            //     height: 40.0,
            //     child: Center(
            //       child: facebook == null
            //           ? Text('click')
            //           : Image.asset(
            //                 'images/$facebook.png',
            //                 width: 32.0,
            //                 height: 32.0,
            //             ),
            //     ),
            //   ),
            //   icons: _facebook, //_flags,
            //   onTap: () {
            //     print('TAP');
            //   },
            //   onSelected: (ReactiveIconDefinition button) {
            //     setState(() {
            //       facebook = button.code;
            //     });
            //   },
            //   iconWidth: 32.0,
            // ),
            //              ),



                        likeBtn(),
                       

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Like"),
                        )
                      ],
                    ),
                  //),
                  color: Colors.white,
                  //splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onPressed: (){

                      setState(() {
                        likebtn  = likebtn?false:true;
                      });

                  },
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
                      Icon(Icons.comment,color: Colors.grey,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Comment"),
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
                     // left: BorderSide(width: 2.0, color: Colors.grey[200]),
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
                        Icon(Icons.share,color: Colors.grey,),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text("Shared"),
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

Widget likeBtn(){
   return likebtn? Container(height: 20,width: 20, child: Image.asset('clickedlikebtn.png',fit: BoxFit.fill,))
                          : Container(height: 25,width: 25, child: Image.asset('likegrey.png',fit: BoxFit.fill,));
}


}