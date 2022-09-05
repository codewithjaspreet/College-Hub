import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        ]);
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
