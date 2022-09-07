import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class button extends StatelessWidget {
  const button({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 314.w,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          height: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.sp)),
            color: Color(0xFF22A8B9),
          ),
        )
      ],
    );
  }
}
