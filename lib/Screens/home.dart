import 'dart:math' as math;

import 'package:carousel_slider/carousel_slider.dart';
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
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12.w, top: 24.h),
                        child: Text('Categories',
                            style: Theme.of(context).textTheme.headline4),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: 16.h, left: 8.w, right: 8.w),
                        height: 450.h,
                        width: double.infinity,
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 14.w,
                            mainAxisSpacing: 14.h,
                            crossAxisCount: 3,
                          ),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return Category(image: categories[index],);
                          },
                          // physics: const NeverScrollableScrollPhysics(),
                          itemCount: categories.length,
                        ),
                      )
                    ])
              ],
            ),
          )),
    );
  }
}

class Category extends StatelessWidget {
   const Category({
    Key? key,
   required this.image, 
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.sp,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Container(
        height: 100.h,
        width: 100.w,
        alignment: Alignment.center,
        child: Image.asset(
          'assets/$image',
          height: 52.h,
          width: 52.w,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.815,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
      ),
      items: [Banner(), Banner(), Banner()],
    );
  }
}

class Banner extends StatelessWidget {
  Banner({
    Key? key,
  }) : super(key: key);
  final bkColor =
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.8);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.h),
      child: Container(
          width: 311.w,
          height: 160.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: DecorationImage(
                  image: const AssetImage(
                    'assets/florian-olivo-4hbJ-eymZ1o-unsplash.jpg',
                  ),
                  colorFilter: ColorFilter.mode(bkColor, BlendMode.plus),
                  fit: BoxFit.cover)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [leftHalf(context), rightHalf()],
          )),
    );
  }

  Image rightHalf() {
    return Image.asset(
      'assets/unsplash_KIPqvvTOC1s.png',
      height: 160.h,
      width: 111.w,
      fit: BoxFit.cover,
      // color: Colors.pink,
    );
  }

  Container leftHalf(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.w, top: 16.h, bottom: 16.h),
      width: 177.w,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 28.h,
              width: 76.w,
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 2.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Theme.of(context).backgroundColor,
              ),
              child: Text(
                '001-B-LA',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Seminar on Deep Learning',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  'By Vipul Mishra',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
            Text(
              '5:00PM, 3 Sep, Thursday',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ]),
    );
  }
}

class Top extends StatelessWidget {
  const Top({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.w),
      // color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Container(
                  color: Theme.of(context).canvasColor,
                  child: Image.asset(
                    'assets/29 5.png',
                    height: 50.h,
                    width: 50.w,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 9.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, ' + 'Harry',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 13.sp,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Bennett University, D1-502',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Container(
              width: 50.w,
              height: 50.h,
              alignment: Alignment.center,
              color: const Color(0xffF3F3F3),
              child: Stack(alignment: Alignment.topRight, children: [
                Image.asset(
                  'assets/Path_425-2.png',
                  height: 20.h,
                  width: 20.w,
                  fit: BoxFit.fill,
                ),
                Image.asset('assets/Ellipse 17.png'),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
