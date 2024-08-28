import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class DistinguishedServices extends StatelessWidget {
  const DistinguishedServices({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Align(
          alignment: Alignment.centerRight, 
          child: Text('خدماتنا المميزة', style: TextStyles.regular16,),
        ),
        Align(
          alignment: Alignment.centerRight, 
          child: Text('مجموعة خدمات لا غنى عنها', style: TextStyles.regular16,),
        ),
      ],
    );
  }
}
