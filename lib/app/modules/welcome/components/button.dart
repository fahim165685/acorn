import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mktbaz/constants.dart';

import '../../../routes/app_pages.dart';

enum ButtonState{init, loading, done}

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isAnimation =true;
  ButtonState state =ButtonState.init;
  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.of(context).size.width;
    final isDone = state == ButtonState.done;
    final isStretched = isAnimation || state ==ButtonState.init;

    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: AnimatedContainer(
        duration: Duration(milliseconds:500),
        curve: Curves.easeIn,
        width: state == ButtonState.init ? width:70,
          onEnd: ()=> setState(()=>isAnimation =!isAnimation),
          height: 70,
          child:isStretched? buildButton() : buildSmallButton(isDone),
      ),
    );
  }

  OutlinedButton buildButton() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: StadiumBorder(),
        side: BorderSide(width: 2,color: kPrimaryColor),
      ),
      child: FittedBox(
        child: Text(
          "GET STARTED",
          style: TextStyle(
            fontSize: 24,
            color: kPrimaryColor,
            letterSpacing:1.5,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    onPressed: () async{
        setState(()=>state = ButtonState.loading);
        await Future.delayed(Duration(seconds: 1));
        setState(()=>state = ButtonState.done);
        await Future.delayed(Duration(seconds: 1));

        setState(()=>state = ButtonState.init);
        setState(()=>Get.toNamed(Routes.TabBar,));
    },
  );

  }
  Widget buildSmallButton(bool isDone){
    final color = isDone?kPrimaryLightColor:kSedentaryColor;
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Center(
          child: isDone?
          Icon(Icons.done,size: 52,color: Colors.white,):
          CircularProgressIndicator(color: Colors.white,)),
    );
  }

}
