import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
                      Text('‏31 سنة', style: TextStyles.regular14, ),
                      SizedBox(width: 23.w ,),
                      Text('مسلمة', style: TextStyles.regular14, ),
      ],
    );
  }
}
