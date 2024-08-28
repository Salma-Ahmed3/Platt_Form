import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Contract%20Success/components/custom_button_push.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'custom_container_wallet_balance.dart';

class ContractSuccessViewBody extends StatelessWidget {
  const ContractSuccessViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 109.h,),
        Image.asset(Assets.imagesSuccess , width: 500 , height: 128),
        Text('تم تسجيل التعاقد بنجاح' , style: TextStyles.bold20,),
        SizedBox(height: 13.h,),
        Text('‏8258745HIJH رقم العقد' , style: TextStyles.bold16,),
        SizedBox(height: 15.h,),
        Text('قيمة العقد ‏9,800.00 ريال' , style: TextStyles.regular20,),
        SizedBox(height: 15.h,),
        const CustomContainerWalletBalance(),
        SizedBox(height: 26.h,),
        const CustomButtonPush(),
        SizedBox(height: 15.h,),
        Text('ملاحظة: لديك ساعة واحدة فقط للدفع' , 
        style: TextStyles.regular14.copyWith(color: const Color(0xff24A19D)),),
        SizedBox(height: 5.h,),
        Text('عملية إلغاء العقد تتم بشكل تلقائي ,' , 
        style: TextStyles.regular14),
      ],
    );
  }
}
