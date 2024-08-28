import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class RectangleShowVisitsNotAvaliable extends StatelessWidget {
  const RectangleShowVisitsNotAvaliable({super.key, required this.text, required this.textNotAvailable});
final String text , textNotAvailable;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Container(
        width: 336,
        height: 44,
        decoration: BoxDecoration(
          color: const Color(0xffEFEFEF),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Align(
          alignment: Alignment.centerRight,
          child: 
          Row(
            children: [
              const SizedBox(width: 20,),
          Text(text , style: TextStyles.regular14.copyWith(color: const Color(0xffACACAC),),),
              const SizedBox(width: 5,),
          const Icon(Icons.not_interested, color: Color(0xffACACAC), size: 20,),
              const SizedBox(width: 10,),
          Text(textNotAvailable , style: TextStyles.regular8.copyWith(color: const Color(0xffACACAC),),),
              ]
          ),
      ),
      )
      
    );
  }
}