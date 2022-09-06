import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TuckShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
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
          'Tuck Shop',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(18.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimSearchBar(
                  width: 305.w,
                  color: Colors.white,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  textController: textController,
                  onSuffixTap: () {}),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  shopItem(
                    image: 'assets/fruits.png',
                    color: (0xFFC1EDD1),
                    desc: 'Fruits',
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  shopItem(
                    image: 'assets/drinks.png',
                    color: (0xFFFBE7D2),
                    desc: 'Drinks',
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  shopItem(
                    image: 'assets/personal.png',
                    color: (0xFFF7A593),
                    desc: 'Personal \nEssentials',
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  shopItem(
                    image: 'assets/chips.png',
                    color: (0xFFD3B0E0),
                    desc: 'Bakery &\n Snacks',
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  shopItem(
                    image: 'assets/liquid.png',
                    color: (0xFFFFF9E5),
                    desc: 'Dairy & Eggs',
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  shopItem(
                    image: 'assets/icecream.png',
                    color: (0xFFD2E7F2),
                    desc: 'Frozen',
                  ),
                ],
              )
              // Container(
              //   width: 330.01.w,
              //   height: 50.08.h,
              //   child: Padding(
              //     padding: EdgeInsets.all(8.sp),
              //     child: Row(
              //       children: [
              //         Icon(
              //           Icons.search,
              //           color: Colors.black,
              //         ),
              //         SizedBox(
              //           width: 10.w,
              //         ),
              //         Text(
              //           'Find your Items',
              //           style: TextStyle(color: Colors.black),
              //         ),
              //       ],
              //     ),
              //   ),
              //   decoration: BoxDecoration(
              //       color: Color(0xFFF2F3F2),
              //       borderRadius: BorderRadius.all(Radius.circular(10.sp))),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class shopItem extends StatelessWidget {
  const shopItem({
    super.key,
    required this.image,
    required this.color,
    required this.desc,
  });

  final String image;
  final int color;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 180.h,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(
            height: 10.h,
          ),
          Text(
            desc,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                color: Colors.black),
          )
        ],
      ),
    );
  }
}
