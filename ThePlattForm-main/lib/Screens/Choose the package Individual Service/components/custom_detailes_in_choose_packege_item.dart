
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomDetailesInChoosePackegeItem extends StatelessWidget {
  const CustomDetailesInChoosePackegeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16.h,),
            Text('المهنة : عاملة نظافة', style: TextStyles.regular14, ),
            SizedBox(height: 5.h,),
            Text('عدد العاملات : 1 عاملة', style: TextStyles.regular14, ),
            SizedBox(height: 5.h,),
            Text('الجنسية: إندونيسيا', style: TextStyles.regular14, ),
            SizedBox(height: 5.h,),
            Row(
              children: [
                Text('السعر شامل الضريبة : ', style: TextStyles.regular14, ),
                Text('3620.00', style: TextStyles.regular14.copyWith(color: const Color(0XFF24A19D)) ),
                Text(' ريال', style: TextStyles.regular14, ),
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              children: [
                Text('السعر النهائي قبل الضريبة : ', style: TextStyles.regular14, ),
                Text('3147.83', style: TextStyles.regular14.copyWith(color: const Color(0XFF24A19D)) ),
                Text(' ريال', style: TextStyles.regular14, ),
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              children: [
                Text('السعر بعد الخصم : ', style: TextStyles.regular14, ),
                Text('3570.99', style: TextStyles.regular14.copyWith(color: const Color(0XFF24A19D)) ),
                Text(' ريال', style: TextStyles.regular14, ),
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              children: [
                Text('نسبة الضريبة : ', style: TextStyles.regular14, ),
                Text('15', style: TextStyles.regular14.copyWith(color: const Color(0XFF24A19D)) ),
                Text(' %', style: TextStyles.regular14, ),
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              children: [
                Text('قيمة الضريبة للسعر النهائي : 472.17 ريال', style: TextStyles.regular14.copyWith(color: const Color(0XFF24A19D)) ),             
              ],
            ), SizedBox(height: 5.h,),
            Row(
              children: [
                Text('السعر النهائي : ', style: TextStyles.regular14, ),
                Text('3620.00', style: TextStyles.regular14.copyWith(color: const Color(0XFF24A19D)) ),
                Text(' ريال', style: TextStyles.regular14, ),
              ],
            ),  SizedBox(height: 5.h,),
            Row(
              children: [
                Text('السعر شامل الضريبة والخصم', style: TextStyles.regular14.copyWith(color: const Color(0XFF24A19D)) ),             
              ],
            ), 
        ],
      ),
    );
  }
}

