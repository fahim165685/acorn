import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mktbaz/app/modules/model/recent_highlights_list.dart';
import 'package:mktbaz/constants.dart';

class Body extends StatelessWidget {

  const Body({Key? key, required this.recent_highlights_list}) : super(key: key);
  final Recent_Highlights_List recent_highlights_list;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          height:double.infinity,
          width: double.maxFinite,
          child: ListView(
            padding: EdgeInsets.all(8),
            children: [
              Center(child: Text(recent_highlights_list.title,style: GoogleFonts.acme(fontSize: 30,fontWeight: FontWeight.w400),)),
              Divider(
                height: 10,
                thickness: 3,
                color: kSedentaryColor,
                endIndent: 80,
                indent: 80,
              ),
              SizedBox(height: 15,),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(recent_highlights_list.image,fit: BoxFit.cover),
              ),
              SizedBox(height: 15,),
              Container(
                child: Text(recent_highlights_list.description,style: TextStyle(fontSize: 16)),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                width: 50,
                height: 50,
                child: Image.asset("assets/images/comma.png",color: Colors.red),
              ),
              Container(
                child:SelectableText(recent_highlights_list.bottomDescription,style: TextStyle(fontSize: 18,fontStyle:FontStyle.italic)) ,
              ),
              SizedBox(height: 15,),
              Container(
                alignment: Alignment.centerRight,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(recent_highlights_list.bottomTitle,style: TextStyle(fontSize: 30,)),
                    Text(recent_highlights_list.bottomSubTitle,textAlign: TextAlign.end,style: TextStyle(color: Color(0XFF414141)),),
                  ],
                ),
              )
            ],
          )
        ));
  }
}
