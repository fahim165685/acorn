import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mktbaz/app/modules/services/components/carousel_slider.dart';

class Top_Bar extends StatelessWidget {
  const Top_Bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait? Container(
      width: double.infinity,
      //height:Get.height*0.35 ,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/services_top_img.jpg",
            ),
            fit: BoxFit.cover),
      ),

      child:
          Carousel_Slider()
    ):
    Container(
      width: double.infinity,
      height:Get.height*0.8 ,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/services_top_img.jpg",
            ),
            fit: BoxFit.cover),
      ),

      child: Carousel_Slider()

    );
  }
}
