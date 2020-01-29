import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FbChipsLayoutWidget extends StatelessWidget {

  final europeanCountries =  ['Albania', 'Andorra', 'Armenia', 'Austria', 
        'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
        'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];

  FbChipsLayoutWidget();

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Chip(
            avatar: Icon(Icons.photo_album,size: 18,),
            label: Text('Photos',textAlign: TextAlign.start,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Chip(
            avatar: Icon(Icons.star,size: 18,),
            label: Text('Life Events',textAlign: TextAlign.start,),
          ),
        ),
      ],
    );
  }
}