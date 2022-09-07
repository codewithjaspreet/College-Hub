import 'package:college_hub/Screens/laundry.dart';
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
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title:  Text(
          'Cleaning',
          style: Theme.of(context).textTheme.headline4,
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
            LabelField(label: "Room Number", width: 125.w, data: "502") ,
             LabelField(label: "Block Number", width: 125.w, data: "D1") 
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
                child: middleMethod(context),
              ),
              Container(
                height: 58.h,
                width: 56.w,
                decoration: BoxDecoration(
                    color: Colors.white10.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(7.sp)),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text(
                      'Quick Service',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle1!.apply(
fontSizeFactor: 0.9,
color: const Color(0xff757575)

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
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
            children: const [
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
              padding: EdgeInsets.all(16.sp), child: const timming(time: '08:30 PM')),
          SizedBox(
            height: 6.h,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 314.w,
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16.sp)),
                  color: const Color(0xFF22A8B9),
                ),
                child: Center(
                  child: Text(
                    'Submit Request',
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],

          )
        ],
      ),
    );
  }

  Container middleMethod(BuildContext context) {
    return Container(
                height: 58.h,
                width: 56.w,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(7.sp)),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      'Sat',
                      style: Theme.of(context).textTheme.subtitle1!.apply(
                        fontSizeDelta: 5.sp,
                        color: Color(0xff757575)
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    const Text(
                      '09',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
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

        style: Theme.of(context).textTheme.subtitle1!.apply(
              fontSizeFactor: 0.9,
              color: const Color(0xff161616),
            ),

      )),
    );
  }
}
