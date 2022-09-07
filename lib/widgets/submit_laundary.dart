import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_selection/number_selection.dart';

class SubmitLaundary extends StatelessWidget {
  const SubmitLaundary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        elevation: 0,
        backgroundColor: const Color(0xff99D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          height: 549.h,
          width: 400.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.sp))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(12.sp),
                child: Container(
                  height: 60.h,
                  width: 320.w,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/tshirt.png'),
                        SizedBox(
                          width: 3.w,
                        ),
                        const Text('T-shirt'),
                        NumberSelection(
                          theme: NumberSelectionTheme(
                              draggableCircleColor: Colors.blue,
                              iconsColor: Colors.white,
                              numberColor: Colors.white,
                              backgroundColor: Colors.deepPurpleAccent,
                              outOfConstraintsColor: Colors.deepOrange),
                          initialValue: 1,
                          minValue: -10,
                          maxValue: 10,
                          direction: Axis.horizontal,
                          withSpring: true,
                          onChanged: (int value) => print("value: $value"),
                          enableOnOutOfConstraintsAnimation: true,
                          onOutOfConstraints: () =>
                              print("This value is too high or too low"),
                        ),
                        // SpinBox(
                        //   min: 1,
                        //   max: 100,
                        //   value: 50,
                        //   onChanged: (value) => print(value),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
//
// class Items extends StatelessWidget {
//   const Items({required this.itemName});
//
//   final String itemName;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60.h,
//       width: 320.w,
//       child: Container(),
//       color: Colors.red,
//     );
//   }
// }
