import 'package:college_hub/widgets/button.dart';
import 'package:college_hub/widgets/shop_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

import 'cleaning.dart';

class ShopList extends StatelessWidget {
  const ShopList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Food Outlets',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: shopcard("assets/kathi.png", "TuckShop")
              ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: shopcard("assets/maggiehotspot.png", "TuckShop")
              ),
              Padding(
              padding: EdgeInsets.all(8.0),
              child: shopcard("assets/quench.png", "TuckShop")
              ),
              Padding(
              padding: EdgeInsets.all(8.0),
              child: shopcard("assets/chaiok.png", "TuckShop")
              )

          ],
        ),
      ),
    );
  }
}
