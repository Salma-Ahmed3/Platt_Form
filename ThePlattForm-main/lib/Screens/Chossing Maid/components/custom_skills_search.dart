import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utility/app_text_style.dart';

class CustomSkillsInSearch extends StatelessWidget {
  const CustomSkillsInSearch({super.key, required this.skillsText, required this.width});
final String skillsText;
final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:width,
      height: 36.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffEFEFEF),   
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(skillsText , style: TextStyles.semiBold14,)),
    );
  }
}