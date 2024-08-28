
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomAddressNotAvliable extends StatelessWidget {
  const CustomAddressNotAvliable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                        width: double.infinity,
                        height: 100.h,
                        decoration: BoxDecoration(
              color: const Color(0xffF8F8F8),
              borderRadius: BorderRadius.circular(14),
                        ),
                        child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('شارع الامام مالك بن انس، الريان، الخرج 16439، السعودية',
                  style: TextStyles.regular16),
                SizedBox(height: 11.h,),
                  Text('لا يمكن خدمتكم في هذا العنوان',
                  style: TextStyles.regular14.copyWith(color: Color(0xffFF0000))),
                      SizedBox(width: 15.w,),
                  
                ],
              ),
                        ) ,
                      ),
            );
  }
}