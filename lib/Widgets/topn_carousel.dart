import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

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
                      'Hi, ' 'Harry',
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
