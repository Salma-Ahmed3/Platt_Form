import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Chossing%20Maid/components/custom_row_text.dart';

import '../../../utility/app_text_style.dart';

class CustomNameAndAgeMaid extends StatelessWidget {
  const CustomNameAndAgeMaid({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CONSTELLA KAIDZA BARAKA', style: TextStyles.bold14, ),
                      SizedBox(height: 5.w ,),
                      const CustomRowText(),
                      SizedBox(height: 5.w ,),
                      Text('‏3 سنوات خبرة', style: TextStyles.regular14, ),
                    ],
                  );
  }
}