
import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Contract%20Data/components/custom_dialoge_show_visits.dart';
import 'package:nowproject/Screens/Contract%20Success/contract_success_view.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomClickInContractData extends StatelessWidget {
  const CustomClickInContractData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButtonInAddNewAddrease(
                          onTap: () {
                            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const DialogeShowVisits();
              },
            );
                          },
                          alignment: Alignment.centerRight, 
                          colorBackGround: Colors.transparent, 
                          tixtInButton:  Center(
                          child: Text('عرض الزيارات',
                          style: TextStyles.regular18,
                          ),
                          ), width: 167,
                          height: 48, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8),
                        ), 
                CustomButtonInAddNewAddrease(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, ContractSuccessView.routeName);
                          },
                          alignment: Alignment.centerRight, 
                          colorBackGround: Colors.black, 
                          tixtInButton:  Center(
                          child: Text('إتمام التعاقد',
                          style: TextStyles.regular18.copyWith(color:  Colors.white),
                          ),
                          ), width: 152,
                          height: 47, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8),
                        ),
              ],
            ),
          );
  }
}
