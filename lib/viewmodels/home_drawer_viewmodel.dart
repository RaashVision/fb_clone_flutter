import 'package:fb_clone_app/enums/viewstate.dart';
import 'package:fb_clone_app/interfaces/i_repository.dart';
import 'package:fb_clone_app/models/channel_message_model.dart';
import 'package:fb_clone_app/models/direct_message_model.dart';
import 'package:fb_clone_app/utils/datetime_utils.dart';
import 'package:fb_clone_app/viewmodels/core/base_viewmodel.dart';

import '../locator.dart';

class HomeDrawerViewModel extends BaseViewModel{

  List<ChannelModel> sharedchannel;
  List<ChannelModel> channel;
  List<ChannelModel> directmessage;
  List<ChannelModel> alldata;
  List<DirectMessageModel> directmessage_list;
//Repository
 IRepository repository = locator<IRepository>();

 DateTimeUtils datetimeutil = locator<DateTimeUtils>();
  
  void getDefaultData() async{

      var currentdatetime =  await datetimeutil.CurrentDatetime();

    
      var wholedata = await repository.getHomeData();

      directmessage_list =await repository.getDirectMessageData();

      directmessage_list.forEach((f)
      {

        f.recent_message_timeago =datetimeutil.SlackTimeAgo(currentdatetime, f.recent_message_time) ;

      });

       directmessage_list.sort((a,b) {
        var adate = a.recent_message_time; //before -> var adate = a.expiry;
        var bdate = b.recent_message_time; //var bdate = b.expiry;
        return -adate.compareTo(bdate);
      });
      
      var dsds = directmessage_list;

      alldata =wholedata.map((element)=>element).toList();

      //Shared channel
      sharedchannel = wholedata.where((d)=> d.headername =="S2").toList();

      //channels
      channel = wholedata.where((d)=> d.headername =="C3").toList();

      //directmessage
      directmessage = wholedata.where((d)=> d.headername =="DM4").toList();


      setState(viewState: ViewState.Idle);
      }


      RefreshThelistandSelectItem(String id){

        var wholedata= alldata.map((element)=>element).toList();
        //select only data
         wholedata.singleWhere((d)=> d.id == id).isselected = true;
        
        // wholedata.where((d)=> d.id == id).isselected = true;
     //   wholedata.remove(findfordata);

            wholedata.forEach((n) => {
                
                if (n.id != id) {
                  n.isselected = false
                }
            
            
            });

        // for(var i = 0 ;i< wholedata.length ;i++){

        //   if(wholedata[i].id == id){
        //     //wholedata[i].isselected = true;
        //   }
        //   else{
        //      wholedata[i].isselected = false;
        //   }

        // }




    


      //Shared channel
      sharedchannel = wholedata.where((d)=> d.headername =="S2").toList();

      //channels
      channel = wholedata.where((d)=> d.headername =="C3").toList();

      //directmessage
      directmessage = wholedata.where((d)=> d.headername =="DM4").toList();

      setState(viewState :ViewState.Idle);
      }

}