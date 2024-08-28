 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 40.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: const Color(0xffEFEFEF),
        borderRadius: BorderRadius.circular(20),
       
      ),
      child: 
           GestureDetector(
            onTap:   Navigator.of(context).pop,
            child: const Icon(Icons.close),
         )
 
    );}
}