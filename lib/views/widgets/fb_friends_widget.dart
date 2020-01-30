import 'package:fb_clone_app/viewmodels/fb_friends_viewmodel.dart';
import 'package:fb_clone_app/views/core/base_view.dart';
import 'package:fb_clone_app/views/widgets/fb_col_imagetitle_widget.dart';
import 'package:fb_clone_app/views/widgets/fb_gridview_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class _Example01Tile extends StatelessWidget {
  const _Example01Tile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {},
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class FbFriendsWidget extends StatelessWidget {

  Size fullSize;
  Orientation orientation;

  @override
  Widget build(BuildContext context) {

    fullSize = MediaQuery.of(context).size;
    orientation = MediaQuery.of(context).orientation;

    return BaseView<FbFriendsViewModel>(
       // onModelReady: (model)=> model.getDefaultData(),
        builder: (context, model, child) =>  Container(
        // height: 30,
          child: fullView(fullSize)));
  
  }

  Widget fullView(Size fullscreensize){

    return  Column(
        mainAxisSize: MainAxisSize.min,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Flexible(
                      child: Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,0),
              child:
              ListTile(
                contentPadding:  EdgeInsets.symmetric(horizontal: 8.0),
                title: Container(
                    width: fullscreensize.width,
              
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
          ),
          
            Flexible(child: friendsGridWidget()),

           
        ], 
      );
    

  }

  Widget friendsGridWidget(){

    double itemHeight = 0.0;
    if(orientation == Orientation.landscape){

      itemHeight = (fullSize.height - kToolbarHeight - 24);

    }
    else{
        itemHeight = (fullSize.height - kToolbarHeight - 24)/2.8;
    }
    

      
     final double itemWidth = fullSize.width / 2;

    return Container(
      //height: 500,
      child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          shrinkWrap: true,
          childAspectRatio: (itemWidth / itemHeight),
          children: <Widget>[
              FbGridViewWidget( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              FbGridViewWidget(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              FbGridViewWidget(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              FbGridViewWidget( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              FbGridViewWidget(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              FbGridViewWidget(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
          ]),
    );
    

    // return  Container(
    //   //height: 400,
    //   child: StaggeredGridView.countBuilder(
    //         physics: NeverScrollableScrollPhysics(),
    //         shrinkWrap: true,
    //         //controller:scrollController ,
    //         primary: false,
    //         crossAxisCount: 6,
    //         mainAxisSpacing: 4.0,
    //         crossAxisSpacing: 4.0,
    //         itemBuilder: (context, index) => Container( child: FbColImgTitleWidget()),
    //         staggeredTileBuilder: (index) => new StaggeredTile.fit(3),
    //       ),
    // );
     




  }
}