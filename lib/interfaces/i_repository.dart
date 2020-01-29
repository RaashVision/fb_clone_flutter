import 'package:fb_clone_app/models/channel_message_model.dart';
import 'package:fb_clone_app/models/direct_message_model.dart';

abstract class IRepository{

  Future<List<ChannelModel>> getHomeData();

  Future<List<DirectMessageModel>> getDirectMessageData();
}