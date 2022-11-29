import 'package:flutter/material.dart';

class Top_Text extends StatelessWidget {
  const Top_Text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5,right: 5),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "We collaborate with clients on all aspects of the Marketing Life Cycle.",
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w300,
                fontFamily: "assets/fonts/muli/Muli-Thin.TTF"
            ),
          ),
          SizedBox(height: 10,),
          Text(
            "Acorn has developed scientific models and programmes to analyse the market in creative, breakthrough ways. We believe that MR solutions must be holistic and help clients look beyond a specific problem so that when findings are applied, the whole brand/product is made stronger and never compromised.",
            style: TextStyle(fontSize: 16,),textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}