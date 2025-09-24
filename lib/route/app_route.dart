import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:joe_stumble/feature/auth/sign_in_screen.dart';
import 'package:joe_stumble/feature/community/community_picker_screen.dart';
import 'package:joe_stumble/feature/home/home_dashboard_screen.dart';
import 'package:joe_stumble/feature/splash/onboarding_screen1.dart';
import 'package:joe_stumble/route/route_name.dart';

import '../feature/splash/loading_splash_screen.dart';

class AppRoute {
  static final List<GetPage> pages = [
    GetPage(
      name: RouteName.splashloading,
      page: () => SplashScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ), GetPage(
      name: RouteName.onboarding1,
      page: () => OnboardingScreen1(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),
       GetPage(
      name: RouteName.signin,
      page: () => SignInScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ), GetPage(
      name: RouteName.community,
      page: () => CommunityPickerScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.homeDashBoard,
      page: () => HomeDashboardScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),







  ];

}