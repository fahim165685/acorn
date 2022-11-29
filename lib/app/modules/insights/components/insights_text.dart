import 'package:flutter/material.dart';

class InsightsText extends StatelessWidget {
  const InsightsText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(5),
      width: size.width,
      child: Column(
        children: [
          Image.asset(
            "assets/images/comma.png",
            width: size.width * 0.1,
            color: Colors.red,
          ),
          Text(
            "″Thank you and your team's extremely high quality debrief last week and your collaborative spirit. You are a true example of a real strategic partner. Thanks for all your hard work and I look forward to continuing to work with you.“",
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 15),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Stuart Woolford",
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 25,
                    color: Color(0XFF414141)),
              )),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
                "Regional Head of Brand & Marketing Strategy, Asia Pacific | Retail Banking and Wealth Management HSBC",
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Color(0xff414141).withOpacity(0.8), fontSize: 15)),
          ),
          Divider(
            color: Colors.red.withOpacity(0.5),
            thickness: 1.5,
          )
        ],
      ),
    );
  }
}