import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Contract%20Success/contract_success_view.dart';
import 'package:nowproject/Screens/Contract%20attachments/components/custom_container.dart';
import 'package:nowproject/Screens/Contract/components/custom_button_next.dart';
import '../../../utility/app_text_style.dart';

class ContractAttachmentsViewBody extends StatelessWidget {
  const ContractAttachmentsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          SizedBox(height: 37.h,),
            Row(
              children: [
                const Icon(
                  Icons.error,
                ),
                const SizedBox(width: 11),
                Text('هذه الخطوة اختيارية يمكنك تجاهلها الآن',
                style: TextStyles.regular12.copyWith(color:const Color(0xff24A19D)),),
              ],
            ),
            SizedBox(height: 21.h,),
              Container(
                width: 359,
                height: 87,
                decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const CustomContainer(titleText: 'الهوية',),
              ),
            SizedBox(height: 20.h,),
                Container(
                width: 359,
                height: 87,
                decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const CustomContainer(titleText: 'كارت العائلة',),
              ),
            SizedBox(height: 20.h,),
                Container(
                width: 359,
                height: 87,
                decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const CustomContainer(titleText: 'العنوان الوطني',),
              ),
            SizedBox(height: 20.h,),
                Container(
                width: 359,
                height: 87,
                decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const CustomContainer(titleText: 'تعريق الراتب',),
              ),
            SizedBox(height: 32.h,),
               CustomButtonNext(
                onTap:  () {
                    Navigator.of(context).pushNamed(ContractSuccessView.routeName);
                      }, 
              ),
        ],
      ),
    );
  }
}
