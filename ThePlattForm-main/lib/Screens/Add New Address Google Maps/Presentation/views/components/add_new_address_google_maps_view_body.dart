import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/Screens/Choosing%20Carrer/chossing_carrer_view.dart';
import 'package:nowproject/utility/app_text_style.dart';


class AddNewAddressGoogleMapsViewBody extends StatelessWidget {
  const AddNewAddressGoogleMapsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
         SizedBox(
          height: 600,
          child: Image.asset('assets/images/maps.jpg')),
          //  SizedBox(height: 16.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButtonInAddNewAddrease(
                      onTap: () {
                        Navigator.pop(context);
                      }, alignment:  Alignment.centerRight, 
                      colorBackGround: Colors.transparent, 
                      tixtInButton:  Center(
                        child: Text('السابق',
                          style: TextStyles.regular18,
                          ),
                      ), width: 108.w, height: 47.h, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8) ,
                        ),
                    CustomButtonInAddNewAddrease(
                      onTap: () {
                        Navigator.pushNamed(context, ChossingCarrerView.routeName);
                      }, alignment:  Alignment.centerLeft, 
                      colorBackGround: Colors.black,
                      tixtInButton: Center(
                        child: Text('التالي',
                          style: TextStyles.regular18.copyWith(color: Colors.white),
                          ),
                      ), width: 108.w, height: 47.h, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8) ,
                      ),
                    ],
                  ),
        ],
      ),
    );
  }
}