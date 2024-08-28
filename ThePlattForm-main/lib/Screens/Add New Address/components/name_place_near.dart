
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class NamePlaceNear extends StatelessWidget {
  const NamePlaceNear({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,  
      height: 200.h,
      child: TextFormField(
        maxLines: 10,
        keyboardType: TextInputType.text,
        style: TextStyles.regular12,
        decoration: InputDecoration(
          
          labelText: 'معلم او مكان مميز قريب من عنوانك',
          labelStyle: TextStyles.regular14,
          hintText: 'التفاصيل', hintStyle: TextStyles.regular12,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
 