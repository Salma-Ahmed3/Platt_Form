import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class RectangleShowVisits extends StatelessWidget {
  const RectangleShowVisits({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Container(
        width: 336,
        height: 44,
        decoration: BoxDecoration(
          color: const Color(0xffD6D6D6),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Align(
          alignment: Alignment.centerRight,
          child: 
          Row(
            children: [
              const SizedBox(width: 20,),
          Text(text , style: TextStyles.regular14,)]),
          
      ),
      )
      
    );
  }
}