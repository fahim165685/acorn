import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class socialCard extends StatelessWidget {
  const socialCard({
    Key? key,
    required this.icon,
    required this.press
  }) :super(key: key);
  final String icon;
  final VoidCallback press;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      excludeFromSemantics: true,
      onTap: press,
      child:Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Color(0xFF5F6F9),
            shape: BoxShape.circle
        ),
        child:SvgPicture.asset(icon) ,
      ),
    );
  }
}
