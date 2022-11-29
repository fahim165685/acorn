import 'package:flutter/material.dart';

class InsightsDemand extends StatelessWidget {
  const InsightsDemand({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(5),
      child: MediaQuery.of(context).orientation == Orientation.portrait
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
                width: size.width*0.8,
                child: Image.asset("assets/images/insights/ins_img_2.png")),
          ),
          Text(
              "launched a regional consumer study, ″Listening to the Asia MIND,“ in 2016 to celebrate the company’s 30th anniversary. The study, which was done in collaboration with SINUS Institute, is an unprecedented study representative of the consumers in 11 dynamic Asian markets – across generations, mindsets and lifestyles.",
              textAlign: TextAlign.justify,
              style:
              TextStyle(color: Color(0XFF414141), fontSize: 16)),
          TextButton(
            child: Text(
              "Learn More >",
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
            onPressed: () {},
          )
        ],
      )
          : Row(
        children: [
          SizedBox(
              width: size.width * 0.4,
              child: Image.asset(
                  "assets/images/insights/ins_img_2.png")),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "launched a regional consumer study, ″Listening to the Asia MIND,“ in 2016 to celebrate the company’s 30th anniversary. The study, which was done in collaboration with SINUS Institute, is an unprecedented study representative of the consumers in 11 dynamic Asian markets – across generations, mindsets and lifestyles.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Color(0XFF414141), fontSize: 16)),
                TextButton(
                  child: Text(
                    "Learn More >",
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}