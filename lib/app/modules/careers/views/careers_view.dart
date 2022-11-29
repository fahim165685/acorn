import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mktbaz/app/modules/careers/components/expansion_title.dart';
import 'package:mktbaz/app/modules/careers/components/title_card.dart';
import 'package:mktbaz/app/modules/careers/components/top_bar.dart';
import 'package:mktbaz/app/modules/careers/components/top_text.dart';
import 'package:mktbaz/constants.dart';

import '../controllers/careers_controller.dart';

class CareersView extends GetView<CareersController> {
  const CareersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        TopBar(),
        TopText(),
        ExpansionTitle(),
      ],
    );
  }
}
