import 'package:fb_clone_app/interfaces/i_mockdata.dart';
import 'package:fb_clone_app/interfaces/i_repository.dart';
import 'package:fb_clone_app/locator.dart';
import 'package:fb_clone_app/models/channel_message_model.dart';
import 'package:fb_clone_app/models/direct_message_model.dart';

class Repository implements IRepository{

    IMockData iMockData = locator<IMockData>();

  @override
  Future<List<ChannelModel>> getHomeData() {
   
    return iMockData.getHomeDrawerListData();
  }

  @override
  Future<List<DirectMessageModel>> getDirectMessageData() async{
    
    return iMockData.getDirectMessageListData();
  }




}

