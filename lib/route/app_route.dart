import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:joe_stumble/feature/auth/birthday_screen.dart';
import 'package:joe_stumble/feature/auth/find_tribe.dart';
import 'package:joe_stumble/feature/auth/forgot_password_screen.dart';
import 'package:joe_stumble/feature/auth/gender_screen.dart';
import 'package:joe_stumble/feature/auth/get_mentor.dart';
import 'package:joe_stumble/feature/auth/introduce_yourself_screen.dart';
import 'package:joe_stumble/feature/auth/otp_screen.dart';
import 'package:joe_stumble/feature/auth/reset_password_screen.dart';
import 'package:joe_stumble/feature/auth/select_avatar_screen.dart';
import 'package:joe_stumble/feature/auth/sign_in_screen.dart';
import 'package:joe_stumble/feature/auth/sign_up_screen.dart';
import 'package:joe_stumble/feature/auth/terms_and_condition_screen.dart';
import 'package:joe_stumble/feature/auth/username_screen.dart';
import 'package:joe_stumble/feature/community/community_picker_screen.dart';
import 'package:joe_stumble/feature/community/courage_badge_screen.dart';
import 'package:joe_stumble/feature/community/day_one_badge_screen.dart';
import 'package:joe_stumble/feature/community/founder_badge_screen.dart';
import 'package:joe_stumble/feature/community/introduction_level.dart';
import 'package:joe_stumble/feature/community/reflection_badge_screen.dart';
import 'package:joe_stumble/feature/home/dashboard_screen.dart';
import 'package:joe_stumble/feature/home/depressed_riyaj_screen.dart';
import 'package:joe_stumble/feature/home/home_dashboard_screen.dart';
import 'package:joe_stumble/feature/home/my_journal_screen.dart';
import 'package:joe_stumble/feature/home/profile_screen.dart';
import 'package:joe_stumble/feature/home/tribe_chat_screen.dart';
import 'package:joe_stumble/feature/home/your_journal_screen.dart';
import 'package:joe_stumble/feature/journal/data_retension_screen.dart';
import 'package:joe_stumble/feature/journal/disclaimer_screen.dart';
import 'package:joe_stumble/feature/journal/ex_block_card.dart';
import 'package:joe_stumble/feature/journal/ex_block_screen.dart';
import 'package:joe_stumble/feature/journal/my_jurnal_screen1.dart';
import 'package:joe_stumble/feature/journal/my_saved_post.dart';
import 'package:joe_stumble/feature/journal/my_vedio.dart';
import 'package:joe_stumble/feature/journal/orbit_screen.dart';
import 'package:joe_stumble/feature/journal/privacy_policy_screen.dart';
import 'package:joe_stumble/feature/journal/set_your_pin_screen.dart';
import 'package:joe_stumble/feature/journal/settings_screen.dart';
import 'package:joe_stumble/feature/journal/support_screen.dart';
import 'package:joe_stumble/feature/journal/terms_of_use.dart';
import 'package:joe_stumble/feature/splash/onboarding_screen1.dart';
import 'package:joe_stumble/feature/splash/onboarding_screen3.dart';
import 'package:joe_stumble/feature/splash/question1.dart';
import 'package:joe_stumble/feature/splash/question2.dart';
import 'package:joe_stumble/feature/splash/question3.dart';
import 'package:joe_stumble/feature/splash/question4.dart';
import 'package:joe_stumble/feature/splash/question5.dart';
import 'package:joe_stumble/route/route_name.dart';

import '../feature/home/test_home_page.dart';
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
      name: RouteName.question5,
      page: () => Question5(),
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
    ),GetPage(
      name: RouteName.termsandcondition,
      page: () => TermsAndConditionsScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ), GetPage(
      name: RouteName.getMentor,
      page: () => GetMentor(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ), GetPage(
      name: RouteName.community,
      page: () => CommunityPickerScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.introductionLevel,
      page: () => IntroductionLevelsScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.founderBadge,
      page: () => FoundersBadgeScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.dayOneBadge,
      page: () => DayOneBadgeScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.courageBadge,
      page: () => CourageBadgeScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.reflectBadge,
      page: () => ReflectionBadgeScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.dashboard,
      page: () => DashboardScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),
    GetPage(
      name: RouteName.homeDashBoard,
      page: () => HomeDashboardScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),
    GetPage(
      name: RouteName.testDashBoard,
      page: () => TestHomeScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),

    GetPage(
      name: RouteName.profile,
      page: () => ProfileScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.tribute,
      page: () => TribeChatScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.yourJurnal,
      page: () => YourJurnalScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.myJurnal,
      page: () => MyJournalScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.depressedRiyaj,
      page: () => DepressedScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.myJurnal1,
      page: () => MyJournalsScreen1(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.orbit,
      page: () => OrbitScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.mySavedPost,
      page: () => MySavedPostsScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.myVedio,
      page: () => MyVideosScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.termsOfUse,
      page: () => TermsOfUseScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.privacy,
      page: () => PrivacyPolicyScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.dataRetension,
      page: () => DataRetentionDeletionPolicyScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.supportScreen,
      page: () => SupportScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.setYourPin,
      page: () => SetYourPinScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.exBlock,
      page: () => ExBlockScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.exBlockCard,
      page: () => ExBlockCard(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.settings,
      page: () => SettingsScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.testHomeScreen,
      page: () => TestHomeScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),GetPage(
      name: RouteName.disclaimerScreen,
      page: () => DisclaimersScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),







  ];

}