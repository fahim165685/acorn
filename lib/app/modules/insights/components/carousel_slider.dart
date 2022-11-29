import 'package:flutter/material.dart';
import 'package:mktbaz/constants.dart';
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
    RichText(
        text: TextSpan(style: TextStyle(color: Colors.black), children: [
      TextSpan(
        text: "The Best Clients Are For Life\n\n",
        style: TextStyle(fontSize: 22),
      ),
      TextSpan(
          text:
              "Almost all of the clients who were with us on\nday one are still working with us today!"),
    ])),

    RichText(
        text: TextSpan(style: TextStyle(color: Colors.black), children: [
          TextSpan(
            text: "We Seek To Deepen Rather Than Widen Client Relationship\n\n",
            style: TextStyle(fontSize: 22),
          ),
          TextSpan(
              text:
              "70 - 80% of our business comes from our top clients. We build relationships."),
        ])),

    RichText(
        text: TextSpan(style: TextStyle(color: Colors.black), children: [
          TextSpan(
            text: "Marketers recognise ",
            style: TextStyle(fontSize: 22),
          ),
          TextSpan(
            text: "Acorn",
            style: TextStyle(fontSize: 20,color: Colors.red),
          ),
          TextSpan(
            text: " as the 'Local Hero'\n\n",
            style: TextStyle(fontSize: 20),
          ),

          TextSpan(
              text:
              "Our accolades include winning the leading local market research agency in the Marketing Magazine's Agency of the Year Awards since 2000 and winning Advertising + Marketing Magazine’s Agency of the Year Silver & Bronze awards since 2010"),
        ])),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
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
        Positioned(bottom:0,left: 0,right: 0, child: Center(child: buildIndicator())),
      ],
    );
  }

  Widget buildText(
    Widget texts,
    int index,) => Container(
          //width: Get.width * 0.7,
          child: texts,

      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: text.length,
        effect: ExpandingDotsEffect(
            dotWidth: 10,
            dotHeight: 10,
            activeDotColor: kSedentaryColor,
            dotColor: Colors.blueGrey),
      );
}
