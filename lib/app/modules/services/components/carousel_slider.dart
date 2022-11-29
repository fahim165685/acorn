import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel_Slider extends StatefulWidget {
  const Carousel_Slider({Key? key}) : super(key: key);

  @override
  State<Carousel_Slider> createState() => _Carousel_SliderState();
}

class _Carousel_SliderState extends State<Carousel_Slider> {
  int activeIndex = 0;
  final List text = [
    _Texts(
      title: "The Art and The Science\n\n",
      subTitle:
      "At Acorn, marketing research is never just facts, patterns, predications or data. It’s a science; a study of not just the marketplace, but of the consumer as a person. It is also an art, in making sense of the data, information and communicating it insightfully for marketing action.",
    ),
    _Texts(
        title: "The Tools Don't\nSubstitute The Thinking\n\n",
        subTitle:"We believe in thinking with clients throughout the process from initial contact to delivery of findings. It does not stop there. Good research findings should facilitate the whole process from product development to brand fulfillment.",
    ),
    _Texts(
      titleSize: 25,
        title: "Look For People Who Instigate\nNew Ideas With\nTheir Research\n\n",
        subTitle: "Our offices are managed by Asian researchers. So we understand the nuances of Asian consumers to a greater depth. We can better articulate the complexities of the Chinese’s great potential, the Korean’s dynamic spirit, the Thai’s modesty, the Malaysian’s warmth, the Singaporean’s confidence and the Taiwanese’s effusiveness.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            aspectRatio: 1.5,
            autoPlayInterval: Duration(seconds: 10),
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
          itemCount: text.length,
          itemBuilder: (context, index, realIndex) {
            final texts = text[index];
            return buildText(texts, index);
          },
        ),
        Positioned(top: 250, left: Get.width * 0.3,bottom: 10, child: buildIndicator()),
      ],
    );
  }

  Widget buildText(Widget texts, int index,) => Container(
    padding: EdgeInsets.all(8),
        child: texts,
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: text.length,
        effect: ExpandingDotsEffect(
            dotWidth: 12,
            dotHeight: 12,
            activeDotColor: Colors.redAccent,
            dotColor: Colors.blueGrey),
      );
}

class _Texts extends StatelessWidget {
  const _Texts({
    Key? key,
    required this.title,
    required this.subTitle,
    this.titleSize = 30,
    this.subTitleSize = 16,
  }) : super(key: key);

  final String title, subTitle;
  final double titleSize, subTitleSize;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
          TextSpan(text: title, style: TextStyle(fontSize: titleSize)),
          TextSpan(text: subTitle, style: TextStyle(fontSize: subTitleSize,color:Colors.white.withOpacity(0.8))),
        ]));
  }
}
