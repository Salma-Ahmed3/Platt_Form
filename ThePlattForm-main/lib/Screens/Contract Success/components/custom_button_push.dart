import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Contract%20Success/components/custom_dialoge_push.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomButtonPush extends StatelessWidget {
  const CustomButtonPush({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialogPush();
                },
              );
      },
      child: Container(
        width: 305.w,
        height: 47.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text('ادفع 110 ريال لتفعيل التعاقد' ,style: TextStyles.regular18.copyWith(color: Colors.white), )) ,
      ),
    );
  }
}
