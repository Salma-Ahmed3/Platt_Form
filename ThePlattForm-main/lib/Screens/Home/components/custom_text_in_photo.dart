import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomTextInPhoto extends StatelessWidget {
  const CustomTextInPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return  
         Center(
          
           child: Column(
             children: [
               SizedBox(
                  height: 49.h,
                ),
                       Image.asset(Assets.imagesPicIcon),      
                        SizedBox(
                        height: 16.h,
                       ),
                        Text('صورة مصممه خصيصاً للعروض',style: TextStyles.regular12),
             ],
           ),
         );
     
  }
}