
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomPackageDuration extends StatelessWidget {
  const CustomPackageDuration({super.key, required this.textPackageDuration});
final String textPackageDuration;
  @override
  Widget build(BuildContext context) {
    return Row(
                  children: [
                    Container(
                    width: 120.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                    color: const Color(0xffD6D6D6),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                    color:  Colors.black,
                    
              ),
        
            ),
            child: Center(child: Text(textPackageDuration, style: TextStyles.regular12,)),
                ),
        
                  ],
                );

  }
}