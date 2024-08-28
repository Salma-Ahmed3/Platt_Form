
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_detailes_dialoge_personal_in_house.dart';
import 'package:nowproject/Screens/Chossing%20Maid/chossing_mid_view.dart';
import 'package:nowproject/utility/app_text_style.dart';

import 'custom_detailes_dialoge_personal_receive_company.dart';

class CustomDetailesDialogePersonalInApp extends StatefulWidget {
  const CustomDetailesDialogePersonalInApp({super.key});

  @override
  State<CustomDetailesDialogePersonalInApp> createState() => _CustomDetailesDialogePersonalState();
}

class _CustomDetailesDialogePersonalState extends State<CustomDetailesDialogePersonalInApp> {
  bool isDialogExpanded = false;
  bool isAppButtonSelected = false; 
  bool isCompanyButtonSelected = false; 

  void toggleDialogSize(String button) {
    setState(() {
      isDialogExpanded = !isDialogExpanded;
      if (button == 'inHouse') {
        isAppButtonSelected = !isAppButtonSelected;
        isCompanyButtonSelected = false; 
      } else if (button == 'companytwo') {
        isCompanyButtonSelected = !isCompanyButtonSelected;
        isAppButtonSelected = false; 
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: isDialogExpanded ? 350.h : null,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'طريقة استلام العاملة ؟',
                    style: TextStyles.semiBold18,
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomButtonInAddNewAddrease(
                            onTap: () => toggleDialogSize('inHouse'),
                            alignment: Alignment.center,
                            colorBackGround: isAppButtonSelected ? const Color(0xffACACAC) : const Color(0xffEFEFEF),
                            tixtInButton: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'توصيل للمنزل',
                                  style: TextStyles.semiBold14,
                                ),
                                Text(
                                  'مصاريف التوصيل 80 ريال',
                                  style: TextStyles.regular10,
                                  
                                ),
                              ],
                            ),
                            width: 130.w,
                            height: 90.h,
                            colorBorder: const Color(0xffEFEFEF), borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Expanded(
                          child: CustomButtonInAddNewAddrease(
                            onTap: () => toggleDialogSize('companytwo'),
                            alignment: Alignment.center,
                            colorBackGround: isCompanyButtonSelected ? const Color(0xffACACAC) : const Color(0xffEFEFEF),
                            tixtInButton: Center(
                              child: Text(
                                'من مقر الشركة',
                                style: TextStyles.semiBold14,
                              ),
                            ),
                            width: 130.w,
                            height: 90.h,
                            colorBorder: const Color(0xffEFEFEF), borderRadius: BorderRadius.circular(8),
                          ),
                          
                        ),
                        
                      ],
                    ),
                  ),
                  if (isAppButtonSelected)  CustomDetailesDialogePersonalInHouse(
                    onTap: () {
                      Navigator.of(context).pushNamed(ChoosingMaidView.routeName);
                    },
                  ),
                  if (isCompanyButtonSelected)  CustomDetailesDialogePersonalReceiveCompany(sizedBox: SizedBox(height: 22.h,),),

                ],
      ),  );
  }
}
