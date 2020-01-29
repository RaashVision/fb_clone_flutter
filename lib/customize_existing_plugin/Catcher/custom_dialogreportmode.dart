import 'dart:math';

import 'package:catcher/model/report_mode.dart';
import 'package:catcher/model/report.dart';
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class CustomDialogReportMode extends ReportMode {


  
  @override
  void requestAction(Report report, BuildContext context) {
    var random = Random.secure();

    var value = random.nextInt(1000000000);

    var errorcodemap = {"ErrorCode": value.toString()};
    
     var custom_report =   Report(report.error, report.stackTrace, report.dateTime, report.deviceParameters,
      report.applicationParameters, errorcodemap);
    

    _showDialog(custom_report, context);
  }

  _showDialog(Report report, BuildContext context) async {
    
    await Future.delayed(Duration.zero);
    showDialog(
       context: context,
       builder: (_) => FlareGiffyDialog(
    flarePath: 'assets/space_demo.flr',
    flareAnimation: 'loading',
    title: Text(localizationOptions.dialogReportModeTitle+"("+report.customParameters['ErrorCode']+")",
           style: TextStyle(
           fontSize: 22.0, fontWeight: FontWeight.w600),
    ),
    description: Text(localizationOptions.dialogReportModeDescription,
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
        
    onOkButtonPressed: () => _acceptReport(context, report),
  ) 
        // context: context,
        // builder: (BuildContext build) {
        //   return AlertDialog(
        //     title: Text(localizationOptions.dialogReportModeTitle),
        //     content: Text(localizationOptions.dialogReportModeDescription),
        //     actions: <Widget>[
        //       FlatButton(
        //         child: Text(localizationOptions.dialogReportModeAccept),
        //         onPressed: () => _acceptReport(context, report),
        //       ),
        //       FlatButton(
        //         child: Text(localizationOptions.dialogReportModeCancel),
        //         onPressed: () => _cancelReport(context, report),
        //       ),
        //     ],
        //   );
        // }
        
        );
  }

  _acceptReport(BuildContext context, Report report) {
    super.onActionConfirmed(report);
    Navigator.pop(context);
  }

  _cancelReport(BuildContext context, Report report) {
    super.onActionRejected(report);
    Navigator.pop(context);
  }
}
