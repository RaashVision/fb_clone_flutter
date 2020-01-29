import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fb_clone_app/viewmodels/home_drawer_viewmodel.dart';
import 'package:fb_clone_app/views/core/base_view.dart';
import 'package:fb_clone_app/views/shared/app_colors.dart' as prefix0;
import 'package:fb_clone_app/views/shared/app_colors.dart';
import 'package:fb_clone_app/views/widgets/custom_appbar.dart';
import 'package:fb_clone_app/views/widgets/custom_dropdown.dart' as customdropdown;
import 'package:fb_clone_app/views/widgets/directmessage_listview.dart';
import 'package:fb_clone_app/views/widgets/general_listview.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class HomeDrawerView extends StatefulWidget {

  final void Function(String) callback;

  HomeDrawerView(this.callback);

  @override
  _HomeDrawerView createState() => new _HomeDrawerView();
}

class _HomeDrawerView extends State<HomeDrawerView> {
  
  String _value = "1";
  double headerheight = 40.0;
  @override
  Widget build(BuildContext context) {
     return BaseView<HomeDrawerViewModel>(
        onModelReady: (model)=> model.getDefaultData(),
        builder: (context, model, child) =>  Scaffold(
          backgroundColor: PrimaryColor,
          appBar: CustomAppBar(height:85.0,child: UIForAppBAr(),),
          body: _value =="1"?Home(model) :DirectMessage(model)
          //SingleChildScrollView(
              //child:
             
        )


     );
       
     
  }

   DropdownButton _normalDown() => DropdownButton<String>(
        items: [
          DropdownMenuItem(
            value: "1",
            child: Text(
              "Home",
            ),
          ),
          DropdownMenuItem(
            value: "2",
            child: Text(
              "Direct Message",
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
        value: _value,
      );



Widget UIForAppBAr(){

  return  Column(
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                  
                  Flexible(
                   
                      child: 

                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                              child:  
                              
                              
                              
                              customdropdown.DropdownButtonHideUnderline(
                                  
                                      child: customdropdown.CustomDropdownButton<String>(
                                       
                                      icon: Opacity(opacity: 0.0,child: Icon(Icons.arrow_drop_down)),
                                               // isExpanded: true,
                                      items: [
                                      customdropdown.DropdownMenuItem(
                                        value: "1",
                                        child:Row(
                                      children: <Widget>[
                                        Text(
                                          "Home",
                                        ),
                                        Icon(Icons.arrow_drop_down,color: Colors.white,)
                                      ],
                                    ),
                                      ),
                                      customdropdown.DropdownMenuItem(
                                        value: "2",
                                        child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Direct Message",
                                        ),
                                        Icon(Icons.arrow_drop_down,color: Colors.white,)
                                      ],
                                    ),
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                    
                                    value: _value,
                                   style: TextStyle(color: Colors.white,decorationColor: Colors.white,fontSize: 18) ,

                                      
                                  ),
                       ),
                        
                            )
                
                 ,flex: 8,),
                  Expanded(
                     child: Align(
                       alignment: Alignment.centerRight,
                                            child: IconButton(
                        icon: Icon(Typicons.th_large_outline,color: Colors.white,size: 20,),
                        onPressed: () => null,
                    ),
                     ),
                 flex: 2,),
                ]),
           
          


        Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8,0,8,0),
                    child: 

                      GeneralListView(
                        leadingicon: Icon(Icons.list,color: Colors.grey,),
                        body: Text('Jump to..',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                        decoration: BoxDecoration(
                        color: const Color.fromRGBO(50,0,50, 1.0),
                        borderRadius: new BorderRadius.all(
                           const Radius.circular(5.0))),
                        leadingratio: 1,
                        bodyratio: 8,
                        lastratio: 1,
                        last: Opacity(opacity: 0.0,  child: Icon(Icons.list,color: Colors.grey,)),
                      )
        
                  ),
        )


        ],
      );



}

Widget Home(HomeDrawerViewModel viewmodel){
  return   ListView(
              //   padding: const EdgeInsets.all(0),
              children: <Widget>[

                Container(
                  height: 55.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){},
                          child: GeneralListView(
                            leadingicon: Icon(Icons.message,color: Colors.grey,size: 15,),
                            body: Text('Threads',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                            decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: new BorderRadius.all(
                               const Radius.circular(5.0))),
                            leadingratio: 1,
                            bodyratio: 8,
                            lastratio: 1,
                            last: Opacity(opacity: 0.0,  child: Icon(Icons.list,color: Colors.grey,)),
                          ),
                    )

                  ),
                ),

                 StickyHeader(
                      header: Container(
                        height: headerheight,
                        color: prefix0.PrimaryColor,
                        padding: EdgeInsets.symmetric(horizontal: 0.0),
                        alignment: Alignment.centerLeft,
                        child: 
                          GeneralListView(
                        
                         // leadingicon: Opacity(opacity: 0.0, child: Icon(Icons.message,color: Colors.grey,)),
                          body: Text('SHARED CHANNELS',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                          decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: new BorderRadius.all(
                             const Radius.circular(0.0))),
                          leadingratio: 0,
                          bodyratio: 9,
                          lastratio: 1,
                          last: Opacity(opacity: 0.0,  child: Icon(Icons.list,color: Colors.grey,)),
                        )
                        
                      ),
                      content: 
                      //  Column(
                      //   children: <Widget>[
                          // Expanded(
                          //          child:
                                    new ListView.builder
                                  (
                                    physics : NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: viewmodel.sharedchannel.length,
                                    itemBuilder: (BuildContext ctxt, int index) {
                                    return  Padding(
                                      padding: const EdgeInsets.fromLTRB(9,0,10.0,0),
                                      child: InkWell(
                                        onTap: (){
                                          
                                         // setState(() {
                                            viewmodel.RefreshThelistandSelectItem(viewmodel.sharedchannel[index].id);
                                            widget.callback(viewmodel.sharedchannel[index].title +"_"+viewmodel.sharedchannel[index].id);
                                       //   });
                                        },
                                        child: GeneralListView(
                                          height: headerheight,
                                        leadingicon: Opacity(opacity: 1.0, child: Icon(Icons.lock,color: viewmodel.sharedchannel[index].isselected?Colors.white: Colors.grey,size: 14)),
                                        body: Text(viewmodel.sharedchannel[index].title,style: TextStyle(color:viewmodel.sharedchannel[index].isselected?Colors.white: Colors.grey),textAlign: TextAlign.left,),
                                        decoration: BoxDecoration(
                                        color:viewmodel.sharedchannel[index].isselected?Colors.blue : Colors.transparent,
                                        borderRadius: new BorderRadius.all(
                                          const Radius.circular(0.0))),
                                        leadingratio: 1,
                                        bodyratio: 8,
                                        lastratio: 1,
                                        last: Opacity(opacity: 1.0,  child: Icon(Icons.list,color: Colors.grey,)),
                                  ),
                                      ),
                                    );
                                    }
                                  ),)
                         // ),
                      //   ],
                      // )

                      ,StickyHeader(
                      header: Container(
                        height: headerheight,
                        color: prefix0.PrimaryColor,
                        padding: EdgeInsets.symmetric(horizontal: 0.0),
                        alignment: Alignment.centerLeft,
                        child: 
                          GeneralListView(
                        
                         // leadingicon: Opacity(opacity: 0.0, child: Icon(Icons.message,color: Colors.grey,)),
                          body: Text('CHANNELS',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                          decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: new BorderRadius.all(
                             const Radius.circular(5.0))),
                          leadingratio: 0,
                          bodyratio: 8,
                          lastratio: 2,
                          last: Opacity(opacity: 1.0,  child: Icon(Icons.add,color: Colors.grey,)),
                        )
                        
                      ),
                      content: 
                      //  Column(
                      //   children: <Widget>[
                          // Expanded(
                          //          child:
                                    new ListView.builder
                                  (
                                    physics : NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: viewmodel.channel.length,
                                    itemBuilder: (BuildContext ctxt, int index) {
                                    return  Padding(
                                      padding: const EdgeInsets.fromLTRB(9,0,10.0,0),
                                      child: InkWell(
                                        onTap: (){

                                          //setState(() {
                                            viewmodel.RefreshThelistandSelectItem(viewmodel.channel[index].id);
                                             widget.callback(viewmodel.channel[index].title +"_"+viewmodel.channel[index].id);
                                         // });

                                        },
                                        child: GeneralListView(
                                          height: headerheight,
                                        leadingicon: Opacity(opacity: 1.0, child: Icon(Icons.lock,color:viewmodel.channel[index].isselected?Colors.white:Colors.grey,size: 14)),
                                        body: Text(viewmodel.channel[index].title,style: TextStyle(color: viewmodel.channel[index].isselected?Colors.white: Colors.grey),textAlign: TextAlign.left,),
                                        decoration: BoxDecoration(
                                        color: viewmodel.channel[index].isselected?Colors.blue : Colors.transparent,
                                        borderRadius: new BorderRadius.all(
                                          const Radius.circular(0.0))),
                                        leadingratio: 1,
                                        bodyratio: 8,
                                        lastratio: 1,
                                        last: Opacity(opacity: 0.0,  child: Icon(Icons.list,color: Colors.grey,)),
                                  ),
                                      ),
                                    );
                                    }
                                  ),),
                
                      

                      
                      StickyHeader(
                      header: Container(
                        height: headerheight,
                        color: prefix0.PrimaryColor,
                        padding: EdgeInsets.symmetric(horizontal: 0.0),
                        alignment: Alignment.centerLeft,
                        child: 
                          GeneralListView(
                        
                         // leadingicon: Opacity(opacity: 0.0, child: Icon(Icons.message,color: Colors.grey,)),
                          body: Text('DIRECT MESSAGES',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                          decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: new BorderRadius.all(
                             const Radius.circular(5.0))),
                          leadingratio: 0,
                          bodyratio: 8,
                          lastratio: 2,
                          last: Opacity(opacity: 1.0,  child: Icon(Icons.add,color: Colors.grey,)),
                        )
                        
                      ),
                      content: 
                      //  Column(
                      //   children: <Widget>[
                          // Expanded(
                          //          child:
                                    new ListView.builder
                                  (
                                    physics : NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: viewmodel.channel.length,
                                    itemBuilder: (BuildContext ctxt, int index) {
                                    return  Padding(
                                      padding: const EdgeInsets.fromLTRB(9,0,10.0,0),
                                      child: InkWell(
                                        onTap: (){

                                           viewmodel.RefreshThelistandSelectItem(viewmodel.directmessage[index].id);
                                           Navigator.pop(context);
                                           widget.callback(viewmodel.directmessage[index].title +"_"+viewmodel.directmessage[index].id);
                                        },
                                        child: GeneralListView(
                                          height: headerheight,
                                        leadingicon: Opacity(opacity: 1.0, child: Icon(Icons.add_circle,color: viewmodel.directmessage[index].isselected?Colors.white:Colors.green,size: 14,)),
                                        body: Text(viewmodel.directmessage[index].title,style: TextStyle(color: viewmodel.directmessage[index].isselected?Colors.white:Colors.grey),textAlign: TextAlign.left,),
                                        decoration: BoxDecoration(
                                        color: viewmodel.directmessage[index].isselected?Colors.blue : Colors.transparent,
                                        borderRadius: new BorderRadius.all(
                                          const Radius.circular(0.0))),
                                        leadingratio: 1,
                                        bodyratio: 8,
                                        lastratio: 1,
                                        last: Opacity(opacity: 0.0,  child: Icon(Icons.list,color: Colors.grey,)),
                                  ),
                                      ),
                                    );
                                    }
                                  ),),
              
              ],
            );
        //  )

}


Widget DirectMessage(HomeDrawerViewModel viewmodel){

  return Column(

    children: <Widget>[

         Container(
                  height: 55.0,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: InkWell(
                      onTap: (){},
                          child: GeneralListView(
                           // leadingicon: Icon(Icons.message,color: Colors.grey,size: 15,),
                            body: Text('DIRECT MESSAGES',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                            decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: new BorderRadius.all(
                               const Radius.circular(5.0))),
                            leadingratio: 0,
                            bodyratio: 9,
                            lastratio: 1,
                            last: Opacity(opacity: 0.0,  child: Icon(Icons.add_circle,color: Colors.grey,)),
                          ),
                    )

                  ),
                ),
           Expanded(
                        child: new ListView.builder
                (
                  
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: viewmodel.channel.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                  return  Padding(
                    padding: const EdgeInsets.fromLTRB(9,0,10.0,0),
                    child: InkWell(
                      onTap: (){

                          viewmodel.RefreshThelistandSelectItem(viewmodel.directmessage[index].id);
                          Navigator.pop(context);
                          widget.callback(viewmodel.directmessage[index].title +"_"+viewmodel.directmessage[index].id);
                      },
                      child: DirectMessageListView(viewmodel.directmessage_list[index],70)
                    ),
                  );
                  }
                ),
           )

    ],
  );
  
}

}


