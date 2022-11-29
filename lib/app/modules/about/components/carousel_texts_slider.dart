import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mktbaz/app/modules/about/components/text_1.dart';
import 'package:mktbaz/app/modules/about/components/text_2.dart';
import 'package:mktbaz/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class CarouselTextSlider extends StatefulWidget {
  const CarouselTextSlider({Key? key}) : super(key: key);

  @override
  State<CarouselTextSlider> createState() => _CarouselTextSliderState();
}

class _CarouselTextSliderState extends State<CarouselTextSlider> {
  int activeIndex = 0;
  final List<Widget> text = [
    Text_1(top_text: "What matters,\nWhen it matters most", dis_text: "Since our inception in 1985 we have held one belief – our sole aim is helping our clients understand consumers.  Be it developing new products or communications, or crafting brand architectures, our belief is that everything flows from a deep and honest understanding of consumers' complex needs and desires."),
    Text_1(top_text: "The Acorn Way", dis_text: "The interpretation of findings, to us, must possess a deep empathy for the social context and clear understanding of the marketing issues. We are equipped with multi-disciplinary skills, enabling us to approach issues with a multi-dimensional perspective. We question your preconceptions about research and find ways to rethink things, not just fix things.."),
    Text_1(top_text: "Understanding Asia is in our DNA", dis_text: "Our offices are managed by Asian researchers. So we understand the nuances of Asian consumers to a greater depth. We can better articulate the complexities of the Chinese’s great potential, the Korean’s dynamic spirit, the Thai’s modesty, the Malaysian’s warmth, the Singaporean’s confidence and the Taiwanese’s effusiveness."),
    Text_2(),

  ];
  @override
  Widget build(BuildContext context) {
  // Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            //autoPlay: true,
            viewportFraction: 1,
            autoPlayInterval: Duration(seconds: 10),
            //enlargeCenterPage: true,
            height: 300,
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),

          itemCount: text.length,
          itemBuilder: (context, index, realIndex) {
            final texts = text[index];
            return buildText(texts, index);
          },
        ),
        Positioned(
            top: 250,
            left: Get.width*0.3,
            child: buildIndicator()),
      ],
    );
  }

  Widget buildText(Widget texts, int index,) =>
  Align(
    alignment: Alignment.centerLeft,
    child: Container(
      padding: EdgeInsets.only(top: 10,left: 10),
      //width: Get.width * 0.7,
      child: texts,

    ),
  );

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: text.length,
    effect: ExpandingDotsEffect(
        dotWidth: 12,
        dotHeight: 12,
        activeDotColor: kSedentaryColor,
        dotColor: Colors.blueGrey),
  );
}

