
import 'package:get_it/get_it.dart';
import 'package:fb_clone_app/interfaces/i_mockdata.dart';
import 'package:fb_clone_app/repository/mock_data/mockservice.dart';
import 'package:fb_clone_app/repository/repository.dart';
import 'package:fb_clone_app/utils/datetime_utils.dart';
import 'package:fb_clone_app/viewmodels/fb_profile_viewmodel.dart';
import 'package:fb_clone_app/viewmodels/home_drawer_viewmodel.dart';
import 'package:fb_clone_app/viewmodels/slack_profile_viewmodel.dart';


import 'interfaces/i_repository.dart';

GetIt locator = GetIt.I;
void setupLocator() {
 
 locator.registerFactory(() =>  HomeDrawerViewModel());
 locator.registerLazySingleton<IMockData>(()=> new MockService());
 locator.registerLazySingleton<IRepository>(()=> new Repository());
 locator.registerSingleton(new DateTimeUtils());
 locator.registerFactory(()=>SlackProfileViewModel());
 locator.registerFactory(()=>FbProfileViewModel());
}