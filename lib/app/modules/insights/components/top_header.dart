import 'package:flutter/material.dart';
import 'package:mktbaz/app/modules/insights/components/carousel_slider.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return MediaQuery.of(context).orientation == Orientation.portrait?
        //is mobile
      Container(
      height: size.height* 0.25,
      width:size.width,
      //padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/insights/ins_img_1.jpg",),
            fit: BoxFit.cover,
            alignment: Alignment.centerRight,
          ),
          color: Colors.grey
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient:LinearGradient(
            colors: [
              Colors.black.withOpacity(0.1),
              Colors.white.withOpacity(0.3),
            ],
          )
        ),
        child: Carousel_Slider(),
      ),
        //is Desktop
    ):Container(
      height: size.height* 0.6,
      width:size.width,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/insights/ins_img_1.jpg",),
            fit: BoxFit.cover,
            alignment: Alignment.centerRight,
          ),
          color: Colors.grey
      ),
      child: Carousel_Slider(),
    );
  }
}
