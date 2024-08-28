import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Contract%20Details/components/custom_text_contract_details.dart';
import 'package:nowproject/utility/app_text_style.dart';

class ContractDetailsItem extends StatelessWidget {
  const ContractDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
                  Container(
                    width: 383,
                    height: 315,
                    decoration: BoxDecoration(
                      color: const Color(0xffF8F8F8),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      )
                    ),
                    child: const CustomTextContractDetails(),
                  ), Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    child: Container(
                      width: 380,
                      height: 41,
                      decoration: const BoxDecoration(
                        color: Color(0xffD6D6D6),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                        topRight: Radius.circular(14),),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 31),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(' تفاصيل التعاقد' , style: TextStyles.bold14,)),
                      ),
                    ),
                  ),
                ],
    );
  }
}
