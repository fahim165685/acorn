import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mktbaz/app/modules/insights/components/insights_demand.dart';
import 'package:mktbaz/app/modules/insights/components/insights_text.dart';
import 'package:mktbaz/app/modules/insights/components/recent_highlight_card_list.dart';
import 'package:mktbaz/app/modules/insights/components/top_header.dart';

class Insights extends StatelessWidget {
  const Insights({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        TopHeader(),
        InsightsText(),
        InsightsDemand(),
        Recent_Highlight_Card_List(),
        Container(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("Our Clients",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w200),)),
              Divider(
                color: Colors.black,
                thickness: 2,
                height: 2,
                indent: size.width*0.3,
                endIndent: size.width*0.3,
              ),
              SizedBox(height: 20,),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20)
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: (){}, child: Icon(Icons.arrow_back_ios_new)),
                    TextButton(onPressed: (){}, child: Icon(Icons.arrow_forward_ios)),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Center(child: Text("We also run surveys for different brands and sectors of the economy:",style:GoogleFonts.anticDidone(fontSize: 25,fontWeight: FontWeight.w300),)),
              Center(child: Text("- Sun Life Survey\n- SBF Survey\n- KBZ Survey",style:GoogleFonts.anticDidone(fontSize: 20,fontWeight: FontWeight.w300),)),
            ],
          ),
        ),

      ],
    );
  }
}


