import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CleaningPopUp extends StatelessWidget {
  const CleaningPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 258.w,
          height: 118.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              'Your laundry has been booked  \n Collect is on'),
                      TextSpan(
                          text: ' 05-sep-2022',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue)),
                    ],
                  ),
                ),
                // child: Text(
                //   'Your laundry has been booked  \n  Collect is on 05-sep-2022',
                //   textAlign: TextAlign.center,
                // ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                child: Center(
                  child: Text(
                    'Done',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                height: 24.h,
                width: 89.w,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10.sp))),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white70,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.09),
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 7), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(16.sp)),
          ),
        ),
      ),
    );
  }
}
