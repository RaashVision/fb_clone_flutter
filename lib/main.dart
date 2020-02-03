import 'package:catcher/catcher_plugin.dart';
import 'package:catcher/core/catcher.dart';
import 'package:catcher/handlers/console_handler.dart';
import 'package:catcher/handlers/email_manual_handler.dart';
import 'package:catcher/mode/dialog_report_mode.dart';
import 'package:catcher/model/catcher_options.dart';
import 'package:catcher/model/http_request_type.dart';
import 'package:flutter/material.dart';
import 'package:fb_clone_app/customize_existing_plugin/Catcher/custom_catcher.dart';
import 'package:fb_clone_app/customize_existing_plugin/Catcher/custom_dialogreportmode.dart';
import 'package:fb_clone_app/customize_existing_plugin/Catcher/custom_handler.dart';
import 'package:fb_clone_app/managers/lifecycle_manager.dart';
import 'package:fb_clone_app/settings.dart';
import 'package:fb_clone_app/views/pages/fb_profile_view.dart';
import 'package:fb_clone_app/views/shared/app_colors.dart';
import 'locator.dart';


void main() async {


  //Dependecy injectiion
  setupLocator();

  runApp(MyApp());


}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


   return LifeCycleManager(
      child: MaterialApp(
        title: 'Fb Clone',
        theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: PrimaryColor,
        
      ),
         home: FbProfileView(),
      ),
    );

  }
}
