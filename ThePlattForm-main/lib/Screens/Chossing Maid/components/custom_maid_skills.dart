import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Chossing%20Maid/components/custom_mid_skills_item.dart';

                class CustomMaidSkills extends StatelessWidget {
                  const CustomMaidSkills({super.key});
                  @override
                  Widget build(BuildContext context) {
                    return   Column(
                      children: [
                    Row(
                          children: [
                            CustomMaidSkillsItem(skillsName: 'إيجاد الطبخ', width: 81.w,),
                        SizedBox(width: 10.w ,),
                            CustomMaidSkillsItem(skillsName: 'رعاية كبار السن', width: 100.w,),
                        SizedBox(width: 10.w ,),
                            CustomMaidSkillsItem(skillsName: 'اللغة الانجليزية', width: 100.w,),
                          ],
                        ),
                      SizedBox(height: 10.w ,),
                        Row(
                        children: [
                          CustomMaidSkillsItem(skillsName: 'التعامل مع الاطفال', width: 129.w,),
                      SizedBox(width: 10.w ,),
                          CustomMaidSkillsItem(skillsName: 'اللغة العربية', width: 88.w,),
                        ],
                      ),
    ],);
  }
}