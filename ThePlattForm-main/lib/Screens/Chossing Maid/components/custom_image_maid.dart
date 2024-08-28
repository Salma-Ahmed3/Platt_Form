import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_images.dart';

class CustomImageMaid extends StatelessWidget {
  const CustomImageMaid({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            width: 45.r,
            height: 45.r, 
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle, 
              border: Border.all(color: Colors.black), 
            ),
            child: CircleAvatar(
              radius: 25.r,
              backgroundColor: Colors.transparent, 
              child: Image.asset(Assets.imagesUserIcon, width: 30.w),
            ),
          );
  }
}