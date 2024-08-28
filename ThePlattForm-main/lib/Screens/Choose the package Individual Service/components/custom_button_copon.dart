
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_container_nationality.dart';

import '../../../utility/app_text_style.dart';

class CustomButtonCopon extends StatelessWidget {
  const CustomButtonCopon({super.key});


  @override
  Widget build(BuildContext context) {
    return Stack(    children: [
        CustomContainerNationality(
        titleText: 'هل تمتلك كوبون خصم؟',
         widthContainer: 200.w, height: 80,
         ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('ادخل رقم الكوبون من فضلك', style: TextStyles.regular12,),
           Container(
        width: 92.w,
        height: 40.h,
        decoration: BoxDecoration(
          color:  Colors.black ,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'تطبيق الخصم',
            style: TextStyles.regular12.copyWith(
          color: Colors.white 

              ),
          ),
          ),
          ), 
           ],
          ),
          ),
          ],
          );
  }
}
