import 'package:flutter/material.dart';
import 'package:fb_clone_app/models/direct_message_model.dart';
import 'package:fb_clone_app/views/shared/app_colors.dart';
import 'package:fb_clone_app/views/widgets/leading_directmessage_widget.dart';

class DirectMessageListView extends StatelessWidget{


  final DirectMessageModel directmodel;
  final double height;
  

  DirectMessageListView(this.directmodel,this.height);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      
      height: height,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[

          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0,0,0,0),
              child: LeadingDirectMessage(directmodel.user_photo_url,directmodel.isOnline,directmodel.isSleepTIme)
            )
          ,flex: 2,),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20,0,0,0),
              child: DM_Body(directmodel),
            )
          ,flex: 8,),

       

        ],
      ),



    );
  }

  Widget DM_LeadingImage(String imag_url){

    return Container(
      //height: 40,
      width: 40,
      child: Stack(

        children: <Widget>[

          Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          decoration:  BoxDecoration( 
            color: Colors.white,
            borderRadius: new BorderRadius.all(
              const Radius.circular(8.0))),

          child: ClipRRect(
                   borderRadius: new BorderRadius.circular(4.0),
                  child: Image.network(
                imag_url,
                fit: BoxFit.fill,
                
              ),
          ),

        ),

          OnlineStatus(true)

        ],
           
      ),
    );



  }

  Widget OnlineStatus(bool online){

    return ClipOval(
    
     
      child: Stack(
        children: <Widget>[

           ClipOval(
              
              child: Container(
                color: Colors.red,
                 height: 15, // height of the button
                 width: 15, // width of the button
                
              ),
            ),
         

         ClipOval(
                  child: Container(
                    color: Colors.green,
                    height: 10, // height of the button
                    width: 10, // width of the button
                    
                  ),
                ),
        
         
         

        ],
      ),
    );
  }

  Widget DM_Body(DirectMessageModel directmodel){

    return Column(
      mainAxisAlignment : MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        
            Text(directmodel.user_name == null?"error":directmodel.user_name ,textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),overflow:TextOverflow.ellipsis),
 
             Text(directmodel.recent_message== null?"error":directmodel.recent_message,textAlign: TextAlign.start,style: TextStyle(color: Colors.grey,),overflow:TextOverflow.ellipsis ,),

            Text(directmodel.recent_message_timeago== null?"error":directmodel.recent_message_timeago,overflow:TextOverflow.ellipsis,style: TextStyle(color: Colors.grey,)),
         
   
      ],
    );
  }
}

