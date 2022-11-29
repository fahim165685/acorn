import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mktbaz/app/modules/about/components/board_of_directors_slider.dart';
import 'package:mktbaz/app/modules/about/detalls/details_screen.dart';
import 'package:mktbaz/app/modules/about/components/manager_card.dart';
import 'package:mktbaz/app/modules/about/components/top_header.dart';
import 'package:mktbaz/app/modules/model/country_manager_list.dart';
import 'package:mktbaz/app/routes/app_pages.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       TopHeader(),
        Board_of_Directors_Slider(),
        SizedBox(height: 20,),
        Wrap(
    children: [
          ...List.generate(managerList.length,(index) =>ManagerCard(country_manager_list:managerList[index],
          press: () => Get.toNamed(Routes.DetailsScreen,arguments:ManagerDetailsArgument(country_manager_list:managerList[index]) ),
          ),),
    ],
    ),

      ],
    );
  }
}

