import 'package:flutter/material.dart';
import 'package:mktbaz/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait
        ?
        //is mobile
        Container(
            height: size.height * 0.2,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35)),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: size.width*0.3,
                          child: Image.asset("assets/icon/Logo.png")),
                      Text("Marketing & Research Consultants",style: TextStyle(color: Colors.white,),)
                    ],
                  ),
                ),
                Positioned(
                  bottom: -25,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: kPrimaryColor.withOpacity(0.22),
                              offset: Offset(0, 10),
                              blurRadius: 50),
                        ]),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.5),
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none),
                          ),
                        ),
                        IconButton(
                            onPressed: () =>
                                FocusManager.instance.primaryFocus?.unfocus(),
                            iconSize: 30,
                            color: kPrimaryColor,
                            icon: Icon(
                              Icons.search,
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          )

        //is desktop
        : Container(
            height: size.height * 0.3,
            width: double.infinity,
            color: Colors.black,
          );
  }
}

// Container(
// clipBehavior: Clip.antiAlias,
// height: 300,
// width: double.infinity,
// decoration: BoxDecoration(color: kPrimaryColor,borderRadius: BorderRadius.circular(30)),
// child: Center(
// child: Stack(
// children: [
// SvgPicture.asset("assets/icon/Dot.svg",fit: BoxFit.cover,color: kDotColor,),
// Positioned(
// top: 50,
// left: 40,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text("Hello 👋",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500,color: kTextColor),),
// Text("Good Morning",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: kTextColor),),
// ],
// )),
// Positioned(
// top: 60,
// left: size.width*0.7,
// child: Row(
// children: [
// FloatingActionButton(
// onPressed: (){},
// heroTag: "Notification",
// backgroundColor: kSedentaryColor,
// elevation: 0,
// child: Icon(Icons.notifications_none,color: kIconColor,size: 38),),
// SizedBox(width: 20,),
// FloatingActionButton(
// onPressed: (){},
// heroTag: "Translate",
// backgroundColor: kSedentaryColor,
// elevation: 0,
// child: Icon(Icons.translate,color: kIconColor,size: 38),),
// ],
// ),
// ),
//
// Positioned(
// top:200,
// left: 49,
// child: Container(
// width: size.width*0.8,
// child: TextField(
// style: TextStyle(color: Colors.black),
// decoration: InputDecoration(
// filled: true,
// fillColor: kBgColor,
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(50),
// borderSide: BorderSide.none,
// ),
// hintText: "Search",
// prefixIcon: Icon(Icons.search,size: 30),
// suffixIcon: Icon(Icons.mic_none,size: 30),
// iconColor: Colors.red
// ),),
// ),
// )
// ],
// ),
// ),
//
// );

// Container(
// height: size.height *0.2,
// child: Stack(
// children: <Widget>[
// Container(
// height: size.height * 0.5 ,
// padding: EdgeInsets.only(top: 20,left: 10,right: 10),
// decoration: BoxDecoration(
// color: kPrimaryColor,
// borderRadius: BorderRadius.only(
// bottomLeft: Radius.circular(36),
// bottomRight: Radius.circular(36)
// )
// ),
// child: Row(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Image.asset("assets/icon/Logo.png",height: 35,),
//         Text("Marketing & Research Consultants",style: TextStyle(color: Colors.white,fontSize: 18),)
//       ],
//     ),
//          FlutterLogo(size: 50,)
//   ],
// ),
// ),
// Positioned(
// bottom: 0,
// left: 0,
// right: 0,
// child: Container(
// alignment: Alignment.center,
// margin: EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.symmetric(horizontal: 20),
// height: 60,
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(25),
// boxShadow: [
// BoxShadow(
// color: kPrimaryColor.withOpacity(0.22),
// offset: Offset(0,10),
// blurRadius: 50
// ),
// ]
// ),
// child:Row(
// children: [
// Expanded(
// child: TextField(
// decoration: InputDecoration(
// hintText: "Search",
// hintStyle: TextStyle(
// color: kPrimaryColor.withOpacity(0.5),
// ),
// enabledBorder: InputBorder.none,
// focusedBorder: InputBorder.none
// ),
// ),
// ),
// IconButton(
// onPressed: ()=>  FocusManager.instance.primaryFocus?.unfocus(),
// iconSize: 30,
// color: kPrimaryColor,
// icon: Icon(Icons.search,)
// )
// ],
// ) ,
// )
// )
// ],
// ),
// );
