import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mktbaz/app/modules/insights/components/details_screen/components/body.dart';
import 'package:mktbaz/app/modules/model/recent_highlights_list.dart';
import 'package:mktbaz/constants.dart';

class RH_DetailsScreen extends StatelessWidget {

  static String routeName = '/rh_details_screen';

  @override
  Widget build(BuildContext context) {
    final Recent_Highlights_ListArgument argument = ModalRoute.of(context)!.settings.arguments as Recent_Highlights_ListArgument;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Insights",style: TextStyle(color: Colors.white.withOpacity(0.7))),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(onPressed: (){Get.back(canPop: true,);},icon:Icon(Icons.arrow_back_ios)),
      ),
      body: Body(recent_highlights_list: argument.recent_highlights_list),
    );
  }
}
class Recent_Highlights_ListArgument {
  final Recent_Highlights_List recent_highlights_list;
  Recent_Highlights_ListArgument({required this.recent_highlights_list});
}