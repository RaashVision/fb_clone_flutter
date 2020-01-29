import 'package:flutter/material.dart';

class FbCircleIconButton extends StatelessWidget {

  final Icon icon;
  final VoidCallback clickCallback;
  final double radius;
  final double imgsize;

  FbCircleIconButton({this.icon,this.clickCallback,this.radius = 90,this.imgsize =200.0});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: Colors.white,
        radius: radius,
        child:  CircleAvatar(
          backgroundColor: Colors.grey.withOpacity(0.4),
          radius: radius - 5.0,
          child: Material(
        elevation: 4.0,
        shape: CircleBorder(),
        clipBehavior: Clip.hardEdge,
        color: Colors.transparent,
        child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.black.withOpacity(0.30),
            child: icon,
            onTap: () {

              showModalBottomSheet(
                    context: context,
                    builder: (BuildContext bc){
                        return Container(
                          child: new Wrap(
                          children: <Widget>[
              new ListTile(
                          leading: new Icon(Icons.music_note),
                          title: new Text('Music'),
                          onTap: () => {}          
                        ),
                        new ListTile(
                          leading: new Icon(Icons.videocam),
                          title: new Text('Video'),
                          onTap: () => {},          
                        ),
                          ],
                        ),
                        );
                    }
                  );

              //clickCallback();
            },
          ),
            ),
        )
    );
  }
}