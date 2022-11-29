import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mktbaz/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class carousel_text_slider extends StatefulWidget {
  const carousel_text_slider({Key? key}) : super(key: key);

  @override
  State<carousel_text_slider> createState() => _carousel_text_sliderState();
}

class _carousel_text_sliderState extends State<carousel_text_slider> {
  int activeIndex = 0;
  final List<String> text = [
    "We are the largest independent Asian research network with full service offices in 11 Asian countries. ",
    "We are the pioneers with over 30 years of market research experience in Asia. ",
    "We provide customer intimacy and confidence to our clients to grow their business.",
  ];
  @override
  Widget build(BuildContext context) {
   // Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            //autoPlay: true,
            //reverse: true,
            aspectRatio: 3,
            autoPlayInterval: Duration(seconds: 10),
            enlargeCenterPage: true,
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
          itemCount: text.length,
          itemBuilder: (context, index, realIndex) {
            final texts = text[index];
            return buildText(texts, index);
          },
        ),
        SizedBox(height: 30,),
        buildIndicator(),
        SizedBox(height: 30,),
      ],
    );
  }

  Widget buildText(String texts, int index,) => Text(texts,style: TextStyle(fontSize: 22,color: Colors.black,));

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
