import 'package:flutter/material.dart';
import 'package:mktbaz/size_config.dart';
import 'package:readmore/readmore.dart';

class Board_of_Directors extends StatelessWidget {
  final String name, tag, description;
  final String image;
  const Board_of_Directors(
      {Key? key,
      required this.name,
      required this.tag,
      required this.description,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: getProportionateScreenHeight(150),
                width: getProportionateScreenWidth(100),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: getProportionateScreenWidth(50),
            ),
            Padding(
              padding: EdgeInsets.only(top: getProportionateScreenHeight(25)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontFamily: "assets/fonts/muli/Muli-Light.ttf")),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Text(
                    tag,
                    style: TextStyle(fontSize: getProportionateScreenWidth(12)),
                  ),
                ],
              ),
            )
          ],
        ),
        Container(
            width: size.width,
            child: Stack(
              children: [
                ReadMoreText(
                  description,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(11),
                  ),
                  trimLines: 5,
                  colorClickableText: Colors.red,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                ),
              ],
            )),
      ],
    );
  }
}
