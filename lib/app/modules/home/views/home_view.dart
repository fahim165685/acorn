import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mktbaz/app/modules/home/components/carousel_text_slider.dart';
import 'package:mktbaz/app/modules/home/components/carousel_youtube_slider.dart';
import 'package:mktbaz/app/modules/home/components/socal_card.dart';
import 'package:mktbaz/size_config.dart';


import '../controllers/home_controller.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
                children: [
                  SizedBox(height: getProportionateScreenHeight(10)),
                  carousel_text_slider(), //carousel_text_slider
                  youtubeSlider(), //youtubeSlider
                  SizedBox(height: 10,),
                  Text("COVID-19 Impact & Insights",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,fontFamily: "assets/fonts/muli/Muli-Thin.TTF"),),
                  SizedBox(height: 25),
                  GestureDetector(
                    onTap: (){print("press");},
                      child: SvgPicture.asset("assets/icon/power-logo.svg",height: size.height*.022,)),
                  SizedBox(height: 25),
                  Image.asset("assets/images/Home_image.png"),
                  SizedBox(height:25),
                  Text("Follow us on",style: TextStyle(fontSize: 20,)),
                  //social media icon
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            socialCard(
                            icon:"assets/icon/facebook.svg",
                            press: (){},
                          ),
                            socialCard(
                              icon:"assets/icon/twitter.svg",
                              press: (){},
                            ),
                            socialCard(
                              icon:"assets/icon/instagram.svg",
                              press: (){},
                            ),
                            socialCard(
                              icon:"assets/icon/linkedin.svg",
                              press: (){},
                            ),
                          ],
                        ),
                  ),
                ],

    );
  }
}
