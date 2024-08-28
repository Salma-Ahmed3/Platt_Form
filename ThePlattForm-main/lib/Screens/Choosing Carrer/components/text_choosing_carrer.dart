import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class TextChoosingCarrer extends StatelessWidget {
  const TextChoosingCarrer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start ,
      children: [

                Text('سائق خاص' , style: TextStyles.bold14),
                SizedBox(height: 5.h,),
                  Text(
                    'تقدم الخدمة بعقود شهرية من شهر الي 24 شهر' ,
                  style: TextStyles.regular12),
      ],
    );
  }
}