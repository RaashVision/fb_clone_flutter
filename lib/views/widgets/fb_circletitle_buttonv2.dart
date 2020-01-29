// import 'package:flutter/material.dart';

// class FbCircleTitleButton extends StatelessWidget {

//   final Icon icon;
//   final VoidCallback clickCallback;
//   final double radius;
//   final double imgsize;
//   final String title;

//   FbCircleTitleButton({this.icon,this.clickCallback,this.radius = 90,this.imgsize =200.0,this.title});

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       duration: Duration(microseconds: 2000),
//      // height: 50,
//       //width: 70,
//       child: ListView(
//         shrinkWrap: true,
//         children: <Widget>[

//           Expanded(
//             flex: 7,
//             child: ClipOval(
//             child: Material(
//               color: Colors.grey.withOpacity(0.4), // button color
//               child: InkWell(
//                 splashColor: Colors.grey, // inkwell color
//                 child: SizedBox(width: 49, height: 49, child: icon),
//                 onTap: () {},
//               ),
//             ),
//           ),
//           ),

//           Expanded(
//             flex: 3,
//             child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Center(child: Text(title ,textAlign: TextAlign.center,),),
//           ),

//           )

//         ],
//       )
      
//     );
//   }

//   void OnClick(){



//   }
// }