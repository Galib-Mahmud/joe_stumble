import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:joe_stumble/feature/auth/birthday_screen.dart';
import 'package:joe_stumble/feature/auth/find_tribe.dart';
import 'package:joe_stumble/feature/auth/forgot_password_screen.dart';
import 'package:joe_stumble/feature/auth/gender_screen.dart';
import 'package:joe_stumble/feature/auth/introduce_yourself_screen.dart';
import 'package:joe_stumble/feature/auth/otp_screen.dart';
import 'package:joe_stumble/feature/auth/reset_password_screen.dart';
import 'package:joe_stumble/feature/auth/select_avatar_screen.dart';
import 'package:joe_stumble/feature/auth/sign_in_screen.dart';
import 'package:joe_stumble/feature/auth/sign_up_screen.dart';
import 'package:joe_stumble/feature/auth/username_screen.dart';
import 'package:joe_stumble/feature/community/community_picker_screen.dart';
import 'package:joe_stumble/feature/home/home_dashboard_screen.dart';
import 'package:joe_stumble/feature/home/profile_screen.dart';
import 'package:joe_stumble/feature/splash/onboarding_screen1.dart';
import 'package:joe_stumble/feature/splash/onboarding_screen3.dart';
import 'package:joe_stumble/feature/splash/question1.dart';
import 'package:joe_stumble/feature/splash/question2.dart';
import 'package:joe_stumble/feature/splash/question3.dart';
import 'package:joe_stumble/feature/splash/question4.dart';
import 'package:joe_stumble/route/route_name.dart';

import '../feature/splash/loading_splash_screen.dart';
import '../feature/splash/onboarding_screen2.dart';

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
    ),GetPage(
      name: RouteName.onboarding2,
      page: () => OnboardingScreen2(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.onboarding3,
      page: () => OnboardingScreen3(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),
       GetPage(
      name: RouteName.signin,
      page: () => SignInScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ), GetPage(
      name: RouteName.forgetPassword,
      page: () => ForgetPasswordScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),  GetPage(
      name: RouteName.otpScreen,
      page: () => OtpScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ), GetPage(
      name: RouteName.resetPassword,
      page: () => ResetPasswordScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ), GetPage(
      name: RouteName.signUp,
      page: () => SignUpScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ), GetPage(
      name: RouteName.username,
      page: () => UserName(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ), GetPage(
      name: RouteName.birthday,
      page: () => BirthdayScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ), GetPage(
      name: RouteName.gender,
      page: () => GenderScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ), GetPage(
      name: RouteName.findYourTribute,
      page: () => FindYourTribeScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.question1,
      page: () => Question1(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.question2,
      page: () => Question2(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.question3,
      page: () => Question3(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.question4,
      page: () => Question4(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.selectAvatar,
      page: () => SelectAvatar(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.introduceYourself,
      page: () => IntroduceYourselfScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.birthdayScreen,
      page: () => BirthdayScreen(),
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
    ),GetPage(
      name: RouteName.profile,
      page: () => ProfileScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),







  ];

}