import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Laundry extends StatelessWidget {
  const Laundry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appBarMain = AppBar(
      backgroundColor: Theme.of(context).backgroundColor,
      centerTitle: false,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
          size: 18.sp,
        ),
      ),
      title: Text(
        'Laundry',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: appBarMain,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 13.h, left: 17.w, right: 17.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LabelField(
                    label: "Enrollment Number",
                    width: 345.w,
                    data: "E20CSE479",
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LabelField(
                          label: "Laundry Bag Number",
                          width: 125.w,
                          data: "812"),
                      LabelField(
                          label: "Date", width: 125.w, data: "01-Sep-2022")
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              height: 560.h,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).highlightColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r))),
                child: Column(children: [
                  Row(
                    children: [

                    FlutterLogo(),
                     Text(
                      "Laundry Bag 1",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .apply(color: Colors.black),
                    ),
                     Row(
                      children: [
                        ClipOval(
                          child: Container(
                            height: 20.h,
                            width: 20.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Theme.of(context).cardColor ,
                                borderRadius: BorderRadius.circular(5.r)),
                            child:Icon(Icons.remove,color: Colors.black,size: 10.sp,),
                          ),
                        ),  
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Text("5",
                          style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .apply(color: Colors.black, fontWeightDelta: 700),
                          ),
                        ),
                        ClipOval(
                          child: Container(
                            height: 20.h,
                            width: 20.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Theme.of(context).cardColor ,
                                borderRadius: BorderRadius.circular(5.r)),
                            child:Icon(Icons.add,color: Colors.black,size: 10.sp,),
                          ),
                        ),
                      ],
                    ),
                    ],
                  )
                ]),
              ),
            )
          ],
        ));
  }
}

class LabelField extends StatelessWidget {
  final double width;
  final String label;
  final String data;
  const LabelField({
    Key? key,
    required this.label,
    required this.width,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.caption),
        Container(
          width: width,
          height: 35.h,
          margin: EdgeInsets.only(top: 5.h),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 21.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.sp),
              border: Border.all(width: 1.5, color: const Color(0xffEEEEEE))),
          child: Text(data,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .apply(fontWeightDelta: 600)),
        ),
      ],
    );
  }
}
