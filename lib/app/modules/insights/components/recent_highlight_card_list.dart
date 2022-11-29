
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mktbaz/app/modules/insights/components/details_screen/details_screen.dart';
import 'package:mktbaz/app/modules/insights/components/item_card.dart';
import 'package:mktbaz/app/modules/model/recent_highlights_list.dart';

import '../../../routes/app_pages.dart';

class Recent_Highlight_Card_List extends StatelessWidget {
  const Recent_Highlight_Card_List({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait?
    Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recent Highlights",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.7))),
          ...List.generate(items_list.length, (index) =>ItemCard(recent_highlights_list: items_list[index],
            press: ()=>Get.toNamed(Routes.RH_DetailsScreen,arguments:Recent_Highlights_ListArgument(recent_highlights_list: items_list[index])),))
        ],
    ):
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Recent\nHighlights",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.7))),
        SizedBox(width:Get.width*0.08),
        Expanded(
          child: Wrap(
            children: [
              ...List.generate(items_list.length, (index) =>ItemCard(recent_highlights_list: items_list[index],
                press: ()=>Get.toNamed(Routes.RH_DetailsScreen,arguments:Recent_Highlights_ListArgument(recent_highlights_list: items_list[index])),))
            ],
          ),
        ),
        
      ],
    );
  }
}