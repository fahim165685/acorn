
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mktbaz/constants.dart';

class TopText extends StatefulWidget {
  const TopText({Key? key}) : super(key: key);

  @override
  State<TopText> createState() => _TopTextState();
}

class _TopTextState extends State<TopText> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait? Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text_1(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text_2(),
             SizedBox(height: 5,),
             CustomButton(),
          ],
        ),
      ],
    ):
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Text_1()),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text_2(),
            SizedBox(height: 5,),
            CustomButton(),
          ],
        )),
      ],
    );
  }

  Container CustomButton() {

    return Container(
      margin: EdgeInsets.only(left: 5,right: 5),
            decoration: BoxDecoration(
                color: kPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                SizedBox(width: 5,),
                Container(
                  height: 25,
                  width: 5,
                  decoration:BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Container(
                              padding: EdgeInsets.all(5),
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 8,
                                      width: Get.width*0.2,
                                      decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("NO Data Exists",maxLines:2,style: TextStyle(fontSize: 18,),),
                                  ],
                                )),
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        )
                      );
                    },
                    style: ButtonStyle(

                    ),
                    child: Text("View Available Positions >",style: TextStyle(color: Colors.white,fontSize: 18)),),
                ),
              ],
            ),
          );
  }

  Container Text_2() {
    return Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: kPrimaryColor
        ),
        child: Column(
          children: [
            Container(
              width: Get.width*0.3,
              height: 5,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
            ),
            Text("Before You Apply...",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w100,color: Colors.white),),
            Container(
              clipBehavior: Clip.antiAlias,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30)
              ),
              child:Text("What is expressed here on the Making of an Acorn Researcher is solely our viewpoint. These views are intended to dispel any misconceptions about becoming a marketing researcher.",
                style: TextStyle(fontSize: 16),
              ) ,
            )
          ],
        ),
      );
  }

  Container Text_1() {
    return Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(30)
        ),
        child: Column(
          children: [
            Container(
              width: Get.width*0.3,
              height: 5,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
            ),
            Text(
              "Do You Have What It Takes To Be An Acorn Researcher?",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontSize: 30, height: 1.2, fontWeight: FontWeight.w100,color: Colors.white),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Text(text: "I'm curious and always want to learn more."),
                  _Text(text: "I can think on my feet and write well."),
                  _Text(
                      text:
                      "I have a ″I can″ attitude instead of the ″How can I?″ self doubt."),
                  _Text(text: "I strive for excellence, 'slacker' is not in my vocab."),
                  _Text(text:"I always have a Plan B because anything that can go wrong, will go wrong."),
                  _Text(
                      text:
                      "I can keep a secret because confidentiality and discretion are sacred."),
                  _Text(text: "I'm prepared to hit the ground running."),
                ],
              ),
            ),
          ],
        ),
      );
  }
}

class _Text extends StatelessWidget {
  const _Text({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 9),
              child: Icon(
                Icons.circle,
                size: 12,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(text,
                  style: TextStyle(color: Colors.black, fontSize: 17)),
            )
          ],
        ));
  }
}
