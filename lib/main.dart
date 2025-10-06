import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:joe_stumble/route/app_route.dart';
import 'package:joe_stumble/route/route_name.dart';
import 'package:joe_stumble/theme/custom_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 915), // Set the base design size (use the screen size of the design file)
      minTextAdapt: true, // Optionally adapt font size based on screen size
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: CustomTheme.themeData, // Using your custom theme
          initialRoute: RouteName.splashloading,
          getPages: AppRoute.pages,
        );
      },
    );
  }
}
