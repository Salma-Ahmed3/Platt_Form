import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_container_nationality.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/nationality_text.dart';

class CustomFavorteDate extends StatelessWidget {
  const CustomFavorteDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
    children: [
       CustomContainerNationality(titleText: 'الأيام المفضله', widthContainer: 110.w, height: 119,),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
        child: 
        
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NationalityText(nameNationality: 'السبت',),
                NationalityText(nameNationality: 'الاحد',),
                NationalityText(nameNationality: 'الاثنين',)
              ],
            ),
                SizedBox(height: 5,),
          
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NationalityText(nameNationality: 'الثلاثاء',),
            NationalityText(nameNationality: 'الاربعاء',),
            NationalityText(nameNationality: 'الخميس',)
          ],
        ),
    ],),
      ),
    ],
    );
  }
}