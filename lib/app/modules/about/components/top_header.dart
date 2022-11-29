import 'package:flutter/material.dart';
import 'package:mktbaz/app/modules/about/components/carousel_texts_slider.dart';
class TopHeader extends StatelessWidget {
  const TopHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/about.jpg"), fit: BoxFit.cover)
      ),
      child: Stack(
        children: [
          CarouselTextSlider(),
        ],
      ),
    );
  }
}