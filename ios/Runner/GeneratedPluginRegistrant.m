//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<catcher/CatcherPlugin.h>)
#import <catcher/CatcherPlugin.h>
#else
@import catcher;
#endif

#if __has_include(<device_info/DeviceInfoPlugin.h>)
#import <device_info/DeviceInfoPlugin.h>
#else
@import device_info;
#endif

#if __has_include(<flutter_local_notifications/FlutterLocalNotificationsPlugin.h>)
#import <flutter_local_notifications/FlutterLocalNotificationsPlugin.h>
#else
@import flutter_local_notifications;
#endif

#if __has_include(<flutter_mailer/FlutterMailerPlugin.h>)
#import <flutter_mailer/FlutterMailerPlugin.h>
#else
@import flutter_mailer;
#endif

#if __has_include(<fluttertoast/FluttertoastPlugin.h>)
#import <fluttertoast/FluttertoastPlugin.h>
#else
@import fluttertoast;
#endif

#if __has_include(<package_info/PackageInfoPlugin.h>)
#import <package_info/PackageInfoPlugin.h>
#else
@import package_info;
#endif

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
