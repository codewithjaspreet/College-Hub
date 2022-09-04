import 'package:college_hub/Screens/home.dart';
import 'package:college_hub/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'College Hub',
      theme: Themes.light,
      darkTheme: Themes.dark,
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

