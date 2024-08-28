import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Chossing%20Maid/components/custom_detailes_item.dart';

class CustomMaidDetailes extends StatelessWidget {
  const CustomMaidDetailes({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 174.h,
      decoration: BoxDecoration(
        color: Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color:  Colors.black,
          width: 1,
        ),
      ),
      child:  CustomMaidDetailesItem(onTap: onTap,),
      );

  }
}
