import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utility/app_text_style.dart';

class CustomSalary extends StatelessWidget {
  const CustomSalary({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
                Text('‏9,800.00  ريال' , style: TextStyles.regular14,),
                 SizedBox(width: 10.w,),
                Text('‏12,800.00 ' , style: TextStyles.regular14.copyWith(decoration: TextDecoration.lineThrough,)
                ),
      ],
    );
  }
}