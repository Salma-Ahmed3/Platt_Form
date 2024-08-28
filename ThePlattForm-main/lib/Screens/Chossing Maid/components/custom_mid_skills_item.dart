import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utility/app_text_style.dart';

class CustomMaidSkillsItem extends StatelessWidget {
  const CustomMaidSkillsItem({super.key, required this.skillsName, required this.width});
final String skillsName;
final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: width,
              height: 26.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color:  const Color(0xffACACAC),
                  width: 1,
                ),
              ),
              child:  Center(
                child: Text(skillsName, style: TextStyles.regular12.copyWith(color: Color(0xff24A19D)),),
                ),
            ),
              ],
        )
      ],
    );
  }
}