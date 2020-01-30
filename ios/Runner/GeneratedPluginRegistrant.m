//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"
#import <catcher/CatcherPlugin.h>
#import <device_info/DeviceInfoPlugin.h>
#import <flutter_local_notifications/FlutterLocalNotificationsPlugin.h>
#import <flutter_mailer/FlutterMailerPlugin.h>
#import <fluttertoast/FluttertoastPlugin.h>
#import <package_info/PackageInfoPlugin.h>

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [CatcherPlugin registerWithRegistrar:[registry registrarForPlugin:@"CatcherPlugin"]];
  [FLTDeviceInfoPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTDeviceInfoPlugin"]];
  [FlutterLocalNotificationsPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterLocalNotificationsPlugin"]];
  [FlutterMailerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterMailerPlugin"]];
  [FluttertoastPlugin registerWithRegistrar:[registry registrarForPlugin:@"FluttertoastPlugin"]];
  [FLTPackageInfoPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTPackageInfoPlugin"]];
}

@end
