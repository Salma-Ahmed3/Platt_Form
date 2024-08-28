import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomWalletBalance extends StatelessWidget {
  const CustomWalletBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text('لديك رصيد محفظة \n‏60 ريال يمكنك استخدامها للتعاقد' , style: TextStyles.regular12,),
         SizedBox(width: 17.w,),
          Expanded(
            child: Container(
                  width: 50.w,
                  height: 32.h,
                  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffF8F8F8),
            border: Border.all(
              color: const Color(0xffE9E9E9),
            ),),
            
            child:
             Align(
              alignment: Alignment.center,
              child: Text('0' , style: TextStyles.regular16,)) ,
                ),
          ),
         SizedBox(width: 4.w,),
      
          Expanded(
            child: Container(
                  width: 66.w,
                  height: 32.h,
                  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffACACAC),
                  ),
            child:
             Align(
              alignment: Alignment.center,
              child: Text('استبدال' , style: TextStyles.regular12.copyWith(color: Colors.white,)) ,
                ),
                ),
          ),],
      ),
    );
  }
}