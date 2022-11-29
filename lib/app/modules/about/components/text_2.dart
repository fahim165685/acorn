import 'package:flutter/material.dart';

class Text_2 extends StatelessWidget {
  const Text_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
            Text("Acorn",style: TextStyle(color: Color(0xFFE73137),fontSize: 25)),
            Text("+ Thinker",style: TextStyle(color: Colors.black,fontSize:25)),
          ],
          ),
          SizedBox(
            height: 10,
          ),
          Text("We chose ‘The Thinker’ as an inspiration because we must always be a thinking MR company. We took an acorn as an aspiration knowing that one day we will grow into an oak tree.",
            style: TextStyle(fontSize: 15,shadows: [Shadow(color: Colors.white.withOpacity(1),blurRadius: 30,offset: Offset(10,0))] ),
          ),
        ],
    );
  }
}