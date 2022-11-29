

import 'package:flutter/material.dart';
import 'package:mktbaz/app/modules/services/components/bottom_item.dart';
import 'package:mktbaz/app/modules/services/components/services_list.dart';
import 'package:mktbaz/app/modules/services/components/top_bar.dart';
import 'package:mktbaz/app/modules/services/components/top_text.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Top_Bar(),
          SizedBox(
            height: 10,
          ),
          Top_Text(),
          SizedBox(
            height: 30,
          ),
          ResponsiveButton(
            name: "Product & Service Innovation",
              press: (){},
          ),
          ResponsiveButton(
            name: "Understanding Market Opportunities & Consumers",
            press: (){},
          ),
          ResponsiveButton(
            name: "Improving Customer Experience",
            press: (){},
          ),
          ResponsiveButton(
            name: "Optimising User Experience",
            press: (){},
          ),
          ResponsiveButton(
            name: "Developing & Testing Communication",
            press: (){},
          ),
          ResponsiveButton(
            name: "Brand Positioning & Monitoring Brand Health",
            press: (){},
          ),
          Bottom_Item(),
        ],
    );
  }
}


