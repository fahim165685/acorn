import 'package:flutter/material.dart';
import 'package:mktbaz/app/modules/model/recent_highlights_list.dart';
import 'package:mktbaz/constants.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    required this.press,
    required this.recent_highlights_list,
    Key? key,
  }) : super(key: key);

  final VoidCallback press;
  final Recent_Highlights_List recent_highlights_list;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: MediaQuery.of(context).orientation == Orientation.portrait
              ?
              //is Mobile
              Container(
                  margin: EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 25),
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: size.height * 0.3,
                        width: size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(recent_highlights_list.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        recent_highlights_list.title,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff414141)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        recent_highlights_list.subTitle,
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff414141).withOpacity(0.8)),
                      ),
                      SizedBox(height: 10,),
                      OutlinedButton(
                          onPressed:press,
                          style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(10)),
                              side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(
                                  width: 2,
                                  color: kPrimaryColor,
                                ),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                          child: Center(
                              child: Text(
                            "Learn More >",
                            style: TextStyle(fontSize: 20),
                          ))),
                    ],
                  ),
                )
              //is Desktop
              : Container(
                  margin: EdgeInsets.all(15),
                  width: size.width * 0.4,
                  // height: size.height*0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: size.height * 0.5,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(recent_highlights_list.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        recent_highlights_list.title,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff414141)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        recent_highlights_list.subTitle,
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff414141).withOpacity(0.8)),
                      ),
                      OutlinedButton(
                          onPressed: press,
                          style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(10)),
                              side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(
                                  width: 2,
                                  color: kPrimaryColor,
                                ),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                          child: Center(
                              child: Text(
                            "Learn More >",
                            style: TextStyle(fontSize: 20),
                          )))
                    ],
                  ),
                )
    );
  }
}
