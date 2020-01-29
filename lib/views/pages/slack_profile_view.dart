import 'package:flutter/material.dart';
import 'package:fb_clone_app/viewmodels/slack_profile_viewmodel.dart';
import 'package:fb_clone_app/views/core/base_view.dart';
import 'package:fb_clone_app/views/widgets/onlinestatus_widget.dart';

class SlackProfileView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SlackProfileViewState();
  }

}

class _SlackProfileViewState extends State<SlackProfileView> with TickerProviderStateMixin{

  int upperratio =5;
  int bottomratio =5;
  bool ontapprofile = false;
  double _height = 50.0;

  AnimationController _animationController;
  Animation _animation;
  List<ListTile> list_tile = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(duration: Duration(milliseconds: 100), vsync: this);
    _animation = IntTween(begin: 100, end: 50).animate(_animationController);
    _animation.addListener(() => setState(() {}));

    list_tile = [

        ListTile(title: Text("Set a status") , subtitle: Text("Status"),),
        ListTile(title: Text("Thiyraash David") , subtitle: Text("Display Name"),),
        ListTile(title: Text("Music and Code <3") , subtitle: Text("What I do"),),
        ListTile(title: Text("In your timezone") , subtitle: Text("Timezone"),),
        ListTile(title: Text("01116495901") , subtitle: Text("Phone"),),
        ListTile(title: Text("raashvision@gmail.com") , subtitle: Text("Email"),),



    ];
    
  }
  @override
  Widget build(BuildContext context) {
    return BaseView<SlackProfileViewModel>(
       // onModelReady: (model)=> model.getDefaultData(),
        builder: (context, model, child) =>  Scaffold(
          body: SafeArea(
            child: FullView(),
          ),
        ));
  }

  Widget ProfileUpperViewNameAndStatus(){

    return   Row(
                  mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text('Thiyraash David',style: TextStyle(color: Colors.white,fontSize: 30),),
                        OnlineStatusWidget(IsOnline: true,IsSleep: false,
                        backgroundcolor: Colors.transparent,)
                      ],
                    );
     //);
  }
  Widget ProfileUpperView(){
    return GestureDetector(
            onTap: (){

              

              if (_animationController.value == 0.0) {
                      _animationController.forward();
                    } else {
                      _animationController.reverse();
                    }


            },
          child: Stack(
        children: <Widget>[
            Positioned.fill(
                          child: 

                          ShaderMask(
                          shaderCallback: (rect) {
                            return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.black.withOpacity(0.02),Colors.black.withOpacity(0.6)],
                            ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                          },
                          blendMode: BlendMode.srcATop,
                          child: Image.asset('profile.jpeg',fit: BoxFit.none,),
                        ),

                          //Image.asset('profile.jpeg',fit: BoxFit.none,height: 10,),
                          
                          //Image(image: AssetImage('assets/profile.jpeg'), fit: BoxFit.none,)
            ),

           
                
           Positioned(
             bottom: 20,
             left: 15,
             child:ProfileUpperViewNameAndStatus()
           ),


          //  Positioned.fromRect(
          //    rect: Rect.fromLTRB(2, 10, 2, -5),
          //    child: Opacity(opacity: 1.0,
          //    child: Container(color: Colors.black),),
          //  )
        ],
      ),
    );
  }

  Widget InfoBottomView(){

    return Column(
        children: <Widget>[
          Expanded(
                      child: ListView(
              shrinkWrap: true, 
              children: <Widget>[
                InfoBottomUpperView(),

                ListTile(title: Text("Set a status") , subtitle: Text("Status"),),
                Divider(color: Colors.grey,height: 1,),
                ListTile(title: Text("Thiyraash David") , subtitle: Text("Display Name"),),
                Divider(color: Colors.grey,height: 1,),
                ListTile(title: Text("Music and Code <3") , subtitle: Text("What I do"),),
                Divider(color: Colors.grey,height: 1,),
                ListTile(title: Text("In your timezone") , subtitle: Text("Timezone"),),
                Divider(color: Colors.grey,height: 1,),
                ListTile(title: Text("01116495901") , subtitle: Text("Phone"),),
                Divider(color: Colors.grey,height: 1,),
                ListTile(title: Text("raashvision@gmail.com") , subtitle: Text("Email"),),
                // list_tile != null ?ListView.builder(
                //   itemCount: list_tile.length,
                //   itemBuilder: (context, position) {
                //     return ListTile(title: list_tile[position].title,subtitle: list_tile[position].subtitle,);
                //   },
                // ) :Container(),

              ],
              // use it
            ),
          )
        ],
      );

  }

  Widget FullView(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Flexible(child:ProfileUpperView(),flex: _animation.value,),
        Expanded(child: InfoBottomView(),flex: 100,)
      ],
    );
  }


  Widget InfoBottomUpperView(){

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Expanded(child: Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,0),
            child: ButtonWithBorderView(null, "Message"),
          ),flex: 4,),
          Expanded(child: Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,0),
            child: ButtonWithBorderView(null, "Edit Profile"),
          ),flex: 4,),
          Flexible(child: Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,0),
            child: ButtonWithBorderView(Icons.more_vert, null),
          ),flex: 2,)

        ],
      ),
    );




  }

  Widget ButtonWithBorderView(IconData icondata , String message){

    return Container(
      width: icondata != null ? 50 : null,
      child: OutlineButton( 
        child: icondata == null?  Text(message): Icon(icondata),
        onPressed: (){},
        //splashColor: Colors.grey,
        highlightedBorderColor: Colors.black,
        borderSide: BorderSide(color: Colors.black),
        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0))
      ),
    );


  }

  Widget blackoverlay(){

    return  Opacity(opacity: 1.0,
             child: Container(color: Colors.black, height: 20,),);
  }
  




}