import 'package:flutter/material.dart';
import 'package:mktbaz/app/modules/about/detalls/components/body.dart';
import 'package:mktbaz/constants.dart';
import 'package:mktbaz/size_config.dart';
import '../../model/country_manager_list.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details_screen';
  @override
  Widget build(BuildContext context) {
    final ManagerDetailsArgument argument = ModalRoute.of(context)!.settings.arguments as ManagerDetailsArgument;
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              extendedSizeConstraints: BoxConstraints.tightFor(),
              extendedPadding: EdgeInsets.all(15),
              backgroundColor: kPrimaryColor),
        ),
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pop(context);
          },
          label: Text("Go Back".toUpperCase(), style: TextStyle(fontSize: 15)),
          icon: Icon(Icons.arrow_back_ios_outlined),
        ),
      ),
      body: Body(country_manager_list: argument.country_manager_list,),
    );
  }
}

class ManagerDetailsArgument {
  final Country_Manager_List country_manager_list;
  ManagerDetailsArgument({required this.country_manager_list});
}
