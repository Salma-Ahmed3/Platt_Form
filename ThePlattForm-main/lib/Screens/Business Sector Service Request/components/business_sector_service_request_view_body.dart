import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/Screens/Business%20Sector%20Service%20Request/components/custom_button_in_request_business.dart';
import 'package:nowproject/utility/app_text_style.dart';

class BusinessSectorServiceRequestViewBody extends StatelessWidget {
  const BusinessSectorServiceRequestViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child:  Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          children: [
                  SizedBox(height: 18.h,),
                  const CustomButtonInRequestBusiness(
                  labelText:'اسم العميل / الشركة',
                  hintText: 'الاسم' ,),
                  SizedBox(height: 16.h,),
                  const CustomButtonInRequestBusiness(
                  labelText:'رقم الجوال',
                  hintText: 'الرقم' ,),
                  SizedBox(height: 16.h,),
                  const CustomButtonInRequestBusiness(
                  labelText:'نشاط الشركة',
                  hintText: 'البريد' ,),
                  SizedBox(height: 16.h,),
                  const SizedBox(
                    width: double.infinity,  
                    height: 200,
                    child: CustomButtonInRequestBusiness(
                      maxLines: 7,
                    labelText:'تفاصيل الطلب',
                    hintText: 'التفاصيل' ,),
                    
                  ),
                  SizedBox(height: 34.h,),
                CustomButtonInAddNewAddrease(
                  onTap: () {
                    Navigator.pop(context);
                  }, alignment:  Alignment.centerLeft, 
                  colorBackGround: Colors.black,
                  tixtInButton: Center(
                    child: Text('إرسال الطلب',
                      style: TextStyles.regular18.copyWith(color: Colors.white),
                      ),
                  ), width: 179.w, height: 47.h, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8) ,
                  ),
                ],
        ),
      ),
    );
  }
}
