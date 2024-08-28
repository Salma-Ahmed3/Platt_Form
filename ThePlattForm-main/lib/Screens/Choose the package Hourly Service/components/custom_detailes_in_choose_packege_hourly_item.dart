import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utility/app_text_style.dart';

class CustomDetailesInChoosePackegeHorlyItem extends StatelessWidget {
  const CustomDetailesInChoosePackegeHorlyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16.h,),
            Row(
              children: [
                Text('سعر الباقه : ', style: TextStyles.regular14, ),
                Text('12,800.00', style: TextStyles.regular14.copyWith(color: const Color(0XFF24A19D)), ),
                Text(' ريال ', style: TextStyles.regular14, ),
             
              ],
            ),
            SizedBox(height: 5.h,),
            Text('عدد العاملات : 1 عاملة', style: TextStyles.regular14, ),
            SizedBox(height: 5.h,),
            Text('عدد الساعات : 4 ساعة للزيارة', style: TextStyles.regular14, ),
            SizedBox(height: 5.h,),
            SizedBox(height: 5.h,),
            Text('عدد الزيارات : 1 زيارة', style: TextStyles.regular14, ),
            SizedBox(height: 5.h,),
            Row(
              children: [
                Text('السعر بعد الخصم : ', style: TextStyles.regular14, ),
                Text('3570.99', style: TextStyles.regular14.copyWith(color: const Color(0XFF24A19D)), ),
                Text('  ريال', style: TextStyles.regular14, ),
              ],
            ),
            SizedBox(height: 5.h,),
            Text('نسبه الضريبة 15%', style: TextStyles.regular14, ),
            SizedBox(height: 5.h,),
            Text('قيمة الضريبه للسعر النهائي : 472.17 ريال', style: TextStyles.regular14, ),
            SizedBox(height: 5.h,),
            Text('السعر النهائي : 3620.00', style: TextStyles.regular14, ),
            SizedBox(height: 5.h,),
            Text('السعر شامل الضريبه و الخصم', style: TextStyles.regular14.copyWith(color: const Color(0XFF24A19D)), ),


            
           
            
            
           
          
        ],
      ),
    );
  }
}