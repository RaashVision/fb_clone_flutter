import 'package:flutter/material.dart';
import 'package:fb_clone_app/views/shared/app_colors.dart';
import 'package:fb_clone_app/views/shared/app_colors.dart' as prefix0;

class LeadingDirectMessage extends StatelessWidget{

final String imag_url;
final bool isOnline;
final bool isSleepTime;

LeadingDirectMessage(this.imag_url,this.isOnline,this.isSleepTime);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.transparent,
      child: Center(child: 
      Stack(

        children: <Widget>[

          Container(
            height: 50,
            width: 50,
          ),

            Container(
         decoration:  BoxDecoration( 
            color: Colors.grey,
            borderRadius: new BorderRadius.all(
              const Radius.circular(5.0))),
          height: 40,
          width: 40,
         // color: Colors.grey,
           child: ClipRRect(
                   borderRadius: new BorderRadius.circular(4.0),
                  child: Image.network(
                imag_url,
                fit: BoxFit.fill,
                
              ),
          ),

      )
      ,
      Positioned(
        left: 32,
        top: 30,
        child: OnlineStatusLogic(isOnline,isSleepTime))

        ],
      )
      
      
      
      ),


    );
  }

  Widget OnlineStatusLogic(bool online,bool sleeptime){

    return Container(
      height: 30,
      width: 30,
    
     
      child: online ? sleeptime ? OnlineAndSleepTime() : OnlineAndNotSleepTime() 
      : sleeptime ? NotOnlineAndSleepTime() :NotOnlineAndNotSleepTime()

    );
  }

  Widget OnlineAndSleepTime(){

    return  Stack(
        children: <Widget>[

           ClipOval(
              
              child: Container(
                color: PrimaryColor,
                 height: 15, // height of the button
                 width: 15, // width of the button
                
              ),
            ),
         

         Positioned(
           left: 2,
           top: 3,
                    child: 
                        ClipOval(
                        child: Container(
                          color: OnlinestatusColor,
                          height: 8, // height of the button
                          width: 8, // width of the button
                          
                        ),
                      ),
                     


                    
                    
                    
                    


         ),
        
          Positioned(
                        left: 7,
                        child: Text('Z', style:TextStyle(color:OnlinestatusColor,fontSize: 6,fontWeight: 
                        FontWeight.w900,backgroundColor: prefix0.PrimaryColor,),),
                      )
         

        ],
      );
  }

  Widget OnlineAndNotSleepTime(){

    return  Stack(
        children: <Widget>[

           ClipOval(
              
              child: Container(
                color: PrimaryColor,
                 height: 15, // height of the button
                 width: 15, // width of the button
                
              ),
            ),
         

         Positioned(
           left: 2,
           top: 3,
                    child: 
                        ClipOval(
                        child: Container(
                          color: OnlinestatusColor,
                          height: 8, // height of the button
                          width: 8, // width of the button
                          
                        ),
                      ),
                     
         ),
        
         

        ],
      ); 
  }

  Widget NotOnlineAndSleepTime(){

    return  Stack(
        children: <Widget>[

           ClipOval(
              
              child: Container(
                color: PrimaryColor,
                 height: 15, // height of the button
                 width: 15, // width of the button
                
              ),
            ),
         

         Positioned(
           left: 2,
           top: 3,
                    child: 
                        ClipOval(
                          
                        child: Container(
                              decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(),
                              borderRadius: BorderRadius.all(
                                    Radius.circular(5.0) //         <--- border radius here
                                ),
                            ),
                          //color: Colors.transparent,
                          height: 8, // height of the button
                          width: 8, // width of the button
                          
                        ),
                      ),
 
         ),
        
          Positioned(
                        left: 7,
                        child: Text('Z', style:TextStyle(color:Colors.black,fontSize: 6,fontWeight: 
                        FontWeight.w900,backgroundColor: prefix0.PrimaryColor,),),
                      )
         

        ],
      );
  }

  Widget NotOnlineAndNotSleepTime(){

    return  Stack(
        children: <Widget>[

           ClipOval(
              
              child: Container(
                color: PrimaryColor,
                 height: 15, // height of the button
                 width: 15, // width of the button
                
              ),
            ),
         

         Positioned(
           left: 2,
           top: 3,
                    child: 
                        ClipOval(
                        child: Container(
                              decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(),
                              borderRadius: BorderRadius.all(
                                    Radius.circular(5.0) //         <--- border radius here
                                ),
                            ),
                          //color: Colors.transparent,
                          height: 8, // height of the button
                          width: 8, // width of the button
                          
                        ),
                      ),
 
         ),
        
         
         

        ],
      );
  }




}
