
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mktbaz/app/modules/careers/components/carousel%20_slider.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait? Container(
        width: double.infinity,
        //height:Get.height*0.35 ,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/Careers_1.jpg",
              ),
              fit: BoxFit.cover),
        ),

        child:Carousel_Slider()
    ):
    Container(
        width: double.infinity,
        height:Get.height*0.8 ,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/Careers_1.jpg",
              ),
              fit: BoxFit.cover),
        ),

        child: Carousel_Slider()

    );
  }
}