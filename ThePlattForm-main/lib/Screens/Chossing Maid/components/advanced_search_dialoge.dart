
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Chossing%20Maid/components/custom_skills_search.dart';
import 'package:nowproject/components/custom_circle_exit/custom_circle_avatar_dialog.dart';
import 'package:nowproject/utility/app_text_style.dart';

import '../../../components/custom_button/custom_button_in_add_new_addrease.dart';

class AdvancedSearchDialog extends StatelessWidget {
  const AdvancedSearchDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22, vertical:44),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                              Center(
                                child: Text(
                                                            'بحث متقدم',
                                style: TextStyles.semiBold18,
                                                            ),
                              ),
                            const SizedBox(height: 18,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Text('الحالة الاجتماعية', style: TextStyles.semiBold12,),
                                const CustomSkillsInSearch(skillsText: 'متزوجة ', width: 72,),
                                const CustomSkillsInSearch(skillsText: 'غير متزوجة ', width: 100,),
                              ],
                            ),
                            const SizedBox(height: 33,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Text('الخبرات', style: TextStyles.semiBold12,),
                            const SizedBox(width: 60,),
                                const CustomSkillsInSearch(skillsText: 'خبرة ', width: 72,),
                            const SizedBox(width: 12,),
                                const CustomSkillsInSearch(skillsText: 'بدون خبرة  ', width: 100,),
                              ],
                            ),
                            const SizedBox(height: 33,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Text('الديانه', style: TextStyles.semiBold12,),
                            const SizedBox(width: 60,),
                                const CustomSkillsInSearch(skillsText: 'مسلم ', width: 72,),
                            const SizedBox(width: 12,),
                                const CustomSkillsInSearch(skillsText: 'غير مسلم', width: 100,),
                              ],
                            ),
                            const SizedBox(height: 32,),
                            Text(
                            'المهارات',
                              style: TextStyles.semiBold12,
                            ),
                            const SizedBox(height: 13,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomSkillsInSearch(skillsText: 'الطبخ', width:  72,),
                              CustomSkillsInSearch(skillsText: 'رعاية كبار السن', width:  120,),
                              CustomSkillsInSearch(skillsText: 'رعاية الأطفال', width:  90,),
                            ],
                          ),
                            const SizedBox(height: 18,),
                            Text(
                            'اللغات',
                              style: TextStyles.semiBold12,
                            ),
                            const SizedBox(height: 12,),
                          const Row(
                            children: [
                              CustomSkillsInSearch(skillsText: 'العربية', width:  72,),
                             SizedBox(width: 8,),
                              CustomSkillsInSearch(skillsText: 'الإنجليزية', width:  102,),
                            ],
                          ),
                          SizedBox(height: 35,),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButtonInAddNewAddrease(
                                      onTap: () {
                                        Navigator.pop(context);
                                      }, alignment:  Alignment.centerRight, 
                                      colorBackGround: Colors.transparent, 
                                      tixtInButton:  Center(
                                        child: Text('مسح الخيارات',
                                          style: TextStyles.regular18,
                                          ),
                                      ), width: 167, height: 48, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8) ,
                                      ),
                                      CustomButtonInAddNewAddrease(
                                      onTap: () {
                                        Navigator.pop(context);

                                      }, alignment:  Alignment.centerLeft, 
                                      colorBackGround: Colors.black,
                                        tixtInButton: Center(
                                          child: Text('موافق',
                                            style: TextStyles.regular18.copyWith(color: Colors.white),
                                            ),
                                        ), width: 108, height: 47, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8) ,
                                      ),
                                      ],
                                    ),
                          ],
                        ),
                        
                      ),
                      
                    ),
        ),
          Positioned(
          top: 108.h,
          child: const CustomCircleAvatar()),
      ],
    );
  }
}
