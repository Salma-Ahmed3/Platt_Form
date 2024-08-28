import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/utility/app_text_style.dart';

class ContactUsViewBody extends StatelessWidget {
  const ContactUsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child:  Column(
        children: [
          const SizedBox(height: 27,),
          const CustomNameCompanyFormField(labelText:  'اسم الشركة', hintText: 'الاسم',),
          const SizedBox(height: 25,),
          const CustomNameCompanyFormField(labelText:  'رقم الجوال', hintText: 'الرقم',),
          const SizedBox(height: 25,),
          const CustomNameCompanyFormField(labelText:  'البريد الإلكتروني', hintText: 'email@domain.dlt',),
          const SizedBox(height: 25,),
          const CustomNameCompanyFormField(labelText:  'عنوان الرسالة', hintText: 'الرسالة',),
          const SizedBox(height: 25,),
          const CustomNameCompanyFormField(labelText:  'تفاصيل الرسالة', hintText: 'التفاصيل',maxLines: 10,),

          const SizedBox(height: 25,),
          CustomButtonInAddNewAddrease(  onTap: () {
              // Navigator.pop(context);
                  }, 
                      alignment:   Alignment.centerLeft, 
                      colorBackGround: Colors.black,
                      tixtInButton: Center(
                      child: Text('إرسال',
                      style: TextStyles.regular18.copyWith(color: Colors.white),
                      ),
                  ),
                      width: 179.w, height: 47.h, 
                      colorBorder:  const Color(0xff000000), borderRadius:  BorderRadius.circular(8) ,
                        ),
          const SizedBox(height: 32,),
            ],
          ),
        ),
      );
  }
}

class CustomNameCompanyFormField extends StatelessWidget {
  const CustomNameCompanyFormField({super.key, required this.labelText, required this.hintText, this.maxLines});
final String labelText , hintText;
 final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
            maxLines: maxLines,
          decoration: InputDecoration(
            labelText:labelText,
            labelStyle: TextStyles.regular14,
            hintText: hintText,
            hintStyle: TextStyles.regular12,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(4),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color:  Colors.black,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        
        )]);
      
  }
}
