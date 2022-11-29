import 'package:flutter/material.dart';
import 'package:mktbaz/app/modules/welcome/components/button.dart';
import 'package:mktbaz/constants.dart';
import 'package:mktbaz/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child : Image.asset("assets/icon/Rocket.png",
                fit: BoxFit.cover, height: size.height * 0.6),



          ),
          Positioned(
              top: 200.0,
              left: 50,
              right: 50,
              child: Center(
                child: Column(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        "assets/icon/Logo.png",
                        height: 40,
                        fit: BoxFit.cover,
                        color: Color(0XFFff1981),
                        //gaplessPlayback: false,
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(25),
                    ),
                     Text(
                      "Marketing & Research Consultants ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(15),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              )),

          Positioned(
            left: 50.0,
            right: 50.0,
            bottom: 170.0,
            child: Column(
              children: const <Widget>[
                Text(
                  "Welcome  ",
                  style: TextStyle(
                      color: kTextLightColor,
                      fontSize: 29.0,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.1),
                ),
              ],
            ),
          ),
          Positioned(
              top: size.height - 130,
              left: 50.0,
              right: 50.0,
                  child:  Button()),
        ],
      ),
    );
  }
}
