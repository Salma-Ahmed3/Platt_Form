
import 'package:flutter/material.dart';

import '../../../utility/app_text_style.dart';

class CustomDeliveryTimes extends StatelessWidget {
  const CustomDeliveryTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 384,
      height: 59,
      decoration: BoxDecoration(
        color: const Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(14),
       
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Text('مواعيد التوصيل' , style: TextStyles.regular12.copyWith(color: Color(0xffACACAC)),),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('الفترة الصباحية : من 8 ص الى 5 م', style: TextStyles.regular12.copyWith(color: Color(0xffACACAC)),),
              Text('الفترة المسائية : من 5 م الى 9 م', style: TextStyles.regular12.copyWith(color: Color(0xffACACAC)),),
            ],
          ),
        ],
      ),
    ),
    );
  }
}