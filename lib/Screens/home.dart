import 'dart:math' as math;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:college_hub/Widgets/categories.dart';
import 'package:college_hub/Widgets/topn_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final categories = [
    '001-washing-machine.png',
    'image 33.png',
    'image 35.png',
    'image 36.png',
    'image 37.png',
    'image 41.png',
    'image 42.png',
    'image 43.png',
    'image 48.png',
    'image 49.png',
    'image 50.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 50.h),
          color: Theme.of(context).backgroundColor,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Top(),
                const BannerCarousel(),
                Categories(categories: categories)
              ],
            ),
          )),
    );
  }
}


