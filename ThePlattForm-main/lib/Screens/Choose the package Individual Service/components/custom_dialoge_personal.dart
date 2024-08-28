import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_detailes_dialoge_personal_in_app.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_detailes_dialoge_personal_receive_company.dart';
import 'package:nowproject/components/custom_circle_exit/custom_circle_avatar_dialog.dart';
import '../../../utility/app_text_style.dart';

class CustomDialogPersonal extends StatefulWidget {
  const CustomDialogPersonal({super.key});

  static const routeName = 'CustomDialog';

  @override
  _CustomDialogPersonalState createState() => _CustomDialogPersonalState();
}

class _CustomDialogPersonalState extends State<CustomDialogPersonal> {
  bool isDialogExpanded = false;
  bool isAppButtonSelected = false; 
  bool isCompanyButtonSelected = false; 

  void toggleDialogSize(String button) {
    setState(() {
      isDialogExpanded = !isDialogExpanded;
      if (button == 'app') {
        isAppButtonSelected = !isAppButtonSelected;
        isCompanyButtonSelected = false; 
      } else if (button == 'company') {
        isCompanyButtonSelected = !isCompanyButtonSelected;
        isAppButtonSelected = false; 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: isDialogExpanded ? 600.h : null,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 50),
                  Text(
                    'كيف تريد اختيار العاملة',
                    style: TextStyles.semiBold18,
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomButtonInAddNewAddrease(
                            onTap: () => toggleDialogSize('app'),
                            alignment: Alignment.center,
                            colorBackGround: isAppButtonSelected ? const Color(0xffACACAC) : const Color(0xffEFEFEF),
                            tixtInButton: Center(
                              child: Text(
                                'من التطبيق',
                                style: TextStyles.semiBold14,
                              ),
                            ),
                            width: 130.w,
                            height: 90.h,
                            colorBorder: const Color(0xffEFEFEF), borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Expanded(
                          child: CustomButtonInAddNewAddrease(
                            onTap: () => toggleDialogSize('company'),
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
                  SizedBox(height: 39.h),
                  if (isAppButtonSelected) const CustomDetailesDialogePersonalInApp(),
                  if (isCompanyButtonSelected)  const CustomDetailesDialogePersonalReceiveCompany (),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 
          isDialogExpanded ? 80.h :  //normal
          isCompanyButtonSelected ? 170.h :  //company
          isAppButtonSelected ? 90.h : 263.h, // app
          child: const CustomCircleAvatar(),
        ),
      ],
    );
  }
}
