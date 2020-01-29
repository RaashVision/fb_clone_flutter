import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fb_clone_app/models/imagetile_model.dart';
import 'package:fb_clone_app/viewmodels/fb_profile_viewmodel.dart';
import 'package:fb_clone_app/views/core/base_view.dart';
import 'package:fb_clone_app/views/widgets/fb_chips_layout_widget.dart';
import 'package:fb_clone_app/views/widgets/fb_circleicon_button.dart';
import 'package:fb_clone_app/views/widgets/fb_circleimage_button.dart';
import 'package:fb_clone_app/views/widgets/fb_circletitle_button.dart';
import 'package:fb_clone_app/views/widgets/fb_col_imagetitle_widget.dart';
import 'package:fb_clone_app/views/widgets/fb_generic_post_widget.dart';
import 'package:fb_clone_app/views/widgets/fb_gridview_widget.dart';
import 'package:fb_clone_app/views/widgets/fb_imageinfotilewidget.dart';
import 'package:fb_clone_app/views/widgets/fb_post_widget.dart';
import 'package:fb_clone_app/views/widgets/fb_rectangle_button.dart';
import 'package:fb_clone_app/views/widgets/fb_rectangleimage_button.dart';
import 'package:fb_clone_app/views/widgets/general_listview.dart';
import 'package:transparent_image/transparent_image.dart';
class FbProfileView extends StatefulWidget {
  @override
  _FbProfileViewState createState() => _FbProfileViewState();
}

class _FbProfileViewState extends State<FbProfileView> {
  
  List<ImageTileModel> list_imagetilemodel = [];
  @override
  void initState() {
    // TODO: implement initState

     
    //  list_imagetilemodel = [
    //    new ImageTileModel(imagebyte: null,"Feature coming soon","google lens clone ui",Size(200,200)),
    //     new ImageTileModel(null,"Feature coming soon","google lens clone ui",Size(200,200)),
    //     new ImageTileModel(null,"Feature coming soon","google lens clone ui",Size(200,200)),
    //    new ImageTileModel(null,"Feature coming soon","google lens clone ui",Size(200,200)),
    //     new ImageTileModel(null,"Feature coming soon","google lens clone ui",Size(200,200)),
    //     new ImageTileModel(null,"Feature coming soon","google lens clone ui",Size(200,200)),
    //  ];




    super.initState();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return BaseView<FbProfileViewModel>(
       // onModelReady: (model)=> model.getDefaultData(),
        builder: (context, model, child) =>  Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: FullView(),
          ),
        ));
  }

  Widget FullView(){

    return Column(
      children: <Widget>[
       Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,10,0,10),
                child: ListView(
                shrinkWrap: true, 
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,0),
                    child: ProfileCoverUpperView(),
                  ),
                  ProfileNameView(),
                  SelectionWidget(),
                  ProfilInfo(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,0),
                    child: FavPictureWidget(),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,10,10,0),
                    child: FbRectangleButton(btnname: "Edit Public Detail",),
                  ),
  
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,20,0,0),
                    child: Divider(height: 1,color: Colors.grey,),
                  )
                  ,Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,0),
                    child: OwnFriendWidgets(),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,10,10,10),
                    child: FbRectangleButton(btnname: "See all Details",btnclr: Colors.grey[300],textclr: Colors.black,),
                  ),
                  Container(height: 10,color: Colors.grey[400],),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,0),
                    child: FbPostWidget(),
                  ),
                   Container(height: 10,color: Colors.grey[400],),

                   Container(child: FbChipsLayoutWidget()),
                   Container(height: 10,color: Colors.grey[400],),
                   FbGenericPostWidget(),
                   Container(height: 10,color: Colors.grey[400],),
                ]),
              )
        )
      ],
    );
  }



  Widget ProfileCoverUpperView(){

    return Stack(
      children: <Widget>[
        Container(
          //margin: EdgeInsets.all(20.0),
          height:  MediaQuery.of(context).size.height/2.8,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0)
            ) 
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              CoverPicWidget()
     
            ],
          ),      
          ),

          Positioned(
            bottom:10,
            right: 110,
            child:ProfilePicWithUploadWidget() ,
          ),
      ],
    );

  }


  Widget ProfileNameView(){

      return Container(
        //margin: EdgeInsets.all(8.0),
        // hack textfield height
        padding: EdgeInsets.only(bottom: 30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Center(
          child: Text("Thiyraash David (RPT-Siddhar)",style: TextStyle(fontSize: 25),
            maxLines: 3,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20,8,20,0),
          child: Center(
            child: Text("Thotalum Jeichalum Messaya Muruku",style: TextStyle(fontSize: 15),
              maxLines: 3,
            ),
          ),
        ),
          ],
        )
      );


    return ConstrainedBox(
                constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height/15,
                    maxHeight: MediaQuery.of(context).size.height/8,
                    minWidth: MediaQuery.of(context).size.width,
                    maxWidth: MediaQuery.of(context).size.width

                ),

                child: Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,0),
                child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Flexible(child: Center(child: Text("Thiyraash David (RPT-Siddar)", style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,),))),
                        Flexible(child: Center(child: Padding(
                          padding: const EdgeInsets.fromLTRB(39,0,25,0),
                          child: Text("Thotalam Jeichalum Missaiya Murukuu",style: TextStyle(fontSize: 15),),
                        )))
                      ],
                    ),
              )
            );

   
  }

  Widget CoverPicWidget(){

    return  Stack(
                  children: <Widget>[
                    Container(
                  height:  MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),                  
                  ) 
                ),
                child: Image.asset('coverimage.jpg',fit: BoxFit.fill,),
                ),

                Positioned(
                  bottom: 15,
                  right: 15,
                  child: Container(
                    width: 35, height: 28,
                    decoration : BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(3.0)
                    )
                  ),
                  child:  Icon(Icons.camera_alt ,size: 20,),
                  ),)],);
           
  }

  Widget ProfilePicWithUploadWidget(){

    return Stack(

          children: <Widget>[

            FbCircleImageButton(imgpath: "profile.jpeg"),

        Positioned(
          bottom: 0,
          right: 0,       
          child: FbCircleIconButton(icon:Icon(Icons.camera_alt,size: 20,color: Colors.black,),radius: 25,))

        ],


        
   
   
   
    );

  }


  Widget SelectionWidget(){

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        Expanded(child: FbCircleTitleButton(icon: Icon(Icons.add,size: 20,),title: "Add to story",)),
        Expanded(child: FbCircleTitleButton(icon: Icon(Icons.remove_red_eye,size: 20,),title: "View As",)),
        Expanded(child: FbCircleTitleButton(icon: Icon(Icons.person_add,size: 20,),title: "Edit Profile",)),
        Expanded(child: FbCircleTitleButton(icon: Icon(Icons.more_horiz,size: 20,),title: "More",))

      ],
    );
  }


  Widget ProfilInfo(){
    
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.fromLTRB(0,8,0,8),
              child: GeneralListView(leadingicon: Icon(FontAwesomeIcons.briefcase,color: Colors.grey,size: 20,), 
              body: new RichText(
                  text: new TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      new TextSpan(text: 'Software Engineer at '),
                      new TextSpan(text: 'Optivolve Group Sdn Bhd', style: new TextStyle(fontWeight: FontWeight.bold ,)),
                    ],
                  ),
                ),
              leadingratio: 1,
              bodyratio: 9,),
            ),
             Padding(
               padding: const EdgeInsets.fromLTRB(0,8,0,8),
               child: GeneralListView(leadingicon: Icon(FontAwesomeIcons.graduationCap,color: Colors.grey,size: 20,), 
            body: new RichText(
                  text: new TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      new TextSpan(text: 'Studied Computer Engineer at '),
                      new TextSpan(text: 'University Tunku Abdul Rahman', style: new TextStyle(fontWeight: FontWeight.bold ,)),
                    ],
                  ),
                ),
            leadingratio: 1,
            bodyratio: 9,),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(0,8,0,8),
               child: GeneralListView(leadingicon: Icon(FontAwesomeIcons.graduationCap,color: Colors.grey,size: 20,), 
            body: new RichText(
                  text: new TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      new TextSpan(text: 'Went to '),
                      new TextSpan(text: 'SMK Methodist ACT Sitiawan', style: new TextStyle(fontWeight: FontWeight.bold ,)),
                    ],
                  ),
                ),
            leadingratio: 1,
            bodyratio: 9,),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(0,8,0,8),
               child: GeneralListView(leadingicon: Icon(FontAwesomeIcons.home,color: Colors.grey,size: 20,), 
            body: Text("Lives in Kuala Lumpur, Malaysia"),
            leadingratio: 1,
            bodyratio: 9,),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(0,8,0,8),
               child: GeneralListView(leadingicon: Icon(Icons.location_on,color: Colors.grey,size: 25,), 
            body: Text("From Sitiawan"),
            leadingratio: 1,
            bodyratio: 9,),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(0,8,0,8),
               child: GeneralListView(leadingicon: Icon(FontAwesomeIcons.solidHeart,color: Colors.grey,size: 20,), 
            body: Text("In a relationship"),
            leadingratio: 1,
            bodyratio: 9,),
             ),

             Padding(
               padding: const EdgeInsets.fromLTRB(0,8,0,8),
               child: GeneralListView(leadingicon: Icon(Icons.more_horiz), 
            body: Text("See Your About Info"),
            leadingratio: 1,
            bodyratio: 9,),
             )
            
          ],
        ),
    );
  }

  Widget FavPictureWidget(){

    return Container(
      
      // constraints: BoxConstraints(
      //     maxHeight: 300.0,
      //     maxWidth: 200.0,
      //     minWidth: 150.0,
      //     minHeight: 150.0
      // ),
      color: Colors.transparent,
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height/3.0,
      child:  GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        shrinkWrap: true,
        children: <Widget>[
          FbRectangleImageButton(imgpath: "profile.jpeg",imgsize: 20,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.only(
           topLeft: Radius.circular(8)
          ),),),
          FbRectangleImageButton(imgpath: "profile.jpeg",imgsize: 20,),
          FbRectangleImageButton(imgpath: "profile.jpeg",imgsize: 20,shape:RoundedRectangleBorder(borderRadius: BorderRadius.only(
           topRight: Radius.circular(8)
          ),),),
          FbRectangleImageButton(imgpath: "profile.jpeg",imgsize: 20,shape:RoundedRectangleBorder(borderRadius: BorderRadius.only(
           bottomLeft: Radius.circular(8)
          ),),),
          FbRectangleImageButton(imgpath: "profile.jpeg",imgsize: 20,),

        ]),
    );

  }

  Widget FriendsWidget(){

    return Container(
      color: Colors.white,
       width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child:  GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        children: <Widget>[

// //            FbRectangleImageButton(imgpath: "profile.jpeg",imgsize: 0,shape:RoundedRectangleBorder(borderRadius: BorderRadius.only(
// //            topRight: Radius.circular(8)
// //           ),),),
// // FbRectangleImageButton(imgpath: "profile.jpeg",imgsize: 20,shape:RoundedRectangleBorder(borderRadius: BorderRadius.only(
// //            topRight: Radius.circular(8)
// //           ),),),
// //           FbRectangleImageButton(imgpath: "profile.jpeg",imgsize: 20,shape:RoundedRectangleBorder(borderRadius: BorderRadius.only(
// //            topRight: Radius.circular(8)
// //           ),),),
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Text("dsds"),
// //           ),
// //            Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Text("dsds"),
// //           ),
// //            Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Text("dsds"),
// //           ),
// //           Container(
// //             height: 200,
// //             child: Column(
// //                 mainAxisSize: MainAxisSize.max,
// //                 crossAxisAlignment: CrossAxisAlignment.stretch,
// //                 children: <Widget>[
// //                   Expanded(flex: 8,
// //                   child: FbRectangleImageButton(imgpath: "profile.jpeg",imgsize: 200,
// //             shape:RoundedRectangleBorder(borderRadius: BorderRadius.only(
// //              topLeft: Radius.circular(8)
// //             ),),),
// //                   ),
// //               Flexible(flex:2,child: Align(child: Text("dsdsdsds")))
// //                 ],
// //               ),
// //           ),
         
     
             
          // FbRectangleImageButton(imgpath: "profile.jpeg",imgsize: 20,),
          // FbRectangleImageButton(imgpath: "profile.jpeg",imgsize: 20,shape:RoundedRectangleBorder(borderRadius: BorderRadius.only(
          //  topRight: Radius.circular(8)
          // ),),),
          // FbRectangleImageButton(imgpath: "profile.jpeg",imgsize: 20,shape:RoundedRectangleBorder(borderRadius: BorderRadius.only(
          //  bottomLeft: Radius.circular(8)
          // ),),),
          // Fb

           ImageInfoTileWidget( imageInfoTileWidget: ImageTileModel(title: "dsdsdsd",size:Size(100,100))),
           ImageInfoTileWidget( imageInfoTileWidget: ImageTileModel(title: "dsdsdsd",size:Size(100,100))),
           ImageInfoTileWidget( imageInfoTileWidget: ImageTileModel(title: "dsdsdsd",size:Size(100,100))),
        //  FbColImgTitleWidget(),
        //  FbColImgTitleWidget(),
        //  FbColImgTitleWidget(),

      //  FbColImgTitleWidget()
    
        ]),
    );


    // return 
    // Container(
    //   width: 150,
    //   height: 150,
    //   child:
    //   //  Card(
    //   //     elevation: 1.0,
    //   //           child:
    //         new StaggeredGridView.countBuilder(
    //         physics: NeverScrollableScrollPhysics(),
    //         //controller:scrollController ,
    //         primary: false,
    //         crossAxisCount: 4,
    //         mainAxisSpacing: 4.0,
    //         crossAxisSpacing: 4.0,
    //         itemBuilder: (context, index) => new ImageInfoTileWidget(imageInfoTileWidget:list_imagetilemodel[index]),
    //         staggeredTileBuilder: (index) => new StaggeredTile.fit(2),
    //       ),
    //     // ),
    // );



  }

  Widget FriendWidgetv2(){

      return Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[

               FbColImgTitleWidget(),
               FbColImgTitleWidget(),
               FbColImgTitleWidget(),

            ],
          ),
       Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[

               FbColImgTitleWidget(),
               FbColImgTitleWidget(),
               FbColImgTitleWidget(),

            ],
          ),
        ],
      );

    }

  Widget OwnFriendWidgets(){


    return Container(
      //height: 400,
      child: Column(
        
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,0),
            child:

           
            
            
            ListTile(
              contentPadding:  EdgeInsets.symmetric(horizontal: 8.0),
              title: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      Expanded(child: Text( "Friends",style: TextStyle(fontWeight: FontWeight.w700 ,fontSize: 22),textAlign: TextAlign.start,)),
                      Expanded(child: Text("Find Friends", style: TextStyle(fontWeight: FontWeight.w400 ,fontSize: 18,color: Colors.blue[300]),textAlign: TextAlign.end,)),
                    ],
                  ),

              ),
              subtitle: Text("937 friends",style:TextStyle(fontWeight: FontWeight.w300 ,fontSize: 15),),
             // trailing: Text("Find Friends",textAlign:TextAlign.center,),

              
            ),
          ),
          
           FriendsGridWidgetv3(),

           
        ], 
      ),
    );
  }



  Widget FriendsGridWidgetv3(){

    return Container(
      //height: 500,
      child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          shrinkWrap: true,
          children: <Widget>[
              FbGridViewWidget( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              FbGridViewWidget(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              FbGridViewWidget(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              FbGridViewWidget( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              FbGridViewWidget(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              FbGridViewWidget(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
          ]),
    );
    

  }
}