import 'package:flutter/material.dart';

class FbCircleImageButton extends StatelessWidget {

  final String imgpath;
  final VoidCallback clickCallback;
  final double radius;
  final double imgsize;
  final double elav;
  final double thicknessofborder ;

  FbCircleImageButton({this.imgpath,this.clickCallback,this.radius = 90,this.imgsize =200.0,this.elav = 4.0,this.thicknessofborder = 5.0});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: Colors.white,
        radius: radius,
        child:  CircleAvatar(
          radius: radius - thicknessofborder,
          child: Material(
        elevation: elav,
        shape: CircleBorder(),
        clipBehavior: Clip.hardEdge,
        color: Colors.transparent,
        child: Ink.image(
          image: AssetImage(this.imgpath),
          fit: BoxFit.cover,
          width: imgsize,
          height: imgsize,
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.black.withOpacity(0.30),
            onTap: () {

              //clickCallback();
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                        ),
                    context: context,
                    builder: (BuildContext bc){
                        return Container(
                          
                        
                          child: new Wrap(
                          children: <Widget>[
                           new ListTile(
                          
                          title: Row(
                            children: <Widget>[
                              new Icon(Icons.filter_frames),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20,0,0,0),
                                child: new Text('Add Frame',style :TextStyle(fontSize: 18)),
                              ),
                            ],
                          ),
                          onTap: () => {}          
                        ),
                        new ListTile(
                          title:Row(
                            children: <Widget>[
                              new Icon(Icons.video_call),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20,0,0,0),
                                child: new Text('Take New Video Profile',style :TextStyle(fontSize: 18)),
                              ),
                            ],
                          ),
                          onTap: () => {},          
                        ),
                        new ListTile(
                          title:Row(
                            children: <Widget>[
                              new Icon(Icons.personal_video),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20,0,0,0),
                                child: new Text('Select Profile Video',style :TextStyle(fontSize: 18)),
                              ),
                            ],
                          ),
                          onTap: () => {},          
                        ),
                         new ListTile(
                          title:Row(
                            children: <Widget>[
                              new Icon(Icons.picture_as_pdf),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20,0,0,0),
                                child: new Text('Select Profile Picture',style :TextStyle(fontSize: 18)),
                              ),
                            ],
                          ),
                          onTap: () => {},          
                        ),
                        new ListTile(
                          title:Row(
                            children: <Widget>[
                              new Icon(Icons.person),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20,0,0,0),
                                child: new Text('View Profile Picture',style :TextStyle(fontSize: 18)),
                              ),
                            ],
                          ),
                          onTap: () => {},          
                        ),
                          ],
                        ),
                        );
                    }
                  );
            },
          ),
              ),
            ),
        )
    );
  }
}