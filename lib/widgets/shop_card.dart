import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget shopcard(String imageurl,String name ) => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: AssetImage(
                    imageurl
                  ),
                  height: 200,
                  fit: BoxFit.cover,
                ), 
                
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                name,
                style: TextStyle(fontSize: 16),
              ),
            ),
            
          ],
        ),
      );