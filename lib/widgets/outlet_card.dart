import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class outletCard extends StatelessWidget {
  const outletCard({
    super.key,
    required this.outletname,
    required this.imageurl,
    required this.category,
    
  });

  final String outletname;
  final String imageurl;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: AssetImage(
                    imageurl
                  ),
                  height: 180.h,
                  fit: BoxFit.cover,
                ), 
                
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    outletname,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    category,
                    style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).disabledColor),
                  ),
                  
                ],
              ),
            ),
            
          ],
        ),
      );
  }
}
