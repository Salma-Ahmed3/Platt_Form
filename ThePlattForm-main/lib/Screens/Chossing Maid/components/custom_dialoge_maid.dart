import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/Screens/Chossing%20Maid/components/custom_image_maid.dart';
import 'package:nowproject/Screens/Chossing%20Maid/components/custom_mid_skills_item.dart';
import 'package:nowproject/Screens/Chossing%20Maid/components/custom_name_and_age_maid.dart';
import 'package:nowproject/Screens/Contract%20Details%20Maid/contract_details_maid_view.dart';
import 'package:nowproject/utility/app_text_style.dart';

import '../../../components/custom_circle_exit/custom_circle_avatar_dialog.dart';

class CustomDialogeMaid extends StatelessWidget {
  const CustomDialogeMaid({super.key});

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
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 44),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // const SizedBox(height: 44),
                            Text(
                            'تفاصيل عاملة',
                              style: TextStyles.semiBold18,
                            ),
                                SizedBox(height: 32.h,),
                                Row(
                              children: [
                                const CustomImageMaid(),
                                SizedBox(width: 12.w,),
                                const CustomNameAndAgeMaid(),
                              ],
                            ),
                                  SizedBox(height: 20.h ,),
                            Row(
                          children: [
                            CustomMaidSkillsItem(skillsName: 'إيجاد الطبخ', width: 70.w,),
                                SizedBox(width: 7.w,),
                            CustomMaidSkillsItem(skillsName: 'رعاية كبار السن', width: 90.w,),
                                SizedBox(width: 7.w,),
                            CustomMaidSkillsItem(skillsName: 'اللغة الانجليزية', width: 90.w,),
                          ],
                        ),
                      SizedBox(height: 10.h ,),
                        Row(
                        children: [
                          CustomMaidSkillsItem(skillsName: 'التعامل مع الاطفال', width: 129.w,),
                                SizedBox(width: 7.w,),
                          CustomMaidSkillsItem(skillsName: 'اللغة العربية', width: 88.w,),
                        ],
                      ),
                      SizedBox(height: 24.w ,),
                              CustomButtonInAddNewAddrease(
                              onTap: () {
                             Navigator.of(context).pushNamed(ContractDetailsMaidView.routeName);
                              },
                              alignment: Alignment.center, 
                              colorBackGround: Colors.transparent, 
                              tixtInButton:  Center(
                              child: Text('اختيار العاملة والتالي',
                              style: TextStyles.medium16,
                              ),
                              ), width: 202.w ,
                              height: 48.h, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(4),
                    ),
                            
                          ],
                          
                        ),
                        
                      ),
                      
                    ),
        ),
          Positioned(
          top: 200.h,
          child: const CustomCircleAvatar()),
      ],
    );
  }
}
