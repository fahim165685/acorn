import 'package:get/get.dart';
import 'package:mktbaz/app/modules/about/detalls/details_screen.dart';
import 'package:mktbaz/app/modules/insights/components/details_screen/details_screen.dart';
import 'package:mktbaz/tab_bar.dart';

import '../modules/about/bindings/about_binding.dart';
import '../modules/about/views/about_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/welcome/welcome_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WelcomeScreen;

  static final routes = [
    GetPage(
      name: _Paths.WelcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.TabBar,
      page: () => const tabBar(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: _Paths.DetailsScreen,
        page: () =>DetailsScreen(),
    ),
    GetPage(
      name: _Paths.RH_DetailsScreen,
      page: () =>RH_DetailsScreen(),
    )
  ];
}
