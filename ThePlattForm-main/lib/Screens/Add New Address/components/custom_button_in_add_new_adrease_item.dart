
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Add%20New%20Address%20Google%20Maps/add_new_address_google_maps_view.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import '../../../utility/app_text_style.dart';

class CustomButtonInAddNewAddreaseItem extends StatelessWidget {
  const CustomButtonInAddNewAddreaseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                    Navigator.pushNamed(context, AddNewAddressGoogleMapsView.routeName);
                  }, alignment:  Alignment.centerLeft, 
                  colorBackGround: Colors.black,
                  tixtInButton: Center(
                    child: Text('التالي',
                      style: TextStyles.regular18.copyWith(color: Colors.white),
                      ),
                  ), width: 108.w, height: 47.h, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8) ,
                 ),
      ],
    );
  }
}