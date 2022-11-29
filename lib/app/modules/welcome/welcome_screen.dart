import 'package:flutter/material.dart';
import 'package:mktbaz/app/modules/welcome/components/body.dart';

import 'package:mktbaz/constants.dart';
import 'package:mktbaz/size_config.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      backgroundColor: kBgColor,
      body: Body(),
    );
  }
}
