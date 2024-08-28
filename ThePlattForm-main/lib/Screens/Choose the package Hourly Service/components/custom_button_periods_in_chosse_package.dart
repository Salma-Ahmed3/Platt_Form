import 'package:flutter/material.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomButtonPeriodsInChoosePackage extends StatelessWidget {
  const CustomButtonPeriodsInChoosePackage({super.key, required this.text1, required this.text2, required this.width, required this.height});
final String text1 , text2;
final double width , height;
  @override
  Widget build(BuildContext context) {
    return Row(
                  children: [
                    CustomButtonInAddNewAddrease(
                                          alignment: Alignment.centerRight, 
                                          colorBackGround: Colors.black, 
                                          tixtInButton:  Center(
                                          child: Text(text1,
                                          style: TextStyles.regular12.copyWith(color: const Color(0xffFFE5E5)),
                                          ),
                                          ), width: width,
                                          height: height, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(10),
                                        ), 
                                      const SizedBox(width: 5,),
        
                                        CustomButtonInAddNewAddrease(
                                          alignment: Alignment.centerRight, 
                                          colorBackGround: Color(0xffD6D6D6), 
                                          tixtInButton:  Center(
                                          child: Text(text2,
                                          style: TextStyles.regular12,
                                          ),
                                          ), width: width ,
                                          height: height, colorBorder:  const Color(0xffD6D6D6), borderRadius: BorderRadius.circular(10),
                                        ),],);
  }
}
