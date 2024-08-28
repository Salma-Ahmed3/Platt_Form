
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Home/home_view.dart';
import 'package:nowproject/Screens/My%20Requests/my_requests_view.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/components/custom_circle_exit/custom_circle_avatar_dialog.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomDialogPush extends StatelessWidget {
  const CustomDialogPush({super.key});

  static const routeName = 'CustomDialog';

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.topCenter,
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 38),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                          const SizedBox(height: 36,),
                            Image.asset(
                              Assets.imagesSuccess, 
                            ),
                            const SizedBox(height: 19),
                            Text(
                              'تم تسجيل التعاقد بنجاح',
                              style: TextStyles.bold20,
                            ),
                            const SizedBox(height: 30),
                            CustomButtonInAddNewAddrease(
                                onTap: () {
                                Navigator.of(context).pushNamed(MyRequestsView.routeName);
                                },
                                alignment: Alignment.centerRight, 
                                colorBackGround: Colors.black, 
                                tixtInButton:  Center(
                                child: Text('طلباتي',
                                style: TextStyles.regular18.copyWith(color: Colors.white),
                                ),
                                ), width: 193.w, height: 47.h, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8) ,
                                ),  
                            const SizedBox(height: 17),
                            CustomButtonInAddNewAddrease(
                                onTap: () {
                                Navigator.of(context).pushNamed(HomeView.routeName);
                                },
                                alignment: Alignment.centerRight, 
                                colorBackGround: Colors.black, 
                                tixtInButton:  Center(
                                child: Text('الرئيسية',
                                style: TextStyles.regular18.copyWith(color: Colors.white),
                                ),
                                ), width: 193.w, height: 47.h, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8) ,
                                ),  
                          ],
                          
                        ),
                      ),
                      
                    ),
        ),
         const Positioned(
          top: 190,
          child: CustomCircleAvatar()),
      ],
    );
  }
}
