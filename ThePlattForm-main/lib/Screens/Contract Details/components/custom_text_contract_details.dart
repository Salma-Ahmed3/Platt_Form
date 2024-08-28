import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomTextContractDetails extends StatelessWidget {
  const CustomTextContractDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31),
      child: Column(
        children: [
          const SizedBox(height: 66,),
          Row(
            children: [
              Text('مدة التعاقد', style: TextStyles.regular14,),
          const SizedBox(width: 31,),
              Text('‏1 اسبوع', style: TextStyles.regular14.copyWith(color: const Color(0xff24A19D)),),
            ],
          ),
          const SizedBox(height: 14,),
          Row(
            children: [
              Text('عدد العاملات', style: TextStyles.regular14,),
          const SizedBox(width: 23,),
              Text('1', style: TextStyles.regular14.copyWith(color: const Color(0xff24A19D)),),
            ],
          ),
          const SizedBox(height: 14,),
          Row(
            children: [
              Text('الجنسية', style: TextStyles.regular14,),
          const SizedBox(width: 57,),

              Text('كينيا', style: TextStyles.regular14.copyWith(color: const Color(0xff24A19D)),),
            ],
          ),
          const SizedBox(height: 14,),
          Row(
            children: [
              Text('عدد الزيارات', style: TextStyles.regular14,),
          const SizedBox(width: 36,),
              Text('1', style: TextStyles.regular14.copyWith(color: const Color(0xff24A19D)),),
            ],
          ),
          const SizedBox(height: 14,),
          Row(
            children: [
              Text('عدد الساعات', style: TextStyles.regular14,),
          const SizedBox(width: 27,),
              Text('4', style: TextStyles.regular14.copyWith(color: const Color(0xff24A19D)),),
            ],
          ),
          const SizedBox(height: 14,),
          Row(
            children: [
              Text('بداية العقد', style: TextStyles.regular14,),
          const SizedBox(width: 27,),
              Text('27/08/2023', style: TextStyles.regular14.copyWith(color: const Color(0xff24A19D)),),
            ],
          ),
          const SizedBox(height: 14,),
          Row(
            children: [
              Text('انتهاء العقد', style: TextStyles.regular14,),
          const SizedBox(width: 27,),
              Text('03/09/2023', style: TextStyles.regular14.copyWith(color: const Color(0xff24A19D)),),
            ],
          ),
        ],
      ),
    );
  }
}