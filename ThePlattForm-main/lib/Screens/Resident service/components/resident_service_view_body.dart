import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Resident%20service/components/button_in_resident_service.dart';
import 'package:nowproject/utility/app_text_style.dart';

class ResidentServiceViewBody extends StatelessWidget {
  const ResidentServiceViewBody({super.key, required this.onChanged});
final  void Function(bool) onChanged;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
           SizedBox(height: 30.h,),
          Text(' اختيار العنوان من عناوينك السابقة' , style: TextStyles.regular18,),
           SizedBox(height: 32.h,),

      ButtonInResidentService( 
        titletext: '15 طريق الثمامة الفرعي - الرياض المملكة العربية السعودية', 
      onChanged: onChanged,
            colorBackGroun:Colors.transparent, colorBorder: Color(0xffACACAC),),
            
             SizedBox(height: 12.h,),

            ButtonInResidentService( 
              titletext:'طريق الامير تركي بن عبد العزيز 7898 الأول المعذر ، الرياض 12721، السعودية',
            onChanged: onChanged,
             colorBackGroun: Colors.transparent,
              colorBorder: const Color(0xffACACAC),),

             SizedBox(height: 12.h,),

            ButtonInResidentService( titletext: 'المهيني، الشرفية، الرياض 12724، السعودية',
            onChanged: onChanged,
              colorBackGroun: Colors.transparent,
              colorBorder: Color(0xffACACAC),),

     
        ],
      ),
    );
  }
}
