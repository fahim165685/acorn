import 'package:flutter/material.dart';
import 'package:mktbaz/app/modules/model/country_manager_list.dart';
import 'package:mktbaz/constants.dart';

class Body extends StatelessWidget {
  final Country_Manager_List country_manager_list;

  const Body({Key? key, required this.country_manager_list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: kPrimaryColor.withOpacity(0.2),
                      offset: Offset(10,0),
                      blurRadius: 30,
                    )
                  ]
                ),
                child:
                Image.asset(
                  (country_manager_list.image),fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 10,right: 20,top: 10,bottom: 10),
              // height: 100,
              // width: 180,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.5),
                borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50))
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    country_manager_list.name.toUpperCase(),
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: "assets/fonts/muli/Muli-Thin.TTF",
                    ),
                  ),
                  Text(
                    country_manager_list.country,
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                ],
              ) ,
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10,),
              child: Container(
                width: double.infinity,
                child: Text(country_manager_list.description,
                    style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(height: 80,)
          ],
        ),
      ),
    );
  }
}
