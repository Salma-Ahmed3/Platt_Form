import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Contract%20Success/components/custom_wallet_balance.dart';

class CustomContainerWalletBalance extends StatelessWidget {
  const CustomContainerWalletBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305.w,
      height: 55.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffF8F8F8),
        border: Border.all(
          color: Color(0xffE9E9E9),
        ),),
        child:const CustomWalletBalance() ,
    );
  }
}
