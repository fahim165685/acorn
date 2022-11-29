
import 'package:flutter/material.dart';
import 'package:mktbaz/constants.dart';

class Bottom_Item extends StatelessWidget {
  const Bottom_Item({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Other Services",
            style: TextStyle(fontSize:50 , fontWeight: FontWeight.w100),
          ),

          Text(
            "Through our associate company, Activiste, we offer brand consultancy services. Activiste is an invaluable extension of our brand research work, where the insights from the research are crafted into an integrated brand strategy and activation programme for clients. To find out more about Activiste, please go to",
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 18,
              fontWeight: FontWeight.w400),),

          InkWell(
            onTap: (){},
              child: Text("www.activistebrands.com.",style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 18,
                color: Color(0xFF8B0000),
              ))),
          SizedBox(height: 10),
          MediaQuery.of(context).orientation == Orientation.portrait ?

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset:Offset(15,10),
                      blurRadius: 15,
                      spreadRadius: 1,
                      color: kPrimaryColor.withOpacity(0.2)
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Text("Customised Research Tools",style: TextStyle(fontSize: 28,color: Colors.black.withOpacity(0.5)),),
                    ListText(text: "Market Construction Study",),
                    ListText(text: "Market Segmentation Study",),
                    ListText(text: "Brand Equity Study",),
                    ListText(text: "Brand and Ad Monitoring",),
                    ListText(text: "Mystery Shopper Survey",),
                    ListText(text: "Product Values Probe",),
                    ListText(text: "Product Acceptance Test",),
                    ListText(text: "Pricing Research",),
                    ListText(text: "Communication Concept Research",),
                    ListText(text: "Conjoint Modelling",),
                    ListText(text: "Mobile & Online surveys",),
                  ],
                ),
              ),
            SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset:Offset(15,10),
                          blurRadius: 15,
                          spreadRadius: 1,
                          color: kPrimaryColor.withOpacity(0.2)
                      )
                    ]
                ),
                child: Column(
                  children: [
                    Text("Brand Consultancy",style: TextStyle(fontSize: 28,color: Colors.black.withOpacity(0.5)),),
                    ListText(text: "Brand Strategy Development",),
                    ListText(text: "Brand Naming",),
                    ListText(text: "Brand Design",),
                    ListText(text: "Brand Activation—internal brand\nalignment, marketing\ncommunications,brand guidelines",),

                  ],
                ),
              ),

            ],):

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset:Offset(15,10),
                          blurRadius: 15,
                          spreadRadius: 1,
                          color: kPrimaryColor.withOpacity(0.2)
                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Customised Research Tools",style: TextStyle(fontSize: 28,color: Colors.black.withOpacity(0.5)),),
                    ListText(text: "Market Construction Study",),
                    ListText(text: "Market Segmentation Study",),
                    ListText(text: "Brand Equity Study",),
                    ListText(text: "Brand and Ad Monitoring",),
                    ListText(text: "Mystery Shopper Survey",),
                    ListText(text: "Product Values Probe",),
                    ListText(text: "Product Acceptance Test",),
                    ListText(text: "Pricing Research",),
                    ListText(text: "Communication Concept Research",),
                    ListText(text: "Conjoint Modelling",),
                    ListText(text: "Mobile & Online surveys",),
                  ],),
              ),
              SizedBox(width: 30,),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset:Offset(15,10),
                          blurRadius: 15,
                          spreadRadius: 1,
                          color: kPrimaryColor.withOpacity(0.2)
                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Brand Consultancy",style: TextStyle(fontSize: 28,color: Colors.black.withOpacity(0.5)),),
                    ListText(text: "Brand Strategy Development",),
                    ListText(text: "Brand Naming",),
                    ListText(text: "Brand Design",),
                    ListText(text: "Brand Activation—internal brand\nalignment, marketing\ncommunications,brand guidelines",),
                  ],),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ListText extends StatelessWidget {
  final String text;
  const ListText({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Icon(Icons.circle,size: 10),
      SizedBox(width: 10,),
      Text(text,style: TextStyle(fontSize: 18),),

    ],);
  }
}


