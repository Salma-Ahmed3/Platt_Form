import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/Screens/Contract%20Details/components/constract_details_item.dart';
import 'package:nowproject/Screens/Contract%20Details/components/notes_contract_detailes.dart';
import 'package:nowproject/Screens/Contract/contract_view.dart';
import 'package:nowproject/utility/app_text_style.dart';

class ContractDetailsViewBody extends StatelessWidget {
  const ContractDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Column(
        children: [
            const SizedBox(height: 43,),
            const NotesContractDetails(),
            const SizedBox(height: 18,),
            const ContractDetailsItem(),
            const SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButtonInAddNewAddrease(  onTap: () {
                    Navigator.pop(context);
                  }, 
                      alignment:  Alignment.centerRight, 
                      colorBackGround: Colors.transparent, 
                      tixtInButton:  Center(
                        child: Text('السابق',
                        style: TextStyles.regular18,
                        ),
                      ), width: 108.w, height: 47.h,
                        colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8) ,
                        ),
                CustomButtonInAddNewAddrease(  onTap: () {
                    Navigator.of(context).pushNamed(ContractView.routeName);
                  }, 
                      alignment:   Alignment.centerLeft, 
                      colorBackGround: Colors.black,
                      tixtInButton: Center(
                      child: Text('التالي',
                      style: TextStyles.regular18.copyWith(color: Colors.white),
                      ),
                  ),
                      width: 108.w, height: 47.h, 
                      colorBorder:  const Color(0xff000000), borderRadius:  BorderRadius.circular(8) ,
                        ),
              ],
            ),
        ],
      ),
    );
  }
}
