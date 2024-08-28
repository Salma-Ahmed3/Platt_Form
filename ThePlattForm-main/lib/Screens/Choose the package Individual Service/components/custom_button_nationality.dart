import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/nationality_text.dart';
import 'custom_container_nationality.dart';

class CustomButtonNationality extends StatelessWidget {
  const CustomButtonNationality({super.key, });
  @override
  Widget build(BuildContext context) {
    return   Stack(
    children: [
       CustomContainerNationality(titleText: 'الجنسيه', widthContainer: 70.w, height: 80,),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NationalityText(nameNationality: 'الفلبين',),
            NationalityText(nameNationality: 'تايلاند',),
            NationalityText(nameNationality: 'اندونيسيا',)
          ],
        ),
      ),
    
    ],
    );
  }
}

