import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_dialog/custom_dialog.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:nowproject/utility/custom_button.dart';

class HourlyServicesViewBody extends StatelessWidget {
  const HourlyServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           SizedBox(
            height: 20.h,
          ),
          Text(
            'اختر الخدمة المطلوبة',
            style: TextStyles.regular18,
          ),
           SizedBox(
            height: 24.h,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialogHourly();
                },
              );
            },
            child:  CustomButton(
              onTap: (){
                 showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialogHourly();
                },
              );
            
              },
              titletext: 'عاملة تنظيف',
              subtitletext: 'تقدم الخدمة بعقود شهرية من شهر الى 24 شهر',
              colorSmallContainer: const Color(0xffD6D6D6),
            ),
          ),
           SizedBox(
            height: 20.h,
          ),
          CustomButton(
            onTap: () {
           showDialog(
            
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialogHourly(
                    
                  );
                },
              );
            
            },
            titletext: 'عاملة تنظيف بالمواد المطلوبة',
            subtitletext: 'تقدم الخدمة بعقود شهرية من شهر الى 24 شهر',
            colorSmallContainer: const Color(0xffACACAC),
          ),
          
        ],
      ),
    );
  }
}

