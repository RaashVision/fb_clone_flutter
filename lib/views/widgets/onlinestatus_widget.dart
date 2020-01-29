import 'package:flutter/material.dart';
import 'package:fb_clone_app/views/shared/app_colors.dart';

class OnlineStatusWidget extends StatelessWidget{

  final bool IsSleep;
  final bool IsOnline;
  final double height;
  final double width;
  final Color backgroundcolor;

  OnlineStatusWidget({this.IsSleep,this.IsOnline,this.height,this.width,this.backgroundcolor});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      
      //color: Colors.red,
     
      child: IsOnline ? IsSleep ? OnlineAndSleepTime() : OnlineAndNotSleepTime() 
      : IsSleep ? NotOnlineAndSleepTime() :NotOnlineAndNotSleepTime()

    );
  }



  Widget OnlineAndSleepTime(){

    return  Stack(
        children: <Widget>[

           ClipOval(
              
              child: Container(
                color: backgroundcolor,
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
                          height: 10, // height of the button
                          width: 10, // width of the button
                          
                        ),
                      ),
                     


                    
                    
                    
                    


         ),
        
          Positioned(
                        left: 7,
                        child: Text('Z', style:TextStyle(color:OnlinestatusColor,fontSize: 6,fontWeight: 
                        FontWeight.w900,backgroundColor: backgroundcolor,),),
                      )
         

        ],
      );
  }

  Widget OnlineAndNotSleepTime(){

    return  Stack(
        children: <Widget>[

           ClipOval(
              
              child: Container(
                color: backgroundcolor,
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
                color: backgroundcolor,
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
                        FontWeight.w900,backgroundColor: backgroundcolor,),),
                      )
         

        ],
      );
  }

  Widget NotOnlineAndNotSleepTime(){

    return  Stack(
        children: <Widget>[

           ClipOval(
              
              child: Container(
                color: backgroundcolor,
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


  double IconRAtio(double maincircle){

      return maincircle-2;
  }


}