import 'package:flutter/material.dart';
import 'package:mktbaz/app/modules/model/country_manager_list.dart';
import 'package:mktbaz/size_config.dart';

class ManagerCard extends StatelessWidget {
  const ManagerCard({
    Key? key,
    this.width=130,
    this.aspectRetion=1.02,
    required this.country_manager_list,
    required this.press,
  }) : super(key: key);

  final double width, aspectRetion;
  final Country_Manager_List country_manager_list;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20),bottom: getProportionateScreenHeight(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(130),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRetion,
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(country_manager_list.image,
                  ),
                ),
              ),
              Text(
                country_manager_list.name,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: getProportionateScreenWidth(12),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                country_manager_list.country,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: getProportionateScreenWidth(10)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
