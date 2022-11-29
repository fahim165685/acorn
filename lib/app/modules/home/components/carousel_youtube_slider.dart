import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class youtubeSlider extends StatefulWidget {
  const youtubeSlider({Key? key}) : super(key: key);



  @override
  State<youtubeSlider> createState() => _youtubeSliderState();
}

class _youtubeSliderState extends State<youtubeSlider> {
  int activeIndex = 0;
  final assetsImages = [
    'assets/images/youtube_thumbnail_1.png',
    'assets/images/youtube_thumbnail_2.png',
  ];
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          CarouselSlider.builder(

            itemCount: assetsImages.length,
            itemBuilder: (context, index, realIndex) {
              final AssetImage = assetsImages[index];
              return buildImage(AssetImage, index);
            },
            options: CarouselOptions (

              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 30),
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              onPageChanged: (index, reason) =>
                  setState(()=>activeIndex=index),
            ),
          ),
          const SizedBox(height: 15,),
        ],

    );
  }
  Widget buildImage(String assetsImages,int index)=> Container(
    margin: EdgeInsets.symmetric(horizontal: 20 ),
    width: MediaQuery.of(context).size.width,
    //color: Colors.grey,
    child: Image.asset(
      assetsImages,
      //fit: BoxFit.cover,
    ),
  );
}
