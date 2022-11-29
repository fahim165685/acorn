import 'package:flutter/material.dart';

class Text_1 extends StatelessWidget {
  final String top_text;
  final String dis_text;
  const Text_1({Key? key, required this.top_text, required this.dis_text,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(top_text,
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: "assets/fonts/muli/Muli-Thin.TTF")),
          SizedBox(
            height: 10,
          ),
          Text(
            dis_text,
            style: TextStyle(fontSize: 15,shadows: [Shadow(color: Colors.white.withOpacity(1),blurRadius: 30,offset: Offset(10,0))] ),
          )
        ],
      ),
    );
  }
}
