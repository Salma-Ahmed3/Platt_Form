
            import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utility/app_text_style.dart';
import '../../../components/custom_button/custom_button_in_add_new_addrease.dart';

class CustomButtonNext extends StatelessWidget {
              const CustomButtonNext({super.key, this.onTap});
       final void Function()? onTap;
               
            @override
            Widget build(BuildContext context) {
              return  Align(
                          alignment: Alignment.bottomLeft,
                          child: CustomButtonInAddNewAddrease( 
                onTap:onTap,
                      alignment:   Alignment.center, 
                      colorBackGround: Colors.black,
                        tixtInButton: Center(
                      child: Text('التالي',
                      style: TextStyles.regular18.copyWith(color: Colors.white),
                      ),
                  ),
                      width: 108.w, height: 40.h, 
                      colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8) ,
                        ),
                          );
  }
}