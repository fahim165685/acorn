
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Carousel_Slider extends StatefulWidget {
  const Carousel_Slider({Key? key}) : super(key: key);

  @override
  State<Carousel_Slider> createState() => _Carousel_SliderState();
}

class _Carousel_SliderState extends State<Carousel_Slider> {
  int activeIndex = 0;
  final List text = [
    RichText(text:TextSpan(
        style: TextStyle(
            fontSize: 30
        ),
        children: [
          TextSpan(
            text: "Being an ",
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
              text: "Acorn ",
              style: TextStyle(color: Colors.red)
          ),
          TextSpan(
            text: "researcher\n\n",
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
              text: "MR is only as effective as the marketing decisions on which it is based. Hence the need to train our researchers in the art and science of marketing.",
              style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.7))
          )
        ]
    )),
    _Texts(
      title: "A Rite of Passage\n\n",
      subTitle:"Being hands on and practicing our craft because to us, this is not a job, nor even a profession – but a lifestyle.",
    ),
    _Texts(
      title: "People Are Our Most\nImportant Asset\n\n",
      subTitle: "Over 40% of our people have been with us for more than 10 years, how's that for loyalty?.",
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
        Positioned(top: 240, left: Get.width * 0.3,bottom: 10, child: buildIndicator()),
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
          TextSpan(text: title, style: TextStyle(fontSize: titleSize,color: Colors.black)),
          TextSpan(text: subTitle, style: TextStyle(fontSize: subTitleSize,color:Colors.black.withOpacity(0.7))),
        ]));
  }
}
