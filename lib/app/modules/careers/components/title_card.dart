import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mktbaz/app/modules/model/recent_highlights_list.dart';
import 'package:mktbaz/constants.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    Key? key,
    required this.item_index,
    required this.title,
    required this.sub_title,
  }) : super(key: key);

  final String item_index;
  final String title;
  final String sub_title;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
        // BoxShadow(
        //   color: kPrimaryColor.withOpacity(0.5),
        //   blurRadius: 5,
        //   offset: Offset(0,5)
        // )
      ]),
      child: ExpansionTile(
        title: Column(
          children: [
            Container(
              height: 5,
              width: Get.width*0.35,
              decoration:BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(50)
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item_index,style: TextStyle(
                    fontSize: 20
                )),
                SizedBox(width: 5,),
                Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 20
                      ),)),
              ],)
          ],),
        backgroundColor: kPrimaryLightColor.withOpacity(0.5),
        collapsedBackgroundColor: Color(0xffD9D9D9),
// collapsedIconColor: Colors.white,
// collapsedTextColor: Colors.white,
        iconColor: Colors.white,
        textColor: Colors.white,


        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5,right: 5),
                  child: Icon(Icons.circle,size: 15),
                ),
                Expanded(child: Text(sub_title,style: TextStyle(fontSize: 16),)),
              ],
            ),
          )
        ],

      ),
    );
  }
}

