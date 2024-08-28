import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class RectangleShowVisitsGift extends StatelessWidget {
  const RectangleShowVisitsGift({super.key, required this.text, required this.textGift});
final String text , textGift;
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
            Image.asset('assets/images/gift.png'),
              const SizedBox(width: 10,),
          Text(text , style: TextStyles.regular14,),
              const SizedBox(width: 60,),
          Text(textGift , style: TextStyles.bold8,)
          
          ]),
          
      ),
      )
      
    );
  }
}
