import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mktbaz/app/modules/about/views/about_view.dart';
import 'package:mktbaz/app/modules/home/components/top_bar.dart';
import 'package:mktbaz/app/modules/home/views/home_view.dart';
import 'package:mktbaz/app/modules/insights/insights.dart';
import 'package:mktbaz/app/modules/services/services.dart';
import 'package:mktbaz/constants.dart';
import 'package:mktbaz/size_config.dart';

import 'app/modules/careers/views/careers_view.dart';

class MyTabs extends GetxController with GetSingleTickerProviderStateMixin{
  late TabController controller;
  final List<Tab> myTabs =<Tab>[
    Tab(text: "Home"),
    Tab(text: "About"),
    Tab(text: "Services"),
    Tab(text: "Insights"),
    Tab(text: "Careers"),
    Tab(text: "Contact"),
  ];
  @override
  void onInit() {
    // TODO: implement onInit
    controller=TabController(length: 6, vsync: this);
    super.onInit();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    controller.dispose();
    super.onClose();
  }
}

class tabBar extends StatelessWidget {
  const tabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig().init(context);
    final MyTabs _tabs =Get.put(MyTabs());
    return  GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: kPrimaryColor,
            leading: IconButton(
              icon: SvgPicture.asset("assets/icon/menu.svg",color: Colors.white),
              onPressed: (){},
            ),
            actions: [
              InkWell(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Container(
                            padding: EdgeInsets.all(5),
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 8,
                                  width: Get.width*0.2,
                                  decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("There is no notification",maxLines:2,style: TextStyle(fontSize: 18,),),
                              ],
                            )),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      )
                  );
                },

                customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)) ,
                child: CircleAvatar(
                    backgroundColor: kPrimaryLightColor,
                    child: Icon(Icons.notifications_outlined)
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){},
                customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)) ,
                child: CircleAvatar(
                  backgroundColor: kPrimaryLightColor,
                  child: Icon(Icons.translate)
                ),
              )
            ],
          ),
            body: ListView(
                  children: [
                    CustomAppBar(size: size), //TopBar
                    SizedBox(height: 20,),
                    Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TabBar(
                            labelColor: kPrimaryColor,
                            isScrollable: true,
                            unselectedLabelColor: Colors.grey,
                            indicator: CircleTabIndicator(color: kPrimaryColor,radius: 5),
                            labelStyle: TextStyle(fontSize: 16),
                            controller: _tabs.controller,
                            tabs:_tabs.myTabs,
                        ),
                      ),
                    ),
                     Container(
                       height: double.maxFinite,
                       child: TabBarView(
                         controller: _tabs.controller,
                         children: [
                           HomeView(),
                           AboutView(),
                           Services(),
                           Insights(),
                           CareersView(),
                           Tab(text: "Contact"),
                         ],
                       ),
                     ),
                      ]
                    ),
                )
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color,required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]){
    return _CirclePainter(color:color,radius: radius);
  }

}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;
  _CirclePainter({required this.color,required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg){
    late Paint _paint;
    _paint = Paint()..color =color;
    _paint = _paint..isAntiAlias=true;
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2,cfg.size!.height-radius);
    canvas.drawCircle(circleOffset,radius, _paint);

  }
}



