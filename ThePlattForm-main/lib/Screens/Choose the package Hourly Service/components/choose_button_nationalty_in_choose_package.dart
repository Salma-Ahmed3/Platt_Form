import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomButtonNationaltyInChoossePackage extends StatelessWidget {
  const CustomButtonNationaltyInChoossePackage({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
                  children: [
                    CustomButtonInAddNewAddrease(
                                          alignment: Alignment.centerRight, 
                                          colorBackGround: Colors.black, 
                                          tixtInButton:  Center(
                                          child: Text('الفلبين',
                                          style: TextStyles.regular12.copyWith(color: const Color(0xffFFE5E5)),
                                          ),
                                          ), width: 117.w ,
                                          height: 35.h, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(10),
                                        ), 
                                      const SizedBox(width: 5,),
        
                                        CustomButtonInAddNewAddrease(
                                          alignment: Alignment.centerRight, 
                                          colorBackGround: Color(0xffD6D6D6), 
                                          tixtInButton:  Center(
                                          child: Text('تايلاند',
                                          style: TextStyles.regular12,
                                          ),
                                          ), width: 117.w ,
                                          height: 35.h, colorBorder:  const Color(0xffD6D6D6), borderRadius: BorderRadius.circular(10),
                                        ),
                                      const SizedBox(width: 5,),
                                          CustomButtonInAddNewAddrease(
                                          alignment: Alignment.centerRight, 
                                          colorBackGround: Color(0xffD6D6D6), 
                                          tixtInButton:  Center(
                                          child: Text('اندونيسيا',
                                          style: TextStyles.regular12
                                          ),
                                          ), width: 117.w ,
                                          height: 35.h, colorBorder:  const Color(0xffD6D6D6), borderRadius: BorderRadius.circular(10),
                                        ),
                                        const SizedBox(width: 5,),
                                          CustomButtonInAddNewAddrease(
                                          alignment: Alignment.centerRight, 
                                          colorBackGround: Color(0xffD6D6D6), 
                                          tixtInButton:  Center(
                                          child: Text('بنجلاديش',
                                          style: TextStyles.regular12
                                          ),
                                          ), width: 117.w ,
                                          height: 35.h, colorBorder:  const Color(0xffD6D6D6), borderRadius: BorderRadius.circular(10),
                                        ),
                  ],
                );
  }
}