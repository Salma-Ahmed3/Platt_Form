import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Contract%20attachments/contract_attachments_view.dart';
import 'package:nowproject/Screens/Contract/components/custom_button_next.dart';
import 'package:nowproject/Screens/Contract/components/custom_contract_items.dart';
import 'package:nowproject/Screens/Contract/components/custom_text_contract.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/utility/app_text_style.dart';

class ContractViewBody extends StatelessWidget {
  const ContractViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 23),
          const CustomTextContract(),
          const SizedBox(height: 16),
          CustomButtonInAddNewAddrease( 
                        alignment:   Alignment.center, 
                        colorBackGround: Colors.black,
                        tixtInButton: Center(
                        child: Text('تحميل التعاقد',
                        style: TextStyles.regular12.copyWith(color: Colors.white),
                        ),
                    ),
                        width: 108.w, height: 40.h, 
                        colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(10) ,
                          ),
                          const SizedBox(height: 23),
                          const CustomContractItems() , 
                          const SizedBox(height: 32),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 26),
                              child: CustomButtonNext(
                              onTap:  () {
                              Navigator.of(context).pushNamed(ContractAttachmentsView.routeName);
                                }, 
                                  ),

                          ),
                          const SizedBox(height: 32),

                ],
      ),
    );
  }
}