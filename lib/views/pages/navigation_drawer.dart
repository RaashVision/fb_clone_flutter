import 'dart:developer' as prefix0;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fb_clone_app/settings.dart';
import 'package:fb_clone_app/views/pages/slack_profile_view.dart';
import 'package:fb_clone_app/views/shared/app_colors.dart';
import 'package:fb_clone_app/views/shared/images_path.dart';
import 'package:fb_clone_app/views/widgets/custom_appbar.dart';
import 'package:fb_clone_app/views/widgets/general_listview.dart';
import 'package:fb_clone_app/views/widgets/home_drawer.dart';
import 'package:fb_clone_app/views/widgets/onlinestatus_widget.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

typedef void MyCallback(String page_id);

class NavigationDrawer extends StatefulWidget {
  final String title;

  NavigationDrawer({Key key, this.title}) : super(key: key);
  @override
  _NavigationDrawer createState() => new _NavigationDrawer();
}

class _NavigationDrawer extends State<NavigationDrawer> {
  
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String currentpage =" First Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar:CustomAppBar(child :HomeAppBar(),height: MediaQuery.of(context).size.width/4,),
      body: Center(child: Text(currentpage)),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: HomeDrawerView(OnClick)
   
      ),
    );
  }


  Widget HomeAppBar(){

  return Column(
    children: <Widget>[
      AppBar(
               // backgroundColor: PrimaryColor,
                title: Text(widget.title, style: TextStyle(color: Colors.white),textAlign: TextAlign.start,),

                leading: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: InkWell(
                    child:new Container(
                              decoration:  BoxDecoration(
                                             color: Color.fromRGBO(211,211,211, 0.5),
                                            borderRadius: new BorderRadius.all(
                                              const Radius.circular(2.0))),
                              
                              height: 20,
                              width: 20,
                              child: Center(child: Text(widget.title[0])
                              
                              ),
                              //height:100.0,
                            ),

                    onTap: () {
                          _scaffoldKey.currentState.openDrawer();
                    },
                  ),
                ),

                actions: <Widget>[

                    IconButton(
                              icon: Icon(Icons.search),
                              onPressed: () {

                              int sa = 0;
                              },
                            ),

                  //_paddingPopup(context)

                   morePopup(context)
                ],
           
              ),
              //  Card(
              //    elevation: 2.0,
                                //child:
                                 Container(
                   height: 35,
                   width: MediaQuery.of(context).size.width,
                   child: GeneralListView(
                      leadingratio: 1,
                      bodyratio: 8,
                      lastratio: 1,
                      leadingicon: Padding(
                        padding: const EdgeInsets.fromLTRB(5.0,10.0,0,0),
                        child: OnlineStatusWidget(IsOnline: true,IsSleep: true,
                        backgroundcolor: Colors.grey[200],
                        height: 30,
                        width: 30,),
                      ),
                      body: Text("Thiyraash david"),
                      decoration: BoxDecoration(
                        color: Colors.grey[200]
                      ),
                      last: Icon(Icons.expand_more, color: Colors.grey)
                    ),
                 ),
            //   ),
              
    ],
  );


}


  Widget morePopup(BuildContext context) => PopupMenuButton<String>(

    icon:Icon( Icons.more_vert, color: Colors.white),
    //padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),

    itemBuilder: (context) => [


      PopupMenuItem(
        value: "profile",
        child:  GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SlackProfileView()),
                  );
              },
                  child: Container(
            //margin:  EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),

            //padding: EdgeInsets.fromLTRB( 70, 0,0,0),

            child:
            Row(

              children: <Widget>[
                Icon(Icons.person),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Thiyraash David',textAlign: TextAlign.start,),
                )

              ],
            ),

            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black26)))
           
          ),
        ),
        
      ),


      PopupMenuItem(
        value: "status",
        child:  Container(
          //margin:  EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),

          //padding: EdgeInsets.fromLTRB( 70, 0,0,0),

          child:
          Row(

            children: <Widget>[
              Icon(Icons.person),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Set a status'),
              )

            ],
          ),

         
        ),
      ),

      PopupMenuItem(
          value: "activity",
          child: Container(
            //margin:  EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),

            // padding: EdgeInsets.fromLTRB( 0, 0,0,0),

            child:  Row(

              children: <Widget>[
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Activity'),
                )

              ],
            ),
          ))
      ,
      PopupMenuItem(
        value: "items",
        child: Container(
          //margin:  EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),

          //padding: EdgeInsets.fromLTRB( 70, 0,0,0),

          child:Row(

            children: <Widget>[
              Icon(Icons.star_border),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Starred items'),
              )

            ],
          ),

        ),
      ),


      PopupMenuItem(
        value: "directory",
        child: Container(
          // margin:  EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
          // padding: EdgeInsets.fromLTRB( 70, 0,0,0),

          child:
          Row(

            children: <Widget>[
              Icon(Icons.library_books),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Directory'),
              )

            ],
          ),

        ),
      ),

        PopupMenuItem(
        value: "!disturb",
        child: Container(
          // margin:  EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
          // padding: EdgeInsets.fromLTRB( 70, 0,0,0),

          child:
          Row(

            children: <Widget>[
              Icon(Icons.notifications_none),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Do not Disturb'),
              )

            ],
          ),

        ),
      ),

       PopupMenuItem(
        value: "settings",
        child: Container(
          // margin:  EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
          // padding: EdgeInsets.fromLTRB( 70, 0,0,0),

          child:
          Row(

            children: <Widget>[
              Icon(Icons.settings),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Settings'),
              )

            ],
          ),

        ),
      ),
    ],

    onSelected: (value) {
    
    },


    elevation: 4,
    // padding: EdgeInsets.symmetric(horizontal: 50),
  );


  void OnClick(String selectedpage){

      setState(() {
        currentpage = selectedpage;
      });

  }







    


}



