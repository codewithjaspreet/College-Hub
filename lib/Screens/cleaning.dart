import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/button.dart';

class Cleaning extends StatelessWidget {
  const Cleaning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          'Cleaning',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 65.sp),
            child: Image.asset('assets/image 52.png'),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Room Number',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.sp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '502',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    width: 125.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.sp))),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Block number', style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.sp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'D1',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    width: 125.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.sp))),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.sp),
            child: Text(
              'Select time ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(27.sp),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sat',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '09',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  height: 58.h,
                  width: 56.w,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.all(Radius.circular(7.sp)),
                      border: Border.all(color: Colors.grey)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(27.sp),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Quick Service',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  height: 58.h,
                  width: 56.w,
                  decoration: BoxDecoration(
                      color: Colors.white10.withOpacity(0.1),
                      borderRadius: BorderRadius.all(Radius.circular(7.sp)),
                      border: Border.all(color: Colors.grey)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              timming(
                time: '02:30 PM',
              ),
              timming(
                time: '03:30 PM',
              ),
              timming(
                time: '04:30 PM',
              )
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              timming(
                time: '05:30 PM',
              ),
              timming(
                time: '06:30 PM',
              ),
              timming(
                time: '07:30 PM',
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.all(16.sp), child: timming(time: '08:30 PM')),
          SizedBox(
            height: 6.h,
          ),
          button(
            text: 'Submit Request',
          )
        ],
      ),
    );
  }
}

class timming extends StatelessWidget {
  const timming({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105.w,
      height: 47.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.sp)),
        border: Border.all(color: Colors.grey),
      ),
      child: Center(
          child: Text(
        time,
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
