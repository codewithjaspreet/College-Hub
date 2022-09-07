import 'package:college_hub/Screens/Shop_list.dart';
import 'package:college_hub/Screens/TuckShop.dart';
import 'package:college_hub/Screens/cleaning.dart';
import 'package:college_hub/Screens/home.dart';
import 'package:college_hub/Screens/laundry.dart';
import 'package:college_hub/theme.dart';
import 'package:college_hub/widgets/cleaning_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      //designSize: const Size(360, 720),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, a) {
      return GetMaterialApp(
        theme: Themes.light,
        darkTheme: Themes.dark,
        debugShowCheckedModeBanner: false,
        home:   const ShopList(),
      );
    });
  }
}
